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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bono_empleado`
--

LOCK TABLES `bono_empleado` WRITE;
/*!40000 ALTER TABLE `bono_empleado` DISABLE KEYS */;
INSERT INTO `bono_empleado` VALUES (1,15,1,5000.00,'2024-01-15'),(2,22,2,3500.00,'2024-01-20'),(3,35,1,4500.00,'2024-01-25'),(4,12,3,2800.00,'2024-02-01'),(5,67,2,3200.00,'2024-02-05'),(6,89,1,4200.00,'2024-02-10'),(7,123,4,1500.00,'2024-02-15'),(8,156,2,3300.00,'2024-02-20'),(9,178,1,4800.00,'2024-02-25'),(10,201,3,2900.00,'2024-03-01'),(11,45,2,3400.00,'2024-03-05'),(12,78,1,4600.00,'2024-03-10'),(13,112,4,1800.00,'2024-03-15'),(14,134,2,3100.00,'2024-03-20'),(15,167,1,4300.00,'2024-03-25'),(16,189,3,2700.00,'2024-03-30'),(17,23,2,3600.00,'2024-04-02'),(18,56,1,4400.00,'2024-04-05'),(19,98,4,1700.00,'2024-04-10'),(20,145,2,3000.00,'2024-04-15'),(21,198,1,4700.00,'2024-04-20'),(22,34,3,2600.00,'2024-04-25'),(23,76,2,3500.00,'2024-04-30'),(24,119,1,4100.00,'2024-05-03'),(25,163,4,1900.00,'2024-05-08'),(26,187,2,3300.00,'2024-05-12'),(27,29,1,4500.00,'2024-05-15'),(28,71,3,2800.00,'2024-05-20'),(29,104,2,3200.00,'2024-05-25'),(30,138,1,4600.00,'2024-05-30'),(31,172,4,1600.00,'2024-06-02'),(32,205,2,3400.00,'2024-06-05'),(33,18,1,4300.00,'2024-06-10'),(34,52,3,2900.00,'2024-06-15'),(35,85,2,3100.00,'2024-06-20'),(36,127,1,4800.00,'2024-06-25'),(37,159,4,1800.00,'2024-06-30'),(38,192,2,3500.00,'2024-07-03'),(39,41,1,4200.00,'2024-07-08'),(40,83,3,2700.00,'2024-07-12'),(41,116,2,3300.00,'2024-07-15'),(42,148,1,4400.00,'2024-07-20'),(43,181,4,1700.00,'2024-07-25'),(44,214,2,3000.00,'2024-07-30'),(45,27,1,4600.00,'2024-08-02'),(46,69,3,2800.00,'2024-08-05'),(47,102,2,3200.00,'2024-08-10'),(48,135,1,4500.00,'2024-08-15'),(49,168,4,1900.00,'2024-08-20'),(50,200,2,3400.00,'2024-08-25'),(51,233,1,4300.00,'2024-08-30'),(52,46,3,2600.00,'2024-09-02'),(53,79,2,3500.00,'2024-09-05'),(54,111,1,4700.00,'2024-09-10'),(55,144,4,1800.00,'2024-09-15'),(56,177,2,3100.00,'2024-09-20'),(57,210,1,4400.00,'2024-09-25'),(58,25,3,2900.00,'2024-09-30'),(59,58,2,3300.00,'2024-10-03'),(60,91,1,4200.00,'2024-10-08'),(61,124,4,1700.00,'2024-10-12'),(62,157,2,3500.00,'2024-10-15'),(63,190,1,4600.00,'2024-10-20'),(64,223,3,2800.00,'2024-10-25'),(65,31,2,3200.00,'2024-10-30'),(66,64,1,4500.00,'2024-11-02'),(67,97,4,1600.00,'2024-11-05'),(68,130,2,3400.00,'2024-11-10'),(69,162,1,4300.00,'2024-11-15'),(70,195,3,2700.00,'2024-11-20');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelacion`
--

LOCK TABLES `cancelacion` WRITE;
/*!40000 ALTER TABLE `cancelacion` DISABLE KEYS */;
INSERT INTO `cancelacion` VALUES (1,'Cambio de planes de viaje por motivos personales',825.00,'2024-01-30 09:15:00','RES-20240128-5671'),(2,'Cancelación por enfermedad familiar',0.00,'2024-02-28 11:20:00','RES-20240305-8924'),(3,'Conflicto con fechas laborales',462.00,'2024-03-22 14:30:00','RES-20240320-3157'),(4,'Problemas económicos inesperados',8360.00,'2024-05-10 16:45:00','RES-20240508-7486'),(5,'Cancelación por condiciones climáticas',5390.00,'2024-06-20 10:25:00','RES-20240530-1829'),(6,'Cambio de destino de vacaciones',6270.00,'2024-07-14 13:40:00','RES-20240712-6352'),(7,'Emergencia médica',0.00,'2024-07-25 08:50:00','RES-20240728-9675'),(8,'Cancelación por trabajo urgente',7425.00,'2024-09-12 15:10:00','RES-20240910-4218'),(9,'Problemas de documentación de viaje',4785.00,'2024-09-27 12:35:00','RES-20240925-7863'),(10,'Duelo familiar',0.00,'2024-11-03 17:20:00','RES-20241105-2541'),(11,'Cancelación tardía sin justificación',4015.00,'2024-06-28 14:15:00','RES-20240612-8287'),(12,'Problemas de salud',0.00,'2024-07-01 09:45:00','RES-20240705-3650'),(13,'Cambio de fechas de boda',4290.00,'2024-08-01 11:30:00','RES-20240730-7913'),(14,'Cancelación por huelga de aerolíneas',8030.00,'2024-09-06 16:25:00','RES-20240908-4276'),(15,'Motivos personales urgentes',4895.00,'2024-09-30 13:50:00','RES-20240928-8539'),(16,'Problemas financieros',0.00,'2024-11-10 10:15:00','RES-20241112-1862'),(17,'Cancelación por lluvia extrema',5225.00,'2024-11-27 12:40:00','RES-20241125-6325'),(18,'Emergencia familiar',7260.00,'2025-01-12 14:55:00','RES-20250110-2748'),(19,'Problemas de visa',0.00,'2025-02-03 09:20:00','RES-20250205-7471'),(20,'Cancelación por enfermedad',4785.00,'2025-03-10 11:35:00','RES-20250308-3894'),(21,'Motivos laborales inesperados',4015.00,'2024-03-20 15:25:00','RES-20240222-6432'),(22,'Problemas de transporte',6930.00,'2024-04-10 08:40:00','RES-20240408-9995'),(23,'Cancelación por mal tiempo',4675.00,'2024-05-14 13:15:00','RES-20240512-4558'),(24,'Emergencia médica familiar',8415.00,'2024-05-30 16:30:00','RES-20240528-8121'),(25,'Problemas económicos',5335.00,'2024-07-12 10:50:00','RES-20240710-3684'),(26,'Cancelación tardía',6270.00,'2024-08-04 14:05:00','RES-20240802-7247'),(27,'Cambio de planes vacacionales',0.00,'2024-09-03 11:20:00','RES-20240905-1810'),(28,'Problemas de salud',7645.00,'2024-10-12 15:45:00','RES-20241010-5373'),(29,'Duelo en la familia',0.00,'2024-11-01 12:30:00','RES-20241102-9036'),(30,'Cancelación por motivos personales',4290.00,'2024-11-30 09:15:00','RES-20241128-4699');
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
  `Apellido1` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','García','López',35,'Av. Reforma 123, Col. Centro','1989-03-15','M','5551234567','5559876543','juan.garcia@email.com','GALJ890315HM1',0,1,'2023-01-15',3),(2,'María','Rodríguez','Martínez',28,'Calle 5 de Mayo 456','1996-07-22','F','3331234567','3339876543','maria.rodriguez@email.com','ROMM960722MH2',0,5,'2023-02-20',2),(3,'Carlos','López','Sánchez',42,'Boulevard Marina 789','1982-11-08','M','9981234567','9989876543','carlos.lopez@email.com','LOSC821108HM3',1,15,'2022-12-10',5),(4,'Grupo Hotelero Internacional S.A. de C.V.',NULL,NULL,NULL,'Av. Universidad 321, Torre Corporativa','1993-05-12',NULL,'8181234567','8189876543','reservas@grupohotelero.com','GHI930512ABC',0,9,'2023-03-18',1),(5,'Luis','Hernández','Gómez',29,'Calle Juárez 654','1995-09-03','M','6641234567','6649876543','luis.hernandez@email.com','HEGL950903HM5',0,12,'2023-04-22',2),(6,'Carmen','Gómez','Torres',38,'Av. Revolución 987','1986-01-25','F','9981234568','9989876544','carmen.gomez@email.com','GOTC860125MH6',1,15,'2022-11-05',4),(7,'Constructora Península Maya S.A.',NULL,NULL,NULL,'Calle Morelos 147, Zona Industrial','1979-06-18',NULL,'5551234568','5559876544','eventos@peninsulamaya.com','CPM790618EMP',1,1,'2023-01-28',8),(8,'Patricia','Díaz','Ruiz',33,'Av. Hidalgo 258','1991-12-07','F','3331234568','3339876544','patricia.diaz@email.com','DIRP911207MH8',0,5,'2023-05-15',2),(9,'Miguel','Ruiz','Morales',37,'Boulevard Costero 369','1987-04-14','M','9981234569','9989876545','miguel.ruiz@email.com','RUMM870414HM9',1,15,'2022-08-20',6),(10,'Tecnología Avanzada del Sureste',NULL,NULL,NULL,'Calle Zaragoza 741, Parque Tecnológico','1998-10-30',NULL,'8181234569','8189876545','corporativo@tecavanzada.com','TAS981030TEC',0,9,'2023-06-12',3),(11,'Fernando','Jiménez','Vargas',40,'Av. Insurgentes 852','1984-02-28','M','5551234570','5559876546','fernando.jimenez@email.com','JIVF840228HM1',0,1,'2023-02-08',3),(12,'Laboratorios Farmacéuticos del Caribe',NULL,NULL,NULL,'Calle Aldama 963, Zona Médica','1990-08-16',NULL,'6641234570','6649876546','eventos@labcaribe.com','LFC900816LAB',0,12,'2023-07-03',2),(13,'Alejandro','Castro','Ramos',39,'Av. Constitución 159','1985-11-09','M','9981234571','9989876547','alejandro.castro@email.com','CARA851109HM3',1,15,'2022-09-15',5),(14,'Mónica','Ramos','Flores',32,'Boulevard Kukulcán 357','1992-03-21','F','9981234572','9989876548','monica.ramos@email.com','RAFM920321MH4',0,15,'2023-04-10',1),(15,'Banca Privada Elite',NULL,NULL,NULL,'Calle Benito Juárez 468, Torre Financiera','1980-07-05',NULL,'3331234572','3339876548','eventos@bancaelite.com','BPE800705BAN',1,5,'2023-01-25',12),(16,'Verónica','Mendoza','Ortega',30,'Av. Chapultepec 579','1994-12-18','F','5551234573','5559876549','veronica.mendoza@email.com','MEOV941218MH6',0,1,'2023-08-14',1),(17,'Javier','Ortega','Peña',36,'Calle Madero 681','1988-05-11','M','8181234573','8189876549','javier.ortega@email.com','ORPJ880511HM7',0,9,'2023-03-07',3),(18,'Claudia','Peña','Aguirre',41,'Boulevard Las Américas 792','1983-09-24','F','6641234573','6649876549','claudia.pena@email.com','PEAC830924MH8',1,12,'2022-10-18',6),(19,'Consultoría Estratégica Global S.C.',NULL,NULL,NULL,'Av. Tecnológico 893, World Trade Center','1997-01-13',NULL,'9981234574','9989876550','reservas@ceglobal.com','CEG970113CON',0,15,'2023-05-28',2),(20,'Gabriela','Reyes','Herrera',35,'Calle Independencia 194','1989-06-29','F','5551234574','5559876550','gabriela.reyes@email.com','REHG890629MH0',0,1,'2023-02-16',2),(21,'Daniel','Herrera','Silva',43,'Av. Lázaro Cárdenas 295','1981-10-12','M','3331234574','3339876550','daniel.herrera@email.com','HESD811012HM1',0,5,'2023-06-20',1),(22,'Adriana','Silva','Guerrero',29,'Boulevard Díaz Ordaz 396','1995-02-26','F','8181234574','8189876550','adriana.silva@email.com','SIGA950226MH2',0,9,'2023-07-11',2),(23,'Raúl','Guerrero','Medina',38,'Calle Victoria 497','1986-08-14','M','9981234575','9989876551','raul.guerrero@email.com','GEMR860814HM3',1,15,'2022-12-22',4),(24,'Petroquímica Industrial Mexicana',NULL,NULL,NULL,'Av. Juárez 598, Complejo Industrial','1993-12-01',NULL,'6641234575','6649876551','corporativo@pimex.com','PIM931201PET',1,12,'2023-04-05',15),(25,'Arturo','Contreras','Vega',46,'Boulevard Agua Caliente 699','1978-04-19','M','6641234576','6649876552','arturo.contreras@email.com','COVA780419HM5',0,12,'2023-01-12',3),(26,'Rosa','Vega','Santana',33,'Calle Revolución 711','1991-08-07','F','9981234576','9989876552','rosa.vega@email.com','VESR910807MH6',0,15,'2023-05-09',2),(27,'Héctor','Santana','Luna',40,'Av. Tulum 822','1984-11-23','M','9981234577','9989876553','hector.santana@email.com','SALH841123HM7',1,15,'2022-07-30',5),(28,'Desarrollos Inmobiliarios Premium',NULL,NULL,NULL,'Boulevard Colosio 933, Torre Ejecutiva','1996-03-16',NULL,'8181234577','8189876553','eventos@dipremium.com','DIP960316INM',0,9,'2023-08-02',6),(29,'Oscar','Delgado','Paredes',35,'Calle Hidalgo 144','1989-07-09','M','5551234577','5559876553','oscar.delgado@email.com','DEPO890709HM9',0,1,'2023-03-25',2),(30,'Marisol','Paredes','Cordero',37,'Av. Paseo de la Reforma 255','1987-11-25','F','5551234578','5559876554','marisol.paredes@email.com','PACM871125MH0',0,1,'2023-06-18',3),(31,'Industrias Manufactureras del Golfo',NULL,NULL,NULL,'Boulevard Adolfo López Mateos 366','1982-05-18',NULL,'3331234578','3339876554','ventas@imgolfo.com','IMG820518IND',1,5,'2023-02-14',9),(32,'Karla','Espinoza','Navarro',30,'Calle Francisco I. Madero 477','1994-09-06','F','6641234578','6649876554','karla.espinoza@email.com','ESKA940906MH2',0,12,'2023-07-27',2),(33,'Gerardo','Navarro','Rojas',36,'Av. Venustiano Carranza 588','1988-01-22','M','9981234578','9989876554','gerardo.navarro@email.com','NARG880122HM3',1,15,'2022-11-08',4),(34,'Leticia','Rojas','Campos',44,'Boulevard Kukul Kan 699','1980-06-10','F','9981234579','9989876555','leticia.rojas@email.com','ROCL800610MH4',1,15,'2022-08-14',6),(35,'Servicios Profesionales Integrados',NULL,NULL,NULL,'Calle Yaxchilán 811, Centro de Negocios','1993-10-28',NULL,'9981234580','9989876556','contacto@spi.com','SPI931028SER',0,15,'2023-04-21',4),(36,'Alicia','Montes','Rivera',39,'Av. Bonampak 922','1985-02-14','F','9981234581','9989876557','alicia.montes@email.com','MORA850214MH6',1,15,'2022-09-03',5),(37,'Guillermo','Rivera','Estrada',33,'Boulevard Chichén Itzá 133','1991-06-30','M','9981234582','9989876558','guillermo.rivera@email.com','RIEG910630HM7',0,15,'2023-05-16',2),(38,'Corporativo de Entretenimiento Maya',NULL,NULL,NULL,'Calle Pakal 244, Plaza Comercial','1996-11-15',NULL,'9981234583','9989876559','eventos@cemaya.com','CEM961115ENT',1,15,'2023-07-08',7),(39,'Francisco','Rangel','Soto',45,'Av. Xcaret 355','1979-03-03','M','9981234584','9989876560','francisco.rangel@email.com','RASF790303HM9',1,15,'2022-06-25',7),(40,'Elena','Soto','Fuentes',32,'Boulevard Xel-Há 466','1992-07-19','F','9981234585','9989876561','elena.soto@email.com','SOFE920719MH0',0,15,'2023-08-12',2),(41,'Andrés','Fuentes','Guzmán',37,'Calle Cobá 577','1987-11-07','M','9981234586','9989876562','andres.fuentes@email.com','FUGA871107HM1',1,15,'2022-10-05',4),(42,'Cristina','Guzmán','Ibarra',29,'Av. Chac Mool 688','1995-04-23','F','9981234587','9989876563','cristina.guzman@email.com','GUIC950423MH2',0,15,'2023-03-18',1),(43,'Mauricio','Ibarra','Lara',41,'Boulevard Costa Maya 799','1983-08-11','M','9981234588','9989876564','mauricio.ibarra@email.com','IBLM830811HM3',1,15,'2022-12-01',5),(44,'Beatriz','Lara','Maldonado',34,'Calle Akumal 911','1990-12-29','F','9981234589','9989876565','beatriz.lara@email.com','LAMB901229MH4',0,15,'2023-06-07',3),(45,'Ignacio','Maldonado','Nava',38,'Av. Playa del Carmen 122','1986-05-16','M','9981234590','9989876566','ignacio.maldonado@email.com','MANI860516HM5',1,15,'2022-07-22',6),(46,'Dolores','Nava','Ojeda',36,'Boulevard Tulúm 233','1988-09-04','F','9981234591','9989876567','dolores.nava@email.com','NAOD880904MH6',0,15,'2023-04-14',2),(47,'Ramón','Ojeda','Pacheco',43,'Calle Cozumel 344','1981-01-20','M','9981234592','9989876568','ramon.ojeda@email.com','OJPR810120HM7',1,15,'2022-08-09',4),(48,'Gloria','Pacheco','Quintero',30,'Av. Isla Mujeres 455','1994-05-08','F','9981234593','9989876569','gloria.pacheco@email.com','PAQG940508MH8',0,15,'2023-07-16',1),(49,'Salvador','Quintero','Rosales',35,'Boulevard Cancún 566','1989-09-26','M','9981234594','9989876570','salvador.quintero@email.com','QURS890926HM9',0,15,'2023-02-28',3),(50,'Esperanza','Rosales','Salinas',42,'Calle Puerto Morelos 677','1982-02-12','F','9981234595','9989876571','esperanza.rosales@email.com','ROSE820212MH0',1,15,'2022-11-16',5),(51,'Tomás','Salinas','Torres',31,'Av. Riviera Maya 788','1993-06-30','M','9981234596','9989876572','tomas.salinas@email.com','SATT930630HM1',0,15,'2023-05-04',2),(52,'Yolanda','Torres','Uribe',29,'Boulevard Holbox 899','1995-10-18','F','9981234597','9989876573','yolanda.torres@email.com','TOUY951018MH2',0,15,'2023-08-21',1),(53,'Víctor','Uribe','Vázquez',40,'Calle Contoy 911','1984-03-06','M','9981234598','9989876574','victor.uribe@email.com','URVV840306HM3',1,15,'2022-09-12',4),(54,'Zoila','Vázquez','Wolff',33,'Av. Mahahual 122','1991-07-24','F','9981234599','9989876575','zoila.vazquez@email.com','VAZZ910724MH4',0,15,'2023-03-30',2),(55,'Armando','Wolff','Ximénez',46,'Boulevard Chetumal 233','1978-11-12','M','9981234600','9989876576','armando.wolff@email.com','WOXA781112HM5',1,15,'2022-06-18',7),(56,'Blanca','Ximénez','Yáñez',32,'Calle Bacalar 344','1992-04-29','F','9981234601','9989876577','blanca.ximenez@email.com','XIYB920429MH6',0,15,'2023-07-05',3),(57,'Celestino','Yáñez','Zavala',38,'Av. Laguna Azul 455','1986-08-17','M','9981234602','9989876578','celestino.yanez@email.com','YAZC860817HM7',1,15,'2022-10-23',5),(58,'Diana','Zavala','Ávila',27,'Boulevard Xpujil 566','1997-12-05','F','9981234603','9989876579','diana.zavala@email.com','ZAAD971205MH8',0,15,'2023-05-19',1),(59,'Emilio','Ávila','Bermúdez',34,'Calle Kohunlich 677','1990-03-23','M','9981234604','9989876580','emilio.avila@email.com','AVBE900323HM9',0,15,'2023-08-06',2),(60,'Fabiola','Bermúdez','Cárdenas',41,'Av. Dzibanché 788','1983-07-11','F','9981234605','9989876581','fabiola.bermudez@email.com','BECF830711MH0',1,15,'2022-12-14',6),(61,'Gonzalo','Cárdenas','Domínguez',35,'Boulevard Kinichná 899','1989-11-29','M','9981234606','9989876582','gonzalo.cardenas@email.com','CADG891129HM1',0,15,'2023-04-03',3),(62,'Hortensia','Domínguez','Escalante',28,'Calle Oxtankah 911','1996-06-16','F','9981234607','9989876583','hortensia.dominguez@email.com','DOEH960616MH2',0,15,'2023-06-25',1),(63,'Iván','Escalante','Figueroa',39,'Av. San Gervasio 122','1985-10-04','M','9981234608','9989876584','ivan.escalante@email.com','ESFI851004HM3',1,15,'2022-08-30',4),(64,'Josefina','Figueroa','García',31,'Boulevard El Rey 233','1993-01-22','F','9981234609','9989876585','josefina.figueroa@email.com','FIGJ930122MH4',0,15,'2023-07-12',2),(65,'Kevin','García','Herrera',26,'Calle Caracol 344','1998-05-10','M','9981234610','9989876586','kevin.garcia@email.com','GAHK980510HM5',0,15,'2023-08-28',1),(66,'Lucía','Herrera','Iglesias',37,'Av. Chankanaab 455','1987-09-28','F','9981234611','9989876587','lucia.herrera@email.com','HEIL870928MH6',1,15,'2022-11-04',5),(67,'Manuel','Iglesias','Jiménez',44,'Boulevard Punta Sur 566','1980-02-15','M','9981234612','9989876588','manuel.iglesias@email.com','IGJM800215HM7',1,15,'2022-07-11',6),(68,'Nayeli','Jiménez','Krauss',29,'Calle Palancar 677','1995-06-03','F','9981234613','9989876589','nayeli.jimenez@email.com','JIKN950603MH8',0,15,'2023-03-17',1),(69,'Orlando','Krauss','López',33,'Av. Columbia 788','1991-10-21','M','9981234614','9989876590','orlando.krauss@email.com','KALO911021HM9',0,15,'2023-05-31',2),(70,'Paulina','López','Moreno',40,'Boulevard Santa Rosa 899','1984-01-09','F','9981234615','9989876591','paulina.lopez@email.com','LOMP840109MH0',1,15,'2022-09-27',4),(71,'Quintín','Moreno','Núñez',36,'Calle Dzul Há 911','1988-05-27','M','9981234616','9989876592','quintin.moreno@email.com','MONQ880527HM1',1,15,'2022-12-06',5),(72,'Rocío','Núñez','Oliva',32,'Av. Ixchel 122','1992-09-14','F','9981234617','9989876593','rocio.nunez@email.com','NUOR920914MH2',0,15,'2023-04-28',3),(73,'Sebastián','Oliva','Pérez',38,'Boulevard Kukulkán 233','1986-12-02','M','9981234618','9989876594','sebastian.oliva@email.com','OLPS861202HM3',1,15,'2022-08-15',4),(74,'Tatiana','Pérez','Quiroz',30,'Calle Itzamná 344','1994-03-20','F','9981234619','9989876595','tatiana.perez@email.com','PEQT940320MH4',0,15,'2023-06-13',2),(75,'Ulises','Quiroz','Ramírez',35,'Av. Chaac 455','1989-07-08','M','9981234620','9989876596','ulises.quiroz@email.com','QURU890708HM5',0,15,'2023-02-05',3),(76,'Vanessa','Ramírez','Sandoval',42,'Boulevard Itzmal 566','1982-11-26','F','9981234621','9989876597','vanessa.ramirez@email.com','RASV821126MH6',1,15,'2022-10-12',6),(77,'Wilson','Sandoval','Téllez',28,'Calle Hunab Ku 677','1996-04-13','M','9981234622','9989876598','wilson.sandoval@email.com','SATW960413HM7',0,15,'2023-07-29',1),(78,'Ximena','Téllez','Urquiza',34,'Av. Ek Balam 788','1990-08-01','F','9981234623','9989876599','ximena.tellez@email.com','TEUX900801MH8',0,15,'2023-05-22',2),(79,'Yahir','Urquiza','Valdez',41,'Boulevard Chichén 899','1983-12-19','M','9981234624','9989876600','yahir.urquiza@email.com','URVY831219HM9',1,15,'2022-06-08',5),(80,'Zoe','Valdez','Wilson',27,'Calle Uxmal 911','1997-05-07','F','9981234625','9989876601','zoe.valdez@email.com','VAWZ970507MH0',0,15,'2023-08-17',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_potencial_vip`
