-- ================================================================
-- SISTEMA DE CONTROL DE RESERVACIONES DE HOTEL
-- 30 CONSULTAS REQUERIDAS PARA EL PROYECTO FINAL
-- Base de datos: hotel_mafia
-- ================================================================

USE hotel_mafia;

-- ================================================================
-- 1. Lista de todas las habitaciones disponibles al día de hoy
-- ================================================================
SELECT 
    h.ID_Habitacion,
    th.Nombre AS Tipo_Habitacion,
    h.Piso,
    h.Capacidad_Max,
    th.Precio_Base,
    h.Estado,
    h.Caracteristicas_especiales
FROM habitacion h
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE h.Estado = 'Disponible'
AND h.ID_Habitacion NOT IN (
    SELECT fo.ID_Habitacion
    FROM fechas_ocupadas fo
    WHERE CURDATE() BETWEEN fo.Fecha_Checkin AND DATE_SUB(fo.Fecha_Checkout, INTERVAL 1 DAY)
)
ORDER BY th.Precio_Base, h.Piso, h.ID_Habitacion;

-- ================================================================
-- 2. Listado de clientes hospedados con detalles de reserva
-- ================================================================
SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Completo,
    c.Email,
    c.Telefono_Cel,
    r.Codigo_Confirmacion,
    drh.Fecha_Check_In AS Fecha_Ingreso,
    r.Fecha_Salida AS Fecha_Fin_Reserva,
    th.Nombre AS Tipo_Habitacion,
    h.ID_Habitacion,
    CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente,
    DATEDIFF(r.Fecha_Salida, IFNULL(drh.Fecha_Check_In, r.Fecha_Entrada)) AS Noches_Totales
FROM cliente c
JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE r.Estado = 'Confirmada'
AND drh.Fecha_Check_In IS NOT NULL
AND (drh.Fecha_Check_Out IS NULL OR drh.Fecha_Check_Out >= CURDATE())
ORDER BY drh.Fecha_Check_In DESC;

-- ================================================================
-- 3. Reporte de clientes con reserva pendiente de check-in
-- ================================================================
		-- PreConsulta 3

		SELECT 
			c.ID_Cliente,
			CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Completo,
			c.Telefono_Cel,
			r.Codigo_Confirmacion,
			r.Fecha_Entrada,
			r.Fecha_Salida,
			th.Nombre AS Tipo_Habitacion,
			h.ID_Habitacion,
			CASE 
				WHEN r.Fecha_Entrada = CURDATE() THEN 'LLEGA HOY'
				WHEN r.Fecha_Entrada > CURDATE() THEN CONCAT('Llega en ', DATEDIFF(r.Fecha_Entrada, CURDATE()), ' días')
				ELSE CONCAT('Retrasado ', DATEDIFF(CURDATE(), r.Fecha_Entrada), ' días')
			END AS Estado_Llegada,
			CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente
		FROM cliente c
		JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
		JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
		JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
		JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
		WHERE r.Estado = 'Confirmada'
		AND r.Fecha_Entrada BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY)
		-- Sin la validación de bitácora por ahora
		ORDER BY r.Fecha_Entrada, c.Es_VIP DESC;

-- Consulta 3
	
SET @fecha_consulta = '2025-06-10'; -- Cambiar por '2024-12-25' para fecha específica

SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Completo,
    c.Telefono_Cel,
    c.Email,
    r.Codigo_Confirmacion,
    r.Fecha_Entrada,
    r.Fecha_Salida,
    th.Nombre AS Tipo_Habitacion,
    h.ID_Habitacion,
    r.Costo_Total,
    @fecha_consulta AS Fecha_Consulta,
    CASE 
        WHEN r.Fecha_Entrada < @fecha_consulta THEN CONCAT('Retrasado ', ABS(DATEDIFF(r.Fecha_Entrada, @fecha_consulta)), ' días')
        WHEN r.Fecha_Entrada = @fecha_consulta THEN 'Llegada HOY'
        ELSE CONCAT('Llega en ', DATEDIFF(r.Fecha_Entrada, @fecha_consulta), ' días')
    END AS Estado_Llegada,
    CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente
FROM cliente c
JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE r.Estado = 'Confirmada'
AND r.Fecha_Entrada = @fecha_consulta  -- Usa la variable definida
AND NOT EXISTS (
    -- Verificar que NO existe registro de check-in en la bitácora
    SELECT 1 FROM bitacora_habitacion bh 
    WHERE bh.ID_Habitacion = h.ID_Habitacion 
    AND bh.CheckIn IS NOT NULL
    AND DATE(bh.CheckIn) = r.Fecha_Entrada
)
ORDER BY c.Es_VIP DESC, r.Costo_Total DESC;


-- ================================================================
-- 4. Reporte de ocupación de habitaciones por tipo
-- ================================================================
SELECT 
    th.Nombre AS Tipo_Habitacion,
    COUNT(h.ID_Habitacion) AS Total_Habitaciones,
    COUNT(CASE WHEN h.Estado = 'Ocupado' THEN 1 END) AS Habitaciones_Ocupadas,
    COUNT(CASE WHEN h.Estado = 'Disponible' THEN 1 END) AS Habitaciones_Disponibles,
    ROUND((COUNT(CASE WHEN h.Estado = 'Ocupado' THEN 1 END) * 100.0 / COUNT(h.ID_Habitacion)), 2) AS Porcentaje_Ocupacion
FROM tipo_habitacion th
LEFT JOIN habitacion h ON th.ID_Tipo_Habitacion = h.ID_Tipo_Habitacion
GROUP BY th.ID_Tipo_Habitacion, th.Nombre
ORDER BY Porcentaje_Ocupacion DESC;

