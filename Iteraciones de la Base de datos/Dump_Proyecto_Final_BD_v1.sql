CREATE DATABASE  IF NOT EXISTS `hotel_mafia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_mafia`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_mafia
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora_habitacion`
--

DROP TABLE IF EXISTS `bitacora_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_habitacion` (
  `ID_Bitacora` int NOT NULL AUTO_INCREMENT,
  `ID_Habitacion` int NOT NULL,
  `Fecha_inicio` datetime DEFAULT NULL,
  `Fecha_final` datetime DEFAULT NULL,
  `CheckIn` datetime DEFAULT NULL,
  `Checkout` datetime DEFAULT NULL,
  `ID_Empleado` int DEFAULT NULL,
  `Descripcion` text,
  `ID_Reserva` int DEFAULT NULL,
  PRIMARY KEY (`ID_Bitacora`),
  KEY `ID_Habitacion` (`ID_Habitacion`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `ID_Reserva` (`ID_Reserva`),
  CONSTRAINT `bitacora_habitacion_ibfk_1` FOREIGN KEY (`ID_Habitacion`) REFERENCES `habitacion` (`ID_Habitacion`),
  CONSTRAINT `bitacora_habitacion_ibfk_2` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`),
  CONSTRAINT `bitacora_habitacion_ibfk_3` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_habitacion`
--

LOCK TABLES `bitacora_habitacion` WRITE;
/*!40000 ALTER TABLE `bitacora_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bono_empleado`
--

DROP TABLE IF EXISTS `bono_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bono_empleado` (
  `ID_Bono` int NOT NULL AUTO_INCREMENT,
  `ID_Empleado` int NOT NULL,
  `ID_Tipo_de_Bono` int NOT NULL,
  `Monto` decimal(10,2) NOT NULL,
  `Fecha_Pago` date NOT NULL,
  PRIMARY KEY (`ID_Bono`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `ID_Tipo_de_Bono` (`ID_Tipo_de_Bono`),
  CONSTRAINT `bono_empleado_ibfk_1` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`),
  CONSTRAINT `bono_empleado_ibfk_2` FOREIGN KEY (`ID_Tipo_de_Bono`) REFERENCES `tipo_de_bono` (`ID_Tipo_de_Bono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bono_empleado`
--

LOCK TABLES `bono_empleado` WRITE;
/*!40000 ALTER TABLE `bono_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `bono_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelacion`
--

DROP TABLE IF EXISTS `cancelacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancelacion` (
  `ID_Cancelacion` int NOT NULL AUTO_INCREMENT,
  `Motivo_Cancelacion` text NOT NULL,
  `Penalizacion` decimal(10,2) NOT NULL,
  `Fecha_Cancelacion` datetime NOT NULL,
  `Codigo_Confirmacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Cancelacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelacion`
--

LOCK TABLES `cancelacion` WRITE;
/*!40000 ALTER TABLE `cancelacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `ID_Ciudad` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `ID_Estado` int NOT NULL,
  PRIMARY KEY (`ID_Ciudad`),
  KEY `ID_Estado` (`ID_Estado`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`ID_Estado`) REFERENCES `estado` (`ID_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido1` varchar(100) NOT NULL,
  `Apellido2` varchar(100) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Telefono_Casa` varchar(20) DEFAULT NULL,
  `Telefono_Cel` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `Es_VIP` tinyint(1) DEFAULT '0',
  `ID_Ciudad_Origen` int DEFAULT NULL,
  `Fecha_Registro` date NOT NULL,
  `Contador_Registro` int DEFAULT '0',
  PRIMARY KEY (`ID_Cliente`),
  KEY `ID_Ciudad_Origen` (`ID_Ciudad_Origen`),
  KEY `idx_cliente_es_vip` (`Es_VIP`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_Ciudad_Origen`) REFERENCES `ciudad` (`ID_Ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_potencial_vip`
--

DROP TABLE IF EXISTS `cliente_potencial_vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_potencial_vip` (
  `ID_Cliente_VIP` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int NOT NULL,
  `Contador_Reservas` int DEFAULT '0',
  `Total_Gastado` decimal(10,2) DEFAULT '0.00',
  `Ultima_Estancia` date DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Fecha_Ingreso_Lista` date NOT NULL,
  PRIMARY KEY (`ID_Cliente_VIP`),
  KEY `ID_Cliente` (`ID_Cliente`),
  CONSTRAINT `cliente_potencial_vip_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_potencial_vip`
--

LOCK TABLES `cliente_potencial_vip` WRITE;
/*!40000 ALTER TABLE `cliente_potencial_vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_potencial_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumo_servicio`
--

DROP TABLE IF EXISTS `consumo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumo_servicio` (
  `ID_Consumo` int NOT NULL AUTO_INCREMENT,
  `ID_Reserva` int NOT NULL,
  `ID_Servicio` int NOT NULL,
  `Fecha_Hora` datetime NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Estado` enum('Pagado','No_Pagado') NOT NULL DEFAULT 'No_Pagado',
  `ID_Empleado` int DEFAULT NULL,
  PRIMARY KEY (`ID_Consumo`),
  KEY `ID_Reserva` (`ID_Reserva`),
  KEY `ID_Servicio` (`ID_Servicio`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `idx_consumo_estado` (`Estado`),
  CONSTRAINT `consumo_servicio_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`),
  CONSTRAINT `consumo_servicio_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `servicio` (`ID_Servicio`),
  CONSTRAINT `consumo_servicio_ibfk_3` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumo_servicio`
--

LOCK TABLES `consumo_servicio` WRITE;
/*!40000 ALTER TABLE `consumo_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `ID_Departamento` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Hora_inicio` time DEFAULT NULL,
  `Hora_final` time DEFAULT NULL,
  `ID_Hotel` int NOT NULL,
  `Responsable` int DEFAULT NULL,
  PRIMARY KEY (`ID_Departamento`),
  KEY `ID_Hotel` (`ID_Hotel`),
  KEY `Responsable` (`Responsable`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`ID_Hotel`) REFERENCES `hotel` (`ID_Hotel`),
  CONSTRAINT `departamento_ibfk_2` FOREIGN KEY (`Responsable`) REFERENCES `empleados` (`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `ID_Detalle_Factura` int NOT NULL AUTO_INCREMENT,
  `ID_Factura` int NOT NULL,
  `Concepto` varchar(255) NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `ID_Detalle_Reserva_Habitacion` int DEFAULT NULL,
  `ID_Consumo_servicios` int DEFAULT NULL,
  PRIMARY KEY (`ID_Detalle_Factura`),
  KEY `ID_Factura` (`ID_Factura`),
  KEY `ID_Detalle_Reserva_Habitacion` (`ID_Detalle_Reserva_Habitacion`),
  KEY `ID_Consumo_servicios` (`ID_Consumo_servicios`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`ID_Factura`) REFERENCES `factura` (`ID_Factura`),
  CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`ID_Detalle_Reserva_Habitacion`) REFERENCES `detalle_reserva_habitacion` (`ID_Detalle_Reserva_Habitacion`),
  CONSTRAINT `detalle_factura_ibfk_3` FOREIGN KEY (`ID_Consumo_servicios`) REFERENCES `consumo_servicio` (`ID_Consumo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_paquete`
--

DROP TABLE IF EXISTS `detalle_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_paquete` (
  `ID_Detalle_Paquete` int NOT NULL AUTO_INCREMENT,
  `ID_Paquete_promocional` int NOT NULL,
  `ID_Servicio` int DEFAULT NULL,
  `ID_TipoHabitacion` int DEFAULT NULL,
  `Cantidad_incluida` int NOT NULL,
  `Descuento_Especial` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Detalle_Paquete`),
  KEY `ID_Paquete_promocional` (`ID_Paquete_promocional`),
  KEY `ID_Servicio` (`ID_Servicio`),
  KEY `ID_TipoHabitacion` (`ID_TipoHabitacion`),
  CONSTRAINT `detalle_paquete_ibfk_1` FOREIGN KEY (`ID_Paquete_promocional`) REFERENCES `paquete_promocional` (`ID_Paquete`),
  CONSTRAINT `detalle_paquete_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `servicio` (`ID_Servicio`),
  CONSTRAINT `detalle_paquete_ibfk_3` FOREIGN KEY (`ID_TipoHabitacion`) REFERENCES `tipo_habitacion` (`ID_Tipo_Habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_paquete`
--

LOCK TABLES `detalle_paquete` WRITE;
/*!40000 ALTER TABLE `detalle_paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_reserva_habitacion`
--

DROP TABLE IF EXISTS `detalle_reserva_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_reserva_habitacion` (
  `ID_Detalle_Reserva_Habitacion` int NOT NULL AUTO_INCREMENT,
  `ID_Reserva` int NOT NULL,
  `ID_Habitacion` int NOT NULL,
  `Fecha_Check_In` datetime DEFAULT NULL,
  `Fecha_Check_Out` datetime DEFAULT NULL,
  `Precio_Noche` decimal(10,2) NOT NULL,
  `ID_Cancelacion` int DEFAULT NULL,
  PRIMARY KEY (`ID_Detalle_Reserva_Habitacion`),
  KEY `ID_Reserva` (`ID_Reserva`),
  KEY `ID_Habitacion` (`ID_Habitacion`),
  KEY `ID_Cancelacion` (`ID_Cancelacion`),
  CONSTRAINT `detalle_reserva_habitacion_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`),
  CONSTRAINT `detalle_reserva_habitacion_ibfk_2` FOREIGN KEY (`ID_Habitacion`) REFERENCES `habitacion` (`ID_Habitacion`),
  CONSTRAINT `detalle_reserva_habitacion_ibfk_3` FOREIGN KEY (`ID_Cancelacion`) REFERENCES `cancelacion` (`ID_Cancelacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_reserva_habitacion`
--

LOCK TABLES `detalle_reserva_habitacion` WRITE;
/*!40000 ALTER TABLE `detalle_reserva_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_reserva_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `ID_Empleado` int NOT NULL AUTO_INCREMENT,
  `ID_Hotel` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido1` varchar(100) NOT NULL,
  `Apellido2` varchar(100) DEFAULT NULL,
  `Puesto` varchar(100) NOT NULL,
  `Cuenta_de_banco` varchar(50) DEFAULT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Horario` enum('Matutino','Vespertino','Nocturno') NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `Fecha_de_inicio` date NOT NULL,
  `ID_Jefe` int DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `ID_Departamento` int NOT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`ID_Empleado`),
  KEY `ID_Hotel` (`ID_Hotel`),
  KEY `ID_Jefe` (`ID_Jefe`),
  KEY `ID_Departamento` (`ID_Departamento`),
  KEY `idx_empleado_puesto` (`Puesto`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`ID_Hotel`) REFERENCES `hotel` (`ID_Hotel`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`ID_Jefe`) REFERENCES `empleados` (`ID_Empleado`),
  CONSTRAINT `empleados_ibfk_3` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamento` (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `ID_Estado` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `ID_Pais` int NOT NULL,
  PRIMARY KEY (`ID_Estado`),
  KEY `ID_Pais` (`ID_Pais`),
  CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`ID_Pais`) REFERENCES `pais` (`ID_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `ID_Factura` int NOT NULL AUTO_INCREMENT,
  `ID_Reserva` int NOT NULL,
  `Fecha_Emision` datetime NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Estado` enum('Pagada','Pendiente','Cancelada') NOT NULL DEFAULT 'Pendiente',
  `Metodo_Pago` varchar(50) DEFAULT NULL,
  `Numero_Transaccion` varchar(100) DEFAULT NULL,
  `ID_Empleado` int DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`ID_Factura`),
  KEY `ID_Reserva` (`ID_Reserva`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `idx_factura_estado` (`Estado`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechas_ocupadas`
--

DROP TABLE IF EXISTS `fechas_ocupadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechas_ocupadas` (
  `ID_Habitacion` int NOT NULL,
  `Fecha_Checkin` date NOT NULL,
  `Fecha_Checkout` date NOT NULL,
  `ID_Reserva` int DEFAULT NULL,
  PRIMARY KEY (`ID_Habitacion`,`Fecha_Checkin`,`Fecha_Checkout`),
  KEY `ID_Reserva` (`ID_Reserva`),
  CONSTRAINT `fechas_ocupadas_ibfk_1` FOREIGN KEY (`ID_Habitacion`) REFERENCES `habitacion` (`ID_Habitacion`),
  CONSTRAINT `fechas_ocupadas_ibfk_2` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas_ocupadas`
--

LOCK TABLES `fechas_ocupadas` WRITE;
/*!40000 ALTER TABLE `fechas_ocupadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechas_ocupadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `ID_Habitacion` int NOT NULL AUTO_INCREMENT,
  `ID_Tipo_Habitacion` int NOT NULL,
  `Estado` enum('Disponible','Ocupado','Bloqueado','Fuera de servicio') NOT NULL DEFAULT 'Disponible',
  `Caracteristicas_especiales` text,
  `Piso` int NOT NULL,
  `Capacidad_Max` int NOT NULL,
  `ID_Hotel` int NOT NULL,
  PRIMARY KEY (`ID_Habitacion`),
  KEY `ID_Tipo_Habitacion` (`ID_Tipo_Habitacion`),
  KEY `ID_Hotel` (`ID_Hotel`),
  KEY `idx_habitacion_estado` (`Estado`),
  CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`ID_Tipo_Habitacion`) REFERENCES `tipo_habitacion` (`ID_Tipo_Habitacion`),
  CONSTRAINT `habitacion_ibfk_2` FOREIGN KEY (`ID_Hotel`) REFERENCES `hotel` (`ID_Hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `ID_Hotel` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Estrellas` int NOT NULL,
  `ID_Ciudad` int NOT NULL,
  `numCuartos` int NOT NULL,
  PRIMARY KEY (`ID_Hotel`),
  KEY `ID_Ciudad` (`ID_Ciudad`),
  CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`ID_Ciudad`) REFERENCES `ciudad` (`ID_Ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huesped_acompanante`
--

DROP TABLE IF EXISTS `huesped_acompanante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huesped_acompanante` (
  `ID_Huesped_Acompañante` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido1` varchar(100) NOT NULL,
  `Apellido2` varchar(100) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ID_Cliente` int NOT NULL,
  PRIMARY KEY (`ID_Huesped_Acompañante`),
  KEY `ID_Cliente` (`ID_Cliente`),
  CONSTRAINT `huesped_acompanante_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huesped_acompanante`
--

LOCK TABLES `huesped_acompanante` WRITE;
/*!40000 ALTER TABLE `huesped_acompanante` DISABLE KEYS */;
/*!40000 ALTER TABLE `huesped_acompanante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `ID_Producto` int NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Stock` int NOT NULL,
  `Min_Stock` int NOT NULL,
  `Max_Stock` int NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `Disponibilidad` tinyint(1) DEFAULT '1',
  `Tipo` varchar(50) DEFAULT NULL,
  `Garantia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compra`
--

DROP TABLE IF EXISTS `orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compra` (
  `ID_Orden` int NOT NULL AUTO_INCREMENT,
  `ID_Proveedor` int NOT NULL,
  `Fecha_solicitud` date NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `Impuestos` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_Orden`),
  KEY `ID_Proveedor` (`ID_Proveedor`),
  CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compra_detallada`
--

DROP TABLE IF EXISTS `orden_compra_detallada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compra_detallada` (
  `ID_Orden` int NOT NULL,
  `ID_Producto` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_Orden`,`ID_Producto`),
  KEY `ID_Producto` (`ID_Producto`),
  CONSTRAINT `orden_compra_detallada_ibfk_1` FOREIGN KEY (`ID_Orden`) REFERENCES `orden_compra` (`ID_Orden`),
  CONSTRAINT `orden_compra_detallada_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `inventario` (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra_detallada`
--

LOCK TABLES `orden_compra_detallada` WRITE;
/*!40000 ALTER TABLE `orden_compra_detallada` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_compra_detallada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `ID_Pais` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete_promocional`
--

DROP TABLE IF EXISTS `paquete_promocional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete_promocional` (
  `ID_Paquete` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Fecha_inicio` date NOT NULL,
  `Fecha_Fin` date NOT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `Descuento_Porcentaje` decimal(5,2) NOT NULL,
  `Requisitos` text,
  `Tipo_Evento` varchar(100) DEFAULT NULL,
  `Tipo_promocion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete_promocional`
--

LOCK TABLES `paquete_promocional` WRITE;
/*!40000 ALTER TABLE `paquete_promocional` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete_promocional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_producto`
--

DROP TABLE IF EXISTS `proveedor_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor_producto` (
  `ID_Proveedor` int NOT NULL,
  `ID_Producto` int NOT NULL,
  PRIMARY KEY (`ID_Proveedor`,`ID_Producto`),
  KEY `ID_Producto` (`ID_Producto`),
  CONSTRAINT `proveedor_producto_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`),
  CONSTRAINT `proveedor_producto_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `inventario` (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_producto`
--

LOCK TABLES `proveedor_producto` WRITE;
/*!40000 ALTER TABLE `proveedor_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `ID_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre_empresa` varchar(100) NOT NULL,
  `Nombre_contacto` varchar(100) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono_contacto` varchar(20) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`ID_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queja`
--

DROP TABLE IF EXISTS `queja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queja` (
  `ID_Queja` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int NOT NULL,
  `Fecha_Hora` datetime NOT NULL,
  `Descripcion` text NOT NULL,
  `Prioridad` varchar(20) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Fecha_Resolucion` datetime DEFAULT NULL,
  `ID_Empleado_Receptor` int DEFAULT NULL,
  `ID_Empleado` int DEFAULT NULL,
  `Solucion_Aplicada` text,
  `Satisfaccion_Cliente` int DEFAULT NULL,
  `Departamento_Afectado` int DEFAULT NULL,
  PRIMARY KEY (`ID_Queja`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Empleado_Receptor` (`ID_Empleado_Receptor`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `Departamento_Afectado` (`Departamento_Afectado`),
  KEY `idx_queja_prioridad` (`Prioridad`),
  CONSTRAINT `queja_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `queja_ibfk_2` FOREIGN KEY (`ID_Empleado_Receptor`) REFERENCES `empleados` (`ID_Empleado`),
  CONSTRAINT `queja_ibfk_3` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`),
  CONSTRAINT `queja_ibfk_4` FOREIGN KEY (`Departamento_Afectado`) REFERENCES `departamento` (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queja`
--

LOCK TABLES `queja` WRITE;
/*!40000 ALTER TABLE `queja` DISABLE KEYS */;
/*!40000 ALTER TABLE `queja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `ID_Reserva` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int NOT NULL,
  `Fecha_Salida` date NOT NULL,
  `Fecha_Entrada` date NOT NULL,
  `Estado` enum('Confirmada','Pendiente','Cancelada','Completada') NOT NULL,
  `Metodo_Reserva` varchar(50) DEFAULT NULL,
  `ID_Empleado` int DEFAULT NULL,
  `Costo_Total` decimal(10,2) DEFAULT NULL,
  `Fecha_Creacion` datetime NOT NULL,
  `numCuartos` int DEFAULT NULL,
  `Codigo_Confirmacion` varchar(50) DEFAULT NULL,
  `ID_Paquete` int DEFAULT NULL,
  PRIMARY KEY (`ID_Reserva`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `ID_Paquete` (`ID_Paquete`),
  KEY `idx_reserva_fechas` (`Fecha_Entrada`,`Fecha_Salida`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`),
  CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`ID_Paquete`) REFERENCES `paquete_promocional` (`ID_Paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfaccion_cliente`
--

DROP TABLE IF EXISTS `satisfaccion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfaccion_cliente` (
  `ID_Satisfaccion` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int NOT NULL,
  `Fecha_Evaluacion` date NOT NULL,
  `Calificacion_General` int NOT NULL,
  `Calificacion_Habitacion` int NOT NULL,
  `Calificacion_Servicios` int NOT NULL,
  `Calificacion_Personal` int NOT NULL,
  `Calificacion_Limpieza` int NOT NULL,
  `Comentarios` text,
  `Recomendacion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Satisfaccion`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `idx_satisfaccion_calificacion` (`Calificacion_General`),
  CONSTRAINT `satisfaccion_cliente_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `satisfaccion_cliente_chk_1` CHECK ((`Calificacion_General` between 1 and 5)),
  CONSTRAINT `satisfaccion_cliente_chk_2` CHECK ((`Calificacion_Habitacion` between 1 and 5)),
  CONSTRAINT `satisfaccion_cliente_chk_3` CHECK ((`Calificacion_Servicios` between 1 and 5)),
  CONSTRAINT `satisfaccion_cliente_chk_4` CHECK ((`Calificacion_Personal` between 1 and 5)),
  CONSTRAINT `satisfaccion_cliente_chk_5` CHECK ((`Calificacion_Limpieza` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaccion_cliente`
--

LOCK TABLES `satisfaccion_cliente` WRITE;
/*!40000 ALTER TABLE `satisfaccion_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `satisfaccion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `ID_Servicio` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Tipo` varchar(50) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `Horario_inicio` time DEFAULT NULL,
  `Horario_final` time DEFAULT NULL,
  `Capacidad_Max` int DEFAULT NULL,
  `Departamento` int DEFAULT NULL,
  `Comision_hotel` decimal(10,2) DEFAULT NULL,
  `Tiempo_traslado` int DEFAULT NULL,
  `Personal_requerido` int DEFAULT NULL,
  `Proveedor` varchar(100) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Servicio`),
  KEY `Departamento` (`Departamento`),
  CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`Departamento`) REFERENCES `departamento` (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporada`
--

DROP TABLE IF EXISTS `temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada` (
  `ID_Temporada` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Fin` date NOT NULL,
  `Descripcion` text,
  `Factor_Multiplicador_Precio` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID_Temporada`),
  KEY `idx_temporada_fechas` (`Fecha_Inicio`,`Fecha_Fin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporada`
--

LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_bono`
--

DROP TABLE IF EXISTS `tipo_de_bono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_bono` (
  `ID_Tipo_de_Bono` int NOT NULL AUTO_INCREMENT,
  `Descripcion` text,
  `Duracion` int DEFAULT NULL,
  `Requisitos` text,
  PRIMARY KEY (`ID_Tipo_de_Bono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_bono`
--

LOCK TABLES `tipo_de_bono` WRITE;
/*!40000 ALTER TABLE `tipo_de_bono` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_de_bono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_habitacion`
--

DROP TABLE IF EXISTS `tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_habitacion` (
  `ID_Tipo_Habitacion` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Precio_Base` decimal(10,2) NOT NULL,
  `Capacidad_Estandar` int NOT NULL,
  `Amenidades` text,
  `URL_Imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Tipo_Habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_habitacion`
--

LOCK TABLES `tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tipo_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_cliente`
--

DROP TABLE IF EXISTS `usuario_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_cliente` (
  `ID_Cliente` int NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Cliente`),
  UNIQUE KEY `User_name` (`User_name`),
  CONSTRAINT `usuario_cliente_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_cliente`
--

LOCK TABLES `usuario_cliente` WRITE;
/*!40000 ALTER TABLE `usuario_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_empleado`
--

DROP TABLE IF EXISTS `usuario_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_empleado` (
  `ID_Empleado` int NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `nivel_acceso` int NOT NULL,
  PRIMARY KEY (`ID_Empleado`),
  UNIQUE KEY `User_name` (`User_name`),
  CONSTRAINT `usuario_empleado_ibfk_1` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_empleado`
--

LOCK TABLES `usuario_empleado` WRITE;
/*!40000 ALTER TABLE `usuario_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-18 17:38:16
