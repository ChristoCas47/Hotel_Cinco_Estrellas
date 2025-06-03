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
  `CheckIn` datetime DEFAULT NULL,
  `Checkout` datetime DEFAULT NULL,
  `ID_Empleado` int DEFAULT NULL,
  `Fecha_Hora_Cambio` datetime DEFAULT NULL,
  `Motivo_cambio` varchar(100) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Bitacora`),
  KEY `ID_Habitacion` (`ID_Habitacion`),
  KEY `ID_Empleado` (`ID_Empleado`),
  CONSTRAINT `bitacora_habitacion_ibfk_1` FOREIGN KEY (`ID_Habitacion`) REFERENCES `habitacion` (`ID_Habitacion`),
  CONSTRAINT `bitacora_habitacion_ibfk_2` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleados` (`ID_Empleado`)
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Cuauhtémoc',1),(2,'Miguel Hidalgo',1),(3,'Coyoacán',1),(4,'Tlalpan',1),(5,'Guadalajara',2),(6,'Zapopan',2),(7,'Puerto Vallarta',2),(8,'Tlaquepaque',2),(9,'Monterrey',3),(10,'San Pedro Garza García',3),(11,'Guadalupe',3),(12,'Tijuana',4),(13,'Mexicali',4),(14,'Ensenada',4),(15,'Cancún',5),(16,'Playa del Carmen',5),(17,'Tulum',5),(18,'Mérida',6),(19,'Valladolid',6),(20,'Ciudad Juárez',7),(21,'Chihuahua',7),(22,'Oaxaca de Juárez',8),(23,'Huatulco',8),(24,'Los Angeles',9),(25,'San Francisco',9),(26,'San Diego',9),(27,'Sacramento',9),(28,'Houston',10),(29,'Dallas',10),(30,'Austin',10),(31,'San Antonio',10),(32,'Miami',11),(33,'Orlando',11),(34,'Tampa',11),(35,'New York City',12),(36,'Buffalo',12),(37,'Rochester',12),(38,'Chicago',13),(39,'Springfield',13),(40,'Toronto',19),(41,'Ottawa',19),(42,'Hamilton',19),(43,'Montreal',20),(44,'Quebec City',20),(45,'Vancouver',21),(46,'Victoria',21),(47,'São Paulo',25),(48,'Campinas',25),(49,'Santos',25),(50,'Rio de Janeiro',26),(51,'Niterói',26),(52,'Buenos Aires',31),(53,'La Plata',31),(54,'Mar del Plata',31),(55,'Córdoba',32),(56,'Villa Carlos Paz',32),(57,'Bogotá',36),(58,'Zipaquirá',36),(59,'Medellín',37),(60,'Envigado',37),(61,'Santiago',41),(62,'Puente Alto',41),(63,'Valparaíso',42),(64,'Viña del Mar',42),(65,'Lima',45),(66,'Miraflores',45),(67,'Cusco',47),(68,'Machu Picchu',47),(69,'Madrid',49),(70,'Alcalá de Henares',49),(71,'Móstoles',49),(72,'Barcelona',50),(73,'Tarragona',50),(74,'Girona',50),(75,'Sevilla',51),(76,'Málaga',51),(77,'Granada',51),(78,'París',55),(79,'Versalles',55),(80,'Marsella',57),(81,'Niza',57),(82,'Cannes',57),(83,'Roma',60),(84,'Viterbo',60),(85,'Milán',61),(86,'Bérgamo',61),(87,'Múnich',65),(88,'Núremberg',65),(89,'Colonia',66),(90,'Dusseldorf',66),(91,'Dortmund',66),(92,'Londres',70),(93,'Manchester',70),(94,'Liverpool',70),(95,'Birmingham',70),(96,'Edimburgo',71),(97,'Glasgow',71),(98,'Guangzhou',74),(99,'Shenzhen',74),(100,'Nanjing',75),(101,'Suzhou',75),(102,'Tokio',79),(103,'Shinjuku',79),(104,'Shibuya',79),(105,'Osaka',80),(106,'Sakai',80),(107,'Sydney',83),(108,'Newcastle',83),(109,'Wollongong',83),(110,'Melbourne',84),(111,'Geelong',84),(112,'Johannesburgo',88),(113,'Pretoria',88),(114,'Ciudad del Cabo',89),(115,'Stellenbosch',89),(116,'Mumbai',92),(117,'Pune',92),(118,'Chennai',93),(119,'Coimbatore',93),(120,'Bangalore',94),(121,'Mysore',94),(122,'Moscú',97),(123,'Zelenograd',97),(124,'San Petersburgo',98),(125,'Pushkin',98),(126,'Philadelphia',14),(127,'Pittsburgh',14),(128,'Columbus',15),(129,'Cleveland',15),(130,'Cincinnati',15),(131,'Atlanta',16),(132,'Savannah',16),(133,'Charlotte',17),(134,'Raleigh',17),(135,'Detroit',18),(136,'Grand Rapids',18),(137,'Calgary',22),(138,'Edmonton',22),(139,'Belo Horizonte',27),(140,'Uberlândia',27),(141,'Salvador',28),(142,'Porto Seguro',28),(143,'Mendoza',34),(144,'San Rafael',34),(145,'Cali',38),(146,'Buenaventura',38),(147,'Concepción',43),(148,'Los Ángeles',43),(149,'Arequipa',46),(150,'Mollendo',46);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cliente_potencial_vip` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
    INSERT INTO cliente_potencial_vip (
        ID_Cliente, 
        Contador_Reservas, 
        Total_Gastado, 
        Fecha_Ingreso_Lista, 
        Estado
    ) VALUES (
        NEW.ID_Cliente, 
        0, 
        0.00, 
        CURDATE(), 
        'Nuevo'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Gerencia','Administración general del hotel y toma de decisiones estratégicas','Piso 1, Ala Administrativa','08:00:00','18:00:00',1,NULL),(2,'Mantenimiento','Encargado del mantenimiento y reparaciones de las instalaciones','Planta Baja, Área de Servicio','07:00:00','19:00:00',1,NULL),(3,'Recepción','Atención al cliente, check-in, check-out y reservaciones','Lobby Principal','00:00:00','23:59:59',1,NULL),(4,'IT','Soporte técnico, mantenimiento de sistemas y redes','Piso 1, Ala Administrativa','08:00:00','20:00:00',1,NULL),(5,'Spa','Servicios de masajes, tratamientos faciales y corporales','Piso 2, Área de Bienestar','09:00:00','21:00:00',1,NULL),(6,'Gimnasio','Área de ejercicio con equipamiento moderno','Piso 2, Área de Bienestar','06:00:00','22:00:00',1,NULL),(7,'Restaurant','Servicio de alimentos en el restaurante principal','Planta Baja, Área Central','06:30:00','23:00:00',1,NULL),(8,'Salón de Eventos','Organización y realización de eventos sociales y empresariales','Piso 3, Área de Eventos','09:00:00','00:00:00',1,NULL),(9,'Bar','Servicio de bebidas y cócteles','Planta Baja, Junto a Piscina','12:00:00','02:00:00',1,NULL),(10,'Discoteca','Entretenimiento nocturno con música y baile','Planta Baja, Área de Entretenimiento','21:00:00','04:00:00',1,NULL),(11,'Campo de Golf','Mantenimiento y operación del campo de golf del hotel','Exterior, Zona Norte','06:00:00','19:00:00',1,NULL),(12,'Servicio de Alimentos al Cuarto','Preparación y entrega de alimentos a las habitaciones','Planta Baja, Área de Cocina','06:00:00','23:00:00',1,NULL),(13,'Casino','Juegos de azar y entretenimiento','Planta Baja, Área de Entretenimiento','14:00:00','04:00:00',1,NULL),(14,'Seguridad','Vigilancia y seguridad del hotel y los huéspedes','Planta Baja, Entrada Principal','00:00:00','23:59:59',1,NULL),(15,'Tours de Parques de Entretenimiento','Organización de visitas a parques temáticos','Lobby, Módulo de Tours','08:00:00','20:00:00',1,NULL),(16,'Museos','Organización de visitas culturales a museos locales','Lobby, Módulo de Tours','08:00:00','20:00:00',1,NULL),(17,'Festivales','Coordinación de asistencia a eventos y festivales locales','Lobby, Módulo de Tours','08:00:00','20:00:00',1,NULL),(18,'Zonas Históricas','Tours a sitios arqueológicos y zonas históricas','Lobby, Módulo de Tours','08:00:00','20:00:00',1,NULL),(19,'Servicios de Traslados','Transporte de huéspedes desde/hacia aeropuerto y otros destinos','Entrada Principal, Área de Transporte','04:00:00','00:00:00',1,NULL);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_control_inventario_habitaciones` AFTER INSERT ON `detalle_reserva_habitacion` FOR EACH ROW BEGIN
    INSERT INTO fechas_ocupadas (
        ID_Habitacion, 
        Fecha_Checkin, 
        Fecha_Checkout, 
        ID_Reserva
    ) 
    SELECT 
        NEW.ID_Habitacion, 
        r.Fecha_Entrada, 
        r.Fecha_Salida, 
        r.ID_Reserva
    FROM reserva r 
    WHERE r.ID_Reserva = NEW.ID_Reserva;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_habitacion_ocupada` AFTER UPDATE ON `detalle_reserva_habitacion` FOR EACH ROW BEGIN
    IF NEW.Fecha_Check_In IS NOT NULL AND OLD.Fecha_Check_In IS NULL THEN
        UPDATE habitacion 
        SET Estado = 'Ocupado' 
        WHERE ID_Habitacion = NEW.ID_Habitacion;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_habitacion_disponible` AFTER UPDATE ON `detalle_reserva_habitacion` FOR EACH ROW BEGIN
    IF NEW.Fecha_Check_Out IS NOT NULL AND OLD.Fecha_Check_Out IS NULL THEN
        UPDATE habitacion 
        SET Estado = 'Disponible' 
        WHERE ID_Habitacion = NEW.ID_Habitacion;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1,'Carlos','Vega','Méndez','Director General','87263548901','1975-08-12','VEMC750812RD7','Matutino',85000.00,'2010-02-15',NULL,'9981234567',1,'Activo'),(2,1,'Marina','Ortiz','Fuentes','Director Financiero','76352987410','1978-04-23','ORFM780423HJ2','Matutino',75000.00,'2010-03-10',1,'9982345678',1,'Activo'),(3,1,'Javier','Torres','Luna','Director Operaciones','65439087612','1977-11-05','TOLJ771105RS8','Matutino',75000.00,'2010-03-15',1,'9983456789',1,'Activo'),(4,1,'Luisa','Ramírez','Vargas','Director Recursos Humanos','54328976501','1980-09-30','RAVL800930TH4','Matutino',72000.00,'2011-01-20',1,'9984567890',1,'Activo'),(5,1,'Roberto','Sánchez','Mendoza','Director Comercial','43217865902','1979-07-15','SAMR790715GF0','Matutino',72000.00,'2011-02-05',1,'9985678901',1,'Activo'),(6,1,'Patricia','Gutiérrez','Lara','Gerente General','32106754893','1982-03-18','GULP820318KL9','Matutino',65000.00,'2012-05-10',1,'9986789012',1,'Activo'),(7,1,'Fernando','López','Herrera','Subgerente Administrativo','21095643782','1984-12-03','LOHF841203TR5','Matutino',55000.00,'2012-06-15',6,'9987890123',1,'Activo'),(8,1,'Alejandra','Moreno','Castro','Asistente Gerencia','10984532671','1988-05-27','MOCA880527YP1','Matutino',35000.00,'2013-08-20',6,'9988901234',1,'Activo'),(9,1,'Ricardo','Díaz','Robles','Jefe Mantenimiento','09873421560','1976-09-14','DIRR760914UY7','Matutino',48000.00,'2012-04-05',3,'9989012345',2,'Activo'),(10,1,'Víctor','Cruz','Soto','Supervisor Mantenimiento','98762310459','1980-11-29','CUSV801129OP3','Vespertino',38000.00,'2013-07-12',9,'9980123456',2,'Activo'),(11,1,'Gabriel','Reyes','Paredes','Supervisor Mantenimiento','87651209348','1982-01-17','REPG820117ZX9','Nocturno',38000.00,'2014-03-08',9,'9981234567',2,'Activo'),(12,1,'Silvia','Flores','Navarro','Jefe Recepción','76540198237','1985-07-22','FLNS850722QA5','Matutino',45000.00,'2012-08-15',3,'9982345678',3,'Activo'),(13,1,'Daniel','García','Vázquez','Supervisor Recepción','65439087126','1988-04-09','GAVD880409IU1','Vespertino',35000.00,'2013-09-18',12,'9983456789',3,'Activo'),(14,1,'Laura','Martínez','Jiménez','Supervisor Recepción','54328976015','1990-06-12','MAJL900612EK7','Nocturno',35000.00,'2014-11-20',12,'9984567890',3,'Activo'),(15,1,'Marco','Hernández','Ríos','Jefe IT','43217865904','1983-10-05','HERM831005LO3','Matutino',52000.00,'2013-01-12',3,'9985678901',4,'Activo'),(16,1,'Ana','Pérez','González','Analista Sistemas','32106754893','1986-12-30','PEGA861230SD1','Vespertino',42000.00,'2014-03-05',15,'9986789012',4,'Activo'),(17,1,'Claudia','Núñez','Rojas','Gerente Spa','21095643782','1984-02-28','NURC840228CF2','Matutino',46000.00,'2013-05-15',3,'9987890123',5,'Activo'),(18,1,'Eduardo','Chávez','Medina','Supervisor Spa','10984532671','1986-08-11','CAME860811BV8','Vespertino',36000.00,'2014-07-22',17,'9988901234',5,'Activo'),(19,1,'Beatriz','Aguilar','Espinosa','Supervisor Spa','09873421560','1988-11-17','AGEB881117NM4','Matutino',36000.00,'2015-02-18',17,'9989012345',5,'Activo'),(20,1,'Raúl','Torres','Miranda','Gerente Gimnasio','98762310459','1985-04-03','TOMR850403XZ0','Matutino',44000.00,'2013-06-17',3,'9980123456',6,'Activo'),(21,1,'Mónica','Vargas','Olvera','Supervisor Gimnasio','87651209348','1987-09-21','VAOM870921PT6','Vespertino',34000.00,'2014-09-10',20,'9981234567',6,'Activo'),(22,1,'Héctor','Gómez','Castillo','Chef Ejecutivo','76540198237','1978-07-19','GOCH780719WE2','Matutino',58000.00,'2012-03-08',3,'9982345678',7,'Activo'),(23,1,'Carmen','Mendoza','Rivas','Sous Chef','65439087126','1982-05-25','MERC820525VB8','Vespertino',48000.00,'2013-04-12',22,'9983456789',7,'Activo'),(24,1,'Javier','Luna','Prado','Maître','54328976015','1986-03-14','LUPJ860314RN4','Matutino',42000.00,'2014-02-20',22,'9984567890',7,'Activo'),(25,1,'Isabel','Morales','Ortega','Gerente Eventos','43217865904','1983-06-29','MOOI830629AQ0','Matutino',47000.00,'2013-03-07',5,'9985678901',8,'Activo'),(26,1,'Guillermo','Ramos','Soto','Coordinador Eventos','32106754893','1985-10-13','RASG851013NU6','Vespertino',37000.00,'2014-05-15',25,'9986789012',8,'Activo'),(27,1,'Adriana','Juárez','Peña','Gerente Bar','21095643782','1984-08-07','JUPA840807ST2','Vespertino',45000.00,'2013-04-22',3,'9987890123',9,'Activo'),(28,1,'Rafael','Navarro','Bravo','Barman Principal','10984532671','1986-11-23','NABR861123FD8','Nocturno',35000.00,'2014-06-30',27,'9988901234',9,'Activo'),(29,1,'Verónica','Campos','León','Gerente Discoteca','09873421560','1985-03-18','CALV850318GH4','Nocturno',46000.00,'2013-05-28',3,'9989012345',10,'Activo'),(30,1,'Oscar','Medina','Estrada','Supervisor Discoteca','98762310459','1987-07-02','MEEO870702JK0','Nocturno',36000.00,'2014-08-12',29,'9980123456',10,'Activo'),(31,1,'Francisco','Castro','Rangel','Gerente Campo Golf','87651209348','1980-09-14','CARF800914LM6','Matutino',48000.00,'2013-02-18',3,'9981234567',11,'Activo'),(32,1,'Diana','Delgado','Moreno','Coordinador Golf','76540198237','1984-12-27','DEMD841227NA2','Vespertino',38000.00,'2014-04-25',31,'9982345678',11,'Activo'),(33,1,'Mario','Guzmán','Paredes','Supervisor Room Service','65439087126','1982-05-10','GUPM820510OP8','Matutino',38000.00,'2013-07-15',22,'9983456789',12,'Activo'),(34,1,'Elena','Ríos','Cruz','Supervisor Room Service','54328976015','1984-08-23','RICE840823QR4','Vespertino',38000.00,'2014-09-20',22,'9984567890',12,'Activo'),(35,1,'Alberto','Peña','Contreras','Gerente Casino','43217865904','1982-02-15','PECA820215ST0','Vespertino',49000.00,'2013-05-10',3,'9985678901',13,'Activo'),(36,1,'Susana','Nava','Espinoza','Supervisor Casino','32106754893','1984-06-19','NAES840619UV6','Nocturno',39000.00,'2014-07-18',35,'9986789012',13,'Activo'),(37,1,'Jorge','Robles','Alvarado','Jefe Seguridad','21095643782','1978-10-30','ROAJ781030WX2','Matutino',46000.00,'2012-06-15',3,'9987890123',14,'Activo'),(38,1,'Teresa','Vargas','Montes','Supervisor Seguridad','10984532671','1982-12-14','VAMT821214YZ8','Nocturno',36000.00,'2013-08-22',37,'9988901234',14,'Activo'),(39,1,'Andrés','Lara','Cortés','Coordinador Tours Parques','09873421560','1986-04-08','LACA860408AB4','Matutino',42000.00,'2014-03-10',5,'9989012345',15,'Activo'),(40,1,'Julia','Vega','Santos','Coordinador Tours Museos','98762310459','1987-07-12','VESJ870712CD0','Matutino',41000.00,'2014-05-20',5,'9980123456',16,'Activo'),(41,1,'Rodrigo','Soto','Pacheco','Coordinador Festivales','87651209348','1985-09-20','SOPR850920EF6','Matutino',41500.00,'2014-06-25',5,'9981234567',17,'Activo'),(42,1,'Natalia','Mendez','Ramos','Coordinador Tours Históricos','76540198237','1986-11-15','MERN861115GH2','Matutino',42000.00,'2014-08-15',5,'9982345678',18,'Activo'),(43,1,'Miguel','Fuentes','Rivera','Supervisor Traslados','65439087126','1983-05-28','FURM830528IJ8','Matutino',44000.00,'2013-10-10',3,'9983456789',19,'Activo'),(44,1,'Pedro','Jiménez','López','Técnico Mantenimiento','54328976015','1985-03-12','JILP850312KL4','Matutino',22000.00,'2014-05-10',9,'9984567890',2,'Activo'),(45,1,'José','Ramírez','González','Técnico Mantenimiento','43217865904','1986-06-25','RAGJ860625MN0','Matutino',22000.00,'2015-02-18',9,'9985678901',2,'Activo'),(46,1,'Manuel','Ortega','Martínez','Técnico Mantenimiento','32106754893','1984-09-19','ORMM840919OP6','Matutino',22000.00,'2014-11-15',9,'9986789012',2,'Activo'),(47,1,'Antonio','Castro','García','Técnico Mantenimiento','21095643782','1987-12-03','CAGA871203QR2','Vespertino',22000.00,'2015-07-22',10,'9987890123',2,'Activo'),(48,1,'Juan','Torres','Sánchez','Técnico Mantenimiento','10984532671','1988-02-17','TOSJ880217ST8','Vespertino',22000.00,'2016-01-15',10,'9988901234',2,'Activo'),(49,1,'Luis','Núñez','Rodríguez','Técnico Mantenimiento','09873421560','1986-05-30','NURL860530UV4','Vespertino',22000.00,'2015-09-18',10,'9989012345',2,'Activo'),(50,1,'Roberto','Díaz','Flores','Técnico Mantenimiento','98762310459','1989-08-14','DIFR890814WX0','Nocturno',23000.00,'2016-11-10',11,'9980123456',2,'Activo'),(51,1,'Alejandro','Reyes','Hernández','Técnico Mantenimiento','87651209348','1987-11-27','REHA871127YZ6','Nocturno',23000.00,'2016-03-25',11,'9981234567',2,'Activo'),(52,1,'Sergio','Gómez','Pérez','Técnico Mantenimiento','76540198237','1990-02-08','GOPS900208AB2','Matutino',22000.00,'2017-05-15',9,'9982345678',2,'Activo'),(53,1,'Fernando','Morales','Luna','Técnico Mantenimiento','65439087126','1988-05-13','MOLF880513CD8','Vespertino',22000.00,'2016-08-20',10,'9983456789',2,'Activo'),(54,1,'Carlos','Rojas','Vargas','Técnico Mantenimiento','54328976015','1991-07-29','ROVC910729EF4','Nocturno',23000.00,'2017-12-05',11,'9984567890',2,'Activo'),(55,1,'Miguel','Mendoza','Cruz','Jardinero','43217865904','1986-10-11','MECM861011GH0','Matutino',18000.00,'2015-04-18',9,'9985678901',2,'Activo'),(56,1,'Ana','García','Soto','Recepcionista','32106754893','1990-03-15','GASA900315IJ6','Matutino',18500.00,'2017-04-10',12,'9986789012',3,'Activo'),(57,1,'Lucía','Martínez','Rangel','Recepcionista','21095643782','1991-06-28','MARL910628KL2','Matutino',18500.00,'2017-09-15',12,'9987890123',3,'Activo'),(58,1,'Sofía','Hernández','Lara','Recepcionista','10984532671','1989-09-12','HELS890912MN8','Matutino',18500.00,'2016-11-20',12,'9988901234',3,'Activo'),(59,1,'Rosa','Pérez','Ríos','Recepcionista','09873421560','1992-12-05','PERR921205OP4','Matutino',18500.00,'2018-03-05',12,'9989012345',3,'Activo'),(60,1,'David','González','Castro','Recepcionista','98762310459','1990-02-18','GOCD900218QR0','Matutino',18500.00,'2017-05-12',12,'9980123456',3,'Activo'),(61,1,'María','Sánchez','Torres','Recepcionista','87651209348','1991-05-23','SATM910523ST6','Vespertino',19000.00,'2017-10-18',13,'9981234567',3,'Activo'),(62,1,'Sandra','Rodríguez','Núñez','Recepcionista','76540198237','1989-08-06','RONS890806UV2','Vespertino',19000.00,'2016-12-22',13,'9982345678',3,'Activo'),(63,1,'Patricia','López','Díaz','Recepcionista','65439087126','1993-10-29','LODP931029WX8','Vespertino',19000.00,'2018-05-15',13,'9983456789',3,'Activo'),(64,1,'Laura','Flores','Reyes','Recepcionista','54328976015','1991-01-14','FLRL910114YZ4','Vespertino',19000.00,'2017-07-22',13,'9984567890',3,'Activo'),(65,1,'Adrián','Vargas','Gómez','Recepcionista','43217865904','1992-04-02','VAGA920402AB0','Vespertino',19000.00,'2018-09-18',13,'9985678901',3,'Activo'),(66,1,'Gabriela','Luna','Morales','Recepcionista','32106754893','1990-06-15','LUMG900615CD6','Nocturno',20000.00,'2017-06-12',14,'9986789012',3,'Activo'),(67,1,'Raúl','Cruz','Rojas','Recepcionista','21095643782','1991-09-28','CURR910928EF2','Nocturno',20000.00,'2017-11-15',14,'9987890123',3,'Activo'),(68,1,'Mónica','Vargas','Mendoza','Recepcionista','10984532671','1989-12-11','VAMM891211GH8','Nocturno',20000.00,'2016-12-28',14,'9988901234',3,'Activo'),(69,1,'Eduardo','Rivas','García','Recepcionista','09873421560','1992-03-26','RIGE920326IJ4','Nocturno',20000.00,'2018-05-18',14,'9989012345',3,'Activo'),(70,1,'Arturo','Ortega','Martínez','Botones','98762310459','1993-07-09','ORMA930709KL0','Matutino',15000.00,'2018-10-22',12,'9980123456',3,'Activo'),(71,1,'Hugo','Jiménez','Moreno','Técnico Sistemas','87651209348','1988-04-21','JIMH880421MN6','Matutino',26000.00,'2015-08-15',15,'9981234567',4,'Activo'),(72,1,'Cristina','Navarro','León','Técnico Soporte','76540198237','1990-08-14','NALC900814OP2','Matutino',24000.00,'2017-02-20',15,'9982345678',4,'Activo'),(73,1,'Lorena','Torres','Peña','Masajista','65439087126','1987-03-18','TOPL870318QR8','Matutino',22000.00,'2015-05-12',17,'9983456789',5,'Activo'),(74,1,'Carmen','Medina','Juárez','Masajista','54328976015','1989-06-22','MEJC890622ST4','Matutino',22000.00,'2016-08-18',17,'9984567890',5,'Activo'),(75,1,'María','Castillo','Navarro','Esteticista','43217865904','1988-09-15','CANM880915UV0','Matutino',22000.00,'2016-03-22',17,'9985678901',5,'Activo'),(76,1,'Alejandra','Rangel','Campos','Esteticista','32106754893','1990-12-08','RACA901208WX6','Matutino',22000.00,'2017-06-15',17,'9986789012',5,'Activo'),(77,1,'Daniela','Rivera','Delgado','Masajista','21095643782','1988-03-25','RIDD880325YZ2','Vespertino',22500.00,'2016-01-12',18,'9987890123',5,'Activo'),(78,1,'Valeria','Guzmán','Soto','Masajista','10984532671','1989-07-18','GUSV890718AB8','Vespertino',22500.00,'2016-09-20',18,'9988901234',5,'Activo'),(79,1,'Natalia','Ríos','Montes','Esteticista','09873421560','1990-10-03','RIMN901003CD4','Vespertino',22500.00,'2017-04-15',18,'9989012345',5,'Activo'),(80,1,'Cecilia','Paredes','Estrada','Recepcionista Spa','98762310459','1991-01-27','PAEC910127EF0','Matutino',18000.00,'2017-11-10',17,'9980123456',5,'Activo'),(81,1,'Héctor','León','Fuentes','Entrenador Personal','87651209348','1987-06-14','LEFH870614GH6','Matutino',21000.00,'2015-09-18',20,'9981234567',6,'Activo'),(82,1,'Rodrigo','Contreras','Vega','Entrenador Personal','76540198237','1989-09-30','COVR890930IJ2','Vespertino',21500.00,'2016-11-22',21,'9982345678',6,'Activo'),(83,1,'Jorge','Alvarado','Montes','Cocinero','65439087126','1985-04-17','ALMJ850417KL8','Matutino',25000.00,'2014-07-15',22,'9983456789',7,'Activo'),(84,1,'Gustavo','Santos','Cortés','Cocinero','54328976015','1987-08-23','SACG870823MN4','Matutino',25000.00,'2015-10-18',22,'9984567890',7,'Activo'),(85,1,'Mónica','Pacheco','Ramos','Cocinera','43217865904','1986-11-05','PARM861105OP0','Matutino',25000.00,'2015-03-22',22,'9985678901',7,'Activo'),(86,1,'Felipe','Rivera','Soto','Cocinero','32106754893','1988-02-19','RISF880219QR6','Matutino',25000.00,'2016-06-15',22,'9986789012',7,'Activo'),(87,1,'Alejandro','Moreno','Jiménez','Cocinero','21095643782','1985-06-02','MOJA850602ST2','Vespertino',25500.00,'2014-09-12',23,'9987890123',7,'Activo'),(88,1,'Sofía','González','López','Cocinera','10984532671','1987-09-18','GOLS870918UV8','Vespertino',25500.00,'2015-12-15',23,'9988901234',7,'Activo'),(89,1,'Daniel','Ramírez','Pérez','Cocinero','09873421560','1986-12-04','RAPD861204WX4','Vespertino',25500.00,'2015-05-20',23,'9989012345',7,'Activo'),(90,1,'Carolina','Martínez','Ortega','Cocinera','98762310459','1988-03-21','MAOC880321YZ0','Vespertino',25500.00,'2016-08-18',23,'9980123456',7,'Activo'),(91,1,'Arturo','Sánchez','Hernández','Ayudante Cocina','87651209348','1990-05-08','SAHA900508AB6','Matutino',18000.00,'2017-06-12',22,'9981234567',7,'Activo'),(92,1,'Mariana','Vargas','García','Ayudante Cocina','76540198237','1991-08-14','VAGM910814CD2','Matutino',18000.00,'2017-11-15',22,'9982345678',7,'Activo'),(93,1,'Diego','Flores','Rodríguez','Ayudante Cocina','65439087126','1990-11-27','FLRD901127EF8','Matutino',18000.00,'2017-03-20',22,'9983456789',7,'Activo'),(94,1,'Isabel','Torres','López','Ayudante Cocina','54328976015','1992-02-10','TOLI920210GH4','Matutino',18000.00,'2018-05-15',22,'9984567890',7,'Activo'),(95,1,'Pablo','Luna','Díaz','Ayudante Cocina','43217865904','1991-05-25','LUDP910525IJ0','Vespertino',18500.00,'2017-08-18',23,'9985678901',7,'Activo'),(96,1,'Adriana','Cruz','Núñez','Ayudante Cocina','32106754893','1992-08-31','CRNA920831KL6','Vespertino',18500.00,'2018-01-22',23,'9986789012',7,'Activo'),(97,1,'Fernando','Mendoza','Gómez','Ayudante Cocina','21095643782','1991-12-14','MEGF911214MN2','Vespertino',18500.00,'2017-05-17',23,'9987890123',7,'Activo'),(98,1,'Gabriela','Rivas','Reyes','Ayudante Cocina','10984532671','1993-03-03','RIRG930303OP8','Vespertino',18500.00,'2018-07-20',23,'9988901234',7,'Activo'),(99,1,'Eduardo','Morales','Vargas','Lavaplatos','09873421560','1988-06-19','MOVE880619QR4','Matutino',15000.00,'2016-09-15',22,'9989012345',7,'Activo'),(100,1,'Verónica','Ortiz','Romero','Lavaplatos','98762310459','1989-09-26','OIRV890926ST0','Vespertino',15500.00,'2016-12-18',23,'9980123456',7,'Activo'),(101,1,'Ricardo','Castro','Paredes','Lavaplatos','87651209348','1990-12-09','CAPR901209UV6','Matutino',15000.00,'2017-03-15',22,'9981234567',7,'Activo'),(102,1,'Alicia','Rojas','Cortés','Lavaplatos','76540198237','1992-03-15','ROCA920315WX2','Vespertino',15500.00,'2018-06-20',23,'9982345678',7,'Activo'),(103,1,'Carlos','Pérez','Medina','Mesero','65439087126','1987-05-12','PEMC870512YZ8','Matutino',16000.00,'2015-08-15',24,'9983456789',7,'Activo'),(104,1,'Lucía','González','Rivera','Mesera','54328976015','1989-08-28','GORL890828AB4','Matutino',16000.00,'2016-10-18',24,'9984567890',7,'Activo'),(105,1,'Jorge','Martínez','León','Mesero','43217865904','1988-11-14','MALJ881114CD0','Matutino',16000.00,'2016-02-22',24,'9985678901',7,'Activo'),(106,1,'Ana','Sánchez','Campos','Mesera','32106754893','1990-02-27','SACA900227EF6','Matutino',16000.00,'2017-05-15',24,'9986789012',7,'Activo'),(107,1,'Juan','Hernández','Delgado','Mesero','21095643782','1988-06-10','HEDJ880610GH2','Matutino',16000.00,'2016-08-12',24,'9987890123',7,'Activo'),(108,1,'María','Rodríguez','Fuentes','Mesera','10984532671','1989-09-23','ROFM890923IJ8','Matutino',16000.00,'2016-11-15',24,'9988901234',7,'Activo'),(109,1,'Pedro','Flores','Guzmán','Mesero','09873421560','1990-12-06','FLOGP901206K4','Matutino',16000.00,'2017-03-20',24,'9989012345',7,'Activo'),(110,1,'Laura','Vargas','Ríos','Mesera','98762310459','1991-03-19','VARL910319MN0','Matutino',16000.00,'2017-06-15',24,'9980123456',7,'Activo'),(111,1,'David','Torres','Paredes','Mesero','87651209348','1989-07-02','TOPD890702OP6','Vespertino',16500.00,'2016-09-18',24,'9981234567',7,'Activo'),(112,1,'Sofía','Luna','Montes','Mesera','76540198237','1990-10-15','LUMS901015QR2','Vespertino',16500.00,'2016-12-22',24,'9982345678',7,'Activo'),(113,1,'Miguel','Cruz','Estrada','Mesero','65439087126','1991-01-28','CREM910128ST8','Vespertino',16500.00,'2017-04-15',24,'9983456789',7,'Activo'),(114,1,'Carolina','Díaz','Rangel','Mesera','54328976015','1989-05-11','DIRC890511UV4','Vespertino',16500.00,'2016-07-18',24,'9984567890',7,'Activo'),(115,1,'Andrés','Mendoza','Santos','Mesero','43217865904','1990-08-24','MESA900824WX0','Vespertino',16500.00,'2016-11-15',24,'9985678901',7,'Activo'),(116,1,'Valentina','Rivas','Cortés','Mesera','32106754893','1991-12-07','RICV911207YZ6','Vespertino',16500.00,'2017-03-20',24,'9986789012',7,'Activo'),(117,1,'Roberto','Morales','Pacheco','Mesero','21095643782','1992-03-23','MOPR920323AB2','Vespertino',16500.00,'2018-06-18',24,'9987890123',7,'Activo'),(118,1,'Daniela','Ortiz','Ramos','Mesera','10984532671','1990-06-06','OIRD900606CD8','Vespertino',16500.00,'2017-09-22',24,'9988901234',7,'Activo'),(119,1,'Javier','Castro','Rivera','Capitán de Meseros','09873421560','1986-09-19','CARJ860919EF4','Matutino',22000.00,'2015-12-15',24,'9989012345',7,'Activo'),(120,1,'Alejandra','Rojas','Soto','Capitán de Meseros','98762310459','1988-12-02','ROSA881202GH0','Vespertino',22500.00,'2016-03-18',24,'9980123456',7,'Activo'),(121,1,'Gabriel','Pérez','Jiménez','Sommelier','87651209348','1985-03-15','PEJG850315IJ6','Matutino',28000.00,'2014-06-12',24,'9981234567',7,'Activo'),(122,1,'Marcela','González','López','Hostess','76540198237','1988-06-28','GOLM880628KL2','Matutino',18000.00,'2016-09-15',24,'9982345678',7,'Activo'),(123,1,'Fernando','Martínez','Ramírez','Hostess','65439087126','1990-09-14','MARF900914MN8','Vespertino',18500.00,'2016-12-18',24,'9983456789',7,'Activo'),(124,1,'Rocío','Sánchez','Ortega','Barista','54328976015','1989-01-05','SAOR890105OP4','Matutino',19000.00,'2016-04-22',24,'9984567890',7,'Activo'),(125,1,'Héctor','Hernández','García','Barista','43217865904','1991-04-21','HEGH910421QR0','Vespertino',19500.00,'2017-07-15',24,'9985678901',7,'Activo'),(126,1,'Natalia','Rodríguez','Martínez','Servicio a Cuartos','32106754893','1990-07-07','ROMN900707ST6','Matutino',16500.00,'2017-10-18',33,'9986789012',12,'Activo'),(127,1,'Sergio','Flores','Sánchez','Servicio a Cuartos','21095643782','1991-10-20','FLSS911020UV2','Matutino',16500.00,'2018-01-15',33,'9987890123',12,'Activo'),(128,1,'Adriana','Vargas','Hernández','Servicio a Cuartos','10984532671','1989-02-01','VAHA890201WX8','Matutino',16500.00,'2016-04-18',33,'9988901234',12,'Activo'),(129,1,'Daniel','Torres','Rodríguez','Servicio a Cuartos','09873421560','1990-05-15','TORD900515YZ4','Vespertino',17000.00,'2016-08-22',34,'9989012345',12,'Activo'),(130,1,'Patricia','Luna','Flores','Servicio a Cuartos','98762310459','1991-08-28','LUFP910828AB0','Vespertino',17000.00,'2017-11-17',34,'9980123456',12,'Activo'),(131,1,'Óscar','Cruz','Torres','Servicio a Cuartos','87651209348','1990-12-11','CRTO901211CD6','Vespertino',17000.00,'2017-03-20',34,'9981234567',12,'Activo'),(132,1,'Mariana','Díaz','Vargas','Servicio a Cuartos','76540198237','1992-03-27','DIVM920327EF2','Vespertino',17000.00,'2018-06-15',34,'9982345678',12,'Activo'),(133,1,'Luis','Mendoza','Luna','Auxiliar Cocina','65439087126','1991-07-10','MELL910710GH8','Matutino',16000.00,'2017-10-12',33,'9983456789',12,'Activo'),(134,1,'Carla','Rivas','Díaz','Auxiliar Cocina','54328976015','1992-10-24','RIDC921024IJ4','Vespertino',16500.00,'2018-01-18',34,'9984567890',12,'Activo'),(135,1,'Guillermo','Morales','Mendoza','Auxiliar Cocina','43217865904','1991-01-15','MOMG910115KL0','Vespertino',16500.00,'2017-04-22',34,'9985678901',12,'Activo'),(136,1,'Claudia','Paredes','González','Organizador Eventos','32106754893','1988-04-23','PAGC880423MN6','Matutino',24000.00,'2016-07-15',25,'9986789012',8,'Activo'),(137,1,'José','Cortés','Ramírez','Organizador Eventos','21095643782','1990-07-09','CORJ900709OP2','Vespertino',24500.00,'2016-10-18',25,'9987890123',8,'Activo'),(138,1,'Andrea','Santos','Martínez','Asistente Eventos','10984532671','1992-10-22','SAMA921022QR8','Matutino',19000.00,'2018-01-15',25,'9988901234',8,'Activo'),(139,1,'Raúl','Pacheco','Sánchez','Asistente Eventos','09873421560','1991-02-08','PASR910208ST4','Vespertino',19500.00,'2017-04-22',25,'9989012345',8,'Activo'),(140,1,'Alejandro','Ramos','García','Bartender','98762310459','1987-05-15','RAGA870515UV0','Vespertino',24000.00,'2015-08-12',27,'9980123456',9,'Activo'),(141,1,'Diana','Rivera','Hernández','Bartender','87651209348','1989-08-30','RIHD890830WX6','Nocturno',25000.00,'2016-11-18',27,'9981234567',9,'Activo'),(142,1,'Miguel','Fuentes','Rodríguez','DJ Principal','76540198237','1986-01-24','FURM860124YZ2','Nocturno',28000.00,'2015-04-15',29,'9982345678',10,'Activo'),(143,1,'Carlos','León','Flores','DJ Asistente','65439087126','1988-05-10','LEFC880510AB8','Nocturno',22000.00,'2016-07-18',29,'9983456789',10,'Activo'),(144,1,'Laura','Campos','Vargas','Bartender Discoteca','54328976015','1987-08-25','CAVL870825CD4','Nocturno',23000.00,'2015-11-15',29,'9984567890',10,'Activo'),(145,1,'Mario','Delgado','Torres','Bartender Discoteca','43217865904','1989-11-08','DETM891108EF0','Nocturno',23000.00,'2016-02-22',29,'9985678901',10,'Activo'),(146,1,'Lucía','Montes','Luna','Bartender Discoteca','32106754893','1990-02-21','MOLL900221GH6','Nocturno',23000.00,'2017-05-17',29,'9986789012',10,'Activo'),(147,1,'Daniel','Estrada','Cruz','Mesero VIP','21095643782','1988-06-07','ESCD880607IJ2','Nocturno',19000.00,'2016-09-20',30,'9987890123',10,'Activo'),(148,1,'Marcela','Rangel','Díaz','Mesera VIP','10984532671','1989-09-22','RADM890922KL8','Nocturno',19000.00,'2016-12-15',30,'9988901234',10,'Activo'),(149,1,'Jorge','Santos','Mendoza','Mesero VIP','09873421560','1990-12-05','SAMJ901205MN4','Nocturno',19000.00,'2017-03-18',30,'9989012345',10,'Activo'),(150,1,'Verónica','Cortés','Rivas','Mesera VIP','98762310459','1989-03-20','CORV890320OP0','Nocturno',19000.00,'2016-06-15',30,'9980123456',10,'Activo'),(151,1,'Ricardo','Ramos','Morales','Mesero','87651209348','1990-06-04','RAMR900604QR6','Nocturno',17000.00,'2017-09-18',30,'9981234567',10,'Activo'),(152,1,'Mónica','Rivera','Ortiz','Mesera','76540198237','1991-09-17','RIOM910917ST2','Nocturno',17000.00,'2017-12-15',30,'9982345678',10,'Activo'),(153,1,'Roberto','Pacheco','Castro','Mesero','65439087126','1990-12-30','PACR901230UV8','Nocturno',17000.00,'2017-03-20',30,'9983456789',10,'Activo'),(154,1,'Gabriela','Soto','Rojas','Mesera','54328976015','1992-04-13','SORG920413WX4','Nocturno',17000.00,'2018-07-18',30,'9984567890',10,'Activo'),(155,1,'Eduardo','Jiménez','Fuentes','Seguridad Discoteca','43217865904','1989-07-27','JIFE890727YZ0','Nocturno',20000.00,'2016-10-22',29,'9985678901',10,'Activo'),(156,1,'Carolina','López','León','Hostess Discoteca','32106754893','1991-11-09','LOLC911109AB6','Nocturno',20000.00,'2018-02-15',29,'9986789012',10,'Activo'),(157,1,'Rafael','Moreno','Campos','Profesor Golf','21095643782','1984-02-15','MOCR840215CD2','Matutino',26000.00,'2014-05-10',31,'9987890123',11,'Activo'),(158,1,'Silvia','Ortiz','Delgado','Profesor Golf','10984532671','1986-05-28','OIDS860528EF8','Matutino',26000.00,'2015-08-18',31,'9988901234',11,'Activo'),(159,1,'Manuel','Castro','Montes','Caddie','09873421560','1988-09-14','CAMM880914GH4','Matutino',16000.00,'2016-12-15',31,'9989012345',11,'Activo'),(160,1,'Isabel','Rojas','Estrada','Caddie','98762310459','1990-12-27','ROEI901227IJ0','Matutino',16000.00,'2017-03-20',31,'9980123456',11,'Activo'),(161,1,'Jorge','Pérez','Rangel','Caddie','87651209348','1989-04-10','PERJ890410KL6','Vespertino',16500.00,'2016-07-18',32,'9981234567',11,'Activo'),(162,1,'Mónica','González','Santos','Caddie','76540198237','1991-07-25','GOSM910725MN2','Vespertino',16500.00,'2017-10-15',32,'9982345678',11,'Activo'),(163,1,'Francisco','Martínez','Cortés','Mantenimiento Campo','65439087126','1986-10-19','MACF861019OP8','Matutino',18000.00,'2015-01-12',31,'9983456789',11,'Activo'),(164,1,'Laura','Sánchez','Ramos','Mantenimiento Campo','54328976015','1988-01-04','SARL880104QR4','Matutino',18000.00,'2016-04-15',31,'9984567890',11,'Activo'),(165,1,'Héctor','Hernández','Rivera','Mantenimiento Campo','43217865904','1987-04-17','HERH870417ST0','Vespertino',18500.00,'2015-07-18',32,'9985678901',11,'Activo'),(166,1,'Adriana','Rodríguez','Pacheco','Recepcionista Golf','32106754893','1989-07-30','ROPA890730UV6','Matutino',18500.00,'2016-10-22',31,'9986789012',11,'Activo'),(167,1,'Ricardo','Flores','Soto','Crupier','21095643782','1987-03-12','FLSR870312WX2','Vespertino',24000.00,'2015-06-15',35,'9987890123',13,'Activo'),(168,1,'Claudia','Vargas','Jiménez','Crupier','10984532671','1988-06-28','VAJC880628YZ8','Vespertino',24000.00,'2016-09-18',35,'9988901234',13,'Activo'),(169,1,'Martín','Torres','López','Crupier','09873421560','1986-10-11','TOLM861011AB4','Vespertino',24000.00,'2015-01-22',35,'9989012345',13,'Activo'),(170,1,'Sandra','Luna','González','Crupier','98762310459','1988-01-27','LUGS880127CD0','Vespertino',24000.00,'2016-04-15',35,'9980123456',13,'Activo'),(171,1,'Alejandro','Cruz','Martínez','Crupier','87651209348','1989-05-10','CRMA890510EF6','Vespertino',24000.00,'2016-08-18',35,'9981234567',13,'Activo'),(172,1,'Verónica','Díaz','Sánchez','Crupier','76540198237','1987-08-23','DISV870823GH2','Nocturno',25000.00,'2015-11-15',36,'9982345678',13,'Activo'),(173,1,'Roberto','Mendoza','Hernández','Crupier','65439087126','1988-12-06','MEHR881206IJ8','Nocturno',25000.00,'2016-03-20',36,'9983456789',13,'Activo'),(174,1,'Lucía','Rivas','Rodríguez','Crupier','54328976015','1990-03-19','RIRL900319KL4','Nocturno',25000.00,'2017-06-18',36,'9984567890',13,'Activo'),(175,1,'Carlos','Morales','Flores','Crupier','43217865904','1989-06-02','MOFC890602MN0','Nocturno',25000.00,'2016-09-22',36,'9985678901',13,'Activo'),(176,1,'Marina','Ortiz','Vargas','Crupier','32106754893','1990-09-15','ORVM900915OP6','Nocturno',25000.00,'2017-12-15',36,'9986789012',13,'Activo'),(177,1,'Javier','Castro','Torres','Jefe Mesa Ruleta','21095643782','1986-12-28','CATJ861228QR2','Vespertino',32000.00,'2015-03-18',35,'9987890123',13,'Activo'),(178,1,'Ana','Rojas','Luna','Jefe Mesa Blackjack','10984532671','1987-03-14','ROLA870314ST8','Vespertino',32000.00,'2015-06-15',35,'9988901234',13,'Activo'),(179,1,'Miguel','Pérez','Cruz','Jefe Mesa Póker','09873421560','1985-06-27','PECM850627UV4','Nocturno',33000.00,'2014-09-20',36,'9989012345',13,'Activo'),(180,1,'Laura','González','Díaz','Jefe Mesa Bacará','98762310459','1986-10-10','GODL861010WX0','Nocturno',33000.00,'2015-01-15',36,'9980123456',13,'Activo'),(181,1,'David','Martínez','Mendoza','Cajero Casino','87651209348','1988-01-23','MAMD880123YZ6','Vespertino',22000.00,'2016-04-18',35,'9981234567',13,'Activo'),(182,1,'Sofía','Sánchez','Rivas','Cajero Casino','76540198237','1989-05-08','SARS890508AB2','Vespertino',22000.00,'2016-08-22',35,'9982345678',13,'Activo'),(183,1,'Jorge','Hernández','Morales','Cajero Casino','65439087126','1988-08-21','HEMJ880821CD8','Nocturno',23000.00,'2016-11-15',36,'9983456789',13,'Activo'),(184,1,'Patricia','Rodríguez','Ortiz','Cajero Casino','54328976015','1989-12-04','ROOP891204EF4','Nocturno',23000.00,'2017-03-20',36,'9984567890',13,'Activo'),(185,1,'Alberto','Flores','Castro','Seguridad Casino','43217865904','1987-03-20','FLCA870320GH0','Vespertino',20000.00,'2015-06-18',37,'9985678901',13,'Activo'),(186,1,'María','Vargas','Rojas','Seguridad Casino','32106754893','1988-06-05','VARM880605IJ6','Vespertino',20000.00,'2016-09-15',37,'9986789012',13,'Activo'),(187,1,'Fernando','Torres','Pérez','Seguridad Casino','21095643782','1989-09-18','TOPF890918KL2','Nocturno',21000.00,'2016-12-20',37,'9987890123',13,'Activo'),(188,1,'Carmen','Luna','González','Seguridad Casino','10984532671','1987-12-01','LUGC871201MN8','Nocturno',21000.00,'2016-03-18',37,'9988901234',13,'Activo'),(189,1,'Alejandro','Cruz','Martínez','Técnico Máquinas','09873421560','1986-03-16','CRMA860316OP4','Matutino',24000.00,'2015-06-22',35,'9989012345',13,'Activo'),(190,1,'Gabriel','Sánchez','Díaz','Guardia Seguridad','98762310459','1986-06-29','SADG860629QR0','Matutino',19000.00,'2015-09-15',37,'9980123456',14,'Activo'),(191,1,'Raquel','Hernández','Mendoza','Guardia Seguridad','87651209348','1988-10-12','HEMR881012ST6','Matutino',19000.00,'2016-01-18',37,'9981234567',14,'Activo'),(192,1,'Daniel','Rodríguez','Rivas','Guardia Seguridad','76540198237','1987-01-28','RORD870128UV2','Matutino',19000.00,'2015-04-22',37,'9982345678',14,'Activo'),(193,1,'Claudia','Flores','Morales','Guardia Seguridad','65439087126','1989-05-11','FLMC890511WX8','Matutino',19000.00,'2016-08-15',37,'9983456789',14,'Activo'),(194,1,'Ricardo','Vargas','Ortiz','Guardia Seguridad','54328976015','1988-08-24','VAOR880824YZ4','Matutino',19000.00,'2016-11-18',37,'9984567890',14,'Activo'),(195,1,'Laura','Torres','Castro','Guardia Seguridad','43217865904','1990-12-07','TOCL901207AB0','Vespertino',19500.00,'2017-03-15',38,'9985678901',14,'Activo'),(196,1,'Carlos','Luna','Rojas','Guardia Seguridad','32106754893','1989-03-20','LURC890320CD6','Vespertino',19500.00,'2016-06-18',38,'9986789012',14,'Activo'),(197,1,'Ana','Cruz','Pérez','Guardia Seguridad','21095643782','1990-06-05','CRPA900605EF2','Vespertino',19500.00,'2017-09-15',38,'9987890123',14,'Activo'),(198,1,'Miguel','Díaz','González','Guardia Seguridad','10984532671','1989-09-18','DIGM890918GH8','Vespertino',19500.00,'2016-12-20',38,'9988901234',14,'Activo'),(199,1,'Sofía','Mendoza','Martínez','Guardia Seguridad','09873421560','1991-12-03','MEMS911203IJ4','Vespertino',19500.00,'2018-03-15',38,'9989012345',14,'Activo'),(200,1,'Javier','Rivas','Sánchez','Guardia Seguridad','98762310459','1988-03-18','RISJ880318KL0','Nocturno',20500.00,'2016-06-15',38,'9980123456',14,'Activo'),(201,1,'Patricia','Morales','Hernández','Guardia Seguridad','87651209348','1989-06-01','MOHP890601MN6','Nocturno',20500.00,'2016-09-18',38,'9981234567',14,'Activo'),(202,1,'Alejandro','Ortiz','Rodríguez','Guardia Seguridad','76540198237','1988-09-14','OIRA880914OP2','Nocturno',20500.00,'2016-12-15',38,'9982345678',14,'Activo'),(203,1,'Verónica','Castro','Flores','Guardia Seguridad','65439087126','1990-12-30','CAFV901230QR8','Nocturno',20500.00,'2017-03-20',38,'9983456789',14,'Activo'),(204,1,'Roberto','Rojas','Vargas','Guardia Seguridad','54328976015','1989-04-12','ROVR890412ST4','Nocturno',20500.00,'2016-07-18',38,'9984567890',14,'Activo'),(205,1,'Marina','Pérez','Torres','Operador CCTV','43217865904','1987-07-25','PETM870725UV0','Matutino',22000.00,'2015-10-15',37,'9985678901',14,'Activo'),(206,1,'David','González','Luna','Operador CCTV','32106754893','1988-11-08','GOLD881108WX6','Vespertino',22500.00,'2016-02-18',38,'9986789012',14,'Activo'),(207,1,'Silvia','Martínez','Cruz','Operador CCTV','21095643782','1990-02-24','MACS900224YZ2','Nocturno',23000.00,'2017-05-15',38,'9987890123',14,'Activo'),(208,1,'Claudia','Torres','Mendoza','Guia Turistico','10984532671','1989-03-10','TOMC890310AB8','Matutino',19000.00,'2016-06-15',NULL,'9988901234',15,'Activo'),(209,1,'Eduardo','Sánchez','Morales','Guía Cultural','09873421560','1987-06-23','SAME870623CD4','Matutino',19000.00,'2015-09-18',40,'9989012345',16,'Activo'),(210,1,'Mónica','Hernández','Ortiz','Coordinador Eventos','98762310459','1988-09-09','HEOM880909EF0','Matutino',19500.00,'2016-12-15',41,'9980123456',17,'Activo'),(211,1,'Carlos','Rodríguez','Castro','Coordinador Eventos','87651209348','1990-12-22','ROCC901222GH6','Matutino',19500.00,'2017-03-20',41,'9981234567',17,'Activo'),(212,1,'Laura','Flores','Rojas','Guía Histórico','76540198237','1989-04-08','FLRL890408IJ2','Matutino',19000.00,'2016-07-15',42,'9982345678',18,'Activo'),(213,1,'Miguel','Vargas','Pérez','Chofer Ejecutivo','65439087126','1988-07-21','VAPM880721KL8','Matutino',20000.00,'2016-10-18',43,'9983456789',19,'Activo'),(214,1,'Javier','Torres','González','Chofer','54328976015','1987-10-07','TOGJ871007MN4','Matutino',18000.00,'2016-01-12',43,'9984567890',19,'Activo'),(215,1,'Adriana','Luna','Martínez','Chofer','43217865904','1989-01-20','LUMA890120OP0','Matutino',18000.00,'2016-04-15',43,'9985678901',19,'Activo'),(216,1,'Mario','Cruz','Sánchez','Chofer','32106754893','1988-04-04','CRSM880404QR6','Matutino',18000.00,'2016-07-18',43,'9986789012',19,'Activo'),(217,1,'Carolina','Díaz','Hernández','Chofer','21095643782','1989-07-17','DIHC890717ST2','Matutino',18000.00,'2016-10-22',43,'9987890123',19,'Activo'),(218,1,'Antonio','Mendoza','Rodríguez','Chofer','10984532671','1987-10-30','MERA871030UV8','Vespertino',18500.00,'2016-01-18',43,'9988901234',19,'Activo'),(219,1,'Lorena','Rivas','Flores','Chofer','09873421560','1989-02-15','RIFL890215WX4','Vespertino',18500.00,'2016-05-15',43,'9989012345',19,'Activo'),(220,1,'Ricardo','Morales','Vargas','Chofer','98762310459','1988-05-28','MOVR880528YZ0','Vespertino',18500.00,'2016-08-18',43,'9980123456',19,'Activo'),(221,1,'Sandra','Ortiz','Torres','Chofer','87651209348','1989-09-10','ORTS890910AB6','Vespertino',18500.00,'2016-11-15',43,'9981234567',19,'Activo'),(222,1,'Héctor','Castro','Luna','Chofer','76540198237','1987-12-23','CALH871223CD2','Nocturno',19000.00,'2016-03-20',43,'9982345678',19,'Activo'),(223,1,'Verónica','Rojas','Cruz','Chofer','65439087126','1989-04-08','ROCV890408EF8','Nocturno',19000.00,'2016-07-18',43,'9983456789',19,'Activo'),(224,1,'Daniel','Pérez','Díaz','Coordinador Traslados','54328976015','1986-07-21','PEDD860721GH4','Vespertino',22000.00,'2015-10-15',43,'9984567890',19,'Activo'),(225,1,'Arturo','González','Mendoza','Encargado Lavandería','43217865904','1985-10-04','GOMA851004IJ0','Matutino',22000.00,'2014-01-10',3,'9985678901',2,'Activo'),(226,1,'Luisa','Martínez','Vargas','Asistente Recursos Humanos','32106754893','1986-01-17','MAVL860117KL6','Matutino',26000.00,'2014-04-15',4,'9986789012',1,'Activo'),(227,1,'José','Sánchez','Torres','Contador','21095643782','1984-04-30','SATJ840430MN2','Matutino',32000.00,'2013-07-18',2,'9987890123',1,'Activo'),(228,1,'María','Hernández','Luna','Asistente Contabilidad','10984532671','1986-08-16','HELM860816OP8','Matutino',26000.00,'2014-10-22',227,'9988901234',1,'Activo'),(229,1,'Pablo','Rodríguez','Cruz','Comprador','09873421560','1985-11-29','ROCP851129QR4','Matutino',28000.00,'2014-02-18',2,'9989012345',1,'Activo'),(230,1,'Laura','Flores','Díaz','Encargado Almacén','98762310459','1987-03-14','FLDL870314ST0','Matutino',24000.00,'2015-05-15',229,'9980123456',2,'Activo'),(231,1,'Jorge','Vargas','Mendoza','Supervisor Limpieza','87651209348','1984-06-27','VAMJ840627UV6','Matutino',23000.00,'2013-08-18',3,'9981234567',2,'Activo'),(232,1,'Silvia','Torres','Ortiz','Personal Limpieza','76540198237','1986-10-10','TOOS861010WX2','Matutino',16000.00,'2014-12-15',231,'9982345678',2,'Activo'),(233,1,'Ricardo','Luna','Pérez','Personal Limpieza','65439087126','1988-01-24','LUPR880124YZ8','Vespertino',16500.00,'2016-03-20',231,'9983456789',2,'Activo'),(234,1,'Ana','Cruz','González','Personal Limpieza','54328976015','1987-05-09','CRGA870509AB4','Nocturno',17000.00,'2015-08-18',231,'9984567890',2,'Activo'),(235,1,'Manuel','Díaz','Martínez','Jardinero','43217865904','1986-08-22','DIMM860822CD0','Matutino',18000.00,'2015-11-15',9,'9985678901',2,'Activo'),(236,1,'Mónica','Mendoza','Sánchez','Recepcionista RH','32106754893','1988-11-07','MESM881107EF6','Matutino',19000.00,'2016-02-18',4,'9986789012',1,'Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Ciudad de México',1),(2,'Jalisco',1),(3,'Nuevo León',1),(4,'Baja California',1),(5,'Quintana Roo',1),(6,'Yucatán',1),(7,'Chihuahua',1),(8,'Oaxaca',1),(9,'California',2),(10,'Texas',2),(11,'Florida',2),(12,'New York',2),(13,'Illinois',2),(14,'Pennsylvania',2),(15,'Ohio',2),(16,'Georgia',2),(17,'North Carolina',2),(18,'Michigan',2),(19,'Ontario',3),(20,'Quebec',3),(21,'British Columbia',3),(22,'Alberta',3),(23,'Manitoba',3),(24,'Nova Scotia',3),(25,'São Paulo',4),(26,'Rio de Janeiro',4),(27,'Minas Gerais',4),(28,'Bahia',4),(29,'Ceará',4),(30,'Amazonas',4),(31,'Buenos Aires',5),(32,'Córdoba',5),(33,'Santa Fe',5),(34,'Mendoza',5),(35,'Tucumán',5),(36,'Cundinamarca',6),(37,'Antioquia',6),(38,'Valle del Cauca',6),(39,'Atlántico',6),(40,'Santander',6),(41,'Región Metropolitana',7),(42,'Valparaíso',7),(43,'Biobío',7),(44,'Los Lagos',7),(45,'Lima',8),(46,'Arequipa',8),(47,'Cusco',8),(48,'La Libertad',8),(49,'Madrid',14),(50,'Cataluña',14),(51,'Andalucía',14),(52,'Valencia',14),(53,'Galicia',14),(54,'País Vasco',14),(55,'Île-de-France',15),(56,'Occitania',15),(57,'Provenza-Alpes-Costa Azul',15),(58,'Auvernia-Ródano-Alpes',15),(59,'Nueva Aquitania',15),(60,'Lacio',16),(61,'Lombardía',16),(62,'Campania',16),(63,'Sicilia',16),(64,'Toscana',16),(65,'Baviera',17),(66,'Renania del Norte-Westfalia',17),(67,'Baden-Wurtemberg',17),(68,'Baja Sajonia',17),(69,'Hesse',17),(70,'Inglaterra',18),(71,'Escocia',18),(72,'Gales',18),(73,'Irlanda del Norte',18),(74,'Guangdong',34),(75,'Jiangsu',34),(76,'Shandong',34),(77,'Zhejiang',34),(78,'Henan',34),(79,'Tokio',35),(80,'Osaka',35),(81,'Kanagawa',35),(82,'Aichi',35),(83,'Nueva Gales del Sur',38),(84,'Victoria',38),(85,'Queensland',38),(86,'Australia Occidental',38),(87,'Australia Meridional',38),(88,'Gauteng',40),(89,'Cabo Occidental',40),(90,'KwaZulu-Natal',40),(91,'Cabo Oriental',40),(92,'Maharashtra',37),(93,'Tamil Nadu',37),(94,'Karnataka',37),(95,'Gujarat',37),(96,'Uttar Pradesh',37),(97,'Moscú',33),(98,'San Petersburgo',33),(99,'Novosibirsk',33),(100,'Sverdlovsk',33);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_bitacora_habitacion` AFTER UPDATE ON `habitacion` FOR EACH ROW BEGIN
    IF OLD.Estado != NEW.Estado THEN
        INSERT INTO bitacora_habitacion (
            ID_Habitacion, 
            Estado, 
            Fecha_Hora_Cambio, 
            ID_Empleado, 
            Motivo_cambio
        ) VALUES (
            NEW.ID_Habitacion, 
            NEW.Estado, 
            NOW(), 
            NULL, 
            CONCAT('Cambio de estado de ', OLD.Estado, ' a ', NEW.Estado)
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Hotel Mafia Luxury Resort & Spa','Blvd. Kukulcán Km. 12.5, Zona Hotelera',5,15,80);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huesped_acompanante`
--