-- ================================================================
-- 5. Proyección de reservas futuras en los próximos 7 días
-- ================================================================
SELECT 
    r.Fecha_Entrada,
    COUNT(r.ID_Reserva) AS Numero_Reservas,
    COUNT(drh.ID_Habitacion) AS Habitaciones_Reservadas,
    GROUP_CONCAT(DISTINCT th.Nombre) AS Tipos_Habitacion,
    SUM(r.Costo_Total) AS Ingresos_Proyectados
FROM reserva r
JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE r.Estado = 'Confirmada'
AND r.Fecha_Entrada BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
GROUP BY r.Fecha_Entrada
ORDER BY r.Fecha_Entrada;

-- ================================================================
-- 6. Reservas canceladas en el último mes
-- ================================================================
SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Cliente,
    r.Codigo_Confirmacion,
    r.Fecha_Entrada,
    r.Fecha_Salida,
    can.Fecha_Cancelacion,
    can.Motivo_Cancelacion,
    can.Penalizacion,
    th.Nombre AS Tipo_Habitacion
FROM reserva r
JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
JOIN cancelacion can ON r.Codigo_Confirmacion = can.Codigo_Confirmacion
LEFT JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
LEFT JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
LEFT JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE r.Estado = 'Cancelada'
AND can.Fecha_Cancelacion BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
ORDER BY can.Fecha_Cancelacion DESC;

-- ================================================================
-- 7. Clientes que han reservado más de 5 veces (Potenciales VIP)
-- ================================================================
SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Cliente,
    c.Email,
    c.Telefono_Cel,
    c.Contador_Registro AS Total_Reservas,
    IFNULL(cpv.Total_Gastado, 0) AS Total_Gastado,
    cpv.Estado AS Estado_VIP,
    c.Es_VIP,
    c.Fecha_Registro,
    cpv.Ultima_Estancia,
    CASE 
        WHEN c.Es_VIP = 1 THEN 'Ya es VIP'
        WHEN c.Contador_Registro >= 10 THEN 'VIP Inmediato'
        WHEN c.Contador_Registro >= 7 THEN 'Candidato Premium'
        WHEN c.Contador_Registro > 5 THEN 'Candidato VIP'
        ELSE 'Cliente Regular'
    END AS Clasificacion_Cliente
FROM cliente c
LEFT JOIN cliente_potencial_vip cpv ON c.ID_Cliente = cpv.ID_Cliente
WHERE c.Contador_Registro > 5
ORDER BY c.Contador_Registro DESC, cpv.Total_Gastado DESC;

-- ================================================================
-- 8. Servicios más utilizados por los clientes en un rango de fechas
-- ================================================================
SET @fecha_inicio = DATE_SUB('2025-04-01', INTERVAL 1 MONTH);
SET @fecha_fin = CURDATE();

SELECT 
    s.ID_Servicio,
    s.Nombre AS Servicio,
    s.Tipo,
    s.Precio AS Precio_Base,
    COUNT(cs.ID_Consumo) AS Veces_Consumido,
    SUM(cs.Cantidad) AS Cantidad_Total_Consumida,
    AVG(cs.Cantidad) AS Cantidad_Promedio_Por_Consumo,
    SUM(cs.Total) AS Ingresos_Generados,
    AVG(cs.Precio_Unitario) AS Precio_Promedio_Cobrado,
    COUNT(DISTINCT cs.ID_Reserva) AS Reservas_Distintas,
    COUNT(DISTINCT r.ID_Cliente) AS Clientes_Distintos,
    ROUND((COUNT(cs.ID_Consumo) * 100.0 / 
          (SELECT COUNT(*) FROM consumo_servicio cs2 
           WHERE cs2.Fecha_Hora BETWEEN @fecha_inicio AND @fecha_fin)), 2) AS Porcentaje_Total_Consumos,
    s.Estado AS Estado_Servicio
FROM servicio s
JOIN consumo_servicio cs ON s.ID_Servicio = cs.ID_Servicio
JOIN reserva r ON cs.ID_Reserva = r.ID_Reserva
WHERE cs.Fecha_Hora BETWEEN @fecha_inicio AND @fecha_fin
GROUP BY s.ID_Servicio, s.Nombre, s.Tipo, s.Precio, s.Estado
ORDER BY Cantidad_Total_Consumida DESC, Veces_Consumido DESC, Ingresos_Generados DESC;

-- ================================================================
-- 9. Reporte rápido de finanzas - Ingresos por rango de fechas
-- ================================================================
SET @fecha_inicio_finanzas = '2024-01-01';  -- Cambiar fecha de inicio
SET @fecha_fin_finanzas = '2024-12-31';     -- Cambiar fecha de fin

-- REPORTE PRINCIPAL DE FINANZAS
SELECT 
    'REPORTE DE FINANZAS' AS Tipo_Reporte,
    @fecha_inicio_finanzas AS Fecha_Inicio,
    @fecha_fin_finanzas AS Fecha_Fin,
    DATEDIFF(@fecha_fin_finanzas, @fecha_inicio_finanzas) + 1 AS Dias_Periodo,
    '' AS Separador,
    '' AS Concepto,
    NULL AS Numero_Facturas,
    NULL AS Total_Ingresos,
    NULL AS Promedio_Diario

UNION ALL

-- INGRESOS POR HOSPEDAJE
SELECT 
    'DETALLE' AS Tipo_Reporte,
    '' AS Fecha_Inicio,
    '' AS Fecha_Fin,
    NULL AS Dias_Periodo,
    '' AS Separador,
    'Hospedaje' AS Concepto,
    COUNT(DISTINCT f.ID_Factura) AS Numero_Facturas,
    COALESCE(SUM(CASE WHEN df.ID_Detalle_Reserva_Habitacion IS NOT NULL THEN df.Subtotal ELSE 0 END), 0) AS Total_Ingresos,
    ROUND(COALESCE(SUM(CASE WHEN df.ID_Detalle_Reserva_Habitacion IS NOT NULL THEN df.Subtotal ELSE 0 END), 0) / 
          (DATEDIFF(@fecha_fin_finanzas, @fecha_inicio_finanzas) + 1), 2) AS Promedio_Diario