--

LOCK TABLES `cliente_potencial_vip` WRITE;
/*!40000 ALTER TABLE `cliente_potencial_vip` DISABLE KEYS */;
INSERT INTO `cliente_potencial_vip` VALUES (1,1,0,0.00,NULL,'Nuevo','2025-05-22'),(2,2,0,0.00,NULL,'Nuevo','2025-05-22'),(3,3,0,0.00,NULL,'Nuevo','2025-05-22'),(4,4,0,0.00,NULL,'Nuevo','2025-05-22'),(5,5,0,0.00,NULL,'Nuevo','2025-05-22'),(6,6,0,0.00,NULL,'Nuevo','2025-05-22'),(7,7,0,0.00,NULL,'Nuevo','2025-05-22'),(8,8,0,0.00,NULL,'Nuevo','2025-05-22'),(9,9,0,0.00,NULL,'Nuevo','2025-05-22'),(10,10,0,0.00,NULL,'Nuevo','2025-05-22'),(11,11,0,0.00,NULL,'Nuevo','2025-05-22'),(12,12,0,0.00,NULL,'Nuevo','2025-05-22'),(13,13,0,0.00,NULL,'Nuevo','2025-05-22'),(14,14,0,0.00,NULL,'Nuevo','2025-05-22'),(15,15,0,0.00,NULL,'Nuevo','2025-05-22'),(16,16,0,0.00,NULL,'Nuevo','2025-05-22'),(17,17,0,0.00,NULL,'Nuevo','2025-05-22'),(18,18,0,0.00,NULL,'Nuevo','2025-05-22'),(19,19,0,0.00,NULL,'Nuevo','2025-05-22'),(20,20,0,0.00,NULL,'Nuevo','2025-05-22'),(21,21,0,0.00,NULL,'Nuevo','2025-05-22'),(22,22,0,0.00,NULL,'Nuevo','2025-05-22'),(23,23,0,0.00,NULL,'Nuevo','2025-05-22'),(24,24,0,0.00,NULL,'Nuevo','2025-05-22'),(25,25,0,0.00,NULL,'Nuevo','2025-05-22'),(26,26,0,0.00,NULL,'Nuevo','2025-05-22'),(27,27,0,0.00,NULL,'Nuevo','2025-05-22'),(28,28,0,0.00,NULL,'Nuevo','2025-05-22'),(29,29,0,0.00,NULL,'Nuevo','2025-05-22'),(30,30,0,0.00,NULL,'Nuevo','2025-05-22'),(31,31,0,0.00,NULL,'Nuevo','2025-05-22'),(32,32,0,0.00,NULL,'Nuevo','2025-05-22'),(33,33,0,0.00,NULL,'Nuevo','2025-05-22'),(34,34,0,0.00,NULL,'Nuevo','2025-05-22'),(35,35,0,0.00,NULL,'Nuevo','2025-05-22'),(36,36,0,0.00,NULL,'Nuevo','2025-05-22'),(37,37,0,0.00,NULL,'Nuevo','2025-05-22'),(38,38,0,0.00,NULL,'Nuevo','2025-05-22'),(39,39,0,0.00,NULL,'Nuevo','2025-05-22'),(40,40,0,0.00,NULL,'Nuevo','2025-05-22'),(41,41,0,0.00,NULL,'Nuevo','2025-05-22'),(42,42,0,0.00,NULL,'Nuevo','2025-05-22'),(43,43,0,0.00,NULL,'Nuevo','2025-05-22'),(44,44,0,0.00,NULL,'Nuevo','2025-05-22'),(45,45,0,0.00,NULL,'Nuevo','2025-05-22'),(46,46,0,0.00,NULL,'Nuevo','2025-05-22'),(47,47,0,0.00,NULL,'Nuevo','2025-05-22'),(48,48,0,0.00,NULL,'Nuevo','2025-05-22'),(49,49,0,0.00,NULL,'Nuevo','2025-05-22'),(50,50,0,0.00,NULL,'Nuevo','2025-05-22'),(51,51,0,0.00,NULL,'Nuevo','2025-05-22'),(52,52,0,0.00,NULL,'Nuevo','2025-05-22'),(53,53,0,0.00,NULL,'Nuevo','2025-05-22'),(54,54,0,0.00,NULL,'Nuevo','2025-05-22'),(55,55,0,0.00,NULL,'Nuevo','2025-05-22'),(56,56,0,0.00,NULL,'Nuevo','2025-05-22'),(57,57,0,0.00,NULL,'Nuevo','2025-05-22'),(58,58,0,0.00,NULL,'Nuevo','2025-05-22'),(59,59,0,0.00,NULL,'Nuevo','2025-05-22'),(60,60,0,0.00,NULL,'Nuevo','2025-05-22'),(61,61,0,0.00,NULL,'Nuevo','2025-05-22'),(62,62,0,0.00,NULL,'Nuevo','2025-05-22'),(63,63,0,0.00,NULL,'Nuevo','2025-05-22'),(64,64,0,0.00,NULL,'Nuevo','2025-05-22'),(65,65,0,0.00,NULL,'Nuevo','2025-05-22'),(66,66,0,0.00,NULL,'Nuevo','2025-05-22'),(67,67,0,0.00,NULL,'Nuevo','2025-05-22'),(68,68,0,0.00,NULL,'Nuevo','2025-05-22'),(69,69,0,0.00,NULL,'Nuevo','2025-05-22'),(70,70,0,0.00,NULL,'Nuevo','2025-05-22'),(71,71,0,0.00,NULL,'Nuevo','2025-05-22'),(72,72,0,0.00,NULL,'Nuevo','2025-05-22'),(73,73,0,0.00,NULL,'Nuevo','2025-05-22'),(74,74,0,0.00,NULL,'Nuevo','2025-05-22'),(75,75,0,0.00,NULL,'Nuevo','2025-05-22'),(76,76,0,0.00,NULL,'Nuevo','2025-05-22'),(77,77,0,0.00,NULL,'Nuevo','2025-05-22'),(78,78,0,0.00,NULL,'Nuevo','2025-05-22'),(79,79,0,0.00,NULL,'Nuevo','2025-05-22'),(80,80,0,0.00,NULL,'Nuevo','2025-05-22');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumo_servicio`
--

LOCK TABLES `consumo_servicio` WRITE;
/*!40000 ALTER TABLE `consumo_servicio` DISABLE KEYS */;
INSERT INTO `consumo_servicio` VALUES (1,1,1,'2024-03-11 14:30:00',1,850.00,850.00,'Pagado',73),(2,1,7,'2024-03-12 19:45:00',2,1200.00,2400.00,'Pagado',103),(3,2,8,'2024-04-19 08:15:00',3,380.00,1140.00,'Pagado',94),(4,2,15,'2024-04-20 07:00:00',2,1850.00,3700.00,'Pagado',208),(5,3,4,'2024-05-04 16:20:00',1,450.00,450.00,'Pagado',81),(6,3,13,'2024-05-05 22:30:00',1,150.00,150.00,'Pagado',126),(7,4,11,'2024-06-08 09:00:00',2,750.00,1500.00,'Pagado',157),(8,4,9,'2024-06-09 20:15:00',4,180.00,720.00,'Pagado',140),(9,5,2,'2024-07-21 11:45:00',1,650.00,650.00,'Pagado',74),(10,5,10,'2024-07-22 23:00:00',1,550.00,550.00,'Pagado',142),(11,6,7,'2024-08-15 18:30:00',2,1200.00,2400.00,'Pagado',119),(12,6,5,'2024-08-16 15:00:00',2,380.00,760.00,'Pagado',77),(13,7,8,'2024-09-26 07:30:00',1,380.00,380.00,'Pagado',108),(14,7,17,'2024-09-27 07:30:00',1,1280.00,1280.00,'Pagado',213),(15,8,14,'2024-10-10 21:00:00',1,2500.00,2500.00,'Pagado',177),(16,8,13,'2024-10-11 20:45:00',2,150.00,300.00,'Pagado',129),(17,9,3,'2024-11-24 10:00:00',3,200.00,600.00,'Pagado',73),(18,9,19,'2024-11-28 16:00:00',4,450.00,1800.00,'Pagado',213),(19,10,1,'2024-12-19 13:15:00',2,850.00,1700.00,'Pagado',75),(20,10,7,'2024-12-20 19:00:00',3,1200.00,3600.00,'Pagado',121),(21,21,8,'2025-01-16 08:00:00',1,380.00,380.00,'No_Pagado',105),(22,21,13,'2025-01-17 21:30:00',1,150.00,150.00,'No_Pagado',131),(23,22,1,'2025-02-11 14:00:00',2,850.00,1700.00,'No_Pagado',76),(24,22,7,'2025-02-12 20:00:00',2,1200.00,2400.00,'No_Pagado',120),(25,23,6,'2025-03-04 16:30:00',1,150.00,150.00,'No_Pagado',82),(26,24,15,'2025-04-18 07:00:00',2,1850.00,3700.00,'No_Pagado',212),(27,24,9,'2025-04-19 18:45:00',3,180.00,540.00,'No_Pagado',141),(28,25,11,'2025-05-11 10:30:00',1,750.00,750.00,'No_Pagado',158),(29,25,12,'2025-05-12 11:00:00',1,320.00,320.00,'No_Pagado',161),(30,26,4,'2025-06-26 17:15:00',1,450.00,450.00,'No_Pagado',81),(31,27,2,'2025-07-14 12:30:00',1,650.00,650.00,'No_Pagado',78),(32,27,5,'2025-07-15 16:00:00',1,380.00,380.00,'No_Pagado',79),(33,28,16,'2025-08-21 08:00:00',3,1650.00,4950.00,'No_Pagado',208),(34,29,8,'2025-09-08 07:45:00',1,380.00,380.00,'No_Pagado',98),(35,30,7,'2025-10-24 19:30:00',2,1200.00,2400.00,'No_Pagado',117),(36,46,3,'2024-01-21 09:30:00',2,200.00,400.00,'Pagado',73),(37,47,1,'2024-02-14 15:45:00',1,850.00,850.00,'Pagado',74),(38,48,8,'2024-03-26 08:15:00',1,380.00,380.00,'Pagado',106),(39,49,11,'2024-04-11 14:00:00',1,750.00,750.00,'Pagado',157),(40,50,14,'2024-05-24 22:30:00',1,2500.00,2500.00,'Pagado',178),(41,51,6,'2024-06-18 16:45:00',2,150.00,300.00,'Pagado',82),(42,52,13,'2024-07-14 23:15:00',1,150.00,150.00,'Pagado',128),(43,53,9,'2024-08-26 20:00:00',3,180.00,540.00,'Pagado',144),(44,54,2,'2024-09-11 11:30:00',1,650.00,650.00,'Pagado',76),(45,55,18,'2024-10-21 09:00:00',2,950.00,1900.00,'Pagado',212),(46,56,4,'2024-11-14 17:20:00',1,450.00,450.00,'Pagado',82),(47,57,1,'2024-12-26 14:45:00',2,850.00,1700.00,'Pagado',75),(48,58,8,'2025-01-18 08:30:00',1,380.00,380.00,'No_Pagado',104),(49,59,7,'2025-02-21 19:15:00',2,1200.00,2400.00,'No_Pagado',115),(50,60,13,'2025-03-08 21:45:00',1,150.00,150.00,'No_Pagado',134);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_paquete`
--

