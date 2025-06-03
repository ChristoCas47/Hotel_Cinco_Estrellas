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

-- Triggers

-- A. Trigger para cambiar estado de habitación a "Ocupado" durante check-in
DELIMITER //
CREATE TRIGGER trg_habitacion_ocupada 
AFTER UPDATE ON detalle_reserva_habitacion
FOR EACH ROW
BEGIN
    IF NEW.Fecha_Check_In IS NOT NULL AND OLD.Fecha_Check_In IS NULL THEN
        UPDATE habitacion 
        SET Estado = 'Ocupado' 
        WHERE ID_Habitacion = NEW.ID_Habitacion;
    END IF;
END //
DELIMITER ;

-- B. Trigger para liberar habitación al terminar estancia
DELIMITER //
CREATE TRIGGER trg_habitacion_disponible 
AFTER UPDATE ON detalle_reserva_habitacion
FOR EACH ROW
BEGIN
    IF NEW.Fecha_Check_Out IS NOT NULL AND OLD.Fecha_Check_Out IS NULL THEN
        UPDATE habitacion 
        SET Estado = 'Disponible' 
        WHERE ID_Habitacion = NEW.ID_Habitacion;
    END IF;
END //
DELIMITER ;

-- C. Trigger para llevar bitácora de cambios de estado de habitación
DELIMITER //
CREATE TRIGGER trg_bitacora_habitacion 
AFTER UPDATE ON habitacion
FOR EACH ROW
BEGIN
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
END //
DELIMITER ;

-- D. Trigger para agregar clientes a la tabla de potenciales VIP
DELIMITER //
CREATE TRIGGER trg_cliente_potencial_vip 
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
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
END //
DELIMITER ;

-- E. Trigger para actualizar contador personal de cliente VIP
DELIMITER //
CREATE TRIGGER trg_actualizar_contador_vip 
AFTER INSERT ON reserva
FOR EACH ROW
BEGIN
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
END //
DELIMITER ;

-- F. Trigger para validar fechas de reserva
DELIMITER //
CREATE TRIGGER trg_validar_fechas_reserva 
BEFORE INSERT ON reserva
FOR EACH ROW
BEGIN
    IF NEW.Fecha_Salida <= NEW.Fecha_Entrada THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: La fecha de salida debe ser posterior a la fecha de entrada';
    END IF;
END //
DELIMITER ;

-- G. Trigger para control automático del inventario de habitaciones
DELIMITER //
CREATE TRIGGER trg_control_inventario_habitaciones 
AFTER INSERT ON detalle_reserva_habitacion
FOR EACH ROW
BEGIN
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
END //
DELIMITER ;

-- H. Evento para cancelar reservas expiradas (no es un trigger sino un evento programado)
DELIMITER //
CREATE EVENT IF NOT EXISTS evt_cancelar_reservas_expiradas
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_DATE + INTERVAL 1 DAY
DO
BEGIN
    UPDATE reserva 
    SET Estado = 'Cancelada' 
    WHERE Fecha_Entrada < CURDATE() 
    AND Estado = 'Confirmada' 
    AND ID_Reserva NOT IN (
        SELECT ID_Reserva 
        FROM detalle_reserva_habitacion 
        WHERE Fecha_Check_In IS NOT NULL
    );
END //
DELIMITER ;

-- I. Triggers para evitar servicios con precios negativos o cero
DELIMITER //
CREATE TRIGGER trg_validar_precio_servicio 
BEFORE INSERT ON servicio
FOR EACH ROW
BEGIN
    IF NEW.Precio <= 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: El precio del servicio debe ser mayor que cero';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_validar_precio_servicio_update
BEFORE UPDATE ON servicio
FOR EACH ROW
BEGIN
    IF NEW.Precio <= 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: El precio del servicio debe ser mayor que cero';
    END IF;
END //
DELIMITER ;

-- J. Trigger para cancelación de reserva con penalización
DELIMITER //
CREATE TRIGGER trg_cancelacion_reserva 
BEFORE UPDATE ON reserva
FOR EACH ROW
BEGIN
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
END //
DELIMITER ;

-- STORED PROCEDURES

-- a. Registrar una nueva reserva
DELIMITER //
CREATE PROCEDURE sp_registrar_reserva(
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
END //
DELIMITER ;

-- b. Actualizar el estado de una habitación
DELIMITER //
CREATE PROCEDURE sp_actualizar_estado_habitacion(
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
END //
DELIMITER ;

-- c. Generar factura rápida para check-out
DELIMITER //
CREATE PROCEDURE sp_generar_factura_rapida(
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
END //
DELIMITER ;

-- d. Verificación de disponibilidad de habitaciones
DELIMITER //
CREATE PROCEDURE sp_verificar_disponibilidad_habitaciones(
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
END //
DELIMITER ;

-- e. Registro de servicios utilizados por un cliente
DELIMITER //
CREATE PROCEDURE sp_registrar_servicio(
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
END //
DELIMITER ;

-- f. Cancelar una reserva y liberar habitaciones
DELIMITER //
CREATE PROCEDURE sp_cancelar_reserva(
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
END //
DELIMITER ;

-- g. Actualizar datos de cliente frecuente (VIP)
DELIMITER //
CREATE PROCEDURE sp_actualizar_cliente_vip(
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
END //
DELIMITER ;

-- h. Listar clientes hospedados en tiempo real
DELIMITER //
CREATE PROCEDURE sp_listar_clientes_hospedados()
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
END //
DELIMITER ;

-- i. Reporte de ingresos por mes
DELIMITER //
CREATE PROCEDURE sp_reporte_ingresos_por_mes(
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
END //
DELIMITER ;

-- j. Asignar upgrade de habitación automático a clientes VIP
DELIMITER //
CREATE PROCEDURE sp_asignar_upgrade_vip(
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
END //
DELIMITER ;