FROM factura f
JOIN detalle_factura df ON f.ID_Factura = df.ID_Factura
WHERE f.Estado = 'Pagada'
AND DATE(f.Fecha_Emision) BETWEEN @fecha_inicio_finanzas AND @fecha_fin_finanzas

UNION ALL

-- INGRESOS POR SERVICIOS
SELECT 
    'DETALLE' AS Tipo_Reporte,
    '' AS Fecha_Inicio,
    '' AS Fecha_Fin,
    NULL AS Dias_Periodo,
    '' AS Separador,
    'Servicios' AS Concepto,
    COUNT(DISTINCT f.ID_Factura) AS Numero_Facturas,
    COALESCE(SUM(CASE WHEN df.ID_Consumo_servicios IS NOT NULL THEN df.Subtotal ELSE 0 END), 0) AS Total_Ingresos,
    ROUND(COALESCE(SUM(CASE WHEN df.ID_Consumo_servicios IS NOT NULL THEN df.Subtotal ELSE 0 END), 0) / 
          (DATEDIFF(@fecha_fin_finanzas, @fecha_inicio_finanzas) + 1), 2) AS Promedio_Diario
FROM factura f
JOIN detalle_factura df ON f.ID_Factura = df.ID_Factura
WHERE f.Estado = 'Pagada'
AND DATE(f.Fecha_Emision) BETWEEN @fecha_inicio_finanzas AND @fecha_fin_finanzas

UNION ALL

-- INGRESOS POR PENALIZACIONES
SELECT 
    'DETALLE' AS Tipo_Reporte,
    '' AS Fecha_Inicio,
    '' AS Fecha_Fin,
    NULL AS Dias_Periodo,
    '' AS Separador,
    'Penalizaciones' AS Concepto,
    COUNT(DISTINCT f.ID_Factura) AS Numero_Facturas,
    COALESCE(SUM(f.Total), 0) AS Total_Ingresos,
    ROUND(COALESCE(SUM(f.Total), 0) / 
          (DATEDIFF(@fecha_fin_finanzas, @fecha_inicio_finanzas) + 1), 2) AS Promedio_Diario
FROM factura f
WHERE f.Estado = 'Pagada'
AND f.Numero_Transaccion LIKE 'CANCEL-%'
AND DATE(f.Fecha_Emision) BETWEEN @fecha_inicio_finanzas AND @fecha_fin_finanzas

UNION ALL

-- SEPARADOR
SELECT 
    'SEPARADOR' AS Tipo_Reporte,
    '' AS Fecha_Inicio,
    '' AS Fecha_Fin,
    NULL AS Dias_Periodo,
    '========================' AS Separador,
    '' AS Concepto,
    NULL AS Numero_Facturas,
    NULL AS Total_Ingresos,
    NULL AS Promedio_Diario

UNION ALL

-- TOTAL GENERAL
SELECT 
    'TOTAL' AS Tipo_Reporte,
    '' AS Fecha_Inicio,
    '' AS Fecha_Fin,
    NULL AS Dias_Periodo,
    '' AS Separador,
    'TOTAL GENERAL' AS Concepto,
    COUNT(DISTINCT f.ID_Factura) AS Numero_Facturas,
    COALESCE(SUM(f.Total), 0) AS Total_Ingresos,
    ROUND(COALESCE(SUM(f.Total), 0) / 
          (DATEDIFF(@fecha_fin_finanzas, @fecha_inicio_finanzas) + 1), 2) AS Promedio_Diario
FROM factura f
WHERE f.Estado = 'Pagada'
AND DATE(f.Fecha_Emision) BETWEEN @fecha_inicio_finanzas AND @fecha_fin_finanzas

ORDER BY 
    CASE Tipo_Reporte 
        WHEN 'REPORTE DE FINANZAS' THEN 1
        WHEN 'DETALLE' THEN 2
        WHEN 'SEPARADOR' THEN 3
        WHEN 'TOTAL' THEN 4
    END;

-- ================================================================
-- 10. Facturas emitidas en rango de fechas específico
-- ================================================================
SELECT 
    f.ID_Factura,
    f.Numero_Transaccion,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Cliente,
    f.RFC,
    f.Fecha_Emision,
    f.Total,
    f.Estado,
    f.Metodo_Pago,
    r.Codigo_Confirmacion,
    CONCAT(emp.Nombre, ' ', emp.Apellido1) AS Empleado_Emisor
FROM factura f
JOIN reserva r ON f.ID_Reserva = r.ID_Reserva
JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
LEFT JOIN empleados emp ON f.ID_Empleado = emp.ID_Empleado
WHERE f.Fecha_Emision BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
ORDER BY f.Fecha_Emision DESC, f.Total DESC;

-- ================================================================
-- 11. Top 10 mejores clientes del hotel
-- ================================================================
SELECT 
    ROW_NUMBER() OVER (ORDER BY Total_Gastado DESC) AS Ranking,
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Cliente,
    c.Email,
    cpv.Contador_Reservas,
    cpv.Total_Gastado,
    cpv.Ultima_Estancia,
    CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente,
    ci.Nombre AS Ciudad_Origen,
    AVG(sc.Calificacion_General) AS Satisfaccion_Promedio