LOCK TABLES `detalle_paquete` WRITE;
/*!40000 ALTER TABLE `detalle_paquete` DISABLE KEYS */;
INSERT INTO `detalle_paquete` VALUES (1,1,1,NULL,2,5.00),(2,1,NULL,5,1,NULL),(3,2,7,NULL,4,10.00),(4,2,NULL,7,2,NULL),(5,3,11,NULL,3,15.00),(6,3,6,NULL,2,NULL),(7,4,5,NULL,5,20.00),(8,4,NULL,5,1,NULL),(9,5,11,NULL,2,25.00),(10,5,NULL,4,1,NULL),(11,6,7,NULL,6,10.00),(12,6,NULL,2,3,NULL),(13,7,NULL,6,5,15.00),(14,8,1,NULL,1,30.00),(15,8,NULL,8,1,NULL),(16,9,15,NULL,3,12.00),(17,9,NULL,3,2,NULL),(18,10,NULL,1,1,40.00),(19,10,7,NULL,10,8.00),(20,10,5,NULL,8,12.00),(21,11,7,NULL,4,15.00),(22,11,9,NULL,2,20.00),(23,12,1,NULL,1,25.00),(24,12,NULL,7,1,NULL),(25,13,6,NULL,3,18.00),(26,13,NULL,4,2,NULL),(27,14,5,NULL,4,22.00),(28,15,10,NULL,5,16.00),(29,16,1,NULL,2,28.00),(30,17,NULL,8,3,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_reserva_habitacion`
--

LOCK TABLES `detalle_reserva_habitacion` WRITE;
/*!40000 ALTER TABLE `detalle_reserva_habitacion` DISABLE KEYS */;
INSERT INTO `detalle_reserva_habitacion` VALUES (1,1,1,'2024-03-10 15:00:00','2024-03-15 12:00:00',1500.00,NULL),(2,2,2,'2024-04-18 15:00:00','2024-04-22 12:00:00',2000.00,NULL),(3,2,3,'2024-04-18 15:00:00','2024-04-22 12:00:00',2000.00,NULL),(4,3,4,'2024-05-03 15:00:00','2024-05-08 12:00:00',1500.00,NULL),(5,4,5,'2024-06-07 15:00:00','2024-06-12 12:00:00',2200.00,NULL),(6,4,6,'2024-06-07 15:00:00','2024-06-12 12:00:00',2800.00,NULL),(7,4,7,'2024-06-07 15:00:00','2024-06-12 12:00:00',1500.00,NULL),(8,5,8,'2024-07-20 15:00:00','2024-07-25 12:00:00',2200.00,NULL),(9,6,9,'2024-08-14 15:00:00','2024-08-18 12:00:00',2800.00,NULL),(10,6,10,'2024-08-14 15:00:00','2024-08-18 12:00:00',2800.00,NULL),(11,7,11,'2024-09-25 15:00:00','2024-09-30 12:00:00',1500.00,NULL),(12,8,12,'2024-10-09 15:00:00','2024-10-14 12:00:00',2000.00,NULL),(13,8,13,'2024-10-09 15:00:00','2024-10-14 12:00:00',2800.00,NULL),(14,9,14,'2024-11-23 15:00:00','2024-11-28 12:00:00',1500.00,NULL),(15,10,15,'2024-12-18 15:00:00','2024-12-22 12:00:00',3500.00,NULL),(16,10,16,'2024-12-18 15:00:00','2024-12-22 12:00:00',4500.00,NULL),(17,10,17,'2024-12-18 15:00:00','2024-12-22 12:00:00',8000.00,NULL),(18,11,18,'2023-06-10 15:00:00','2023-06-15 12:00:00',2000.00,NULL),(19,11,19,'2023-06-10 15:00:00','2023-06-15 12:00:00',2800.00,NULL),(20,12,20,'2023-07-25 15:00:00','2023-07-30 12:00:00',1500.00,NULL),(21,13,21,'2023-08-08 15:00:00','2023-08-12 12:00:00',2000.00,NULL),(22,13,22,'2023-08-08 15:00:00','2023-08-12 12:00:00',2800.00,NULL),(23,14,23,'2023-09-20 15:00:00','2023-09-25 12:00:00',2000.00,NULL),(24,14,24,'2023-09-20 15:00:00','2023-09-25 12:00:00',2800.00,NULL),(25,15,25,'2023-10-14 15:00:00','2023-10-18 12:00:00',1500.00,NULL),(26,16,26,'2023-11-17 15:00:00','2023-11-22 12:00:00',2000.00,NULL),(27,16,27,'2023-11-17 15:00:00','2023-11-22 12:00:00',2800.00,NULL),(28,17,28,'2023-12-25 15:00:00','2023-12-30 12:00:00',3500.00,NULL),(29,17,29,'2023-12-25 15:00:00','2023-12-30 12:00:00',4500.00,NULL),(30,17,30,'2023-12-25 15:00:00','2023-12-30 12:00:00',5500.00,NULL),(31,18,31,'2024-01-10 15:00:00','2024-01-15 12:00:00',1500.00,NULL),(32,19,32,'2024-02-23 15:00:00','2024-02-28 12:00:00',2000.00,NULL),(33,19,33,'2024-02-23 15:00:00','2024-02-28 12:00:00',2800.00,NULL),(34,20,34,'2024-03-13 15:00:00','2024-03-18 12:00:00',2000.00,NULL),(35,20,35,'2024-03-13 15:00:00','2024-03-18 12:00:00',2800.00,NULL),(36,21,36,'2025-01-15 15:00:00',NULL,1500.00,NULL),(37,22,37,'2025-02-10 15:00:00',NULL,3500.00,NULL),(38,22,38,'2025-02-10 15:00:00',NULL,4500.00,NULL),(39,22,39,'2025-02-10 15:00:00',NULL,5500.00,NULL),(40,23,40,'2025-03-03 15:00:00',NULL,1500.00,NULL),(41,24,41,'2025-04-17 15:00:00',NULL,2000.00,NULL),(42,24,42,'2025-04-17 15:00:00',NULL,2800.00,NULL),(43,25,43,'2025-05-10 15:00:00',NULL,2000.00,NULL),(44,25,44,'2025-05-10 15:00:00',NULL,2800.00,NULL),(45,26,45,'2025-06-25 15:00:00',NULL,1500.00,NULL),(46,27,46,'2025-07-13 15:00:00',NULL,2000.00,NULL),(47,27,47,'2025-07-13 15:00:00',NULL,2800.00,NULL),(48,28,48,'2025-08-20 15:00:00',NULL,3500.00,NULL),(49,28,49,'2025-08-20 15:00:00',NULL,4500.00,NULL),(50,28,50,'2025-08-20 15:00:00',NULL,5500.00,NULL),(51,29,51,'2025-09-07 15:00:00',NULL,1500.00,NULL),(52,30,52,'2025-10-23 15:00:00',NULL,2000.00,NULL),(53,30,53,'2025-10-23 15:00:00',NULL,2800.00,NULL),(54,31,54,NULL,NULL,1500.00,1),(55,32,55,NULL,NULL,2000.00,2),(56,32,56,NULL,NULL,2800.00,2),(57,33,57,NULL,NULL,1500.00,3),(58,34,58,NULL,NULL,2200.00,4),(59,34,59,NULL,NULL,2800.00,4),(60,34,60,NULL,NULL,3500.00,4),(61,35,61,NULL,NULL,2200.00,5),(62,36,62,NULL,NULL,2000.00,6),(63,36,63,NULL,NULL,2800.00,6),(64,37,64,NULL,NULL,1500.00,7),(65,38,65,NULL,NULL,2000.00,8),(66,38,66,NULL,NULL,2800.00,8),(67,39,67,NULL,NULL,1500.00,9),(68,40,68,NULL,NULL,2000.00,10),(69,40,69,NULL,NULL,2800.00,10),(70,41,70,NULL,NULL,1500.00,NULL),(71,42,71,NULL,NULL,2000.00,NULL),(72,42,72,NULL,NULL,2800.00,NULL),(73,43,73,NULL,NULL,1500.00,NULL),(74,44,74,NULL,NULL,2000.00,NULL),(75,44,75,NULL,NULL,2800.00,NULL),(76,45,76,NULL,NULL,1500.00,NULL),(77,46,77,'2024-01-20 15:00:00','2024-01-25 12:00:00',2000.00,NULL),(78,46,78,'2024-01-20 15:00:00','2024-01-25 12:00:00',2800.00,NULL),(79,47,79,'2024-02-13 15:00:00','2024-02-18 12:00:00',2000.00,NULL),(80,47,80,'2024-02-13 15:00:00','2024-02-18 12:00:00',2800.00,NULL),(81,48,1,'2024-03-25 15:00:00','2024-03-30 12:00:00',1500.00,NULL),(82,49,2,'2024-04-10 15:00:00','2024-04-15 12:00:00',2000.00,NULL),(83,49,3,'2024-04-10 15:00:00','2024-04-15 12:00:00',2000.00,NULL),(84,50,4,'2024-05-23 15:00:00','2024-05-28 12:00:00',3500.00,NULL),(85,50,5,'2024-05-23 15:00:00','2024-05-28 12:00:00',4500.00,NULL),(86,50,6,'2024-05-23 15:00:00','2024-05-28 12:00:00',8000.00,NULL),(87,51,7,'2024-06-17 15:00:00','2024-06-22 12:00:00',1500.00,NULL),(88,52,8,'2024-07-13 15:00:00','2024-07-18 12:00:00',2000.00,NULL),(89,52,9,'2024-07-13 15:00:00','2024-07-18 12:00:00',2800.00,NULL),(90,53,10,'2024-08-25 15:00:00','2024-08-30 12:00:00',1500.00,NULL),(91,54,11,'2024-09-10 15:00:00','2024-09-15 12:00:00',2000.00,NULL),(92,54,12,'2024-09-10 15:00:00','2024-09-15 12:00:00',2800.00,NULL),(93,55,13,'2024-10-20 15:00:00','2024-10-25 12:00:00',2000.00,NULL),(94,55,14,'2024-10-20 15:00:00','2024-10-25 12:00:00',2800.00,NULL),(95,56,15,'2024-11-13 15:00:00','2024-11-18 12:00:00',1500.00,NULL),(96,57,16,'2024-12-25 15:00:00','2024-12-30 12:00:00',3500.00,NULL),(97,57,17,'2024-12-25 15:00:00','2024-12-30 12:00:00',4500.00,NULL),(98,57,18,'2024-12-25 15:00:00','2024-12-30 12:00:00',8000.00,NULL),(99,58,19,'2025-01-17 15:00:00',NULL,1500.00,NULL),(100,59,20,'2025-02-20 15:00:00',NULL,2000.00,NULL),(101,59,21,'2025-02-20 15:00:00',NULL,2800.00,NULL),(102,60,22,'2025-03-07 15:00:00',NULL,1500.00,NULL),(103,61,23,'2025-04-23 15:00:00',NULL,3500.00,NULL),(104,61,24,'2025-04-23 15:00:00',NULL,4500.00,NULL),(105,61,25,'2025-04-23 15:00:00',NULL,8000.00,NULL),(106,62,26,'2025-05-13 15:00:00',NULL,1500.00,NULL),(107,63,27,'2025-06-10 15:00:00',NULL,2000.00,NULL),(108,63,28,'2025-06-10 15:00:00',NULL,2800.00,NULL),(109,64,29,'2025-07-25 15:00:00',NULL,2000.00,NULL),(110,64,30,'2025-07-25 15:00:00',NULL,2800.00,NULL),(111,65,31,'2025-08-07 15:00:00',NULL,1500.00,NULL),(112,66,32,'2025-09-23 15:00:00',NULL,3500.00,NULL),(113,66,33,'2025-09-23 15:00:00',NULL,4500.00,NULL),(114,66,34,'2025-09-23 15:00:00',NULL,8000.00,NULL),(115,67,35,'2025-10-10 15:00:00',NULL,2000.00,NULL),(116,67,36,'2025-10-10 15:00:00',NULL,2800.00,NULL),(117,68,37,'2025-11-25 15:00:00',NULL,1500.00,NULL),(118,69,38,'2025-12-17 15:00:00',NULL,3500.00,NULL),(119,69,39,'2025-12-17 15:00:00',NULL,4500.00,NULL),(120,69,40,'2025-12-17 15:00:00',NULL,8000.00,NULL),(121,70,41,NULL,NULL,1500.00,11),(122,71,42,NULL,NULL,2000.00,12),(123,71,43,NULL,NULL,2800.00,12),(124,72,44,NULL,NULL,1500.00,13),(125,73,45,NULL,NULL,2000.00,14),(126,73,46,NULL,NULL,2800.00,14),(127,74,47,NULL,NULL,1500.00,15),(128,75,48,NULL,NULL,2000.00,16),(129,75,49,NULL,NULL,2800.00,16),(130,76,50,NULL,NULL,1500.00,17),(131,77,51,NULL,NULL,2000.00,18),(132,77,52,NULL,NULL,2800.00,18),(133,78,53,NULL,NULL,1500.00,19),(134,79,54,NULL,NULL,1500.00,20),(135,80,55,'2023-12-20 15:00:00','2023-12-25 12:00:00',3500.00,NULL),(136,80,56,'2023-12-20 15:00:00','2023-12-25 12:00:00',4500.00,NULL),(137,80,57,'2023-12-20 15:00:00','2023-12-25 12:00:00',8000.00,NULL),(138,81,58,'2024-01-13 15:00:00','2024-01-18 12:00:00',1500.00,NULL),(139,82,59,'2024-02-20 15:00:00','2024-02-25 12:00:00',2000.00,NULL),(140,82,60,'2024-02-20 15:00:00','2024-02-25 12:00:00',3500.00,NULL),(141,83,61,'2024-03-23 15:00:00','2024-03-28 12:00:00',1500.00,NULL),(142,84,62,'2024-04-25 15:00:00','2024-04-30 12:00:00',3500.00,NULL),(143,84,63,'2024-04-25 15:00:00','2024-04-30 12:00:00',4500.00,NULL),(144,84,64,'2024-04-25 15:00:00','2024-04-30 12:00:00',8000.00,NULL),(145,85,65,'2024-05-10 15:00:00','2024-05-15 12:00:00',1500.00,NULL),(146,86,66,'2024-06-23 15:00:00','2024-06-28 12:00:00',2000.00,NULL),(147,86,67,'2024-06-23 15:00:00','2024-06-28 12:00:00',2800.00,NULL),(148,87,68,'2024-07-15 15:00:00','2024-07-20 12:00:00',2000.00,NULL),(149,87,69,'2024-07-15 15:00:00','2024-07-20 12:00:00',2800.00,NULL),(150,88,70,'2024-08-17 15:00:00','2024-08-22 12:00:00',2200.00,NULL),(151,89,71,'2024-09-13 15:00:00','2024-09-18 12:00:00',2000.00,NULL),(152,89,72,'2024-09-13 15:00:00','2024-09-18 12:00:00',2800.00,NULL),(153,90,73,'2024-10-25 15:00:00','2024-10-30 12:00:00',2000.00,NULL),(154,90,74,'2024-10-25 15:00:00','2024-10-30 12:00:00',2800.00,NULL),(155,91,75,'2024-11-07 15:00:00','2024-11-12 12:00:00',1500.00,NULL),(156,92,76,'2024-12-23 15:00:00','2024-12-28 12:00:00',3500.00,NULL),(157,92,77,'2024-12-23 15:00:00','2024-12-28 12:00:00',4500.00,NULL),(158,92,78,'2024-12-23 15:00:00','2024-12-28 12:00:00',8000.00,NULL),(159,93,79,'2025-01-20 15:00:00',NULL,2200.00,NULL),(160,94,80,'2025-02-13 15:00:00',NULL,2000.00,NULL),(161,94,1,'2025-02-13 15:00:00',NULL,1500.00,NULL),(162,95,2,'2025-03-25 15:00:00',NULL,2000.00,NULL),(163,96,3,'2025-04-07 15:00:00',NULL,2000.00,NULL),(164,96,4,'2025-04-07 15:00:00',NULL,1500.00,NULL),(165,96,5,'2025-04-07 15:00:00',NULL,2200.00,NULL),(166,97,6,'2025-05-23 15:00:00',NULL,2800.00,NULL),(167,97,7,'2025-05-23 15:00:00',NULL,1500.00,NULL),(168,98,8,'2025-06-17 15:00:00',NULL,2200.00,NULL),(169,99,9,'2025-07-20 15:00:00',NULL,2800.00,NULL),(170,99,10,'2025-07-20 15:00:00',NULL,2800.00,NULL),(171,100,11,'2025-08-23 15:00:00',NULL,1500.00,NULL),(172,101,12,'2025-09-25 15:00:00',NULL,2000.00,NULL),(173,101,13,'2025-09-25 15:00:00',NULL,2800.00,NULL),(174,102,14,'2025-10-17 15:00:00',NULL,1500.00,NULL),(175,103,15,'2025-11-10 15:00:00',NULL,3500.00,NULL),(176,103,16,'2025-11-10 15:00:00',NULL,4500.00,NULL),(177,104,17,'2025-12-25 15:00:00',NULL,8000.00,NULL),(178,104,18,'2025-12-25 15:00:00',NULL,2000.00,NULL),(179,104,19,'2025-12-25 15:00:00',NULL,2800.00,NULL),(180,105,20,NULL,NULL,1500.00,21),(181,106,21,NULL,NULL,2000.00,22),(182,106,22,NULL,NULL,2800.00,22),(183,107,23,NULL,NULL,2000.00,23),(184,108,24,NULL,NULL,2800.00,24),(185,108,25,NULL,NULL,1500.00,24),(186,108,26,NULL,NULL,2000.00,24),(187,109,27,NULL,NULL,2800.00,25),(188,110,28,NULL,NULL,3500.00,26),(189,110,29,NULL,NULL,4500.00,26),(190,111,30,NULL,NULL,5500.00,27),(191,112,31,NULL,NULL,1500.00,28),(192,112,32,NULL,NULL,2000.00,28),(193,113,33,NULL,NULL,2800.00,29),(194,113,34,NULL,NULL,2800.00,29),(195,114,35,NULL,NULL,2000.00,30),(196,115,36,NULL,NULL,1500.00,NULL),(197,115,37,NULL,NULL,3500.00,NULL),(198,116,38,NULL,NULL,4500.00,NULL),(199,117,39,NULL,NULL,5500.00,NULL),(200,117,40,NULL,NULL,1500.00,NULL),(201,118,41,NULL,NULL,1500.00,NULL),(202,119,42,NULL,NULL,2000.00,NULL),(203,119,43,NULL,NULL,2800.00,NULL),(204,119,44,NULL,NULL,2800.00,NULL),(205,120,45,NULL,NULL,1500.00,NULL),(206,120,46,NULL,NULL,2000.00,NULL),(207,121,47,NULL,NULL,2800.00,NULL),(208,122,48,NULL,NULL,3500.00,NULL),(209,122,49,NULL,NULL,4500.00,NULL),(210,123,50,NULL,NULL,5500.00,NULL),(211,124,51,NULL,NULL,1500.00,NULL),(212,124,52,NULL,NULL,2000.00,NULL),(213,125,53,NULL,NULL,2800.00,NULL),(214,126,54,'2023-05-15 15:00:00','2023-05-20 12:00:00',2000.00,NULL),(215,126,55,'2023-05-15 15:00:00','2023-05-20 12:00:00',3500.00,NULL),(216,127,56,'2023-06-20 15:00:00','2023-06-25 12:00:00',4500.00,NULL),(217,128,57,'2023-07-23 15:00:00','2023-07-28 12:00:00',8000.00,NULL),(218,128,58,'2023-07-23 15:00:00','2023-07-28 12:00:00',1500.00,NULL),(219,129,59,'2023-08-25 15:00:00','2023-08-30 12:00:00',2000.00,NULL),(220,130,60,'2023-09-17 15:00:00','2023-09-22 12:00:00',3500.00,NULL),(221,130,61,'2023-09-17 15:00:00','2023-09-22 12:00:00',1500.00,NULL),(222,131,62,'2023-10-20 15:00:00','2023-10-25 12:00:00',2000.00,NULL),(223,132,63,'2023-11-13 15:00:00','2023-11-18 12:00:00',2800.00,NULL),(224,132,64,'2023-11-13 15:00:00','2023-11-18 12:00:00',1500.00,NULL),(225,132,65,'2023-11-13 15:00:00','2023-11-18 12:00:00',2000.00,NULL),(226,133,66,'2023-12-17 15:00:00','2023-12-22 12:00:00',2000.00,NULL),(227,133,67,'2023-12-17 15:00:00','2023-12-22 12:00:00',2800.00,NULL),(228,134,68,'2024-01-23 15:00:00','2024-01-28 12:00:00',2000.00,NULL),(229,135,69,'2024-02-15 15:00:00','2024-02-20 12:00:00',2800.00,NULL),(230,135,70,'2024-02-15 15:00:00','2024-02-20 12:00:00',2200.00,NULL),(231,136,71,'2024-03-20 15:00:00','2024-03-25 12:00:00',1500.00,NULL),(232,137,72,'2024-04-13 15:00:00','2024-04-18 12:00:00',2000.00,NULL),(233,137,73,'2024-04-13 15:00:00','2024-04-18 12:00:00',2000.00,NULL),(234,138,74,'2024-05-25 15:00:00','2024-05-30 12:00:00',1500.00,NULL),(235,139,75,'2024-06-15 15:00:00','2024-06-20 12:00:00',2000.00,NULL),(236,139,76,'2024-06-15 15:00:00','2024-06-20 12:00:00',2000.00,NULL),(237,140,77,'2024-07-20 15:00:00','2024-07-25 12:00:00',2000.00,NULL),(238,140,78,'2024-07-20 15:00:00','2024-07-25 12:00:00',2800.00,NULL),(239,141,79,'2024-08-23 15:00:00','2024-08-28 12:00:00',2200.00,NULL),(240,142,80,'2024-09-25 15:00:00','2024-09-30 12:00:00',2000.00,NULL),(241,142,1,'2024-09-25 15:00:00','2024-09-30 12:00:00',1500.00,NULL),(242,143,2,'2024-10-17 15:00:00','2024-10-22 12:00:00',2000.00,NULL),(243,144,3,'2024-11-23 15:00:00','2024-11-28 12:00:00',2000.00,NULL),(244,144,4,'2024-11-23 15:00:00','2024-11-28 12:00:00',1500.00,NULL),(245,144,5,'2024-11-23 15:00:00','2024-11-28 12:00:00',2200.00,NULL),(246,145,6,'2024-12-15 15:00:00','2024-12-20 12:00:00',2800.00,NULL),(247,145,7,'2024-12-15 15:00:00','2024-12-20 12:00:00',1500.00,NULL),(248,146,8,'2025-01-13 15:00:00',NULL,2200.00,NULL),(249,147,9,'2025-02-17 15:00:00',NULL,2800.00,NULL),(250,147,10,'2025-02-17 15:00:00',NULL,2800.00,NULL);
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
INSERT INTO `fechas_ocupadas` VALUES (1,'2024-03-10','2024-03-15',1),(2,'2024-04-18','2024-04-22',2),(3,'2024-04-18','2024-04-22',2),(4,'2024-05-03','2024-05-08',3),(5,'2024-06-07','2024-06-12',4),(6,'2024-06-07','2024-06-12',4),(7,'2024-06-07','2024-06-12',4),(8,'2024-07-20','2024-07-25',5),(9,'2024-08-14','2024-08-18',6),(10,'2024-08-14','2024-08-18',6),(11,'2024-09-25','2024-09-30',7),(12,'2024-10-09','2024-10-14',8),(13,'2024-10-09','2024-10-14',8),(14,'2024-11-23','2024-11-28',9),(15,'2024-12-18','2024-12-22',10),(16,'2024-12-18','2024-12-22',10),(17,'2024-12-18','2024-12-22',10),(18,'2023-06-10','2023-06-15',11),(19,'2023-06-10','2023-06-15',11),(20,'2023-07-25','2023-07-30',12),(21,'2023-08-08','2023-08-12',13),(22,'2023-08-08','2023-08-12',13),(23,'2023-09-20','2023-09-25',14),(24,'2023-09-20','2023-09-25',14),(25,'2023-10-14','2023-10-18',15),(26,'2023-11-17','2023-11-22',16),(27,'2023-11-17','2023-11-22',16),(28,'2023-12-25','2023-12-30',17),(29,'2023-12-25','2023-12-30',17),(30,'2023-12-25','2023-12-30',17),(31,'2024-01-10','2024-01-15',18),(32,'2024-02-23','2024-02-28',19),(33,'2024-02-23','2024-02-28',19),(34,'2024-03-13','2024-03-18',20),(35,'2024-03-13','2024-03-18',20),(36,'2025-01-15','2025-01-20',21),(37,'2025-02-10','2025-02-14',22),(38,'2025-02-10','2025-02-14',22),(39,'2025-02-10','2025-02-14',22),(40,'2025-03-03','2025-03-08',23),(41,'2025-04-17','2025-04-22',24),(42,'2025-04-17','2025-04-22',24),(43,'2025-05-10','2025-05-15',25),(44,'2025-05-10','2025-05-15',25),(45,'2025-06-25','2025-06-30',26),(46,'2025-07-13','2025-07-18',27),(47,'2025-07-13','2025-07-18',27),(48,'2025-08-20','2025-08-25',28),(49,'2025-08-20','2025-08-25',28),(50,'2025-08-20','2025-08-25',28),(51,'2025-09-07','2025-09-12',29),(52,'2025-10-23','2025-10-28',30),(53,'2025-10-23','2025-10-28',30),(54,'2024-02-10','2024-02-15',31),(55,'2024-03-18','2024-03-22',32),(56,'2024-03-18','2024-03-22',32),(57,'2024-04-03','2024-04-08',33),(58,'2024-05-20','2024-05-25',34),(59,'2024-05-20','2024-05-25',34),(60,'2024-05-20','2024-05-25',34),(61,'2024-06-13','2024-06-18',35),(62,'2024-07-25','2024-07-30',36),(63,'2024-07-25','2024-07-30',36),(64,'2024-08-10','2024-08-15',37),(65,'2024-09-23','2024-09-28',38),(66,'2024-09-23','2024-09-28',38),(67,'2024-10-07','2024-10-12',39),(68,'2024-11-20','2024-11-25',40),(69,'2024-11-20','2024-11-25',40),(70,'2025-01-05','2025-01-10',41),(71,'2025-02-23','2025-02-28',42),(72,'2025-02-23','2025-02-28',42),(73,'2025-03-10','2025-03-15',43),(74,'2025-04-03','2025-04-08',44),(75,'2025-04-03','2025-04-08',44),(76,'2025-05-17','2025-05-22',45),(77,'2024-01-20','2024-01-25',46),(78,'2024-01-20','2024-01-25',46),(79,'2024-02-13','2024-02-18',47),(80,'2024-02-13','2024-02-18',47),(1,'2024-03-25','2024-03-30',48),(2,'2024-04-10','2024-04-15',49),(3,'2024-04-10','2024-04-15',49),(4,'2024-05-23','2024-05-28',50),(5,'2024-05-23','2024-05-28',50),(6,'2024-05-23','2024-05-28',50),(7,'2024-06-17','2024-06-22',51),(8,'2024-07-13','2024-07-18',52),(9,'2024-07-13','2024-07-18',52),(10,'2024-08-25','2024-08-30',53),(11,'2024-09-10','2024-09-15',54),(12,'2024-09-10','2024-09-15',54),(13,'2024-10-20','2024-10-25',55),(14,'2024-10-20','2024-10-25',55),(15,'2024-11-13','2024-11-18',56),(16,'2024-12-25','2024-12-30',57),(17,'2024-12-25','2024-12-30',57),(18,'2024-12-25','2024-12-30',57),(19,'2025-01-17','2025-01-22',58),(20,'2025-02-20','2025-02-25',59),(21,'2025-02-20','2025-02-25',59),(22,'2025-03-07','2025-03-12',60),(23,'2025-04-23','2025-04-28',61),(24,'2025-04-23','2025-04-28',61),(25,'2025-04-23','2025-04-28',61),(26,'2025-05-13','2025-05-18',62),(27,'2025-06-10','2025-06-15',63),(28,'2025-06-10','2025-06-15',63),(29,'2025-07-25','2025-07-30',64),(30,'2025-07-25','2025-07-30',64),(31,'2025-08-07','2025-08-12',65),(32,'2025-09-23','2025-09-28',66),(33,'2025-09-23','2025-09-28',66),(34,'2025-09-23','2025-09-28',66),(35,'2025-10-10','2025-10-15',67),(36,'2025-10-10','2025-10-15',67),(37,'2025-11-25','2025-11-30',68),(38,'2025-12-17','2025-12-22',69),(39,'2025-12-17','2025-12-22',69),(40,'2025-12-17','2025-12-22',69),(41,'2024-06-25','2024-06-30',70),(42,'2024-07-17','2024-07-22',71),(43,'2024-07-17','2024-07-22',71),(44,'2024-08-13','2024-08-18',72),(45,'2024-09-20','2024-09-25',73),(46,'2024-09-20','2024-09-25',73),(47,'2024-10-13','2024-10-18',74),(48,'2024-11-25','2024-11-30',75),(49,'2024-11-25','2024-11-30',75),(50,'2024-12-10','2024-12-15',76),(51,'2025-01-23','2025-01-28',77),(52,'2025-01-23','2025-01-28',77),(53,'2025-02-17','2025-02-22',78),(54,'2025-03-20','2025-03-25',79),(55,'2023-12-20','2023-12-25',80),(56,'2023-12-20','2023-12-25',80),(57,'2023-12-20','2023-12-25',80),(58,'2024-01-13','2024-01-18',81),(59,'2024-02-20','2024-02-25',82),(60,'2024-02-20','2024-02-25',82),(61,'2024-03-23','2024-03-28',83),(62,'2024-04-25','2024-04-30',84),(63,'2024-04-25','2024-04-30',84),(64,'2024-04-25','2024-04-30',84),(65,'2024-05-10','2024-05-15',85),(66,'2024-06-23','2024-06-28',86),(67,'2024-06-23','2024-06-28',86),(68,'2024-07-15','2024-07-20',87),(69,'2024-07-15','2024-07-20',87),(70,'2024-08-17','2024-08-22',88),(71,'2024-09-13','2024-09-18',89),(72,'2024-09-13','2024-09-18',89),(73,'2024-10-25','2024-10-30',90),(74,'2024-10-25','2024-10-30',90),(75,'2024-11-07','2024-11-12',91),(76,'2024-12-23','2024-12-28',92),(77,'2024-12-23','2024-12-28',92),(78,'2024-12-23','2024-12-28',92),(79,'2025-01-20','2025-01-25',93),(1,'2025-02-13','2025-02-18',94),(80,'2025-02-13','2025-02-18',94),(2,'2025-03-25','2025-03-30',95),(3,'2025-04-07','2025-04-12',96),(4,'2025-04-07','2025-04-12',96),(5,'2025-04-07','2025-04-12',96),(6,'2025-05-23','2025-05-28',97),(7,'2025-05-23','2025-05-28',97),(8,'2025-06-17','2025-06-22',98),(9,'2025-07-20','2025-07-25',99),(10,'2025-07-20','2025-07-25',99),(11,'2025-08-23','2025-08-28',100),(12,'2025-09-25','2025-09-30',101),(13,'2025-09-25','2025-09-30',101),(14,'2025-10-17','2025-10-22',102),(15,'2025-11-10','2025-11-15',103),(16,'2025-11-10','2025-11-15',103),(17,'2025-12-25','2025-12-30',104),(18,'2025-12-25','2025-12-30',104),(19,'2025-12-25','2025-12-30',104),(20,'2024-03-07','2024-03-12',105),(21,'2024-04-20','2024-04-25',106),(22,'2024-04-20','2024-04-25',106),(23,'2024-05-25','2024-05-30',107),(24,'2024-06-10','2024-06-15',108),(25,'2024-06-10','2024-06-15',108),(26,'2024-06-10','2024-06-15',108),(27,'2024-07-23','2024-07-28',109),(28,'2024-08-15','2024-08-20',110),(29,'2024-08-15','2024-08-20',110),(30,'2024-09-17','2024-09-22',111),(31,'2024-10-23','2024-10-28',112),(32,'2024-10-23','2024-10-28',112),(33,'2024-11-15','2024-11-20',113),(34,'2024-11-15','2024-11-20',113),(35,'2024-12-13','2024-12-18',114),(36,'2025-01-10','2025-01-15',115),(37,'2025-01-10','2025-01-15',115),(38,'2025-02-15','2025-02-20',116),(39,'2025-03-17','2025-03-22',117),(40,'2025-03-17','2025-03-22',117),(41,'2025-04-20','2025-04-25',118),(42,'2025-05-25','2025-05-30',119),(43,'2025-05-25','2025-05-30',119),(44,'2025-05-25','2025-05-30',119),(45,'2025-06-23','2025-06-28',120),(46,'2025-06-23','2025-06-28',120),(47,'2025-07-17','2025-07-22',121),(48,'2025-08-25','2025-08-30',122),(49,'2025-08-25','2025-08-30',122),(50,'2025-09-10','2025-09-15',123),(51,'2025-10-15','2025-10-20',124),(52,'2025-10-15','2025-10-20',124),(53,'2025-11-20','2025-11-25',125),(54,'2023-05-15','2023-05-20',126),(55,'2023-05-15','2023-05-20',126),(56,'2023-06-20','2023-06-25',127),(57,'2023-07-23','2023-07-28',128),(58,'2023-07-23','2023-07-28',128),(59,'2023-08-25','2023-08-30',129),(60,'2023-09-17','2023-09-22',130),(61,'2023-09-17','2023-09-22',130),(62,'2023-10-20','2023-10-25',131),(63,'2023-11-13','2023-11-18',132),(64,'2023-11-13','2023-11-18',132),(65,'2023-11-13','2023-11-18',132),(66,'2023-12-17','2023-12-22',133),(67,'2023-12-17','2023-12-22',133),(68,'2024-01-23','2024-01-28',134),(69,'2024-02-15','2024-02-20',135),(70,'2024-02-15','2024-02-20',135),(71,'2024-03-20','2024-03-25',136),(72,'2024-04-13','2024-04-18',137),(73,'2024-04-13','2024-04-18',137),(74,'2024-05-25','2024-05-30',138),(75,'2024-06-15','2024-06-20',139),(76,'2024-06-15','2024-06-20',139),(77,'2024-07-20','2024-07-25',140),(78,'2024-07-20','2024-07-25',140),(79,'2024-08-23','2024-08-28',141),(1,'2024-09-25','2024-09-30',142),(80,'2024-09-25','2024-09-30',142),(2,'2024-10-17','2024-10-22',143),(3,'2024-11-23','2024-11-28',144),(4,'2024-11-23','2024-11-28',144),(5,'2024-11-23','2024-11-28',144),(6,'2024-12-15','2024-12-20',145),(7,'2024-12-15','2024-12-20',145),(8,'2025-01-13','2025-01-18',146),(9,'2025-02-17','2025-02-22',147),(10,'2025-02-17','2025-02-22',147);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,1,'Disponible',NULL,1,1,1),(2,2,'Disponible',NULL,1,2,1),(3,2,'Disponible',NULL,1,2,1),(4,1,'Disponible',NULL,1,1,1),(5,3,'Disponible',NULL,1,1,1),(6,4,'Disponible',NULL,1,2,1),(7,1,'Disponible',NULL,1,1,1),(8,3,'Disponible',NULL,1,1,1),(9,4,'Disponible',NULL,1,2,1),(10,4,'Disponible',NULL,1,2,1),(11,1,'Disponible',NULL,2,1,1),(12,2,'Disponible',NULL,2,2,1),(13,4,'Disponible',NULL,2,2,1),(14,1,'Disponible',NULL,2,1,1),(15,5,'Disponible','Vista al mar',2,2,1),(16,6,'Disponible','Vista panorámica',2,2,1),(17,8,'Disponible','Suite presidencial con mayordomo',2,2,1),(18,2,'Disponible',NULL,2,2,1),(19,4,'Disponible',NULL,2,2,1),(20,1,'Disponible',NULL,2,1,1),(21,2,'Disponible',NULL,3,2,1),(22,4,'Disponible',NULL,3,2,1),(23,2,'Disponible',NULL,3,2,1),(24,4,'Disponible',NULL,3,2,1),(25,1,'Disponible',NULL,3,1,1),(26,2,'Disponible',NULL,3,2,1),(27,4,'Disponible',NULL,3,2,1),(28,5,'Disponible','Jacuzzi privado',3,2,1),(29,6,'Disponible','Terraza privada',3,2,1),(30,7,'Disponible','Dos dormitorios conectados',3,4,1),(31,1,'Disponible',NULL,4,1,1),(32,2,'Disponible',NULL,4,2,1),(33,4,'Disponible',NULL,4,2,1),(34,2,'Disponible',NULL,4,2,1),(35,4,'Disponible',NULL,4,2,1),(36,1,'Disponible',NULL,4,1,1),(37,5,'Disponible','Balcón con vista',4,2,1),(38,6,'Disponible','Sala de juntas',4,2,1),(39,7,'Disponible','Cocina completa',4,4,1),(40,1,'Disponible',NULL,4,1,1),(41,2,'Disponible',NULL,5,2,1),(42,4,'Disponible',NULL,5,2,1),(43,2,'Disponible',NULL,5,2,1),(44,4,'Disponible',NULL,5,2,1),(45,1,'Disponible',NULL,5,1,1),(46,2,'Disponible',NULL,5,2,1),(47,4,'Disponible',NULL,5,2,1),(48,5,'Disponible','Chimenea',5,2,1),(49,6,'Disponible','Biblioteca',5,2,1),(50,7,'Disponible','Sala de juegos para niños',5,4,1),(51,1,'Disponible',NULL,6,1,1),(52,2,'Disponible',NULL,6,2,1),(53,4,'Disponible',NULL,6,2,1),(54,2,'Disponible',NULL,6,2,1),(55,5,'Disponible','Estudio de arte',6,2,1),(56,6,'Disponible','Sala de conferencias',6,2,1),(57,7,'Disponible','Área de entretenimiento familiar',6,4,1),(58,1,'Disponible',NULL,6,1,1),(59,2,'Disponible',NULL,6,2,1),(60,5,'Disponible','Spa privado',6,2,1),(61,1,'Disponible',NULL,7,1,1),(62,2,'Disponible',NULL,7,2,1),(63,4,'Disponible',NULL,7,2,1),(64,1,'Disponible',NULL,7,1,1),(65,2,'Disponible',NULL,7,2,1),(66,2,'Disponible',NULL,7,2,1),(67,1,'Disponible',NULL,7,1,1),(68,2,'Disponible',NULL,7,2,1),(69,4,'Disponible',NULL,7,2,1),(70,3,'Disponible',NULL,7,1,1),(71,1,'Disponible',NULL,8,1,1),(72,2,'Disponible',NULL,8,2,1),(73,2,'Disponible',NULL,8,2,1),(74,1,'Disponible',NULL,8,1,1),(75,2,'Disponible',NULL,8,2,1),(76,2,'Disponible',NULL,8,2,1),(77,2,'Disponible',NULL,8,2,1),(78,4,'Disponible',NULL,8,2,1),(79,3,'Disponible',NULL,8,1,1),(80,8,'Disponible','Suite presidencial con cine privado',8,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huesped_acompanante`
--

LOCK TABLES `huesped_acompanante` WRITE;
/*!40000 ALTER TABLE `huesped_acompanante` DISABLE KEYS */;
INSERT INTO `huesped_acompanante` VALUES (1,'María Elena','Rodríguez','Vega','1975-04-15','mrodriguez@grupohotelero.com',4,'1'),(2,'Jorge Luis','Martínez','Solís','1982-09-22','jmartinez@grupohotelero.com',4,'1'),(3,'Ana Cristina','López','Herrera','1979-11-08','alopez@grupohotelero.com',4,'1'),(4,'Roberto Carlos','García','Mendoza','1985-01-30','rgarcia@grupohotelero.com',4,'1'),(5,'Patricia','Sánchez','Torres','1978-06-12','psanchez@grupohotelero.com',4,'1'),(6,'Ing. Miguel','Cervantes','Ruiz','1976-03-18','mcervantes@peninsulamaya.com',7,'1'),(7,'Arq. Sofía','Delgado','Morales','1983-07-25','sdelgado@peninsulamaya.com',7,'1'),(8,'Ing. Fernando','Vázquez','Castro','1980-12-05','fvazquez@peninsulamaya.com',7,'1'),(9,'Lic. Carmen','Jiménez','Ramos','1984-08-14','cjimenez@peninsulamaya.com',7,'1'),(10,'Ing. David','Moreno','Silva','1977-10-30','dmoreno@peninsulamaya.com',7,'1'),(11,'Arq. Valeria','Guerrero','Ortiz','1981-05-17','vguerrero@peninsulamaya.com',7,'1'),(12,'Ing. Alejandro','Herrera','Flores','1979-02-09','aherrera@peninsulamaya.com',7,'1'),(13,'Lic. Isabella','Contreras','Luna','1986-04-22','icontreras@peninsulamaya.com',7,'1'),(14,'Lic. Carlos','Ramírez','Gutiérrez','1988-06-10','cramirez@tecavanzada.com',10,'9'),(15,'Ing. Laura','Fernández','Aguilar','1985-11-28','lfernandez@tecavanzada.com',10,'9'),(16,'Lic. Daniel','Castillo','Peña','1987-03-15','dcastillo@tecavanzada.com',10,'9'),(17,'Dr. Ricardo','Mendoza','Vargas','1973-08-20','rmendoza@labcaribe.com',12,'12'),(18,'Dra. Elena','Torres','Ruiz','1979-12-03','etorres@labcaribe.com',12,'12'),(19,'Lic. Antonio','Gómez','Salinas','1972-05-12','agomez@bancaelite.com',15,'5'),(20,'Lic. Mónica','Díaz','Espinoza','1980-09-18','mdiaz@bancaelite.com',15,'5'),(21,'MBA Eduardo','Flores','Navarro','1976-01-25','eflores@bancaelite.com',15,'5'),(22,'Lic. Gabriela','Morales','Cortés','1983-07-08','gmorales@bancaelite.com',15,'5'),(23,'CPA Javier','Rivas','Medina','1978-11-14','jrivas@bancaelite.com',15,'5'),(24,'Lic. Carolina','Santos','Rojas','1984-04-02','csantos@bancaelite.com',15,'5'),(25,'MBA Fernando','Cruz','Pacheco','1975-08-27','fcruz@bancaelite.com',15,'5'),(26,'Lic. Adriana','Luna','Estrada','1982-12-10','aluna@bancaelite.com',15,'5'),(27,'Lic. Rodrigo','Vega','Rangel','1981-06-05','rvega@bancaelite.com',15,'5'),(28,'Dra. Silvia','Campos','Soto','1977-10-22','scampos@bancaelite.com',15,'5'),(29,'Lic. Héctor','Paredes','Fuentes','1979-03-16','hparedes@bancaelite.com',15,'5'),(30,'MBA Leticia','Ibarra','Guzmán','1985-09-29','libarra@bancaelite.com',15,'5'),(31,'MBA Raúl','Escalante','Domínguez','1980-02-14','rescalante@ceglobal.com',19,'15'),(32,'Lic. Verónica','Figueroa','Cárdenas','1986-07-21','vfigueroa@ceglobal.com',19,'15'),(33,'Ing. Mauricio','Bermúdez','Uribe','1974-04-08','mbermudez@pimex.com',24,'12'),(34,'Ing. Patricia','Vázquez','Wolff','1981-10-15','pvazquez@pimex.com',24,'12'),(35,'Dr. Ignacio','Ximénez','Yáñez','1976-12-22','iximenez@pimex.com',24,'12'),(36,'Ing. Gloria','Zavala','Ávila','1983-05-30','gzavala@pimex.com',24,'12'),(37,'Lic. Tomás','Salinas','Torres','1978-08-11','tsalinas@pimex.com',24,'12'),(38,'Ing. Diana','Rosales','Quintero','1985-01-18','drosales@pimex.com',24,'12'),(39,'Dr. Salvador','Pacheco','Ojeda','1972-11-05','spacheco@pimex.com',24,'12'),(40,'Ing. Esperanza','Maldonado','Lara','1984-03-27','emaldonado@pimex.com',24,'12'),(41,'Lic. Andrés','Ibarra','Guzmán','1980-09-13','aibarra@pimex.com',24,'12'),(42,'Ing. Beatriz','Fuentes','Soto','1987-06-20','bfuentes@pimex.com',24,'12'),(43,'Dr. Francisco','Rangel','Montes','1975-02-07','frangel@pimex.com',24,'12'),(44,'Ing. Alicia','Rivera','Estrada','1982-12-24','arivera@pimex.com',24,'12'),(45,'Lic. Guillermo','Navarro','Campos','1979-07-01','gnavarro@pimex.com',24,'12'),(46,'Ing. Leticia','Rojas','Delgado','1986-04-14','lrojas@pimex.com',24,'12'),(47,'Dr. Gerardo','Castro','Ramos','1973-10-31','gcastro@pimex.com',24,'12'),(48,'Arq. Oscar','Delgado','Paredes','1977-05-19','odelgado@dipremium.com',28,'9'),(49,'Ing. Marisol','Cordero','Espinoza','1984-08-26','mcordero@dipremium.com',28,'9'),(50,'Arq. Eduardo','Contreras','Vega','1981-01-12','econtreras@dipremium.com',28,'9'),(51,'Lic. Rosa','Santana','Luna','1985-11-03','rsantana@dipremium.com',28,'9'),(52,'Ing. Héctor','Delgado','Morales','1978-06-15','hdelgado@dipremium.com',28,'9'),(53,'Arq. Liliana','Paredes','Cordero','1983-09-22','lparedes@dipremium.com',28,'9'),(54,'Ing. Karla','Espinoza','Navarro','1980-03-08','kespinoza@imgolfo.com',31,'5'),(55,'Lic. Gerardo','Navarro','Rojas','1976-07-25','gnavarro@imgolfo.com',31,'5'),(56,'Ing. Leticia','Campos','Vega','1982-12-14','lcampos@imgolfo.com',31,'5'),(57,'Dr. Rubén','Montes','Rivera','1975-04-30','rmontes@imgolfo.com',31,'5'),(58,'Ing. Alicia','Rivera','Estrada','1984-08-17','arivera@imgolfo.com',31,'5'),(59,'Lic. Guillermo','Estrada','Rangel','1779-11-06','gestrada@imgolfo.com',31,'5'),(60,'Ing. Norma','Soto','Fuentes','1985-02-21','nsoto@imgolfo.com',31,'5'),(61,'Dr. Andrés','Guzmán','Ibarra','1973-06-09','aguzman@imgolfo.com',31,'5'),(62,'Ing. Cristina','Lara','Maldonado','1981-10-26','clara@imgolfo.com',31,'5'),(63,'Lic. Ignacio','Maldonado','Nava','1978-01-15','imaldonado@spi.com',35,'15'),(64,'CPA Dolores','Ojeda','Pacheco','1983-05-22','dojeda@spi.com',35,'15'),(65,'MBA Ramón','Pacheco','Quintero','1980-09-08','rpacheco@spi.com',35,'15'),(66,'Lic. Gloria','Quintero','Rosales','1985-12-25','gquintero@spi.com',35,'15'),(67,'Lic. Salvador','Rosales','Salinas','1981-03-12','srosales@cemaya.com',38,'15'),(68,'MBA Tomás','Torres','Uribe','1977-07-29','ttorres@cemaya.com',38,'15'),(69,'Lic. Yolanda','Uribe','Vázquez','1984-11-16','yuribe@cemaya.com',38,'15'),(70,'Dr. Víctor','Vázquez','Wolff','1976-04-03','vvazquez@cemaya.com',38,'15'),(71,'Lic. Zoila','Wolff','Ximénez','1982-08-20','zwolff@cemaya.com',38,'15'),(72,'MBA Armando','Ximénez','Yáñez','1979-12-07','aximenez@cemaya.com',38,'15'),(73,'Lic. Blanca','Yáñez','Zavala','1985-05-24','byanez@cemaya.com',38,'15'),(74,'Elena','López','Sánchez','1985-03-20','elena.lopez@email.com',3,'15'),(75,'Sofía','López','Sánchez','2010-08-15','sofia.lopez@email.com',3,'15'),(76,'Roberto','Mendoza','Torres','1983-11-12','roberto.mendoza@email.com',6,'15'),(77,'Andrea','Ruiz','Morales','1990-07-08','andrea.ruiz@email.com',9,'15'),(78,'Diego','Ruiz','Morales','2015-02-25','diego.ruiz@email.com',9,'15'),(79,'Valeria','Castro','Ramos','1987-09-14','valeria.castro@email.com',13,'15'),(80,'Mateo','Castro','Ramos','2012-05-30','mateo.castro@email.com',13,'15'),(81,'Fernando','Aguilar','Peña','1981-12-03','fernando.aguilar@email.com',18,'12'),(82,'Isabella','Aguilar','Peña','2008-04-18','isabella.aguilar@email.com',18,'12'),(83,'Sebastián','Aguilar','Peña','2011-10-22','sebastian.aguilar@email.com',18,'12'),(84,'Mónica','Guerrero','Medina','1988-06-25','monica.guerrero@email.com',23,'15'),(85,'Emiliano','Guerrero','Medina','2016-01-10','emiliano.guerrero@email.com',23,'15'),(86,'Patricia','Santana','Luna','1986-10-05','patricia.santana@email.com',27,'15'),(87,'Camila','Santana','Luna','2013-07-12','camila.santana@email.com',27,'15'),(88,'Lorena','Navarro','Rojas','1990-02-18','lorena.navarro@email.com',33,'15'),(89,'Arturo','Campos','Rojas','1978-08-30','arturo.campos@email.com',34,'15'),(90,'Natalia','Campos','Rojas','2005-11-14','natalia.campos@email.com',34,'15'),(91,'Rodrigo','Campos','Rojas','2009-03-28','rodrigo.campos@email.com',34,'15'),(92,'Gabriel','Rivera','Montes','1983-05-16','gabriel.rivera@email.com',36,'15'),(93,'Valentina','Rivera','Montes','2018-12-02','valentina.rivera@email.com',36,'15'),(94,'Carmen','Soto','Rangel','1981-09-09','carmen.soto@email.com',39,'15'),(95,'Alejandra','Soto','Rangel','2007-06-15','alejandra.soto@email.com',39,'15'),(96,'Daniel','Soto','Rangel','2010-04-03','daniel.soto@email.com',39,'15'),(97,'Silvia','Fuentes','Guzmán','1989-01-27','silvia.fuentes@email.com',41,'15'),(98,'Maximiliano','Fuentes','Guzmán','2017-08-11','maximiliano.fuentes@email.com',41,'15'),(99,'Julieta','Ibarra','Lara','1985-12-19','julieta.ibarra@email.com',43,'15'),(100,'Lucas','Ibarra','Lara','2014-09-07','lucas.ibarra@email.com',43,'15'),(101,'Esperanza','Maldonado','Nava','1988-04-22','esperanza.maldonado@email.com',45,'15'),(102,'Regina','Maldonado','Nava','2011-11-05','regina.maldonado@email.com',45,'15'),(103,'Joaquín','Maldonado','Nava','2015-01-18','joaquin.maldonado@email.com',45,'15'),(104,'Graciela','Ojeda','Pacheco','1983-07-14','graciela.ojeda@email.com',47,'15'),(105,'Adrián','Ojeda','Pacheco','2012-02-29','adrian.ojeda@email.com',47,'15'),(106,'Miguel','Salinas','Rosales','1980-10-26','miguel.salinas@email.com',50,'15'),(107,'Fernanda','Salinas','Rosales','2006-05-13','fernanda.salinas@email.com',50,'15'),(108,'Nicolás','Salinas','Rosales','2009-12-08','nicolas.salinas@email.com',50,'15'),(109,'Rocío','Uribe','Vázquez','1986-06-01','rocio.uribe@email.com',53,'15'),(110,'Emilia','Uribe','Vázquez','2013-03-17','emilia.uribe@email.com',53,'15'),(111,'Claudia','Wolff','Ximénez','1980-08-24','claudia.wolff@email.com',55,'15'),(112,'Santiago','Wolff','Ximénez','2004-01-09','santiago.wolff@email.com',55,'15'),(113,'Mariana','Wolff','Ximénez','2008-09-21','mariana.wolff@email.com',55,'15'),(114,'Teresa','Yáñez','Zavala','1988-12-14','teresa.yanez@email.com',57,'15'),(115,'Francisco','Yáñez','Zavala','2016-07-26','francisco.yanez@email.com',57,'15'),(116,'Eduardo','Cárdenas','Bermúdez','1981-04-07','eduardo.cardenas@email.com',60,'15'),(117,'Paloma','Cárdenas','Bermúdez','2010-11-23','paloma.cardenas@email.com',60,'15'),(118,'Renato','Cárdenas','Bermúdez','2014-08-15','renato.cardenas@email.com',60,'15'),(119,'Leticia','Escalante','Figueroa','1987-02-11','leticia.escalante@email.com',63,'15'),(120,'Javier','Iglesias','Herrera','1985-05-28','javier.iglesias@email.com',66,'15'),(121,'Ana','Iglesias','Herrera','2019-03-14','ana.iglesias@email.com',66,'15'),(122,'Rosa','Iglesias','Jiménez','1982-09-19','rosa.iglesias@email.com',67,'15'),(123,'Pedro','Iglesias','Jiménez','2006-12-25','pedro.iglesias@email.com',67,'15'),(124,'Carmen','Iglesias','Jiménez','2009-04-11','carmen.iglesias@email.com',67,'15'),(125,'Luis','Iglesias','Jiménez','2012-08-30','luis.iglesias@email.com',67,'15'),(126,'María','Iglesias','Jiménez','2015-01-16','maria.iglesias@email.com',67,'15'),(127,'José','Iglesias','Jiménez','2018-06-03','jose.iglesias@email.com',67,'15'),(128,'Carlos','Moreno','López','1982-07-06','carlos.moreno@email.com',70,'15'),(129,'Fernanda','Moreno','López','2011-11-22','fernanda.moreno@email.com',70,'15'),(130,'Sebastián','Moreno','López','2014-03-18','sebastian.moreno@email.com',70,'15'),(131,'Valentina','Moreno','López','2017-09-05','valentina.moreno@email.com',70,'15'),(132,'Beatriz','Moreno','Núñez','1990-01-14','beatriz.moreno@email.com',71,'15'),(133,'Alejandro','Moreno','Núñez','2013-05-29','alejandro.moreno@email.com',71,'15'),(134,'Sofía','Moreno','Núñez','2016-10-12','sofia.moreno@email.com',71,'15'),(135,'Diego','Moreno','Núñez','2019-02-28','diego.moreno@email.com',71,'15'),(136,'Isabella','Moreno','Núñez','2021-07-15','isabella.moreno@email.com',71,'15'),(137,'Mariana','Oliva','Pérez','1988-03-22','mariana.oliva@email.com',73,'15'),(138,'Gabriel','Oliva','Pérez','2010-08-09','gabriel.oliva@email.com',73,'15'),(139,'Camila','Oliva','Pérez','2013-12-26','camila.oliva@email.com',73,'15'),(140,'Mateo','Oliva','Pérez','2016-05-13','mateo.oliva@email.com',73,'15'),(141,'Ricardo','Sandoval','Ramírez','1980-04-18','ricardo.sandoval@email.com',76,'15'),(142,'Natalia','Sandoval','Ramírez','2005-09-05','natalia.sandoval@email.com',76,'15'),(143,'Andrés','Sandoval','Ramírez','2008-01-22','andres.sandoval@email.com',76,'15'),(144,'Valeria','Sandoval','Ramírez','2011-06-09','valeria.sandoval@email.com',76,'15'),(145,'Emilio','Sandoval','Ramírez','2014-11-26','emilio.sandoval@email.com',76,'15'),(146,'Regina','Sandoval','Ramírez','2017-04-13','regina.sandoval@email.com',76,'15'),(147,'Carmen','Urquiza','Valdez','1985-08-17','carmen.urquiza@email.com',79,'15'),(148,'Rodrigo','Urquiza','Valdez','2009-02-04','rodrigo.urquiza@email.com',79,'15'),(149,'Jimena','Urquiza','Valdez','2012-07-21','jimena.urquiza@email.com',79,'15'),(150,'Santiago','Urquiza','Valdez','2015-12-08','santiago.urquiza@email.com',79,'15');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete_promocional`
--

LOCK TABLES `paquete_promocional` WRITE;
/*!40000 ALTER TABLE `paquete_promocional` DISABLE KEYS */;
INSERT INTO `paquete_promocional` VALUES (1,'Escapada Romántica de Invierno','Paquete especial para parejas que incluye cena romántica, spa para dos y botella de champagne de cortesía.','2024-12-01 00:00:00','2025-02-14 23:59:59','Activo',25.00,'Mínimo 2 noches de estancia. Válido solo para mayores de 18 años.','San Valentín','Romántico'),(2,'Vacaciones Familiares de Año Nuevo','Paquete familiar con actividades para niños, acceso completo al parque acuático y cenas buffet.','2024-12-20 00:00:00','2025-01-15 23:59:59','Activo',20.00,'Mínimo 1 adulto y 1 niño. Niños menores de 12 años gratis.','Año Nuevo','Familiar'),(3,'Aventura y Deportes Extremos','Incluye tours de aventura, equipo deportivo y clases de deportes acuáticos.','2024-11-01 00:00:00','2025-03-31 23:59:59','Activo',30.00,'Certificado médico requerido. Seguro de aventura incluido.','Deportes','Aventura'),(4,'Retiro de Bienestar y Spa','Paquete de relajación total con tratamientos de spa, yoga y alimentación saludable.','2024-10-15 00:00:00','2025-04-30 23:59:59','Activo',35.00,'Mínimo 3 noches. Consulta médica incluida.','Wellness','Bienestar'),(5,'Golf y Relax Premium','Acceso ilimitado al campo de golf, clases con profesional y relajación en el spa.','2024-11-15 00:00:00','2025-05-15 23:59:59','Activo',40.00,'Experiencia previa en golf recomendada. Equipo incluido.','Golf','Deportivo'),(6,'Gastronómico Internacional','Degustación de cocina internacional con chefs invitados y maridajes exclusivos.','2025-01-01 00:00:00','2025-06-30 23:59:59','Activo',15.00,'Restricciones alimentarias deben notificarse. Incluye cenas especiales.','Gastronomía','Culinario'),(7,'Business & Conference','Paquete corporativo con salas de juntas, equipo audiovisual y servicios de catering.','2024-09-01 00:00:00','2025-08-31 23:59:59','Activo',20.00,'Mínimo 10 personas. Reserva con 30 días de anticipación.','Corporativo','Negocios'),(8,'Luna de Miel Tropical','Paquete exclusivo para recién casados con suite nupcial y experiencias románticas.','2024-10-01 00:00:00','2025-09-30 23:59:59','Activo',45.00,'Certificado de matrimonio requerido. Máximo 6 meses después de la boda.','Luna de Miel','Romántico'),(9,'Cultural y Arqueológico','Tours a sitios históricos y museos con guías especializados y transporte incluido.','2024-11-01 00:00:00','2025-10-31 23:59:59','Activo',25.00,'Grupos de máximo 15 personas. Entradas a sitios incluidas.','Cultural','Educativo'),(10,'Todo Incluido Premium','Acceso completo a todos los servicios del hotel sin restricciones.','2024-12-01 00:00:00','2025-11-30 23:59:59','Activo',50.00,'Mínimo 5 noches. Bebidas premium incluidas.','Todo Incluido','Premium'),(11,'Verano Tropical 2023','Paquete de verano con actividades acuáticas y bebidas tropicales.','2023-06-01 00:00:00','2023-08-31 23:59:59','Inactivo',30.00,'Válido solo temporada de verano.','Verano','Estacional'),(12,'Navidad Mágica 2022','Celebración navideña con cena especial y espectáculos.','2022-12-15 00:00:00','2022-12-31 23:59:59','Inactivo',25.00,'Reservas hasta el 20 de diciembre.','Navidad','Festivo'),(13,'Spring Break 2023','Paquete para jóvenes con fiestas y actividades nocturnas.','2023-03-01 00:00:00','2023-04-30 23:59:59','Inactivo',20.00,'Solo mayores de 18 años.','Spring Break','Juvenil'),(14,'Día de las Madres 2023','Homenaje especial a las madres con spa y cena gourmet.','2023-05-01 00:00:00','2023-05-15 23:59:59','Inactivo',35.00,'Válido solo para madres.','Día de las Madres','Familiar'),(15,'Halloween Espectacular 2023','Fiesta de disfraces con espectáculos temáticos.','2023-10-25 00:00:00','2023-11-02 23:59:59','Inactivo',15.00,'Disfraz obligatorio.','Halloween','Temático'),(16,'San Valentín 2023','Romance y amor con cenas íntimas y suites especiales.','2023-02-10 00:00:00','2023-02-18 23:59:59','Inactivo',40.00,'Solo parejas.','San Valentín','Romántico'),(17,'Año Nuevo 2023','Celebración de fin de año con gala y fuegos artificiales.','2022-12-28 00:00:00','2023-01-02 23:59:59','Inactivo',50.00,'Evento de gala incluido.','Año Nuevo','Festivo'),(18,'Semana Santa 2023','Paquete familiar para vacaciones de Semana Santa.','2023-04-02 00:00:00','2023-04-16 23:59:59','Inactivo',25.00,'Actividades religiosas opcionales.','Semana Santa','Religioso'),(19,'Independencia Mexicana 2023','Celebración patria con comida típica y mariachis.','2023-09-10 00:00:00','2023-09-20 23:59:59','Inactivo',20.00,'Eventos culturales incluidos.','Independencia','Patriótico'),(20,'Festival de Jazz 2023','Fin de semana con música jazz en vivo.','2023-07-15 00:00:00','2023-07-30 23:59:59','Inactivo',30.00,'Conciertos nocturnos incluidos.','Jazz','Musical'),(21,'Invierno Acogedor 2022','Paquete de invierno con chimenea y chocolate caliente.','2022-12-01 00:00:00','2023-02-28 23:59:59','Inactivo',15.00,'Actividades de invierno.','Invierno','Estacional'),(22,'Carnaval Brasileño 2023','Fiesta de carnaval con samba y caipiriñas.','2023-02-18 00:00:00','2023-02-28 23:59:59','Inactivo',35.00,'Clases de samba incluidas.','Carnaval','Cultural'),(23,'Día del Padre 2023','Celebración especial para papás con actividades deportivas.','2023-06-15 00:00:00','2023-06-25 23:59:59','Inactivo',25.00,'Actividades padre-hijo.','Día del Padre','Familiar'),(24,'Festival Gastronómico 2023','Semana de cocina internacional con chefs famosos.','2023-08-01 00:00:00','2023-08-15 23:59:59','Inactivo',40.00,'Degustaciones especiales.','Gastronomía','Culinario'),(25,'Otoño Dorado 2023','Paquete de otoño con tours a la naturaleza.','2023-10-01 00:00:00','2023-11-30 23:59:59','Inactivo',20.00,'Tours ecológicos incluidos.','Otoño','Estacional'),(26,'Cinco de Mayo 2023','Celebración mexicana con mariachis y tequila.','2023-05-01 00:00:00','2023-05-10 23:59:59','Inactivo',30.00,'Folclore mexicano.','Cinco de Mayo','Patriótico'),(27,'Memorial Day 2023','Fin de semana largo con actividades especiales.','2023-05-26 00:00:00','2023-05-30 23:59:59','Inactivo',18.00,'Para huéspedes americanos.','Memorial Day','Estadounidense'),(28,'Día de Muertos 2023','Celebración tradicional mexicana con altares y ofrendas.','2023-10-31 00:00:00','2023-11-05 23:59:59','Inactivo',25.00,'Tradición mexicana.','Día de Muertos','Cultural'),(29,'Black Friday 2023','Ofertas especiales de reservas con descuentos únicos.','2023-11-24 00:00:00','2023-11-27 23:59:59','Inactivo',60.00,'Descuentos máximos del año.','Black Friday','Comercial'),(30,'Labor Day 2023','Fin de semana del día del trabajo con relajación.','2023-09-01 00:00:00','2023-09-05 23:59:59','Inactivo',22.00,'Descanso laboral.','Labor Day','Estadounidense'),(31,'Pascua 2023','Celebración de Pascua con actividades familiares.','2023-04-07 00:00:00','2023-04-12 23:59:59','Inactivo',28.00,'Búsqueda de huevos incluida.','Pascua','Religioso'),(32,'4 de Julio 2023','Independencia americana con barbacoa y fuegos artificiales.','2023-07-02 00:00:00','2023-07-06 23:59:59','Inactivo',35.00,'Celebración estadounidense.','4 de Julio','Patriótico'),(33,'Thanksgiving 2023','Acción de Gracias con cena tradicional americana.','2023-11-20 00:00:00','2023-11-26 23:59:59','Inactivo',45.00,'Cena de pavo incluida.','Thanksgiving','Estadounidense'),(34,'San Patricio 2023','Celebración irlandesa con cerveza verde y música celta.','2023-03-15 00:00:00','2023-03-20 23:59:59','Inactivo',20.00,'Música irlandesa en vivo.','San Patricio','Irlandés'),(35,'Equinoccio de Primavera 2023','Celebración del inicio de la primavera.','2023-03-18 00:00:00','2023-03-25 23:59:59','Inactivo',15.00,'Ceremonias ancestrales.','Equinoccio','Espiritual'),(36,'Festival de Cerveza 2023','Oktoberfest mexicano con cervezas artesanales.','2023-10-05 00:00:00','2023-10-15 23:59:59','Inactivo',30.00,'Degustación de cervezas.','Oktoberfest','Cultural'),(37,'Cyber Monday 2023','Ofertas digitales exclusivas para reservas online.','2023-11-27 00:00:00','2023-11-28 23:59:59','Inactivo',55.00,'Solo reservas online.','Cyber Monday','Digital'),(38,'Día de la Tierra 2023','Paquete ecológico con actividades sustentables.','2023-04-20 00:00:00','2023-04-25 23:59:59','Inactivo',20.00,'Actividades ecológicas.','Día de la Tierra','Ecológico'),(39,'Festival de Música 2023','Fin de semana con conciertos de diversos géneros.','2023-06-10 00:00:00','2023-06-20 23:59:59','Inactivo',40.00,'Múltiples artistas.','Música','Artístico'),(40,'Solsticio de Verano 2023','Celebración del día más largo del año.','2023-06-20 00:00:00','2023-06-25 23:59:59','Inactivo',25.00,'Rituales de verano.','Solsticio','Espiritual');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,15,'2024-03-15','2024-03-10','Completada','Online',56,8500.00,'2024-02-28 14:30:00',1,'RES-20240228-1534',3),(2,23,'2024-04-22','2024-04-18','Completada','Teléfono',61,12750.00,'2024-03-05 10:15:00',2,'RES-20240305-2847',1),(3,8,'2024-05-08','2024-05-03','Completada','Presencial',58,6200.00,'2024-04-20 16:45:00',1,'RES-20240420-9361',NULL),(4,41,'2024-06-12','2024-06-07','Completada','Online',62,15800.00,'2024-05-25 09:20:00',3,'RES-20240525-5729',7),(5,67,'2024-07-25','2024-07-20','Completada','Email',65,9400.00,'2024-07-02 13:10:00',1,'RES-20240702-8164',NULL),(6,34,'2024-08-18','2024-08-14','Completada','Teléfono',59,11250.00,'2024-07-30 11:35:00',2,'RES-20240730-4582',5),(7,72,'2024-09-30','2024-09-25','Completada','Online',63,7800.00,'2024-09-10 15:20:00',1,'RES-20240910-7923',NULL),(8,19,'2024-10-14','2024-10-09','Completada','Presencial',57,13600.00,'2024-09-28 08:45:00',2,'RES-20240928-3467',8),(9,56,'2024-11-28','2024-11-23','Completada','Online',64,10200.00,'2024-11-05 12:30:00',1,'RES-20241105-6841',4),(10,29,'2024-12-22','2024-12-18','Completada','Teléfono',60,16750.00,'2024-12-01 14:15:00',3,'RES-20241201-2195',2),(11,45,'2023-06-15','2023-06-10','Completada','Online',56,9800.00,'2023-05-28 16:20:00',2,'RES-20230528-4738',11),(12,63,'2023-07-30','2023-07-25','Completada','Email',61,7350.00,'2023-07-08 10:45:00',1,'RES-20230708-8592',13),(13,18,'2023-08-12','2023-08-08','Completada','Presencial',58,14200.00,'2023-07-22 13:30:00',2,'RES-20230722-1674',15),(14,76,'2023-09-25','2023-09-20','Completada','Teléfono',62,11850.00,'2023-09-05 09:15:00',2,'RES-20230905-5381',NULL),(15,32,'2023-10-18','2023-10-14','Completada','Online',65,8750.00,'2023-09-30 15:45:00',1,'RES-20230930-9246',19),(16,54,'2023-11-22','2023-11-17','Completada','Email',59,12400.00,'2023-11-02 11:20:00',2,'RES-20231102-7163',21),(17,71,'2023-12-30','2023-12-25','Completada','Presencial',63,15600.00,'2023-12-10 14:30:00',3,'RES-20231210-3827',17),(18,27,'2024-01-15','2024-01-10','Completada','Online',57,6900.00,'2023-12-28 16:10:00',1,'RES-20231228-8495',NULL),(19,49,'2024-02-28','2024-02-23','Completada','Teléfono',64,10800.00,'2024-02-08 12:45:00',2,'RES-20240208-2758',22),(20,38,'2024-03-18','2024-03-13','Completada','Email',60,13200.00,'2024-02-25 09:30:00',2,'RES-20240225-6419',NULL),(21,14,'2025-01-20','2025-01-15','Confirmada','Online',56,9500.00,'2024-12-30 10:15:00',1,'RES-20241230-4726',1),(22,52,'2025-02-14','2025-02-10','Confirmada','Teléfono',61,18500.00,'2025-01-25 14:20:00',3,'RES-20250125-8351',1),(23,39,'2025-03-08','2025-03-03','Confirmada','Presencial',58,7200.00,'2025-02-18 16:45:00',1,'RES-20250218-1937',NULL),(24,66,'2025-04-22','2025-04-17','Confirmada','Email',62,11800.00,'2025-04-02 11:30:00',2,'RES-20250402-5684',3),(25,21,'2025-05-15','2025-05-10','Confirmada','Online',65,14300.00,'2025-04-25 13:15:00',2,'RES-20250425-9172',4),(26,77,'2025-06-30','2025-06-25','Confirmada','Teléfono',59,8800.00,'2025-06-10 15:40:00',1,'RES-20250610-3568',NULL),(27,43,'2025-07-18','2025-07-13','Confirmada','Presencial',63,12600.00,'2025-06-28 09:25:00',2,'RES-20250628-7245',5),(28,58,'2025-08-25','2025-08-20','Confirmada','Online',57,16900.00,'2025-08-05 12:50:00',3,'RES-20250805-4813',6),(29,35,'2025-09-12','2025-09-07','Confirmada','Email',64,10500.00,'2025-08-22 14:35:00',1,'RES-20250822-8627',NULL),(30,69,'2025-10-28','2025-10-23','Confirmada','Teléfono',60,13800.00,'2025-10-08 16:20:00',2,'RES-20251008-2394',7),(31,25,'2024-02-15','2024-02-10','Cancelada','Online',56,7500.00,'2024-01-28 10:30:00',1,'RES-20240128-5671',NULL),(32,47,'2024-03-22','2024-03-18','Cancelada','Teléfono',61,12000.00,'2024-03-05 14:15:00',2,'RES-20240305-8924',NULL),(33,61,'2024-04-08','2024-04-03','Cancelada','Email',58,8400.00,'2024-03-20 16:45:00',1,'RES-20240320-3157',NULL),(34,33,'2024-05-25','2024-05-20','Cancelada','Presencial',62,15200.00,'2024-05-08 09:20:00',3,'RES-20240508-7486',NULL),(35,75,'2024-06-18','2024-06-13','Cancelada','Online',65,9800.00,'2024-05-30 13:10:00',1,'RES-20240530-1829',NULL),(36,28,'2024-07-30','2024-07-25','Cancelada','Teléfono',59,11400.00,'2024-07-12 15:35:00',2,'RES-20240712-6352',NULL),(37,64,'2024-08-15','2024-08-10','Cancelada','Email',63,7900.00,'2024-07-28 11:50:00',1,'RES-20240728-9675',NULL),(38,42,'2024-09-28','2024-09-23','Cancelada','Presencial',57,13500.00,'2024-09-10 14:25:00',2,'RES-20240910-4218',NULL),(39,73,'2024-10-12','2024-10-07','Cancelada','Online',64,8700.00,'2024-09-25 16:40:00',1,'RES-20240925-7863',NULL),(40,37,'2024-11-25','2024-11-20','Cancelada','Teléfono',60,12800.00,'2024-11-05 12:15:00',2,'RES-20241105-2541',NULL),(41,16,'2025-01-10','2025-01-05','Pendiente','Online',56,6800.00,'2024-12-20 10:45:00',1,'RES-20241220-8397',NULL),(42,59,'2025-02-28','2025-02-23','Pendiente','Email',61,14700.00,'2025-02-10 13:20:00',2,'RES-20250210-5164',NULL),(43,31,'2025-03-15','2025-03-10','Pendiente','Teléfono',58,9200.00,'2025-02-25 15:30:00',1,'RES-20250225-1725',NULL),(44,68,'2025-04-08','2025-04-03','Pendiente','Presencial',62,11600.00,'2025-03-20 09:40:00',2,'RES-20250320-6948',NULL),(45,44,'2025-05-22','2025-05-17','Pendiente','Online',65,8900.00,'2025-05-02 12:55:00',1,'RES-20250502-3271',NULL),(46,12,'2024-01-25','2024-01-20','Completada','Teléfono',59,10300.00,'2024-01-05 14:10:00',2,'RES-20240105-7594',18),(47,78,'2024-02-18','2024-02-13','Completada','Online',63,13900.00,'2024-01-30 16:25:00',2,'RES-20240130-4817',NULL),(48,50,'2024-03-30','2024-03-25','Completada','Email',57,7600.00,'2024-03-10 11:15:00',1,'RES-20240310-8362',NULL),(49,24,'2024-04-15','2024-04-10','Completada','Presencial',64,12100.00,'2024-03-28 13:40:00',2,'RES-20240328-2685',23),(50,65,'2024-05-28','2024-05-23','Completada','Teléfono',60,15400.00,'2024-05-08 15:50:00',3,'RES-20240508-9138',NULL),(51,40,'2024-06-22','2024-06-17','Completada','Online',56,8300.00,'2024-06-02 10:20:00',1,'RES-20240602-5461',25),(52,17,'2024-07-18','2024-07-13','Completada','Email',61,11700.00,'2024-06-28 12:35:00',2,'RES-20240628-1784',NULL),(53,74,'2024-08-30','2024-08-25','Completada','Presencial',58,9600.00,'2024-08-10 14:45:00',1,'RES-20240810-6927',24),(54,26,'2024-09-15','2024-09-10','Completada','Teléfono',62,13100.00,'2024-08-25 16:30:00',2,'RES-20240825-3254',NULL),(55,70,'2024-10-25','2024-10-20','Completada','Online',65,10700.00,'2024-10-05 09:10:00',2,'RES-20241005-7681',26),(56,48,'2024-11-18','2024-11-13','Completada','Email',59,8000.00,'2024-10-28 11:55:00',1,'RES-20241028-4315',NULL),(57,22,'2024-12-30','2024-12-25','Completada','Presencial',63,14800.00,'2024-12-10 13:25:00',3,'RES-20241210-8756',2),(58,79,'2025-01-22','2025-01-17','Confirmada','Teléfono',57,9100.00,'2025-01-02 15:40:00',1,'RES-20250102-2189',NULL),(59,36,'2025-02-25','2025-02-20','Confirmada','Online',64,12500.00,'2025-02-05 10:15:00',2,'RES-20250205-5832',3),(60,80,'2025-03-12','2025-03-07','Confirmada','Email',60,7400.00,'2025-02-20 12:30:00',1,'RES-20250220-9475',NULL),(61,13,'2025-04-28','2025-04-23','Confirmada','Presencial',56,16200.00,'2025-04-08 14:20:00',3,'RES-20250408-6158',4),(62,51,'2025-05-18','2025-05-13','Confirmada','Teléfono',61,8600.00,'2025-04-28 16:10:00',1,'RES-20250428-3721',NULL),(63,46,'2025-06-15','2025-06-10','Confirmada','Online',58,11900.00,'2025-05-25 09:45:00',2,'RES-20250525-7284',5),(64,11,'2025-07-30','2025-07-25','Confirmada','Email',62,13400.00,'2025-07-10 11:20:00',2,'RES-20250710-4547',NULL),(65,55,'2025-08-12','2025-08-07','Confirmada','Presencial',65,9700.00,'2025-07-22 13:35:00',1,'RES-20250722-8912',6),(66,30,'2025-09-28','2025-09-23','Confirmada','Teléfono',59,15100.00,'2025-09-08 15:50:00',3,'RES-20250908-2375',NULL),(67,62,'2025-10-15','2025-10-10','Confirmada','Online',63,10400.00,'2025-09-25 10:25:00',2,'RES-20250925-6738',7),(68,20,'2025-11-30','2025-11-25','Confirmada','Email',57,8500.00,'2025-11-10 12:40:00',1,'RES-20251110-1461',NULL),(69,76,'2025-12-22','2025-12-17','Confirmada','Presencial',64,17500.00,'2025-12-02 14:55:00',3,'RES-20251202-5924',10),(70,41,'2024-06-30','2024-06-25','Cancelada','Teléfono',60,9300.00,'2024-06-12 16:15:00',1,'RES-20240612-8287',NULL),(71,67,'2024-07-22','2024-07-17','Cancelada','Online',56,12700.00,'2024-07-05 11:30:00',2,'RES-20240705-3650',NULL),(72,33,'2024-08-18','2024-08-13','Cancelada','Email',61,7800.00,'2024-07-30 13:45:00',1,'RES-20240730-7913',NULL),(73,58,'2024-09-25','2024-09-20','Cancelada','Presencial',58,14600.00,'2024-09-08 15:20:00',2,'RES-20240908-4276',NULL),(74,25,'2024-10-18','2024-10-13','Cancelada','Teléfono',62,8900.00,'2024-09-28 10:35:00',1,'RES-20240928-8539',NULL),(75,72,'2024-11-30','2024-11-25','Cancelada','Online',65,11800.00,'2024-11-12 12:50:00',2,'RES-20241112-1862',NULL),(76,47,'2024-12-15','2024-12-10','Cancelada','Email',59,9500.00,'2024-11-25 14:25:00',1,'RES-20241125-6325',NULL),(77,14,'2025-01-28','2025-01-23','Cancelada','Presencial',63,13200.00,'2025-01-10 16:40:00',2,'RES-20250110-2748',NULL),(78,69,'2025-02-22','2025-02-17','Cancelada','Teléfono',57,10600.00,'2025-02-05 09:15:00',2,'RES-20250205-7471',NULL),(79,38,'2025-03-25','2025-03-20','Cancelada','Online',64,8700.00,'2025-03-08 11:25:00',1,'RES-20250308-3894',NULL),(80,15,'2023-12-25','2023-12-20','Completada','Email',60,16800.00,'2023-12-05 13:10:00',3,'RES-20231205-8157',12),(81,53,'2024-01-18','2024-01-13','Completada','Presencial',56,7200.00,'2023-12-28 15:30:00',1,'RES-20231228-4620',NULL),(82,29,'2024-02-25','2024-02-20','Completada','Teléfono',61,12300.00,'2024-02-05 10:45:00',2,'RES-20240205-9183',16),(83,75,'2024-03-28','2024-03-23','Completada','Online',58,8800.00,'2024-03-08 12:20:00',1,'RES-20240308-5746',NULL),(84,42,'2024-04-30','2024-04-25','Completada','Email',62,15900.00,'2024-04-10 14:35:00',3,'RES-20240410-2309',18),(85,18,'2024-05-15','2024-05-10','Completada','Presencial',65,9400.00,'2024-04-25 16:50:00',1,'RES-20240425-6872',NULL),(86,64,'2024-06-28','2024-06-23','Completada','Teléfono',59,11200.00,'2024-06-08 09:05:00',2,'RES-20240608-1435',NULL),(87,37,'2024-07-20','2024-07-15','Completada','Online',63,13700.00,'2024-06-30 11:40:00',2,'RES-20240630-7998',20),(88,73,'2024-08-22','2024-08-17','Completada','Email',57,8100.00,'2024-08-02 13:15:00',1,'RES-20240802-4561',NULL),(89,28,'2024-09-18','2024-09-13','Completada','Presencial',64,14500.00,'2024-08-28 15:25:00',2,'RES-20240828-8224',NULL),(90,71,'2024-10-30','2024-10-25','Completada','Teléfono',60,10800.00,'2024-10-10 10:40:00',2,'RES-20241010-3687',19),(91,45,'2024-11-12','2024-11-07','Completada','Online',56,7600.00,'2024-10-22 12:55:00',1,'RES-20241022-9350',NULL),(92,16,'2024-12-28','2024-12-23','Completada','Email',61,16400.00,'2024-12-08 14:30:00',3,'RES-20241208-5813',17),(93,60,'2025-01-25','2025-01-20','Confirmada','Presencial',58,9000.00,'2025-01-05 16:45:00',1,'RES-20250105-2476',NULL),(94,34,'2025-02-18','2025-02-13','Confirmada','Teléfono',62,12900.00,'2025-01-28 09:20:00',2,'RES-20250128-6139',NULL),(95,78,'2025-03-30','2025-03-25','Confirmada','Online',65,8400.00,'2025-03-10 11:35:00',1,'RES-20250310-9702',3),(96,23,'2025-04-12','2025-04-07','Confirmada','Email',59,15800.00,'2025-03-22 13:50:00',3,'RES-20250322-4265',4),(97,50,'2025-05-28','2025-05-23','Confirmada','Presencial',63,10200.00,'2025-05-08 15:05:00',2,'RES-20250508-7928',NULL),(98,27,'2025-06-22','2025-06-17','Confirmada','Teléfono',57,7900.00,'2025-06-02 10:15:00',1,'RES-20250602-3591',5),(99,66,'2025-07-25','2025-07-20','Confirmada','Online',64,13600.00,'2025-07-05 12:30:00',2,'RES-20250705-8154',NULL),(100,39,'2025-08-28','2025-08-23','Confirmada','Email',60,9800.00,'2025-08-08 14:45:00',1,'RES-20250808-4717',6),(101,77,'2025-09-30','2025-09-25','Confirmada','Presencial',56,11500.00,'2025-09-10 16:20:00',2,'RES-20250910-1280',NULL),(102,52,'2025-10-22','2025-10-17','Confirmada','Teléfono',61,8600.00,'2025-10-02 09:35:00',1,'RES-20251002-5643',7),(103,21,'2025-11-15','2025-11-10','Confirmada','Online',58,14900.00,'2025-10-25 11:50:00',2,'RES-20251025-9306',NULL),(104,65,'2025-12-30','2025-12-25','Confirmada','Email',62,17200.00,'2025-12-10 13:25:00',3,'RES-20251210-2869',10),(105,43,'2024-03-12','2024-03-07','Cancelada','Presencial',65,7300.00,'2024-02-22 15:40:00',1,'RES-20240222-6432',NULL),(106,59,'2024-04-25','2024-04-20','Cancelada','Teléfono',59,12600.00,'2024-04-08 10:55:00',2,'RES-20240408-9995',NULL),(107,35,'2024-05-30','2024-05-25','Cancelada','Online',63,8500.00,'2024-05-12 12:10:00',1,'RES-20240512-4558',NULL),(108,74,'2024-06-15','2024-06-10','Cancelada','Email',57,15300.00,'2024-05-28 14:25:00',3,'RES-20240528-8121',NULL),(109,48,'2024-07-28','2024-07-23','Cancelada','Presencial',64,9700.00,'2024-07-10 16:40:00',1,'RES-20240710-3684',NULL),(110,26,'2024-08-20','2024-08-15','Cancelada','Teléfono',60,11400.00,'2024-08-02 09:15:00',2,'RES-20240802-7247',NULL),(111,70,'2024-09-22','2024-09-17','Cancelada','Online',56,8200.00,'2024-09-05 11:30:00',1,'RES-20240905-1810',NULL),(112,44,'2024-10-28','2024-10-23','Cancelada','Email',61,13900.00,'2024-10-10 13:45:00',2,'RES-20241010-5373',NULL),(113,22,'2024-11-20','2024-11-15','Cancelada','Presencial',58,10300.00,'2024-11-02 15:20:00',2,'RES-20241102-9036',NULL),(114,68,'2024-12-18','2024-12-13','Cancelada','Teléfono',62,7800.00,'2024-11-28 10:35:00',1,'RES-20241128-4699',NULL),(115,31,'2025-01-15','2025-01-10','Pendiente','Online',65,14200.00,'2024-12-25 12:50:00',2,'RES-20241225-8262',NULL),(116,56,'2025-02-20','2025-02-15','Pendiente','Email',59,9100.00,'2025-01-30 14:05:00',1,'RES-20250130-3825',NULL),(117,12,'2025-03-22','2025-03-17','Pendiente','Presencial',63,11800.00,'2025-03-02 16:15:00',2,'RES-20250302-7488',NULL),(118,79,'2025-04-25','2025-04-20','Pendiente','Teléfono',57,8700.00,'2025-04-05 09:30:00',1,'RES-20250405-2151',NULL),(119,46,'2025-05-30','2025-05-25','Pendiente','Online',64,15600.00,'2025-05-10 11:45:00',3,'RES-20250510-6714',NULL),(120,17,'2025-06-28','2025-06-23','Pendiente','Email',60,10500.00,'2025-06-08 13:20:00',2,'RES-20250608-1377',NULL),(121,63,'2025-07-22','2025-07-17','Pendiente','Presencial',56,8000.00,'2025-07-02 15:35:00',1,'RES-20250702-5940',NULL),(122,40,'2025-08-30','2025-08-25','Pendiente','Teléfono',61,12400.00,'2025-08-10 10:50:00',2,'RES-20250810-9503',NULL),(123,80,'2025-09-15','2025-09-10','Pendiente','Online',58,9600.00,'2025-08-25 12:25:00',1,'RES-20250825-4166',NULL),(124,24,'2025-10-20','2025-10-15','Pendiente','Email',62,14100.00,'2025-09-30 14:40:00',2,'RES-20250930-7729',NULL),(125,55,'2025-11-25','2025-11-20','Pendiente','Presencial',65,8300.00,'2025-11-05 16:55:00',1,'RES-20251105-3292',NULL),(126,19,'2023-05-20','2023-05-15','Completada','Teléfono',59,10900.00,'2023-04-30 11:10:00',2,'RES-20230430-8755',14),(127,61,'2023-06-25','2023-06-20','Completada','Online',63,7500.00,'2023-06-05 13:25:00',1,'RES-20230605-4318',NULL),(128,36,'2023-07-28','2023-07-23','Completada','Email',57,13800.00,'2023-07-08 15:40:00',2,'RES-20230708-9881',NULL),(129,72,'2023-08-30','2023-08-25','Completada','Presencial',64,9200.00,'2023-08-10 10:15:00',1,'RES-20230810-5444',15),(130,47,'2023-09-22','2023-09-17','Completada','Teléfono',60,12200.00,'2023-09-02 12:30:00',2,'RES-20230902-7007',NULL),(131,33,'2023-10-25','2023-10-20','Completada','Online',56,8600.00,'2023-10-05 14:45:00',1,'RES-20231005-3570',19),(132,67,'2023-11-18','2023-11-13','Completada','Email',61,15700.00,'2023-10-28 16:20:00',3,'RES-20231028-8133',21),(133,25,'2023-12-22','2023-12-17','Completada','Presencial',58,11000.00,'2023-12-02 09:35:00',2,'RES-20231202-4696',17),(134,54,'2024-01-28','2024-01-23','Completada','Teléfono',62,7700.00,'2024-01-08 11:50:00',1,'RES-20240108-9259',NULL),(135,38,'2024-02-20','2024-02-15','Completada','Online',65,13500.00,'2024-01-30 13:15:00',2,'RES-20240130-5822',22),(136,76,'2024-03-25','2024-03-20','Completada','Email',59,9900.00,'2024-03-05 15:30:00',1,'RES-20240305-2385',NULL),(137,49,'2024-04-18','2024-04-13','Completada','Presencial',63,12800.00,'2024-03-28 10:45:00',2,'RES-20240328-6948',23),(138,28,'2024-05-30','2024-05-25','Completada','Teléfono',57,8400.00,'2024-05-10 12:20:00',1,'RES-20240510-1511',NULL),(139,65,'2024-06-20','2024-06-15','Completada','Online',64,14600.00,'2024-05-30 14:35:00',2,'RES-20240530-7974',25),(140,41,'2024-07-25','2024-07-20','Completada','Email',60,10700.00,'2024-07-05 16:50:00',2,'RES-20240705-4537',NULL),(141,73,'2024-08-28','2024-08-23','Completada','Presencial',56,8900.00,'2024-08-08 09:25:00',1,'RES-20240808-9100',24),(142,51,'2024-09-30','2024-09-25','Completada','Teléfono',61,13200.00,'2024-09-10 11:40:00',2,'RES-20240910-5663',NULL),(143,37,'2024-10-22','2024-10-17','Completada','Online',58,7800.00,'2024-10-02 13:55:00',1,'RES-20241002-2226',26),(144,62,'2024-11-28','2024-11-23','Completada','Email',62,15400.00,'2024-11-08 15:10:00',3,'RES-20241108-6789',NULL),(145,20,'2024-12-20','2024-12-15','Completada','Presencial',65,11300.00,'2024-11-30 10:25:00',2,'RES-20241130-3352',2),(146,71,'2025-01-18','2025-01-13','Confirmada','Teléfono',59,9500.00,'2024-12-28 12:40:00',1,'RES-20241228-7915',NULL),(147,44,'2025-02-22','2025-02-17','Confirmada','Online',63,12700.00,'2025-02-02 14:55:00',2,'RES-20250202-4478',NULL),(148,18,'2025-03-28','2025-03-23','Confirmada','Email',57,8100.00,'2025-03-08 16:30:00',1,'RES-20250308-8041',3),(149,58,'2025-04-30','2025-04-25','Confirmada','Presencial',64,14800.00,'2025-04-10 09:45:00',3,'RES-20250410-1604',4),(150,35,'2025-05-25','2025-05-20','Confirmada','Teléfono',60,10100.00,'2025-05-05 11:20:00',2,'RES-20250505-5167',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Masaje Relajante','Masaje corporal completo con aceites aromáticos y técnicas de relajación profunda','Interno',850.00,'Activo','09:00:00','21:00:00',8,5,NULL,NULL,2,NULL,NULL,'Spa del Hotel'),(2,'Tratamiento Facial Anti-Edad','Limpieza facial profunda con productos premium y técnicas anti-envejecimiento','Interno',650.00,'Activo','09:00:00','19:00:00',6,5,NULL,NULL,1,NULL,NULL,'Spa del Hotel'),(3,'Sesión de Yoga','Clases de yoga grupales con instructor certificado en diferentes niveles','Interno',200.00,'Activo','06:30:00','20:00:00',15,5,NULL,NULL,1,NULL,NULL,'Área de Bienestar'),(4,'Entrenamiento Personal','Sesión individual con entrenador personal certificado','Interno',450.00,'Activo','06:00:00','22:00:00',1,6,NULL,NULL,1,NULL,NULL,'Gimnasio del Hotel'),(5,'Hidromasaje','Terapia de relajación en jacuzzi con jets de agua y aromaterapia','Interno',380.00,'Activo','09:00:00','21:00:00',4,5,NULL,NULL,1,NULL,NULL,'Spa del Hotel'),(6,'Aqua Aeróbicos','Clases de ejercicio en piscina con instructor especializado','Interno',150.00,'Activo','08:00:00','18:00:00',12,6,NULL,NULL,1,NULL,NULL,'Área de Piscina'),(7,'Cena Gourmet','Menú degustación de 5 tiempos con maridaje de vinos','Interno',1200.00,'Activo','18:00:00','23:00:00',50,7,NULL,NULL,6,NULL,NULL,'Restaurant Principal'),(8,'Desayuno Buffet Internacional','Buffet completo con opciones internacionales y locales','Interno',380.00,'Activo','06:30:00','11:00:00',80,7,NULL,NULL,4,NULL,NULL,'Restaurant Principal'),(9,'Cóctel Premium en Bar','Cócteles artesanales preparados por bartender especializado','Interno',180.00,'Activo','12:00:00','02:00:00',25,9,NULL,NULL,2,NULL,NULL,'Bar Principal'),(10,'Noche en Discoteca','Acceso VIP a discoteca con bebidas premium incluidas','Interno',550.00,'Activo','21:00:00','04:00:00',40,10,NULL,NULL,3,NULL,NULL,'Discoteca del Hotel'),(11,'Clase de Golf','Lección de golf con instructor profesional PGA','Interno',750.00,'Activo','06:00:00','18:00:00',4,11,NULL,NULL,1,NULL,NULL,'Campo de Golf'),(12,'Renta de Equipo Golf','Alquiler completo de palos, carrito y pelotas de golf','Interno',320.00,'Activo','06:00:00','19:00:00',10,11,NULL,NULL,1,NULL,NULL,'Campo de Golf'),(13,'Servicio a Cuarto 24hrs','Entrega de alimentos y bebidas directamente a la habitación','Interno',150.00,'Activo','00:00:00','23:59:59',NULL,12,NULL,NULL,2,NULL,NULL,'Todo el Hotel'),(14,'Mesa Privada Casino','Acceso a mesa privada de blackjack o póker con dealer exclusivo','Interno',2500.00,'Activo','14:00:00','04:00:00',6,13,NULL,NULL,3,NULL,NULL,'Casino del Hotel'),(15,'Tour Chichén Itzá','Excursión guiada a zona arqueológica con transporte y almuerzo','Externo',1850.00,'Activo','07:00:00','19:00:00',25,18,250.00,480,1,'Operadora Mayaland','Chichén Itzá, Yucatán','Sitio Arqueológico'),(16,'Tour Xcaret','Día completo en parque eco-arqueológico con transporte incluido','Externo',1650.00,'Activo','08:00:00','22:00:00',30,15,200.00,360,1,'Grupo Xcaret','Xcaret, Quintana Roo','Parque Temático'),(17,'Snorkel en Cozumel','Excursión de snorkel con equipo incluido y almuerzo en la playa','Externo',1280.00,'Activo','07:30:00','16:30:00',20,19,180.00,540,1,'Cozumel Tours','Cozumel, Quintana Roo','Arrecife de Coral'),(18,'Cenotes Dos Ojos','Tour a cenotes con equipo de snorkel y guía especializado','Externo',950.00,'Activo','09:00:00','15:00:00',15,18,120.00,240,1,'Cenote Adventures','Tulum, Quintana Roo','Cenotes Naturales'),(19,'Traslado Aeropuerto','Servicio de transporte privado desde/hacia aeropuerto de Cancún','Externo',450.00,'Activo','04:00:00','00:00:00',4,19,50.00,75,1,'Luxury Transport','Aeropuerto CUN','Transporte Terrestre'),(20,'City Tour Cancún','Recorrido por zona hotelera y centro de Cancún con guía bilingüe','Externo',680.00,'Activo','09:00:00','14:00:00',12,16,80.00,300,1,'Cancún City Tours','Cancún, Quintana Roo','Tour Urbano');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_bono`
--

LOCK TABLES `tipo_de_bono` WRITE;
/*!40000 ALTER TABLE `tipo_de_bono` DISABLE KEYS */;
INSERT INTO `tipo_de_bono` VALUES (1,'Bono por Excelencia en el Servicio al Cliente',365,'Calificación promedio de satisfacción del cliente superior a 4.5/5.0 durante 6 meses consecutivos. Aplicable a personal de contacto directo con huéspedes.','2024-01-01 00:00:00','2024-12-31 23:59:59'),(2,'Bono por Trabajo en Equipo y Colaboración',150,'Participar activamente en proyectos interdepartamentales. Recibir reconocimiento de compañeros por colaboración excepcional. Contribuir a la resolución exitosa de problemas complejos del hotel.','2024-01-01 00:00:00','2024-12-31 23:59:59'),(3,'Bono por Ventas y Upselling',60,'Superar las metas de ventas mensuales en servicios adicionales. Lograr un incremento del 15% en ingresos por upselling de habitaciones y servicios. Aplicable a recepción, restaurant y áreas comerciales.','2024-01-01 00:00:00','2024-12-31 23:59:59'),(4,'Bono por Capacitación y Desarrollo Profesional',90,'Completar exitosamente programas de capacitación certificados. Obtener certificaciones profesionales relevantes al puesto. Mentorear a nuevos empleados.','2024-01-01 00:00:00','2024-12-31 23:59:59');
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
INSERT INTO `usuario_empleado` VALUES (1,'cvega','D1r3ct0r#2025',1),(2,'mortiz','F1n4nc3$Mgmt',1),(3,'jtorres','Op3r4t10n$K3y',1),(4,'lramirez','HR_M4st3r!2024',1),(5,'rsanchez','C0mm3rc14l@Boss',1),(6,'pgutierrez','G3n3r4l&M4n4g3r',1),(7,'flopez','SubG3r3nt3#2025',1),(8,'amoreno','Ass1st_G3r3nc14',1),(9,'rdiaz','M4nt3n1m13nt0!',2),(10,'vcruz','M4nt_Sup3rv1s0r',3),(11,'greyes','N1ght_M4nt3n4nc3',3),(12,'sflores','R3c3pc10n$Ch3f',2),(13,'dgarcia','R3c3p_Ev3n1ng$',3),(14,'lmartinez','R3c3p_N1ght@S3rv',3),(15,'mhernandez','T3ch_L34d3r#IT',2),(16,'aperez','Syst3ms_An4lyst!',3),(17,'cnunez','Sp4_M4n4g3r@2024',2),(18,'echavez','Sp4_Sup3rv1s0r#',3),(19,'baguilar','W3lln3ss_T34m@',3),(20,'rtorres','Gym_Boss!F1tn3ss',2),(21,'mvargas','F1tn3ss_Sup3rv!',3),(22,'hgomez','Ch3f_Exe5ut1v0',2),(23,'cmendoza','S0us_Ch3f$K1tch3n',3),(24,'jluna','M41tr3_S3rv1c3#',3),(25,'imorales','Ev3nt0s&S3rv1c3',2),(26,'gramos','Ev3nt_C00rd1n4t0r',3),(27,'ajuarez','B4r_Qu33n#Dr1nks',2),(28,'rnavarro','B4rm4n_Pr1nc1p4l',3),(29,'vcampos','D1sc0_N1ght!Fun',2),(30,'omedina','D1sc0_Sup3rv1s0r',3),(31,'fcastro','G0lf_Pr0$M4st3r',2),(32,'ddelgado','G0lf_C00rd1n4t0r',3),(33,'mguzman','R00m_S3rv1c3$AM',3),(34,'erios','R00m_S3rv1c3$PM',3),(35,'apena','C4s1n0_K1ng@L4s',2),(36,'snava','C4s1n0_N1ght@Sup',3),(37,'jrobles','S3cur1ty_Ch13f!',2),(38,'tvargas','S3cur1ty_N1ght!',3),(39,'alara','P4rks&T0urs#Fun',2),(40,'jvega','Mus3um_Gu1d3$',2),(41,'rsoto','F3st1v4l_C00rd!',2),(42,'nmendez','H1st0ry_T0urs@',2),(43,'mfuentes','Tr4nsp0rt_M4st3r',2),(44,'pjimenez','T3cn1c0_M4nt_01',4),(45,'jramirez','T3cn1c0_M4nt_02',4),(46,'mortega','T3cn1c0_M4nt_03',4),(47,'acastro','T3cn1c0_M4nt_04',4),(48,'jtorres2','T3cn1c0_M4nt_05',4),(49,'lnunez','T3cn1c0_M4nt_06',4),(50,'rdiaz2','T3cn1c0_M4nt_07',4),(51,'areyes','T3cn1c0_M4nt_08',4),(52,'sgomez','T3cn1c0_M4nt_09',4),(53,'fmorales','T3cn1c0_M4nt_10',4),(54,'crojas','T3cn1c0_M4nt_11',4),(55,'mmendoza','J4rd1n3r0_Pr0$',4),(56,'agarcia','R3c3p_D4y$01',5),(57,'lmartinez2','R3c3p_D4y$02',5),(58,'shernandez','R3c3p_D4y$03',5),(59,'rperez','R3c3p_D4y$04',5),(60,'dgonzalez','R3c3p_D4y$05',5),(61,'msanchez','R3c3p_Ev3$01',5),(62,'srodriguez','R3c3p_Ev3$02',5),(63,'plopez','R3c3p_Ev3$03',5),(64,'lflores','R3c3p_Ev3$04',5),(65,'avargas','R3c3p_Ev3$05',5),(66,'gluna','R3c3p_N1t3$01',5),(67,'rcruz','R3c3p_N1t3$02',5),(68,'mvargas2','R3c3p_N1t3$03',5),(69,'erivas','R3c3p_N1t3$04',5),(70,'aortega','B0t0n3s_D4y$',5),(71,'hjimenez','T3ch_Syst3ms#01',4),(72,'cnavarro','T3ch_Supp0rt@02',4),(73,'ltorres','M4s4j1st4_AM$01',4),(74,'cmedina','M4s4j1st4_AM$02',4),(75,'mcastillo','Est3t1c1st4_AM#',4),(76,'arangel','Est3t1c1st4_PM#',4),(77,'drivera','M4s4j1st4_PM$01',4),(78,'vguzman','M4s4j1st4_PM$02',4),(79,'nrios','Est3t1c1st4_SP3c',4),(80,'cparedes','R3c3p_Sp4@D3sk',4),(81,'hleon','Tr41n3r_P3rs0n4l1',4),(82,'rcontreras','Tr41n3r_P3rs0n4l2',4),(83,'jalvarado','C0c1n3r0_AM$01',4),(84,'gsantos','C0c1n3r0_AM$02',4),(85,'mpacheco','C0c1n3r4_AM$03',4),(86,'frivera','C0c1n3r0_AM$04',4),(87,'amoreno2','C0c1n3r0_PM$01',4),(88,'sgonzalez','C0c1n3r4_PM$02',4),(89,'dramirez','C0c1n3r0_PM$03',4),(90,'cmartinez','C0c1n3r4_PM$04',4),(91,'asanchez','Ayud4nt3_C0c1n4_1',4),(92,'mvargas3','Ayud4nt3_C0c1n4_2',4),(93,'dflores','Ayud4nt3_C0c1n4_3',4),(94,'itorres','Ayud4nt3_C0c1n4_4',4),(95,'pluna','Ayud4nt3_C0c1n4_5',4),(96,'acruz','Ayud4nt3_C0c1n4_6',4),(97,'fmendoza','Ayud4nt3_C0c1n4_7',4),(98,'grivas','Ayud4nt3_C0c1n4_8',4),(99,'emorales','L4v4pl4t0s_AM$',4),(100,'vortiz','L4v4pl4t0s_PM$',4),(101,'rcastro','L4v4pl4t0s_N1ght',4),(102,'arojas','L4v4pl4t0s_W33k',4),(103,'cperez','M3s3r0_AM$01',4),(104,'lgonzalez','M3s3r4_AM$02',4),(105,'jmartinez','M3s3r0_AM$03',4),(106,'asanchez2','M3s3r4_AM$04',4),(107,'jhernandez','M3s3r0_AM$05',4),(108,'mrodriguez','M3s3r4_AM$06',4),(109,'pflores','M3s3r0_AM$07',4),(110,'lvargas','M3s3r4_AM$08',4),(111,'dtorres','M3s3r0_PM$01',4),(112,'sluna','M3s3r4_PM$02',4),(113,'mcruz','M3s3r0_PM$03',4),(114,'cdiaz','M3s3r4_PM$04',4),(115,'amendoza','M3s3r0_PM$05',4),(116,'vrivas','M3s3r4_PM$06',4),(117,'rmorales2','M3s3r0_PM$07',4),(118,'dortiz','M3s3r4_PM$08',4),(119,'jcastro','C4p1t4n_M3s3r0s1',3),(120,'arojas2','C4p1t4n_M3s3r0s2',3),(121,'gperez','S0mm3l13r_Pr0$',3),(122,'mgonzalez','H0st3ss_AM$W3lc',4),(123,'fmartinez','H0st3ss_PM$Gr33t',4),(124,'rsanchez2','B4r1st4_C0ff33#',4),(125,'hhernandez','B4r1st4_Sp3c14l$',4),(126,'nrodriguez','R00m_S3rv_AM$01',4),(127,'sflores2','R00m_S3rv_AM$02',4),(128,'avargas2','R00m_S3rv_AM$03',4),(129,'dtorres2','R00m_S3rv_PM$01',4),(130,'pluna2','R00m_S3rv_PM$02',4),(131,'ocruz','R00m_S3rv_PM$03',4),(132,'mdiaz2','R00m_S3rv_PM$04',4),(133,'lmendoza2','Aux_C0c1n4_RS$1',4),(134,'crivas','Aux_C0c1n4_RS$2',4),(135,'gmorales2','Aux_C0c1n4_RS$3',4),(136,'cparedes2','Ev3nt_Org4n1z3r1',4),(137,'jcortes','Ev3nt_Org4n1z3r2',4),(138,'asantos','Ev3nt_Ass1st4nt1',4),(139,'rpacheco','Ev3nt_Ass1st4nt2',4),(140,'aramos','B4rt3nd3r_PM$01',4),(141,'drivera2','B4rt3nd3r_N1ght$',4),(142,'mfuentes2','DJ_Pr1nc1p4l$B34t',4),(143,'cleon','DJ_Ass1st4nt$M1x',4),(144,'lcampos','B4rt3nd3r_D1sc01',4),(145,'mdelgado','B4rt3nd3r_D1sc02',4),(146,'lmontes','B4rt3nd3r_D1sc03',4),(147,'destrada','M3s3r0_VIP$01',4),(148,'mrangel','M3s3r4_VIP$02',4),(149,'jsantos','M3s3r0_VIP$03',4),(150,'vcortes','M3s3r4_VIP$04',4),(151,'rramos','M3s3r0_D1sc0$01',4),(152,'mrivera','M3s3r4_D1sc0$02',4),(153,'rpacheco2','M3s3r0_D1sc0$03',4),(154,'gsoto','M3s3r4_D1sc0$04',4),(155,'ejimenez','S3gur1d4d_D1sc0$',4),(156,'clopez','H0st3ss_D1sc0$N1t',4),(157,'rmoreno','Pr0f3s0r_G0lf$01',4),(158,'sortiz','Pr0f3s0r_G0lf$02',4),(159,'mcastro2','C4dd13_G0lf$01',4),(160,'irojas','C4dd13_G0lf$02',4),(161,'jperez2','C4dd13_G0lf$03',4),(162,'mgonzalez2','C4dd13_G0lf$04',4),(163,'fmartinez2','M4nt_C4mp0$01',4),(164,'lsanchez','M4nt_C4mp0$02',4),(165,'hhernandez2','M4nt_C4mp0$03',4),(166,'arodriguez','R3c3p_G0lf$D3sk',4),(167,'rflores','Crup13r_PM$01',4),(168,'cvargas2','Crup13r_PM$02',4),(169,'mtorres2','Crup13r_PM$03',4),(170,'sluna2','Crup13r_PM$04',4),(171,'acruz2','Crup13r_PM$05',4),(172,'vdiaz','Crup13r_N1ght$01',4),(173,'rmendoza2','Crup13r_N1ght$02',4),(174,'lrivas','Crup13r_N1ght$03',4),(175,'cmorales','Crup13r_N1ght$04',4),(176,'mortiz2','Crup13r_N1ght$05',4),(177,'jcastro2','J3f3_M3s4_Rul3t4',3),(178,'arojas3','J3f3_M3s4_Bl4ckJ',3),(179,'mperez','J3f3_M3s4_P0k3r$',3),(180,'lgonzalez2','J3f3_M3s4_B4c4r4',3),(181,'dmartinez','C4j3r0_C4s1n0$01',4),(182,'ssanchez','C4j3r0_C4s1n0$02',4),(183,'jhernandez2','C4j3r0_C4s1n0$03',4),(184,'prodriguez','C4j3r0_C4s1n0$04',4),(185,'aflores','S3g_C4s1n0$PM',4),(186,'mvargas4','S3g_C4s1n0$PM2',4),(187,'ftorres','S3g_C4s1n0$N1ght',4),(188,'cluna','S3g_C4s1n0$N1ght2',4),(189,'acruz3','T3cn1c0_M4qu1n4s',4),(190,'gsanchez2','Gu4rd14_S3g$D4y6',4),(191,'rhernandez2','Gu4rd14_S3g$D4y7',4),(192,'drodriguez2','Gu4rd14_S3g$D4y8',4),(193,'cflores2','Gu4rd14_S3g$D4y9',4),(194,'rvargas2','Gu4rd14_S3g$D4y10',4),(195,'ltorres2','Gu4rd14_S3g$Ev36',4),(196,'cluna2','Gu4rd14_S3g$Ev37',4),(197,'acruz6','Gu4rd14_S3g$Ev38',4),(198,'mdiaz4','Gu4rd14_S3g$Ev39',4),(199,'smendoza2','Gu4rd14_S3g$Ev40',4),(200,'jrivas2','Gu4rd14_S3g$N1t6',4),(201,'pmorales2','Gu4rd14_S3g$N1t7',4),(202,'aortiz2','Gu4rd14_S3g$N1t8',4),(203,'vcastro2','Gu4rd14_S3g$N1t9',4),(204,'rrojas2','Gu4rd14_S3g$N1t10',4),(205,'mperez3','Op3r4d0r_CCTV$AM',3),(206,'dgonzalez3','Op3r4d0r_CCTV$PM',3),(207,'smartinez3','Op3r4d0r_CCTV$N1t',3),(208,'ctorres','Gu14_T0urs_P4rks',4),(209,'esanchez','Gu14_Cultur4l$',4),(210,'mhernandez2','C00rd_F3st1v4l1',4),(211,'crodriguez','C00rd_F3st1v4l2',4),(212,'lflores2','Gu14_H1st0r1c0$',4),(213,'mvargas5','Ch0f3r_Ej3cut1v0',4),(214,'jtorres3','Ch0f3r_AM$01',4),(215,'aluna','Ch0f3r_AM$02',4),(216,'mcruz2','Ch0f3r_AM$03',4),(217,'cdiaz2','Ch0f3r_AM$04',4),(218,'amendoza2','Ch0f3r_PM$01',4),(219,'lrivas2','Ch0f3r_PM$02',4),(220,'rmorales3','Ch0f3r_PM$03',4),(221,'sortiz2','Ch0f3r_PM$04',4),(222,'hcastro','Ch0f3r_N1ght$01',4),(223,'vrojas','Ch0f3r_N1ght$02',4),(224,'dperez','C00rd_Tr4sl4d0s$',3),(225,'agonzalez','L4v4nd3r14_Ch13f',3),(226,'lmartinez3','HR_Ass1st4nt@2024',3),(227,'jsanchez2','C0nt4d0r_G3n3r4l',3),(228,'mhernandez3','Ass1st_C0nt4b1l1d',4),(229,'prodriguez2','C0mpr4d0r_G3n3r4l',3),(230,'lflores3','Alm4c3n_Ch13f$',3),(231,'jvargas','L1mp13z4_Sup3rv!',3),(232,'storres','L1mp13z4_AM$01',4),(233,'rluna','L1mp13z4_PM$02',4),(234,'acruz5','L1mp13z4_N1ght$',4),(235,'mdiaz3','J4rd1n3r0_Gr0unds',4),(236,'mmendoza2','R3c3p_RH$D3sk',4);
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

-- Dump completed on 2025-05-22 23:23:37