DROP TABLE IF EXISTS `huesped_acompanante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huesped_acompanante` (
  `ID_Huesped_Acompanante` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido1` varchar(100) NOT NULL,
  `Apellido2` varchar(100) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ID_Cliente` int NOT NULL,
  `ciudad_de_origen` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Huesped_Acompanante`),
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
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `ID_Pais` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'México'),(2,'Estados Unidos'),(3,'Canadá'),(4,'Brasil'),(5,'Argentina'),(6,'Colombia'),(7,'Chile'),(8,'Perú'),(9,'Ecuador'),(10,'Venezuela'),(11,'Uruguay'),(12,'Paraguay'),(13,'Bolivia'),(14,'España'),(15,'Francia'),(16,'Italia'),(17,'Alemania'),(18,'Reino Unido'),(19,'Portugal'),(20,'Países Bajos'),(21,'Bélgica'),(22,'Suiza'),(23,'Austria'),(24,'Grecia'),(25,'Suecia'),(26,'Noruega'),(27,'Dinamarca'),(28,'Finlandia'),(29,'Irlanda'),(30,'Polonia'),(31,'República Checa'),(32,'Hungría'),(33,'Rusia'),(34,'China'),(35,'Japón'),(36,'Corea del Sur'),(37,'India'),(38,'Australia'),(39,'Nueva Zelanda'),(40,'Sudáfrica'),(41,'Egipto'),(42,'Marruecos'),(43,'Nigeria'),(44,'Kenia'),(45,'Arabia Saudita'),(46,'Emiratos Árabes Unidos'),(47,'Turquía'),(48,'Israel'),(49,'Tailandia'),(50,'Singapur');
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
  `Fecha_inicio` datetime NOT NULL,
  `Fecha_Fin` datetime NOT NULL,
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validar_fechas_reserva` BEFORE INSERT ON `reserva` FOR EACH ROW BEGIN
    IF NEW.Fecha_Salida <= NEW.Fecha_Entrada THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: La fecha de salida debe ser posterior a la fecha de entrada';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_actualizar_contador_vip` AFTER INSERT ON `reserva` FOR EACH ROW BEGIN
    DECLARE es_vip BOOLEAN;
    
    SELECT Es_VIP INTO es_vip 
    FROM cliente 
    WHERE ID_Cliente = NEW.ID_Cliente;
    
    IF es_vip = 1 THEN
        UPDATE cliente_potencial_vip 
        SET Contador_Reservas = Contador_Reservas + 1,
            Ultima_Estancia = NEW.Fecha_Entrada
        WHERE ID_Cliente = NEW.ID_Cliente;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cancelacion_reserva` BEFORE UPDATE ON `reserva` FOR EACH ROW BEGIN
    -- Declarar todas las variables al inicio del bloque
    DECLARE dias_faltantes INT;
    DECLARE codigo_confirmacion VARCHAR(50);
    DECLARE penalizacion DECIMAL(10,2);
    DECLARE id_cancelacion INT;
    
    -- Luego continuar con las instrucciones condicionales
    IF NEW.Estado = 'Cancelada' AND OLD.Estado != 'Cancelada' THEN
        -- Calcular días faltantes para la entrada
        SET dias_faltantes = DATEDIFF(OLD.Fecha_Entrada, CURDATE());
        SET codigo_confirmacion = OLD.Codigo_Confirmacion;
        
        -- Si faltan menos de 3 días, aplicar penalización
        IF dias_faltantes < 3 THEN
            SET penalizacion = OLD.Costo_Total * 0.55;
            
            -- Registrar la cancelación con penalización
            INSERT INTO cancelacion (
                Motivo_Cancelacion, 
                Penalizacion, 
                Fecha_Cancelacion, 
                Codigo_Confirmacion
            ) VALUES (
                'Cancelación tardía con penalización', 
                penalizacion, 
                NOW(), 
                codigo_confirmacion
            );
        ELSE
            -- Registrar cancelación sin penalización
            INSERT INTO cancelacion (
                Motivo_Cancelacion, 
                Penalizacion, 
                Fecha_Cancelacion, 
                Codigo_Confirmacion
            ) VALUES (
                'Cancelación sin penalización', 
                0.00, 
                NOW(), 
                codigo_confirmacion
            );
        END IF;
        
        -- Obtener el ID de la cancelación recién insertada
        SET id_cancelacion = LAST_INSERT_ID();
        
        -- Actualizar los detalles de reserva habitación con el ID de cancelación
        UPDATE detalle_reserva_habitacion 
        SET ID_Cancelacion = id_cancelacion
        WHERE ID_Reserva = OLD.ID_Reserva;
        
        -- Liberar las habitaciones reservadas
        UPDATE habitacion h
        JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
        SET h.Estado = 'Disponible'
        WHERE drh.ID_Reserva = OLD.ID_Reserva;
        
        -- Eliminar de fechas ocupadas
        DELETE FROM fechas_ocupadas
        WHERE ID_Reserva = OLD.ID_Reserva;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  CONSTRAINT `satisfaccion_cliente_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`)
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validar_precio_servicio` BEFORE INSERT ON `servicio` FOR EACH ROW BEGIN
    IF NEW.Precio <= 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: El precio del servicio debe ser mayor que cero';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validar_precio_servicio_update` BEFORE UPDATE ON `servicio` FOR EACH ROW BEGIN
    IF NEW.Precio <= 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: El precio del servicio debe ser mayor que cero';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `Descripcion` text NOT NULL,
  `Duracion` int NOT NULL,
  `Requisitos` text NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_habitacion`
--

LOCK TABLES `tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tipo_habitacion` DISABLE KEYS */;
INSERT INTO `tipo_habitacion` VALUES (1,'Estándar Individual','Habitación con una cama individual, ideal para viajeros solitarios.',1500.00,1,'Wifi, TV, Baño privado, Aire acondicionado','https://hotel-mafia.com/images/hab_estandar_ind.jpg'),(2,'Estándar Doble','Habitación con una cama matrimonial o dos camas individuales.',2000.00,2,'Wifi, TV, Baño privado, Aire acondicionado, Minibar','https://hotel-mafia.com/images/hab_estandar_doble.jpg'),(3,'Superior Individual','Habitación individual con mejores vistas y más espacio.',2200.00,1,'Wifi, TV HD, Baño privado con tina, Aire acondicionado, Minibar, Caja fuerte','https://hotel-mafia.com/images/hab_superior_ind.jpg'),(4,'Superior Doble','Habitación doble con mejores vistas y más espacio.',2800.00,2,'Wifi, TV HD, Baño privado con tina, Aire acondicionado, Minibar, Caja fuerte, Área de estar','https://hotel-mafia.com/images/hab_superior_doble.jpg'),(5,'Junior Suite','Suite con dormitorio y pequeña sala de estar.',3500.00,2,'Wifi, TV HD, Baño privado con jacuzzi, Aire acondicionado, Minibar, Caja fuerte, Sala de estar, Servicio a la habitación','https://hotel-mafia.com/images/junior_suite.jpg'),(6,'Suite Ejecutiva','Suite amplia con dormitorio separado y sala de estar.',4500.00,2,'Wifi, TV HD, Baño privado con jacuzzi, Aire acondicionado, Minibar, Caja fuerte, Sala de estar, Escritorio de trabajo, Servicio a la habitación, Desayuno incluido','https://hotel-mafia.com/images/suite_ejecutiva.jpg'),(7,'Suite Familiar','Suite amplia con dos dormitorios y sala de estar, ideal para familias.',5500.00,4,'Wifi, TV HD, 2 Baños privados, Aire acondicionado, Minibar, Caja fuerte, Sala de estar, Cocina pequeña, Servicio a la habitación, Desayuno incluido','https://hotel-mafia.com/images/suite_familiar.jpg'),(8,'Suite Presidencial','La suite más lujosa del hotel con vistas excepcionales.',8000.00,2,'Wifi, TV HD, Baño privado con jacuzzi y sauna, Aire acondicionado, Minibar premium, Caja fuerte, Sala de estar, Comedor, Cocina, Servicio a la habitación 24h, Desayuno incluido, Servicio de mayordomo','https://hotel-mafia.com/images/suite_presidencial.jpg');
/*!40000 ALTER TABLE `tipo_habitacion` ENABLE KEYS */;
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
INSERT INTO `usuario_empleado` VALUES (1,'cvega','D1r3ct0r#2025',1),(2,'mortiz','F1n4nc3$Mgmt',1),(3,'jtorres','Op3r4t10n$K3y',1),(4,'lramirez','HR_M4st3r!2024',1),(5,'rsanchez','C0mm3rc14l@Boss',1),(6,'pgutierrez','G3n3r4l&M4n4g3r',1),(7,'flopez','SubG3r3nt3#2025',1),(8,'amoreno','Ass1st_G3r3nc14',1),(9,'rdiaz','M4nt3n1m13nt0!',2),(10,'vcruz','M4nt_Sup3rv1s0r',3),(11,'greyes','N1ght_M4nt3n4nc3',3),(12,'sflores','R3c3pc10n$Ch3f',2),(13,'dgarcia','R3c3p_Ev3n1ng$',3),(14,'lmartinez','R3c3p_N1ght@S3rv',3),(15,'mhernandez','T3ch_L34d3r#IT',2),(16,'aperez','Syst3ms_An4lyst!',3),(17,'cnunez','Sp4_M4n4g3r@2024',2),(18,'echavez','Sp4_Sup3rv1s0r#',3),(19,'baguilar','W3lln3ss_T34m@',3),(20,'rtorres','Gym_Boss!F1tn3ss',2),(21,'mvargas','F1tn3ss_Sup3rv!',3),(22,'hgomez','Ch3f_Exe5ut1v0',2),(23,'cmendoza','S0us_Ch3f$K1tch3n',3),(24,'jluna','M41tr3_S3rv1c3#',3),(25,'imorales','Ev3nt0s&S3rv1c3',2),(26,'gramos','Ev3nt_C00rd1n4t0r',3),(27,'ajuarez','B4r_Qu33n#Dr1nks',2),(28,'rnavarro','B4rm4n_Pr1nc1p4l',3),(29,'vcampos','D1sc0_N1ght!Fun',2),(30,'omedina','D1sc0_Sup3rv1s0r',3),(31,'fcastro','G0lf_Pr0$M4st3r',2),(32,'ddelgado','G0lf_C00rd1n4t0r',3),(33,'mguzman','R00m_S3rv1c3$AM',3),(34,'erios','R00m_S3rv1c3$PM',3),(35,'apena','C4s1n0_K1ng@L4s',2),(36,'snava','C4s1n0_N1ght@Sup',3),(37,'jrobles','S3cur1ty_Ch13f!',2),(38,'tvargas','S3cur1ty_N1ght!',3),(39,'alara','P4rks&T0urs#Fun',2),(40,'jvega','Mus3um_Gu1d3$',2),(41,'rsoto','F3st1v4l_C00rd!',2),(42,'nmendez','H1st0ry_T0urs@',2),(43,'mfuentes','Tr4nsp0rt_M4st3r',2),(44,'pjimenez','T3cn1c0_M4nt_01',4),(45,'jramirez','T3cn1c0_M4nt_02',4),(46,'mortega','T3cn1c0_M4nt_03',4),(47,'acastro','T3cn1c0_M4nt_04',4),(48,'jtorres2','T3cn1c0_M4nt_05',4),(49,'lnunez','T3cn1c0_M4nt_06',4),(50,'rdiaz2','T3cn1c0_M4nt_07',4),(51,'areyes','T3cn1c0_M4nt_08',4),(52,'sgomez','T3cn1c0_M4nt_09',4),(53,'fmorales','T3cn1c0_M4nt_10',4),(54,'crojas','T3cn1c0_M4nt_11',4),(55,'mmendoza','J4rd1n3r0_Pr0$',4),(56,'agarcia','R3c3p_D4y$01',5),(57,'lmartinez2','R3c3p_D4y$02',5),(58,'shernandez','R3c3p_D4y$03',5),(59,'rperez','R3c3p_D4y$04',5),(60,'dgonzalez','R3c3p_D4y$05',5),(61,'msanchez','R3c3p_Ev3$01',5),(62,'srodriguez','R3c3p_Ev3$02',5),(63,'plopez','R3c3p_Ev3$03',5),(64,'lflores','R3c3p_Ev3$04',5),(65,'avargas','R3c3p_Ev3$05',5),(66,'gluna','R3c3p_N1t3$01',5),(67,'rcruz','R3c3p_N1t3$02',5),(68,'mvargas2','R3c3p_N1t3$03',5),(69,'erivas','R3c3p_N1t3$04',5),(70,'aortega','B0t0n3s_D4y$',5),(71,'hjimenez','T3ch_Syst3ms#01',4),(72,'cnavarro','T3ch_Supp0rt@02',4),(73,'ltorres','M4s4j1st4_AM$01',4),(74,'cmedina','M4s4j1st4_AM$02',4),(75,'mcastillo','Est3t1c1st4_AM#',4),(76,'arangel','Est3t1c1st4_PM#',4),(77,'drivera','M4s4j1st4_PM$01',4),(78,'vguzman','M4s4j1st4_PM$02',4),(79,'nrios','Est3t1c1st4_SP3c',4),(80,'cparedes','R3c3p_Sp4@D3sk',4),(81,'hleon','Tr41n3r_P3rs0n4l1',4),(82,'rcontreras','Tr41n3r_P3rs0n4l2',4),(83,'jalvarado','C0c1n3r0_AM$01',4),(84,'gsantos','C0c1n3r0_AM$02',4),(85,'mpacheco','C0c1n3r4_AM$03',4),(86,'frivera','C0c1n3r0_AM$04',4),(87,'amoreno2','C0c1n3r0_PM$01',4),(88,'sgonzalez','C0c1n3r4_PM$02',4),(89,'dramirez','C0c1n3r0_PM$03',4),(90,'cmartinez','C0c1n3r4_PM$04',4),(91,'asanchez','Ayud4nt3_C0c1n4_1',4),(92,'mvargas3','Ayud4nt3_C0c1n4_2',4),(93,'dflores','Ayud4nt3_C0c1n4_3',4),(94,'itorres','Ayud4nt3_C0c1n4_4',4),(95,'pluna','Ayud4nt3_C0c1n4_5',4),(96,'acruz','Ayud4nt3_C0c1n4_6',4),(97,'fmendoza','Ayud4nt3_C0c1n4_7',4),(98,'grivas','Ayud4nt3_C0c1n4_8',4),(99,'emorales','L4v4pl4t0s_AM$',4),(100,'vortiz','L4v4pl4t0s_PM$',4),(101,'rcastro','L4v4pl4t0s_N1ght',4),(102,'arojas','L4v4pl4t0s_W33k',4),(103,'cperez','M3s3r0_AM$01',4),(104,'lgonzalez','M3s3r4_AM$02',4),(105,'jmartinez','M3s3r0_AM$03',4),(106,'asanchez2','M3s3r4_AM$04',4),(107,'jhernandez','M3s3r0_AM$05',4),(108,'mrodriguez','M3s3r4_AM$06',4),(109,'pflores','M3s3r0_AM$07',4),(110,'lvargas','M3s3r4_AM$08',4),(111,'dtorres','M3s3r0_PM$01',4),(112,'sluna','M3s3r4_PM$02',4),(113,'mcruz','M3s3r0_PM$03',4),(114,'cdiaz','M3s3r4_PM$04',4),(115,'amendoza','M3s3r0_PM$05',4),(116,'vrivas','M3s3r4_PM$06',4),(117,'rmorales2','M3s3r0_PM$07',4),(118,'dortiz','M3s3r4_PM$08',4),(119,'jcastro','C4p1t4n_M3s3r0s1',3),(120,'arojas2','C4p1t4n_M3s3r0s2',3),(121,'gperez','S0mm3l13r_Pr0$',3),(122,'mgonzalez','H0st3ss_AM$W3lc',4),(123,'fmartinez','H0st3ss_PM$Gr33t',4),(124,'rsanchez2','B4r1st4_C0ff33#',4),(125,'hhernandez','B4r1st4_Sp3c14l$',4),(126,'nrodriguez','R00m_S3rv_AM$01',4),(127,'sflores2','R00m_S3rv_AM$02',4),(128,'avargas2','R00m_S3rv_AM$03',4),(129,'dtorres2','R00m_S3rv_PM$01',4),(130,'pluna2','R00m_S3rv_PM$02',4),(131,'ocruz','R00m_S3rv_PM$03',4),(132,'mdiaz2','R00m_S3rv_PM$04',4),(133,'lmendoza2','Aux_C0c1n4_RS$1',4),(134,'crivas','Aux_C0c1n4_RS$2',4),(135,'gmorales2','Aux_C0c1n4_RS$3',4),(136,'cparedes2','Ev3nt_Org4n1z3r1',4),(137,'jcortes','Ev3nt_Org4n1z3r2',4),(138,'asantos','Ev3nt_Ass1st4nt1',4),(139,'rpacheco','Ev3nt_Ass1st4nt2',4),(140,'aramos','B4rt3nd3r_PM$01',4),(141,'drivera2','B4rt3nd3r_N1ght$',4),(142,'mfuentes2','DJ_Pr1nc1p4l$B34t',4),(143,'cleon','DJ_Ass1st4nt$M1x',4),(144,'lcampos','B4rt3nd3r_D1sc01',4),(145,'mdelgado','B4rt3nd3r_D1sc02',4),(146,'lmontes','B4rt3nd3r_D1sc03',4),(147,'destrada','M3s3r0_VIP$01',4),(148,'mrangel','M3s3r4_VIP$02',4),(149,'jsantos','M3s3r0_VIP$03',4),(150,'vcortes','M3s3r4_VIP$04',4),(151,'rramos','M3s3r0_D1sc0$01',4),(152,'mrivera','M3s3r4_D1sc0$02',4),(153,'rpacheco2','M3s3r0_D1sc0$03',4),(154,'gsoto','M3s3r4_D1sc0$04',4),(155,'ejimenez','S3gur1d4d_D1sc0$',4),(156,'clopez','H0st3ss_D1sc0$N1t',4),(157,'rmoreno','Pr0f3s0r_G0lf$01',4),(158,'sortiz','Pr0f3s0r_G0lf$02',4),(159,'mcastro2','C4dd13_G0lf$01',4),(160,'irojas','C4dd13_G0lf$02',4),(161,'jperez2','C4dd13_G0lf$03',4),(162,'mgonzalez2','C4dd13_G0lf$04',4),(163,'fmartinez2','M4nt_C4mp0$01',4),(164,'lsanchez','M4nt_C4mp0$02',4),(165,'hhernandez2','M4nt_C4mp0$03',4),(166,'arodriguez','R3c3p_G0lf$D3sk',4),(167,'rflores','Crup13r_PM$01',4),(168,'cvargas2','Crup13r_PM$02',4),(169,'mtorres2','Crup13r_PM$03',4),(170,'sluna2','Crup13r_PM$04',4),(171,'acruz2','Crup13r_PM$05',4),(172,'vdiaz','Crup13r_N1ght$01',4),(173,'rmendoza2','Crup13r_N1ght$02',4),(174,'lrivas','Crup13r_N1ght$03',4),(175,'cmorales','Crup13r_N1ght$04',4),(176,'mortiz2','Crup13r_N1ght$05',4),(177,'jcastro2','J3f3_M3s4_Rul3t4',3),(178,'arojas3','J3f3_M3s4_Bl4ckJ',3),(179,'mperez','J3f3_M3s4_P0k3r$',3),(180,'lgonzalez2','J3f3_M3s4_B4c4r4',3),(181,'dmartinez','C4j3r0_C4s1n0$01',4),(182,'ssanchez','C4j3r0_C4s1n0$02',4),(183,'jhernandez2','C4j3r0_C4s1n0$03',4),(184,'prodriguez','C4j3r0_C4s1n0$04',4),(185,'aflores','S3g_C4s1n0$PM',4),(186,'mvargas4','S3g_C4s1n0$PM2',4),(187,'ftorres','S3g_C4s1n0$N1ght',4),(188,'cluna','S3g_C4s1n0$N1ght2',4),(189,'acruz3','T3cn1c0_M4qu1n4s',4),(208,'ctorres','Gu14_T0urs_P4rks',4),(209,'esanchez','Gu14_Cultur4l$',4),(210,'mhernandez2','C00rd_F3st1v4l1',4),(211,'crodriguez','C00rd_F3st1v4l2',4),(212,'lflores2','Gu14_H1st0r1c0$',4),(213,'mvargas5','Ch0f3r_Ej3cut1v0',4),(214,'jtorres3','Ch0f3r_AM$01',4),(215,'aluna','Ch0f3r_AM$02',4),(216,'mcruz2','Ch0f3r_AM$03',4),(217,'cdiaz2','Ch0f3r_AM$04',4),(218,'amendoza2','Ch0f3r_PM$01',4),(219,'lrivas2','Ch0f3r_PM$02',4),(220,'rmorales3','Ch0f3r_PM$03',4),(221,'sortiz2','Ch0f3r_PM$04',4),(222,'hcastro','Ch0f3r_N1ght$01',4),(223,'vrojas','Ch0f3r_N1ght$02',4),(224,'dperez','C00rd_Tr4sl4d0s$',3),(225,'agonzalez','L4v4nd3r14_Ch13f',3),(226,'lmartinez3','HR_Ass1st4nt@2024',3),(227,'jsanchez2','C0nt4d0r_G3n3r4l',3),(228,'mhernandez3','Ass1st_C0nt4b1l1d',4),(229,'prodriguez2','C0mpr4d0r_G3n3r4l',3),(230,'lflores3','Alm4c3n_Ch13f$',3),(231,'jvargas','L1mp13z4_Sup3rv!',3),(232,'storres','L1mp13z4_AM$01',4),(233,'rluna','L1mp13z4_PM$02',4),(234,'acruz5','L1mp13z4_N1ght$',4),(235,'mdiaz3','J4rd1n3r0_Gr0unds',4),(236,'mmendoza2','R3c3p_RH$D3sk',4);
/*!40000 ALTER TABLE `usuario_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hotel_mafia'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_cliente_vip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_cliente_vip`(
    IN p_id_cliente INT
)
BEGIN
    DECLARE v_contador_reservas INT;
    DECLARE v_total_gastado DECIMAL(10,2);
    
    -- Obtener datos actuales del cliente potencial VIP
    SELECT 
        Contador_Reservas,
        Total_Gastado
    INTO 
        v_contador_reservas,
        v_total_gastado
    FROM cliente_potencial_vip
    WHERE ID_Cliente = p_id_cliente;
    
    -- Verificar si cumple requisitos para ser VIP (más de 5 reservas o gasto mayor a 50,000)
    IF v_contador_reservas >= 5 OR v_total_gastado >= 50000 THEN
        -- Actualizar estatus a VIP
        UPDATE cliente SET Es_VIP = 1 WHERE ID_Cliente = p_id_cliente;
        
        -- Actualizar estado en la tabla de clientes potenciales
        UPDATE cliente_potencial_vip 
        SET Estado = 'VIP Activo'
        WHERE ID_Cliente = p_id_cliente;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_estado_habitacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_estado_habitacion`(
    IN p_id_habitacion INT,
    IN p_estado VARCHAR(45),
    IN p_id_empleado INT,
    IN p_motivo VARCHAR(100)
)
BEGIN
    -- Actualizar el estado de la habitación
    UPDATE habitacion SET Estado = p_estado WHERE ID_Habitacion = p_id_habitacion;
    
    -- Registrar el cambio en la bitácora (el trigger ya debería hacer esto, pero por si acaso)
    INSERT INTO bitacora_habitacion (
        ID_Habitacion,
        Estado,
        Fecha_Hora_Cambio,
        ID_Empleado,
        Motivo_cambio
    ) VALUES (
        p_id_habitacion,
        p_estado,
        NOW(),
        p_id_empleado,
        p_motivo
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_asignar_upgrade_vip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_asignar_upgrade_vip`(
    IN p_id_reserva INT,
    OUT p_upgrade_aplicado BOOLEAN
)
BEGIN
    DECLARE v_es_vip BOOLEAN;
    DECLARE v_id_cliente INT;
    DECLARE v_id_habitacion_actual INT;
    DECLARE v_id_tipo_actual INT;
    DECLARE v_id_tipo_superior INT;
    DECLARE v_id_habitacion_superior INT;
    DECLARE v_fecha_entrada DATE;
    DECLARE v_fecha_salida DATE;
    
    SET p_upgrade_aplicado = FALSE;
    
    -- Obtener información de la reserva y del cliente
    SELECT 
        r.ID_Cliente,
        drh.ID_Habitacion,
        r.Fecha_Entrada,
        r.Fecha_Salida
    INTO 
        v_id_cliente,
        v_id_habitacion_actual,
        v_fecha_entrada,
        v_fecha_salida
    FROM 
        reserva r
    JOIN 
        detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
    WHERE 
        r.ID_Reserva = p_id_reserva
    LIMIT 1;
    
    -- Verificar si el cliente es VIP
    SELECT Es_VIP INTO v_es_vip FROM cliente WHERE ID_Cliente = v_id_cliente;
    
    IF v_es_vip = 1 THEN
        -- Obtener tipo de habitación actual
        SELECT ID_Tipo_Habitacion INTO v_id_tipo_actual 
        FROM habitacion 
        WHERE ID_Habitacion = v_id_habitacion_actual;
        
        -- Intentar obtener un tipo de habitación superior
        SELECT ID_Tipo_Habitacion INTO v_id_tipo_superior
        FROM tipo_habitacion
        WHERE Precio_Base > (SELECT Precio_Base FROM tipo_habitacion WHERE ID_Tipo_Habitacion = v_id_tipo_actual)
        ORDER BY Precio_Base
        LIMIT 1;
        
        IF v_id_tipo_superior IS NOT NULL THEN
            -- Buscar una habitación disponible de tipo superior
            SELECT h.ID_Habitacion INTO v_id_habitacion_superior
            FROM habitacion h
            WHERE 
                h.ID_Tipo_Habitacion = v_id_tipo_superior
                AND h.Estado = 'Disponible'
                AND h.ID_Habitacion NOT IN (
                    SELECT fo.ID_Habitacion
                    FROM fechas_ocupadas fo
                    WHERE 
                        (v_fecha_entrada BETWEEN fo.Fecha_Checkin AND DATE_SUB(fo.Fecha_Checkout, INTERVAL 1 DAY))
                        OR (v_fecha_salida BETWEEN DATE_ADD(fo.Fecha_Checkin, INTERVAL 1 DAY) AND fo.Fecha_Checkout)
                        OR (fo.Fecha_Checkin BETWEEN v_fecha_entrada AND DATE_SUB(v_fecha_salida, INTERVAL 1 DAY))
                        OR (fo.Fecha_Checkout BETWEEN DATE_ADD(v_fecha_entrada, INTERVAL 1 DAY) AND v_fecha_salida)
                )
            LIMIT 1;
            
            IF v_id_habitacion_superior IS NOT NULL THEN
                -- Actualizar la habitación en el detalle de reserva
                UPDATE detalle_reserva_habitacion
                SET ID_Habitacion = v_id_habitacion_superior
                WHERE ID_Reserva = p_id_reserva AND ID_Habitacion = v_id_habitacion_actual;
                
                -- Actualizar fechas ocupadas
                UPDATE fechas_ocupadas
                SET ID_Habitacion = v_id_habitacion_superior
                WHERE ID_Reserva = p_id_reserva AND ID_Habitacion = v_id_habitacion_actual;
                
                SET p_upgrade_aplicado = TRUE;
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cancelar_reserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cancelar_reserva`(
    IN p_id_reserva INT,
    IN p_motivo_cancelacion TEXT,
    OUT p_penalizacion DECIMAL(10,2)
)
BEGIN
    DECLARE v_fecha_entrada DATE;
    DECLARE v_codigo_confirmacion VARCHAR(50);
    DECLARE v_dias_faltantes INT;
    DECLARE v_costo_total DECIMAL(10,2);
    DECLARE v_id_cancelacion INT;
    
    -- Obtener información de la reserva
    SELECT 
        Fecha_Entrada, 
        Codigo_Confirmacion,
        Costo_Total
    INTO 
        v_fecha_entrada, 
        v_codigo_confirmacion,
        v_costo_total
    FROM reserva 
    WHERE ID_Reserva = p_id_reserva;
    
    -- Calcular días faltantes
    SET v_dias_faltantes = DATEDIFF(v_fecha_entrada, CURDATE());
    
    -- Determinar si aplica penalización
    IF v_dias_faltantes < 3 THEN
        SET p_penalizacion = v_costo_total * 0.55;
    ELSE
        SET p_penalizacion = 0;
    END IF;
    
    -- Registrar la cancelación
    INSERT INTO cancelacion (
        Motivo_Cancelacion,
        Penalizacion,
        Fecha_Cancelacion,
        Codigo_Confirmacion
    ) VALUES (
        p_motivo_cancelacion,
        p_penalizacion,
        NOW(),
        v_codigo_confirmacion
    );
    
    SET v_id_cancelacion = LAST_INSERT_ID();
    
    -- Actualizar los detalles de reserva con el ID de cancelación
    UPDATE detalle_reserva_habitacion 
    SET ID_Cancelacion = v_id_cancelacion
    WHERE ID_Reserva = p_id_reserva;
    
    -- Cambiar estado de la reserva a cancelada
    UPDATE reserva SET Estado = 'Cancelada' WHERE ID_Reserva = p_id_reserva;
    
    -- Liberar las habitaciones reservadas
    UPDATE habitacion h
    JOIN detalle_reserva_habitacion drh ON h.ID_Habitacion = drh.ID_Habitacion
    SET h.Estado = 'Disponible'
    WHERE drh.ID_Reserva = p_id_reserva;
    
    -- Eliminar de fechas ocupadas
    DELETE FROM fechas_ocupadas WHERE ID_Reserva = p_id_reserva;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_generar_factura_rapida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_generar_factura_rapida`(
    IN p_id_reserva INT,
    IN p_id_empleado INT,
    IN p_metodo_pago VARCHAR(50),
    OUT p_total DECIMAL(10,2)
)
BEGIN
    DECLARE v_id_cliente INT;
    DECLARE v_rfc VARCHAR(13);
    DECLARE v_id_factura INT;
    DECLARE v_total_hospedaje DECIMAL(10,2) DEFAULT 0;
    DECLARE v_total_servicios DECIMAL(10,2) DEFAULT 0;
    
    -- Obtener cliente y RFC
    SELECT ID_Cliente, RFC INTO v_id_cliente, v_rfc FROM cliente 
    WHERE ID_Cliente = (SELECT ID_Cliente FROM reserva WHERE ID_Reserva = p_id_reserva);
    
    -- Crear la factura
    INSERT INTO factura (
        ID_Reserva,
        Fecha_Emision,
        Total,
        Estado,
        Metodo_Pago,
        Numero_Transaccion,
        ID_Empleado,
        RFC
    ) VALUES (
        p_id_reserva,
        NOW(),
        0, -- Se actualizará al final
        'Pagada',
        p_metodo_pago,
        CONCAT('TRANS-', DATE_FORMAT(NOW(), '%Y%m%d'), '-', FLOOR(RAND() * 10000)),
        p_id_empleado,
        v_rfc
    );
    
    SET v_id_factura = LAST_INSERT_ID();
    
    -- Calcular costos de habitaciones y agregar a detalle_factura
    SELECT SUM(Precio_Noche * DATEDIFF(Fecha_Check_Out, Fecha_Check_In)) INTO v_total_hospedaje
    FROM detalle_reserva_habitacion
    WHERE ID_Reserva = p_id_reserva AND Fecha_Check_In IS NOT NULL AND Fecha_Check_Out IS NOT NULL;
    
    -- Insertar detalle para hospedaje
    IF v_total_hospedaje > 0 THEN
        INSERT INTO detalle_factura (
            ID_Factura,
            Concepto,
            Cantidad,
            Precio_Unitario,
            Subtotal,
            ID_Detalle_Reserva_Habitacion
        )
        SELECT 
            v_id_factura,
            CONCAT('Hospedaje: ', th.Nombre, ' (', DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In), ' noches)'),
            1,
            drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In),
            drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In),
            drh.ID_Detalle_Reserva_Habitacion
        FROM detalle_reserva_habitacion drh
        JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
        JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
        WHERE drh.ID_Reserva = p_id_reserva AND drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL;
    END IF;
    
    -- Calcular costos de servicios consumidos
    SELECT SUM(Total) INTO v_total_servicios
    FROM consumo_servicio
    WHERE ID_Reserva = p_id_reserva AND Estado = 'No_Pagado';
    
    -- Insertar detalles para cada servicio consumido
    INSERT INTO detalle_factura (
        ID_Factura,
        Concepto,
        Cantidad,
        Precio_Unitario,
        Subtotal,
        ID_Consumo_servicios
    )
    SELECT 
        v_id_factura,
        CONCAT('Servicio: ', s.Nombre),
        cs.Cantidad,
        cs.Precio_Unitario,
        cs.Total,
        cs.ID_Consumo
    FROM consumo_servicio cs
    JOIN servicio s ON cs.ID_Servicio = s.ID_Servicio
    WHERE cs.ID_Reserva = p_id_reserva AND cs.Estado = 'No_Pagado';
    
    -- Actualizar estado de servicios a pagados
    UPDATE consumo_servicio SET Estado = 'Pagado' WHERE ID_Reserva = p_id_reserva AND Estado = 'No_Pagado';
    
    -- Calcular total y actualizar factura
    SET p_total = IFNULL(v_total_hospedaje, 0) + IFNULL(v_total_servicios, 0);
    UPDATE factura SET Total = p_total WHERE ID_Factura = v_id_factura;
    
    -- Actualizar costo total de la reserva
    UPDATE reserva SET Costo_Total = p_total WHERE ID_Reserva = p_id_reserva;
    
    -- Actualizar el total gastado si es cliente potencial VIP
    UPDATE cliente_potencial_vip 
    SET Total_Gastado = Total_Gastado + p_total
    WHERE ID_Cliente = v_id_cliente;
    
    -- Actualizar estado de la reserva
    UPDATE reserva SET Estado = 'Completada' WHERE ID_Reserva = p_id_reserva;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_clientes_hospedados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_clientes_hospedados`()
BEGIN
    SELECT 
        c.ID_Cliente,
        CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS Nombre_Completo,
        c.Email,
        c.Telefono_Cel,
        r.ID_Reserva,
        r.Codigo_Confirmacion,
        drh.Fecha_Check_In,
        drh.Fecha_Check_Out,
        th.Nombre AS Tipo_Habitacion,
        h.ID_Habitacion,
        CASE WHEN c.Es_VIP = 1 THEN 'VIP' ELSE 'Regular' END AS Tipo_Cliente,
        DATEDIFF(IFNULL(drh.Fecha_Check_Out, r.Fecha_Salida), 
                IFNULL(drh.Fecha_Check_In, CURDATE())) AS Noches_Restantes,
        ci.Nombre AS Ciudad_Origen,
        e.Nombre AS Estado_Origen,
        p.Nombre AS Pais_Origen
    FROM 
        cliente c
    JOIN 
        reserva r ON c.ID_Cliente = r.ID_Cliente
    JOIN 
        detalle_reserva_habitacion drh ON r.ID_Reserva = drh.ID_Reserva
    JOIN 
        habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
    JOIN 
        tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
    LEFT JOIN 
        ciudad ci ON c.ID_Ciudad_Origen = ci.ID_Ciudad
    LEFT JOIN 
        estado e ON ci.ID_Estado = e.ID_Estado
    LEFT JOIN 
        pais p ON e.ID_Pais = p.ID_Pais
    WHERE 
        r.Estado = 'Confirmada'
        AND drh.Fecha_Check_In IS NOT NULL
        AND (drh.Fecha_Check_Out IS NULL OR drh.Fecha_Check_Out > CURDATE())
    ORDER BY 
        drh.Fecha_Check_In DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_reserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_reserva`(
    IN p_id_cliente INT,
    IN p_fecha_entrada DATE,
    IN p_fecha_salida DATE,
    IN p_metodo_reserva VARCHAR(50),
    IN p_id_empleado INT,
    IN p_num_cuartos INT,
    IN p_id_paquete INT,
    OUT p_id_reserva INT,
    OUT p_codigo_confirmacion VARCHAR(50)
)
BEGIN
    DECLARE v_costo_total DECIMAL(10,2) DEFAULT 0;
    DECLARE v_codigo VARCHAR(50);
    
    -- Generar código de confirmación único (combinación de fecha y números aleatorios)
    SET v_codigo = CONCAT('RES-', DATE_FORMAT(NOW(), '%Y%m%d'), '-', FLOOR(RAND() * 10000));
    
    -- Insertar la reserva
    INSERT INTO reserva (
        ID_Cliente,
        Fecha_Entrada,
        Fecha_Salida,
        Estado,
        Metodo_Reserva,
        ID_Empleado,
        Costo_Total,
        Fecha_Creacion,
        numCuartos,
        Codigo_Confirmacion,
        ID_Paquete
    ) VALUES (
        p_id_cliente,
        p_fecha_entrada,
        p_fecha_salida,
        'Confirmada',
        p_metodo_reserva,
        p_id_empleado,
        v_costo_total, -- Se actualizará después al añadir habitaciones
        NOW(),
        p_num_cuartos,
        v_codigo,
        p_id_paquete
    );
    
    -- Obtener el ID de la reserva recién creada
    SET p_id_reserva = LAST_INSERT_ID();
    SET p_codigo_confirmacion = v_codigo;
    
    -- Actualizar el contador de reservas del cliente
    UPDATE cliente SET Contador_Registro = Contador_Registro + 1 WHERE ID_Cliente = p_id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_servicio`(
    IN p_id_reserva INT,
    IN p_id_servicio INT,
    IN p_cantidad INT,
    IN p_id_empleado INT
)
BEGIN
    DECLARE v_precio_unitario DECIMAL(10,2);
    DECLARE v_total DECIMAL(10,2);
    
    -- Obtener precio del servicio
    SELECT Precio INTO v_precio_unitario FROM servicio WHERE ID_Servicio = p_id_servicio;
    
    -- Calcular total
    SET v_total = v_precio_unitario * p_cantidad;
    
    -- Registrar el consumo
    INSERT INTO consumo_servicio (
        ID_Reserva,
        ID_Servicio,
        Fecha_Hora,
        Cantidad,
        Precio_Unitario,
        Total,
        Estado,
        ID_Empleado
    ) VALUES (
        p_id_reserva,
        p_id_servicio,
        NOW(),
        p_cantidad,
        v_precio_unitario,
        v_total,
        'No_Pagado',
        p_id_empleado
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_reporte_ingresos_por_mes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_reporte_ingresos_por_mes`(
    IN p_anio INT,
    IN p_mes INT
)
BEGIN
    DECLARE v_fecha_inicio DATE;
    DECLARE v_fecha_fin DATE;
    
    SET v_fecha_inicio = CONCAT(p_anio, '-', p_mes, '-01');
    SET v_fecha_fin = LAST_DAY(v_fecha_inicio);
    
    -- Reporte de ingresos por habitaciones
    SELECT 
        'Hospedaje' AS Tipo_Ingreso,
        th.Nombre AS Concepto,
        COUNT(drh.ID_Detalle_Reserva_Habitacion) AS Cantidad,
        SUM(drh.Precio_Noche * DATEDIFF(IFNULL(drh.Fecha_Check_Out, f.Fecha_Emision), drh.Fecha_Check_In)) AS Total
    FROM 
        factura f
    JOIN 
        detalle_factura df ON f.ID_Factura = df.ID_Factura
    JOIN 
        detalle_reserva_habitacion drh ON df.ID_Detalle_Reserva_Habitacion = drh.ID_Detalle_Reserva_Habitacion
    JOIN 
        habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
    JOIN 
        tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
    WHERE 
        f.Fecha_Emision BETWEEN v_fecha_inicio AND v_fecha_fin
        AND f.Estado = 'Pagada'
    GROUP BY 
        th.ID_Tipo_Habitacion
    
    UNION ALL
    
    -- Reporte de ingresos por servicios
    SELECT 
        'Servicios' AS Tipo_Ingreso,
        s.Nombre AS Concepto,
        SUM(cs.Cantidad) AS Cantidad,
        SUM(cs.Total) AS Total
    FROM 
        factura f
    JOIN 
        detalle_factura df ON f.ID_Factura = df.ID_Factura
    JOIN 
        consumo_servicio cs ON df.ID_Consumo_servicios = cs.ID_Consumo
    JOIN 
        servicio s ON cs.ID_Servicio = s.ID_Servicio
    WHERE 
        f.Fecha_Emision BETWEEN v_fecha_inicio AND v_fecha_fin
        AND f.Estado = 'Pagada'
    GROUP BY 
        s.ID_Servicio
    
    UNION ALL
    
    -- Totales generales
    SELECT 
        'TOTAL' AS Tipo_Ingreso,
        '' AS Concepto,
        COUNT(DISTINCT f.ID_Factura) AS Cantidad,
        SUM(f.Total) AS Total
    FROM 
        factura f
    WHERE 
        f.Fecha_Emision BETWEEN v_fecha_inicio AND v_fecha_fin
        AND f.Estado = 'Pagada';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_verificar_disponibilidad_habitaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_verificar_disponibilidad_habitaciones`(
    IN p_fecha_entrada DATE,
    IN p_fecha_salida DATE,
    IN p_tipo_habitacion INT
)
BEGIN
    SELECT 
        h.ID_Habitacion,
        th.Nombre AS Tipo_Habitacion,
        h.Piso,
        h.Capacidad_Max,
        th.Precio_Base
    FROM 
        habitacion h
    JOIN 
        tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
    WHERE 
        h.ID_Tipo_Habitacion = p_tipo_habitacion
        AND h.Estado = 'Disponible'
        AND h.ID_Habitacion NOT IN (
            SELECT fo.ID_Habitacion
            FROM fechas_ocupadas fo
            WHERE 
                (p_fecha_entrada BETWEEN fo.Fecha_Checkin AND DATE_SUB(fo.Fecha_Checkout, INTERVAL 1 DAY))
                OR (p_fecha_salida BETWEEN DATE_ADD(fo.Fecha_Checkin, INTERVAL 1 DAY) AND fo.Fecha_Checkout)
                OR (fo.Fecha_Checkin BETWEEN p_fecha_entrada AND DATE_SUB(p_fecha_salida, INTERVAL 1 DAY))
                OR (fo.Fecha_Checkout BETWEEN DATE_ADD(p_fecha_entrada, INTERVAL 1 DAY) AND p_fecha_salida)
        )
    ORDER BY h.Piso, h.ID_Habitacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22 19:25:27