FROM cliente c
JOIN cliente_potencial_vip cpv ON c.ID_Cliente = cpv.ID_Cliente
LEFT JOIN ciudad ci ON c.ID_Ciudad_Origen = ci.ID_Ciudad
LEFT JOIN satisfaccion_cliente sc ON c.ID_Cliente = sc.ID_Cliente
WHERE cpv.Total_Gastado > 0
GROUP BY c.ID_Cliente, c.Nombre, c.Apellido1, c.Apellido2, c.Email, 
         cpv.Contador_Reservas, cpv.Total_Gastado, cpv.Ultima_Estancia, c.Es_VIP, ci.Nombre
ORDER BY cpv.Total_Gastado DESC
LIMIT 10;

-- ================================================================
-- 12. Habitaciones no ocupadas en el último mes
-- ================================================================
SELECT 
    h.ID_Habitacion,
    th.Nombre AS Tipo_Habitacion,
    h.Piso,
    h.Estado,
    th.Precio_Base,
    IFNULL(ultima_ocupacion.Ultima_Fecha, 'Nunca ocupada') AS Ultima_Ocupacion,
    CASE 
        WHEN ultima_ocupacion.Ultima_Fecha IS NULL THEN 'Nunca'
        ELSE CONCAT(DATEDIFF(CURDATE(), ultima_ocupacion.Ultima_Fecha), ' días')
    END AS Dias_Sin_Ocupar
FROM habitacion h
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
LEFT JOIN (
    SELECT 
        drh.ID_Habitacion,
        MAX(drh.Fecha_Check_Out) AS Ultima_Fecha
    FROM detalle_reserva_habitacion drh
    WHERE drh.Fecha_Check_Out IS NOT NULL
    GROUP BY drh.ID_Habitacion
) ultima_ocupacion ON h.ID_Habitacion = ultima_ocupacion.ID_Habitacion
WHERE (ultima_ocupacion.Ultima_Fecha IS NULL 
       OR ultima_ocupacion.Ultima_Fecha < DATE_SUB(CURDATE(), INTERVAL 1 MONTH))
ORDER BY th.Precio_Base DESC, h.ID_Habitacion;

-- ================================================================
-- 13. Duración promedio de estancias por tipo de habitación
-- ================================================================
SELECT 
    th.Nombre AS Tipo_Habitacion,
    COUNT(drh.ID_Detalle_Reserva_Habitacion) AS Total_Estancias,
    AVG(DATEDIFF(
        IFNULL(drh.Fecha_Check_Out, r.Fecha_Salida),
        IFNULL(drh.Fecha_Check_In, r.Fecha_Entrada)
    )) AS Duracion_Promedio_Noches,
    MIN(DATEDIFF(
        IFNULL(drh.Fecha_Check_Out, r.Fecha_Salida),
        IFNULL(drh.Fecha_Check_In, r.Fecha_Entrada)
    )) AS Estancia_Minima,
    MAX(DATEDIFF(
        IFNULL(drh.Fecha_Check_Out, r.Fecha_Salida),
        IFNULL(drh.Fecha_Check_In, r.Fecha_Entrada)
    )) AS Estancia_Maxima,
    AVG(drh.Precio_Noche) AS Precio_Promedio_Noche
FROM tipo_habitacion th
JOIN habitacion h ON th.ID_Tipo_Habitacion = h.ID_Tipo_Habitacion
JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
WHERE r.Estado IN ('Confirmada', 'Completada')
GROUP BY th.ID_Tipo_Habitacion, th.Nombre
ORDER BY Duracion_Promedio_Noches DESC;

-- ================================================================
-- 14. Servicios no utilizados en el último mes
-- ================================================================
SELECT 
    s.ID_Servicio,
    s.Nombre,
    s.Tipo,
    s.Precio,
    s.Estado,
    d.Nombre AS Departamento,
    IFNULL(ultimo_uso.Ultima_Fecha, 'Nunca utilizado') AS Ultimo_Uso
FROM servicio s
LEFT JOIN departamento d ON s.Departamento = d.ID_Departamento
LEFT JOIN (
    SELECT 
        cs.ID_Servicio,
        MAX(cs.Fecha_Hora) AS Ultima_Fecha
    FROM consumo_servicio cs
    GROUP BY cs.ID_Servicio
) ultimo_uso ON s.ID_Servicio = ultimo_uso.ID_Servicio
WHERE s.Estado = 'Activo'
AND (ultimo_uso.Ultima_Fecha IS NULL 
     OR ultimo_uso.Ultima_Fecha < DATE_SUB(CURDATE(), INTERVAL 1 MONTH))
ORDER BY s.Precio DESC, s.Nombre;

-- ================================================================
-- 15. Reservas por tipo de habitación en el último año
-- ================================================================
SELECT 
    th.Nombre AS Tipo_Habitacion,
    COUNT(drh.ID_Detalle_Reserva_Habitacion) AS Total_Reservas,
    SUM(drh.Precio_Noche * DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada)) AS Ingresos_Generados,
    AVG(drh.Precio_Noche) AS Precio_Promedio_Noche,
    ROUND((COUNT(drh.ID_Detalle_Reserva_Habitacion) * 100.0 / 
          (SELECT COUNT(*) FROM detalle_reserva_habitacion drh2
           JOIN reserva r2 ON drh2.ID_Reserva = r2.ID_Reserva
           WHERE r2.Fecha_Creacion BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND CURDATE())), 2) AS Porcentaje_Demanda
FROM tipo_habitacion th
LEFT JOIN habitacion h ON th.ID_Tipo_Habitacion = h.ID_Tipo_Habitacion
LEFT JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
LEFT JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
WHERE r.Fecha_Creacion BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND CURDATE()
AND r.Estado IN ('Confirmada', 'Completada')
GROUP BY th.ID_Tipo_Habitacion, th.Nombre
ORDER BY Total_Reservas DESC, Ingresos_Generados DESC;

-- ================================================================
-- 16. Clientes que cancelaron más de 2 reservas
-- ================================================================
SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Cliente,
    c.Email,
    c.Telefono_Cel,
    COUNT(can.ID_Cancelacion) AS Total_Cancelaciones,
    GROUP_CONCAT(
        CONCAT(r.Fecha_Entrada, ' (', th.Nombre, ') - ', can.Motivo_Cancelacion)
        ORDER BY can.Fecha_Cancelacion DESC
        SEPARATOR '; '
    ) AS Detalles_Cancelaciones,
    SUM(can.Penalizacion) AS Total_Penalizaciones
FROM cliente c
JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
JOIN cancelacion can ON r.Codigo_Confirmacion = can.Codigo_Confirmacion
LEFT JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
LEFT JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
LEFT JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE r.Estado = 'Cancelada'
GROUP BY c.ID_Cliente, c.Nombre, c.Apellido1, c.Apellido2, c.Email, c.Telefono_Cel
HAVING COUNT(can.ID_Cancelacion) > 2
ORDER BY Total_Cancelaciones DESC, Total_Penalizaciones DESC;

-- ================================================================
-- 17. Número de reservas por país de origen del cliente
-- ================================================================
SELECT 
    p.Nombre AS Pais,
    COUNT(DISTINCT c.ID_Cliente) AS Visitantes
FROM pais p
JOIN estado e ON p.ID_Pais = e.ID_Pais
JOIN ciudad ci ON e.ID_Estado = ci.ID_Estado
JOIN cliente c ON ci.ID_Ciudad = c.ID_Ciudad_Origen
JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
WHERE r.Estado IN ('Confirmada', 'Completada')
GROUP BY p.ID_Pais, p.Nombre
ORDER BY Visitantes DESC;

-- ================================================================
-- 18. Promedio de facturación diaria
-- ================================================================
-- CONFIGURAR EL MES QUE QUIERES ANALIZAR
SET @fecha_inicio = '2024-07-01';
SET @fecha_fin = '2025-07-31';

-- PROMEDIO DE FACTURACIÓN DEL MES
SELECT 
    @fecha_inicio AS Fecha_Inicio,
    @fecha_fin AS Fecha_Fin,
    COUNT(f.ID_Factura) AS Total_Facturas,
    FORMAT(SUM(f.Total), 2) AS Total_Facturado,
    FORMAT(AVG(f.Total), 2) AS Promedio_Por_Factura,
    DATEDIFF(@fecha_fin, @fecha_inicio) + 1 AS Dias_Del_Mes,
    FORMAT(SUM(f.Total) / (DATEDIFF(@fecha_fin, @fecha_inicio) + 1), 2) AS Promedio_Diario
FROM factura f
WHERE f.Estado = 'Pagada'
AND DATE(f.Fecha_Emision) BETWEEN @fecha_inicio AND @fecha_fin;


-- ================================================================
-- 19. Clientes sin email registrado
-- ================================================================
SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Cliente,
    c.Telefono_Casa,
    c.Telefono_Cel,
    c.RFC,
    c.Fecha_Registro,
    ci.Nombre AS Ciudad_Origen,
    COUNT(r.ID_Reserva) AS Total_Reservas,
    CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente
FROM cliente c
LEFT JOIN ciudad ci ON c.ID_Ciudad_Origen = ci.ID_Ciudad
LEFT JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
WHERE c.Email IS NULL OR TRIM(c.Email) = ''
GROUP BY c.ID_Cliente, c.Nombre, c.Apellido1, c.Apellido2, c.Telefono_Casa, 
         c.Telefono_Cel, c.RFC, c.Fecha_Registro, ci.Nombre, c.Es_VIP
ORDER BY Total_Reservas DESC, c.Fecha_Registro DESC;

-- ================================================================
-- 20. Clientes VIP hospedados actualmente
-- ================================================================
SELECT 
    c.ID_Cliente,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Cliente,
    c.Email,
    c.Telefono_Cel,
    r.Codigo_Confirmacion,
    drh.Fecha_Check_In,
    r.Fecha_Salida,
    th.Nombre AS Tipo_Habitacion,
    h.ID_Habitacion,
    cpv.Contador_Reservas,
    cpv.Total_Gastado,
    DATEDIFF(r.Fecha_Salida, CURDATE()) AS Dias_Restantes
FROM cliente c
JOIN cliente_potencial_vip cpv ON c.ID_Cliente = cpv.ID_Cliente
JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE c.Es_VIP = 1
AND r.Estado = 'Confirmada'
AND drh.Fecha_Check_In IS NOT NULL
AND (drh.Fecha_Check_Out IS NULL OR drh.Fecha_Check_Out >= CURDATE())
ORDER BY cpv.Total_Gastado DESC, drh.Fecha_Check_In;

-- ================================================================
-- 21. Auditoría de cambios de estado de habitación específica
-- ================================================================
SELECT 
    bh.Fecha_Hora_Cambio,
    bh.Estado,
    bh.Motivo_cambio,
    IFNULL(CONCAT(emp.Nombre, ' ', emp.Apellido1), 'Sistema Automático') AS Agente,
    IFNULL(CONCAT(c.Nombre, ' ', c.Apellido1), 'Sin cliente asociado') AS Cliente,
    IFNULL(r.Codigo_Confirmacion, 'Sin reserva') AS Codigo_Reserva,
    IFNULL(r.Costo_Total, 0) AS Costo_Reserva,
    bh.CheckIn,
    bh.Checkout
FROM bitacora_habitacion bh
LEFT JOIN empleados emp ON bh.ID_Empleado = emp.ID_Empleado
LEFT JOIN fechas_ocupadas fo ON bh.ID_Habitacion = fo.ID_Habitacion 
    AND DATE(bh.Fecha_Hora_Cambio) BETWEEN fo.Fecha_Checkin AND fo.Fecha_Checkout
LEFT JOIN reserva r ON fo.ID_Reserva = r.ID_Reserva
LEFT JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
WHERE bh.ID_Habitacion = 101 -- Cambiar por la habitación específica
ORDER BY bh.Fecha_Hora_Cambio DESC;

-- ================================================================
-- 22. Facturas sin pagar o pendientes
-- ================================================================
SELECT 
    f.ID_Factura,
    f.Numero_Transaccion,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Cliente,
    c.Email,
    c.Telefono_Cel,
    f.RFC,
    f.Fecha_Emision,
    f.Total,
    f.Estado,
    r.Codigo_Confirmacion,
    DATEDIFF(CURDATE(), f.Fecha_Emision) AS Dias_Pendiente,
    CASE 
        WHEN f.Numero_Transaccion LIKE 'CANCEL-%' THEN 'Penalización por Cancelación'
        ELSE 'Factura Regular'
    END AS Tipo_Factura
FROM factura f
JOIN reserva r ON f.ID_Reserva = r.ID_Reserva
JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
WHERE f.Estado IN ('Pendiente')
AND f.Fecha_Emision BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AND CURDATE()
ORDER BY f.Fecha_Emision ASC, f.Total DESC;

-- ================================================================
-- 23. Reservas expiradas no actualizadas (detección de errores)
-- ================================================================
SELECT 
    r.ID_Reserva,
    r.Codigo_Confirmacion,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Cliente,
    c.Telefono_Cel,
    r.Fecha_Entrada,
    r.Fecha_Salida,
    r.Estado,
    drh.Fecha_Check_In,
    drh.Fecha_Check_Out,
    DATEDIFF(CURDATE(), r.Fecha_Entrada) AS Dias_Desde_Entrada,
    th.Nombre AS Tipo_Habitacion,
    h.ID_Habitacion,
    h.Estado AS Estado_Habitacion
FROM reserva r
JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
JOIN detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
WHERE r.Estado = 'Confirmada'
AND r.Fecha_Entrada < CURDATE()
AND drh.Fecha_Check_In IS NULL
ORDER BY r.Fecha_Entrada;

-- ================================================================
-- 24. Porcentaje de ocupación mensual por tipo de habitación
-- ================================================================
SELECT 
    th.Nombre AS Tipo_Habitacion,
    YEAR(r.Fecha_Entrada) AS Anio,
    MONTH(r.Fecha_Entrada) AS Mes,
    MONTHNAME(r.Fecha_Entrada) AS Nombre_Mes,
    COUNT(h.ID_Habitacion) AS Total_Habitaciones_Tipo,
    COUNT(drh.ID_Habitacion) AS Habitaciones_Ocupadas,
    ROUND((COUNT(drh.ID_Habitacion) * 100.0 / COUNT(h.ID_Habitacion)), 2) AS Porcentaje_Ocupacion,
    SUM(drh.Precio_Noche * DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada)) AS Ingresos_Mes
FROM tipo_habitacion th
LEFT JOIN habitacion h ON th.ID_Tipo_Habitacion = h.ID_Tipo_Habitacion
LEFT JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
LEFT JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
WHERE r.Fecha_Entrada BETWEEN DATE_SUB(CURDATE(), INTERVAL 6 MONTH) AND CURDATE()
AND r.Estado IN ('Confirmada', 'Completada')
GROUP BY th.ID_Tipo_Habitacion, th.Nombre, YEAR(r.Fecha_Entrada), MONTH(r.Fecha_Entrada)
ORDER BY Anio DESC, Mes DESC, Porcentaje_Ocupacion DESC;

-- ================================================================
-- 25. Ingresos por tipo de habitación en rango específico
-- ================================================================
SET @fecha_inicio_ingresos = DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
SET @fecha_fin_ingresos = CURDATE();

SELECT 
    th.Nombre AS Tipo_Habitacion,
    COUNT(drh.ID_Detalle_Reserva_Habitacion) AS Total_Reservas,
    SUM(drh.Precio_Noche * DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada)) AS Ingresos_Hospedaje,
    AVG(drh.Precio_Noche) AS Precio_Promedio_Noche,
    SUM(DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada)) AS Total_Noches_Vendidas,
    COUNT(DISTINCT r.ID_Cliente) AS Clientes_Distintos,
    AVG(DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada)) AS Promedio_Noches_Por_Reserva,
    ROUND((SUM(drh.Precio_Noche * DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada)) * 100.0 / 
          (SELECT SUM(drh2.Precio_Noche * DATEDIFF(r2.Fecha_Salida, r2.Fecha_Entrada))
           FROM detalle_reserva_habitacion drh2
           JOIN reserva r2 ON drh2.ID_Reserva = r2.ID_Reserva
           WHERE r2.Fecha_Entrada BETWEEN @fecha_inicio_ingresos AND @fecha_fin_ingresos
           AND r2.Estado IN ('Confirmada', 'Completada'))), 2) AS Porcentaje_Ingresos_Totales,
    @fecha_inicio_ingresos AS Fecha_Inicio_Consulta,
    @fecha_fin_ingresos AS Fecha_Fin_Consulta
FROM tipo_habitacion th
JOIN habitacion h ON th.ID_Tipo_Habitacion = h.ID_Tipo_Habitacion
JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
WHERE r.Fecha_Entrada BETWEEN @fecha_inicio_ingresos AND @fecha_fin_ingresos
AND r.Estado IN ('Confirmada', 'Completada')
GROUP BY th.ID_Tipo_Habitacion, th.Nombre
ORDER BY Ingresos_Hospedaje DESC;

-- ================================================================
-- 26. Empleados y bonos acumulados por rango de fechas
-- ================================================================

SET @fecha_inicio_bonos = '2024-01-01';  -- Cambiar fecha de inicio
SET @fecha_fin_bonos = '2024-12-31';     -- Cambiar fecha de fin


-- REPORTE PRINCIPAL DE EMPLEADOS Y BONOS
SELECT 
    ROW_NUMBER() OVER (ORDER BY COALESCE(bonos_resumen.Bonos_Acumulados, 0) DESC, e.Salario DESC) AS Ranking,
    e.ID_Empleado,
    CONCAT(e.Nombre, ' ', e.Apellido1, ' ', IFNULL(e.Apellido2, '')) AS Nombre_Empleado,
    e.Puesto,
    d.Nombre AS Departamento,
    e.Salario,
    e.Estado AS Estado_Empleado,
    e.Fecha_de_inicio,
    
    -- INFORMACIÓN DE BONOS EN EL PERÍODO
    COALESCE(bonos_resumen.Total_Bonos, 0) AS Total_Bonos_Periodo,
    COALESCE(bonos_resumen.Bonos_Acumulados, 0) AS Bonos_Acumulados_Periodo,
    COALESCE(bonos_resumen.Bono_Promedio, 0) AS Bono_Promedio,
    COALESCE(bonos_resumen.Primer_Bono, 'Sin bonos') AS Primer_Bono_Periodo,
    COALESCE(bonos_resumen.Ultimo_Bono, 'Sin bonos') AS Ultimo_Bono_Periodo,
    
    -- CÁLCULOS FINANCIEROS
    CASE 
        WHEN e.Salario > 0 AND bonos_resumen.Bonos_Acumulados > 0 THEN
            ROUND((bonos_resumen.Bonos_Acumulados * 100.0 / e.Salario), 2)
        ELSE 0
    END AS Porcentaje_Bono_Vs_Salario_Mensual,
    
    -- INGRESO TOTAL ESTIMADO (salario + bonos del período)
    e.Salario + COALESCE(bonos_resumen.Bonos_Acumulados, 0) AS Ingreso_Total_Estimado,
    
    -- TIPOS DE BONOS RECIBIDOS
    COALESCE(bonos_resumen.Tipos_Bonos, 'Sin bonos en el período') AS Tipos_Bonos_Recibidos,
    
    -- PERÍODO DE CONSULTA
    @fecha_inicio_bonos AS Fecha_Inicio_Consulta,
    @fecha_fin_bonos AS Fecha_Fin_Consulta,
    
    -- CLASIFICACIÓN DEL EMPLEADO
    CASE 
        WHEN COALESCE(bonos_resumen.Total_Bonos, 0) = 0 THEN 'Sin bonos'
        WHEN COALESCE(bonos_resumen.Total_Bonos, 0) = 1 THEN 'Bono único'
        WHEN COALESCE(bonos_resumen.Total_Bonos, 0) BETWEEN 2 AND 3 THEN 'Bonos ocasionales'
        WHEN COALESCE(bonos_resumen.Total_Bonos, 0) BETWEEN 4 AND 6 THEN 'Bonos regulares'
        WHEN COALESCE(bonos_resumen.Total_Bonos, 0) > 6 THEN 'Bonos frecuentes'
    END AS Clasificacion_Bonos

FROM empleados e
LEFT JOIN departamento d ON e.ID_Departamento = d.ID_Departamento

-- SUBQUERY PARA RESUMEN DE BONOS POR EMPLEADO
LEFT JOIN (
    SELECT 
        be.ID_Empleado,
        COUNT(be.ID_Bono) AS Total_Bonos,
        SUM(be.Monto) AS Bonos_Acumulados,
        AVG(be.Monto) AS Bono_Promedio,
        MIN(be.Fecha_Pago) AS Primer_Bono,
        MAX(be.Fecha_Pago) AS Ultimo_Bono,
        GROUP_CONCAT(
            DISTINCT CONCAT(tdb.Descripcion, ' ($', FORMAT(be.Monto, 2), ')')
            ORDER BY be.Fecha_Pago DESC 
            SEPARATOR '; '
        ) AS Tipos_Bonos
    FROM bono_empleado be
    LEFT JOIN tipo_de_bono tdb ON be.ID_Tipo_de_Bono = tdb.ID_Tipo_de_Bono
    WHERE be.Fecha_Pago BETWEEN @fecha_inicio_bonos AND @fecha_fin_bonos
    GROUP BY be.ID_Empleado
) bonos_resumen ON e.ID_Empleado = bonos_resumen.ID_Empleado

WHERE e.Estado = 'Activo'  -- Solo empleados activos
ORDER BY 
    COALESCE(bonos_resumen.Bonos_Acumulados, 0) DESC,
    e.Puesto,
    e.Salario DESC;

-- ================================================================
-- 27. Servicios más utilizados por Clientes VIP
-- ================================================================
SELECT 
    s.ID_Servicio,
    s.Nombre AS Servicio,
    s.Tipo,
    s.Precio,
    COUNT(cs.ID_Consumo) AS Veces_Utilizado_VIP,
    SUM(cs.Cantidad) AS Cantidad_Total_VIP,
    SUM(cs.Total) AS Ingresos_VIP,
    AVG(cs.Precio_Unitario) AS Precio_Promedio_VIP,
    COUNT(DISTINCT c.ID_Cliente) AS Clientes_VIP_Distintos,
    ROUND((COUNT(cs.ID_Consumo) * 100.0 / 
          (SELECT COUNT(*) FROM consumo_servicio cs2 
           WHERE cs2.ID_Servicio = s.ID_Servicio)), 2) AS Porcentaje_Uso_VIP
FROM servicio s
JOIN consumo_servicio cs ON s.ID_Servicio = cs.ID_Servicio
JOIN reserva r ON cs.ID_Reserva = r.ID_Reserva
JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
WHERE c.Es_VIP = 1
GROUP BY s.ID_Servicio, s.Nombre, s.Tipo, s.Precio
ORDER BY Veces_Utilizado_VIP DESC, Ingresos_VIP DESC;

-- ================================================================
-- 28. Quejas registradas por departamento en rango de fechas
-- ================================================================
SELECT 
    d.Nombre AS Departamento,
    COUNT(q.ID_Queja) AS Total_Quejas,
    COUNT(CASE WHEN q.Prioridad = 'Alta' THEN 1 END) AS Quejas_Alta_Prioridad,
    COUNT(CASE WHEN q.Estado = 'Resuelto' THEN 1 END) AS Quejas_Resueltas,
    COUNT(CASE WHEN q.Estado = 'Pendiente' THEN 1 END) AS Quejas_Pendientes,
    AVG(CASE WHEN q.Satisfaccion_Cliente IS NOT NULL THEN q.Satisfaccion_Cliente END) AS Satisfaccion_Promedio,
    AVG(CASE WHEN q.Fecha_Resolucion IS NOT NULL 
        THEN DATEDIFF(q.Fecha_Resolucion, q.Fecha_Hora) END) AS Dias_Promedio_Resolucion,
    GROUP_CONCAT(DISTINCT q.Prioridad ORDER BY q.Fecha_Hora DESC SEPARATOR ', ') AS Prioridades_Recientes
FROM departamento d
LEFT JOIN queja q ON d.ID_Departamento = q.Departamento_Afectado
WHERE q.Fecha_Hora BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AND CURDATE()
OR q.Fecha_Hora IS NULL
GROUP BY d.ID_Departamento, d.Nombre
HAVING Total_Quejas > 0
ORDER BY Total_Quejas DESC, Quejas_Alta_Prioridad DESC;

-- ================================================================
-- 29. Departamento con mejor rating de satisfacción
-- ================================================================
SELECT 
    d.Nombre AS Departamento,
    COUNT(q.ID_Queja) AS Total_Quejas_Evaluadas,
    AVG(q.Satisfaccion_Cliente) AS Rating_Satisfaccion_Promedio,
    COUNT(CASE WHEN q.Satisfaccion_Cliente >= 4 THEN 1 END) AS Evaluaciones_Positivas,
    COUNT(CASE WHEN q.Satisfaccion_Cliente <= 2 THEN 1 END) AS Evaluaciones_Negativas,
    ROUND((COUNT(CASE WHEN q.Satisfaccion_Cliente >= 4 THEN 1 END) * 100.0 / 
          COUNT(q.Satisfaccion_Cliente)), 2) AS Porcentaje_Satisfaccion,
    AVG(CASE WHEN q.Fecha_Resolucion IS NOT NULL 
        THEN DATEDIFF(q.Fecha_Resolucion, q.Fecha_Hora) END) AS Tiempo_Promedio_Resolucion,
    CONCAT(emp.Nombre, ' ', emp.Apellido1) AS Responsable_Departamento
FROM departamento d
LEFT JOIN queja q ON d.ID_Departamento = q.Departamento_Afectado
LEFT JOIN empleados emp ON d.Responsable = emp.ID_Empleado
WHERE q.Satisfaccion_Cliente IS NOT NULL
AND q.Fecha_Hora BETWEEN DATE_SUB(CURDATE(), INTERVAL 6 MONTH) AND CURDATE()
GROUP BY d.ID_Departamento, d.Nombre, emp.Nombre, emp.Apellido1
HAVING COUNT(q.Satisfaccion_Cliente) >= 3  -- Mínimo 3 evaluaciones para ser considerado
ORDER BY Rating_Satisfaccion_Promedio DESC, Porcentaje_Satisfaccion DESC;

-- ================================================================
-- 30. Habitaciones con mayor duración de estancia por tipo
-- ================================================================
SELECT 
    th.Nombre AS Tipo_Habitacion,
    h.ID_Habitacion,
    h.Piso,
    CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Cliente,
    r.Codigo_Confirmacion,
    drh.Fecha_Check_In,
    IFNULL(drh.Fecha_Check_Out, 'Aún hospedado') AS Fecha_Check_Out,
    CASE 
        WHEN drh.Fecha_Check_Out IS NOT NULL THEN 
            DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
        ELSE 
            DATEDIFF(CURDATE(), drh.Fecha_Check_In)
    END AS Duracion_Estancia,
    drh.Precio_Noche,
    CASE 
        WHEN drh.Fecha_Check_Out IS NOT NULL THEN 
            drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
        ELSE 
            drh.Precio_Noche * DATEDIFF(CURDATE(), drh.Fecha_Check_In)
    END AS Costo_Total_Estancia,
    CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente
FROM tipo_habitacion th
JOIN habitacion h ON th.ID_Tipo_Habitacion = h.ID_Tipo_Habitacion
JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
WHERE drh.Fecha_Check_In IS NOT NULL
AND drh.Fecha_Check_In BETWEEN DATE_SUB(CURDATE(), INTERVAL 6 MONTH) AND CURDATE()
AND r.Estado IN ('Confirmada', 'Completada')
ORDER BY Duracion_Estancia DESC, th.Nombre, Costo_Total_Estancia DESC
LIMIT 50;

-- ================================================================
-- Se acabo el semestre :)
-- ================================================================



