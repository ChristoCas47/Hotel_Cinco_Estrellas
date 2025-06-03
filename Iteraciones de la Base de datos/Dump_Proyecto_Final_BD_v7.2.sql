CREATE DATABASE  IF NOT EXISTS `hotel_mafia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_mafia`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_mafia
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_habitacion`
--

LOCK TABLES `bitacora_habitacion` WRITE;
/*!40000 ALTER TABLE `bitacora_habitacion` DISABLE KEYS */;
INSERT INTO `bitacora_habitacion` VALUES (1,101,'2024-03-10 15:00:00','2024-03-15 12:00:00',56,'2024-03-10 14:45:00','Check-in procesado','Ocupado'),(2,101,'2024-03-15 12:00:00',NULL,232,'2024-03-15 12:30:00','Check-out completado, limpieza iniciada','Mantenimiento'),(3,101,NULL,NULL,232,'2024-03-15 14:00:00','Limpieza completada','Disponible'),(4,102,'2024-04-18 15:00:00','2024-04-22 12:00:00',61,'2024-04-18 14:30:00','Check-in realizado','Ocupado'),(5,102,'2024-04-22 12:00:00',NULL,233,'2024-04-22 12:15:00','Huésped realizó check-out','Mantenimiento'),(6,102,NULL,NULL,233,'2024-04-22 13:45:00','Habitación lista para nuevo huésped','Disponible'),(7,103,'2024-04-18 15:00:00','2024-04-22 12:00:00',58,'2024-04-18 15:15:00','Registro de entrada','Ocupado'),(8,103,'2024-04-22 12:00:00',NULL,234,'2024-04-22 13:00:00','Limpieza post check-out','Disponible'),(9,104,'2024-05-03 15:00:00','2024-05-08 12:00:00',62,'2024-05-03 14:45:00','Entrada procesada','Ocupado'),(10,104,'2024-05-08 12:00:00',NULL,232,'2024-05-08 12:20:00','Salida registrada','Mantenimiento'),(11,104,NULL,NULL,232,'2024-05-08 14:30:00','Mantenimiento completado','Disponible'),(12,105,'2024-06-07 15:00:00','2024-06-12 12:00:00',65,'2024-06-07 15:30:00','Check-in VIP realizado','Ocupado'),(13,105,'2024-06-12 12:00:00',NULL,233,'2024-06-12 13:15:00','Limpieza de suite superior','Disponible'),(14,106,'2024-06-07 15:00:00','2024-06-12 12:00:00',59,'2024-06-07 15:45:00','Huésped registrado','Ocupado'),(15,106,'2024-06-12 12:00:00',NULL,234,'2024-06-12 14:00:00','Habitación preparada','Disponible'),(16,107,'2024-06-07 15:00:00','2024-06-12 12:00:00',63,'2024-06-07 16:00:00','Entrada confirmada','Ocupado'),(17,107,'2024-06-12 12:00:00',NULL,232,'2024-06-12 14:45:00','Limpieza realizada','Disponible'),(18,108,'2024-07-20 15:00:00','2024-07-25 12:00:00',57,'2024-07-20 15:15:00','Check-in completado','Ocupado'),(19,108,'2024-07-25 12:00:00',NULL,233,'2024-07-25 13:30:00','Habitación lista','Disponible'),(20,109,'2024-08-14 15:00:00','2024-08-18 12:00:00',64,'2024-08-14 15:30:00','Registro exitoso','Ocupado'),(21,109,'2024-08-18 12:00:00',NULL,234,'2024-08-18 14:15:00','Limpieza terminada','Disponible'),(22,110,'2024-08-14 15:00:00','2024-08-18 12:00:00',60,'2024-08-14 16:00:00','Entrada registrada','Ocupado'),(23,110,'2024-08-18 12:00:00',NULL,232,'2024-08-18 13:45:00','Habitación disponible','Disponible'),(24,201,'2024-09-25 15:00:00','2024-09-30 12:00:00',56,'2024-09-25 14:30:00','Check-in procesado','Ocupado'),(25,201,'2024-09-30 12:00:00',NULL,9,'2024-09-30 10:00:00','Problema de aire acondicionado reportado','Fuera de servicio'),(26,201,NULL,NULL,44,'2024-09-30 16:30:00','Reparación de A/C completada','Disponible'),(27,202,'2024-10-09 15:00:00','2024-10-14 12:00:00',61,'2024-10-09 15:45:00','Huésped alojado','Ocupado'),(28,202,'2024-10-14 12:00:00',NULL,233,'2024-10-14 14:20:00','Limpieza finalizada','Disponible'),(29,203,'2024-10-09 15:00:00','2024-10-14 12:00:00',58,'2024-10-09 16:15:00','Entrada confirmada','Ocupado'),(30,203,'2024-10-14 12:00:00',NULL,234,'2024-10-14 13:50:00','Habitación preparada','Disponible'),(31,204,'2024-11-23 15:00:00','2024-11-28 12:00:00',62,'2024-11-23 15:30:00','Check-in realizado','Ocupado'),(32,204,'2024-11-28 12:00:00',NULL,232,'2024-11-28 14:10:00','Limpieza completada','Disponible'),(33,205,'2024-12-18 15:00:00','2024-12-22 12:00:00',65,'2024-12-18 16:00:00','Suite junior ocupada','Ocupado'),(34,205,'2024-12-22 12:00:00',NULL,233,'2024-12-22 15:30:00','Suite disponible','Disponible'),(35,206,'2024-12-18 15:00:00','2024-12-22 12:00:00',59,'2024-12-18 16:30:00','Suite ejecutiva ocupada','Ocupado'),(36,206,'2024-12-22 12:00:00',NULL,234,'2024-12-22 16:00:00','Suite lista','Disponible'),(37,207,'2024-12-18 15:00:00','2024-12-22 12:00:00',63,'2024-12-18 17:00:00','Suite presidencial ocupada','Ocupado'),(38,207,'2024-12-22 12:00:00',NULL,232,'2024-12-22 16:45:00','Suite presidencial disponible','Disponible'),(39,208,'2023-06-10 15:00:00','2023-06-15 12:00:00',57,'2023-06-10 15:15:00','Entrada registrada','Ocupado'),(40,208,'2023-06-15 12:00:00',NULL,233,'2023-06-15 13:30:00','Habitación lista','Disponible'),(41,209,'2023-06-10 15:00:00','2023-06-15 12:00:00',64,'2023-06-10 15:45:00','Check-in completado','Ocupado'),(42,209,'2023-06-15 12:00:00',NULL,234,'2023-06-15 14:15:00','Limpieza terminada','Disponible'),(43,210,'2023-07-25 15:00:00','2023-07-30 12:00:00',60,'2023-07-25 16:00:00','Huésped alojado','Ocupado'),(44,210,'2023-07-30 12:00:00',NULL,232,'2023-07-30 14:45:00','Habitación disponible','Disponible'),(45,301,'2023-08-08 15:00:00','2023-08-12 12:00:00',56,'2023-08-08 15:30:00','Entrada procesada','Ocupado'),(46,301,'2023-08-12 12:00:00',NULL,9,'2023-08-12 10:30:00','Fuga de agua detectada','Fuera de servicio'),(47,301,NULL,NULL,47,'2023-08-12 18:00:00','Plomería reparada','Disponible'),(48,302,'2023-08-08 15:00:00','2023-08-12 12:00:00',61,'2023-08-08 16:15:00','Check-in realizado','Ocupado'),(49,302,'2023-08-12 12:00:00',NULL,233,'2023-08-12 14:30:00','Limpieza finalizada','Disponible'),(50,303,'2023-09-20 15:00:00','2023-09-25 12:00:00',58,'2023-09-20 15:45:00','Huésped registrado','Ocupado'),(51,303,'2023-09-25 12:00:00',NULL,234,'2023-09-25 13:45:00','Habitación preparada','Disponible'),(52,304,'2023-09-20 15:00:00','2023-09-25 12:00:00',62,'2023-09-20 16:30:00','Entrada confirmada','Ocupado'),(53,304,'2023-09-25 12:00:00',NULL,232,'2023-09-25 14:20:00','Limpieza completada','Disponible'),(54,305,'2023-10-14 15:00:00','2023-10-18 12:00:00',65,'2023-10-14 16:00:00','Check-in exitoso','Ocupado'),(55,305,'2023-10-18 12:00:00',NULL,233,'2023-10-18 13:15:00','Habitación lista','Disponible'),(56,306,'2023-11-17 15:00:00','2023-11-22 12:00:00',59,'2023-11-17 15:30:00','Registro completado','Ocupado'),(57,306,'2023-11-22 12:00:00',NULL,234,'2023-11-22 14:00:00','Limpieza realizada','Disponible'),(58,307,'2023-11-17 15:00:00','2023-11-22 12:00:00',63,'2023-11-17 16:15:00','Huésped alojado','Ocupado'),(59,307,'2023-11-22 12:00:00',NULL,232,'2023-11-22 14:45:00','Habitación disponible','Disponible'),(60,308,'2023-12-25 15:00:00','2023-12-30 12:00:00',57,'2023-12-25 15:45:00','Suite junior ocupada','Ocupado'),(61,308,'2023-12-30 12:00:00',NULL,233,'2023-12-30 14:30:00','Suite disponible','Disponible'),(62,309,'2023-12-25 15:00:00','2023-12-30 12:00:00',64,'2023-12-25 16:30:00','Suite ejecutiva ocupada','Ocupado'),(63,309,'2023-12-30 12:00:00',NULL,234,'2023-12-30 15:15:00','Suite lista','Disponible'),(64,310,'2023-12-25 15:00:00','2023-12-30 12:00:00',60,'2023-12-25 17:00:00','Suite familiar ocupada','Ocupado'),(65,310,'2023-12-30 12:00:00',NULL,232,'2023-12-30 16:00:00','Suite familiar disponible','Disponible'),(66,401,'2024-01-10 15:00:00','2024-01-15 12:00:00',56,'2024-01-10 15:15:00','Entrada registrada','Ocupado'),(67,401,'2024-01-15 12:00:00',NULL,233,'2024-01-15 13:45:00','Habitación preparada','Disponible'),(68,402,'2024-02-23 15:00:00','2024-02-28 12:00:00',61,'2024-02-23 15:30:00','Check-in realizado','Ocupado'),(69,402,'2024-02-28 12:00:00',NULL,234,'2024-02-28 14:20:00','Limpieza terminada','Disponible'),(70,403,'2024-02-23 15:00:00','2024-02-28 12:00:00',58,'2024-02-23 16:00:00','Huésped alojado','Ocupado'),(71,403,'2024-02-28 12:00:00',NULL,232,'2024-02-28 15:00:00','Habitación lista','Disponible'),(72,404,'2024-03-13 15:00:00','2024-03-18 12:00:00',62,'2024-03-13 15:45:00','Entrada confirmada','Ocupado'),(73,404,'2024-03-18 12:00:00',NULL,233,'2024-03-18 13:30:00','Limpieza completada','Disponible'),(74,405,'2024-03-13 15:00:00','2024-03-18 12:00:00',65,'2024-03-13 16:15:00','Check-in procesado','Ocupado'),(75,405,'2024-03-18 12:00:00',NULL,234,'2024-03-18 14:45:00','Habitación disponible','Disponible'),(76,406,'2025-01-15 15:00:00',NULL,59,'2025-01-15 15:30:00','Huésped actual registrado','Ocupado'),(77,406,NULL,NULL,9,'2025-01-16 09:00:00','Televisor no funciona','Bloqueado'),(78,406,NULL,NULL,71,'2025-01-16 14:30:00','Televisor reemplazado','Ocupado'),(79,407,'2025-02-10 15:00:00',NULL,63,'2025-02-10 16:00:00','Suite junior ocupada actualmente','Ocupado'),(80,407,NULL,NULL,232,'2025-02-11 10:00:00','Limpieza diaria realizada','Ocupado'),(81,408,'2025-02-10 15:00:00',NULL,57,'2025-02-10 16:30:00','Suite ejecutiva ocupada','Ocupado'),(82,408,NULL,NULL,233,'2025-02-11 11:00:00','Mantenimiento preventivo','Ocupado'),(83,409,'2025-02-10 15:00:00',NULL,64,'2025-02-10 17:00:00','Suite familiar ocupada','Ocupado'),(84,409,NULL,NULL,234,'2025-02-11 12:00:00','Limpieza en progreso','Ocupado'),(85,410,'2025-03-03 15:00:00',NULL,60,'2025-03-03 15:45:00','Huésped actual en habitación','Ocupado'),(86,410,NULL,NULL,232,'2025-03-04 09:30:00','Limpieza matutina','Ocupado'),(87,501,'2025-04-17 15:00:00',NULL,56,'2025-04-17 16:15:00','Check-in activo','Ocupado'),(88,501,NULL,NULL,233,'2025-04-18 08:00:00','Servicio de habitación','Ocupado'),(89,502,'2025-04-17 15:00:00',NULL,61,'2025-04-17 16:45:00','Huésped alojado actualmente','Ocupado'),(90,502,NULL,NULL,234,'2025-04-18 10:30:00','Limpieza diaria','Ocupado'),(91,503,'2025-05-10 15:00:00',NULL,58,'2025-05-10 15:30:00','Registro actual','Ocupado'),(92,503,NULL,NULL,232,'2025-05-11 09:00:00','Mantenimiento de rutina','Ocupado'),(93,504,'2025-05-10 15:00:00',NULL,62,'2025-05-10 16:00:00','Huésped registrado','Ocupado'),(94,504,NULL,NULL,233,'2025-05-11 11:15:00','Limpieza programada','Ocupado'),(95,505,'2025-06-25 15:00:00',NULL,65,'2025-06-25 15:45:00','Check-in en progreso','Ocupado'),(96,505,NULL,NULL,9,'2025-06-26 14:00:00','Aire acondicionado con problemas','Bloqueado'),(97,505,NULL,NULL,44,'2025-06-26 17:30:00','Sistema reparado','Ocupado'),(98,506,'2025-07-13 15:00:00',NULL,59,'2025-07-13 16:30:00','Huésped actual','Ocupado'),(99,506,NULL,NULL,234,'2025-07-14 08:45:00','Limpieza matinal','Ocupado'),(100,507,'2025-07-13 15:00:00',NULL,63,'2025-07-13 17:00:00','Entrada procesada','Ocupado'),(101,507,NULL,NULL,232,'2025-07-14 10:00:00','Servicio de limpieza','Ocupado'),(102,508,'2025-08-20 15:00:00',NULL,57,'2025-08-20 15:30:00','Suite junior activa','Ocupado'),(103,508,NULL,NULL,233,'2025-08-21 09:30:00','Limpieza diaria','Ocupado'),(104,509,'2025-08-20 15:00:00',NULL,64,'2025-08-20 16:15:00','Suite ejecutiva ocupada','Ocupado'),(105,509,NULL,NULL,234,'2025-08-21 11:00:00','Mantenimiento preventivo','Ocupado'),(106,510,'2025-08-20 15:00:00',NULL,60,'2025-08-20 16:45:00','Suite familiar activa','Ocupado'),(107,510,NULL,NULL,232,'2025-08-21 12:30:00','Limpieza en curso','Ocupado'),(108,601,'2025-09-07 15:00:00',NULL,56,'2025-09-07 15:45:00','Huésped registrado','Ocupado'),(109,601,NULL,NULL,233,'2025-09-08 08:15:00','Servicio matutino','Ocupado'),(110,602,'2025-10-23 15:00:00',NULL,61,'2025-10-23 16:30:00','Check-in activo','Ocupado'),(111,602,NULL,NULL,234,'2025-10-24 09:45:00','Limpieza programada','Ocupado'),(112,603,'2025-10-23 15:00:00',NULL,58,'2025-10-23 17:00:00','Entrada confirmada','Ocupado'),(113,603,NULL,NULL,232,'2025-10-24 11:30:00','Mantenimiento diario','Ocupado'),(114,604,NULL,NULL,232,'2024-01-15 14:00:00','Limpieza post-reserva cancelada','Disponible'),(115,605,NULL,NULL,233,'2024-02-20 13:30:00','Habitación preparada tras cancelación','Disponible'),(116,606,NULL,NULL,234,'2024-03-05 15:15:00','Limpieza completada','Disponible'),(117,607,NULL,NULL,232,'2024-04-25 14:45:00','Habitación lista','Disponible'),(118,608,NULL,NULL,233,'2024-05-30 16:20:00','Mantenimiento general realizado','Disponible'),(119,609,NULL,NULL,234,'2024-06-15 13:50:00','Limpieza profunda','Disponible'),(120,610,NULL,NULL,232,'2024-07-10 15:30:00','Habitación disponible','Disponible'),(121,701,NULL,NULL,233,'2024-08-05 14:15:00','Preparación completada','Disponible'),(122,702,NULL,NULL,234,'2024-09-12 16:45:00','Limpieza finalizada','Disponible'),(123,703,NULL,NULL,232,'2024-10-18 13:20:00','Habitación preparada','Disponible'),(124,704,NULL,NULL,233,'2024-11-08 15:40:00','Mantenimiento completado','Disponible'),(125,705,NULL,NULL,234,'2024-12-03 14:25:00','Limpieza realizada','Disponible'),(126,706,NULL,NULL,232,'2025-01-20 16:10:00','Habitación lista','Disponible'),(127,707,NULL,NULL,233,'2025-02-14 15:35:00','Preparación finalizada','Disponible'),(128,708,NULL,NULL,234,'2025-03-21 14:50:00','Limpieza completada','Disponible'),(129,709,NULL,NULL,232,'2025-04-16 16:25:00','Habitación disponible','Disponible'),(130,710,NULL,NULL,233,'2025-05-22 13:40:00','Mantenimiento realizado','Disponible'),(131,801,NULL,NULL,234,'2025-06-18 15:55:00','Limpieza terminada','Disponible'),(132,802,NULL,NULL,232,'2025-07-25 14:30:00','Habitación preparada','Disponible'),(133,803,NULL,NULL,233,'2025-08-12 16:15:00','Preparación completada','Disponible'),(134,804,NULL,NULL,234,'2025-09-28 15:20:00','Limpieza finalizada','Disponible'),(135,805,NULL,NULL,232,'2025-10-15 14:45:00','Habitación lista','Disponible'),(136,806,NULL,NULL,233,'2025-11-30 16:00:00','Mantenimiento completado','Disponible'),(137,807,'2024-01-20 15:00:00','2024-01-25 12:00:00',59,'2024-01-20 15:30:00','Check-in procesado','Ocupado'),(138,807,'2024-01-25 12:00:00',NULL,9,'2024-01-25 11:00:00','Problema eléctrico detectado','Fuera de servicio'),(139,807,NULL,NULL,72,'2024-01-25 16:45:00','Sistema eléctrico reparado','Disponible'),(140,808,'2024-01-20 15:00:00','2024-01-25 12:00:00',63,'2024-01-20 16:00:00','Huésped alojado','Ocupado'),(141,808,'2024-01-25 12:00:00',NULL,233,'2024-01-25 14:30:00','Limpieza completada','Disponible'),(142,809,'2024-02-13 15:00:00','2024-02-18 12:00:00',57,'2024-02-13 15:45:00','Entrada registrada','Ocupado'),(143,809,'2024-02-18 12:00:00',NULL,234,'2024-02-18 13:45:00','Habitación preparada','Disponible'),(144,810,'2024-02-13 15:00:00','2024-02-18 12:00:00',64,'2024-02-13 16:30:00','Suite presidencial ocupada','Ocupado'),(145,810,'2024-02-18 12:00:00',NULL,232,'2024-02-18 15:00:00','Suite presidencial disponible','Disponible'),(146,101,NULL,NULL,232,'2024-06-15 10:00:00','Mantenimiento preventivo trimestral','Disponible'),(147,102,NULL,NULL,233,'2024-07-20 11:30:00','Limpieza profunda programada','Disponible'),(148,103,NULL,NULL,234,'2024-08-25 09:15:00','Inspección de seguridad anual','Disponible'),(149,104,NULL,NULL,232,'2024-09-10 14:20:00','Renovación de amenidades','Disponible'),(150,105,NULL,NULL,233,'2024-10-05 16:45:00','Mantenimiento de plomería','Disponible'),(151,106,NULL,NULL,234,'2024-11-12 08:30:00','Limpieza post-mantenimiento','Disponible'),(152,107,NULL,NULL,232,'2024-12-18 13:50:00','Preparación navideña','Disponible'),(153,108,NULL,NULL,233,'2025-01-08 10:25:00','Inspección anual completada','Disponible'),(154,109,NULL,NULL,234,'2025-02-14 15:40:00','Mantenimiento San Valentín','Disponible'),(155,110,NULL,NULL,232,'2025-03-20 12:15:00','Limpieza de primavera','Disponible'),(156,201,NULL,NULL,233,'2025-04-25 09:50:00','Renovación de textiles','Disponible'),(157,202,NULL,NULL,234,'2025-05-30 14:35:00','Mantenimiento de temporada alta','Disponible'),(158,203,NULL,NULL,232,'2024-07-08 11:20:00','Reparación menor de pintura','Disponible'),(159,204,NULL,NULL,233,'2024-08-15 16:10:00','Cambio de cortinas','Disponible'),(160,205,NULL,NULL,234,'2024-09-22 13:45:00','Actualización de mobiliario','Disponible'),(161,206,NULL,NULL,232,'2024-10-28 10:30:00','Mantenimiento de sistema de audio','Disponible'),(162,207,NULL,NULL,233,'2024-11-25 15:25:00','Limpieza profunda de alfombras','Disponible'),(163,208,NULL,NULL,234,'2024-12-30 12:40:00','Preparación año nuevo','Disponible'),(164,209,NULL,NULL,232,'2025-01-15 09:05:00','Inspección post-festividades','Disponible'),(165,210,NULL,NULL,233,'2025-02-20 14:55:00','Mantenimiento preventivo','Disponible'),(166,301,NULL,NULL,234,'2025-03-25 11:10:00','Renovación de baño','Disponible'),(167,302,NULL,NULL,232,'2025-04-30 16:20:00','Limpieza especializada','Disponible'),(168,303,NULL,NULL,233,'2025-05-15 08:45:00','Mantenimiento de ventanas','Disponible'),(169,304,NULL,NULL,234,'2024-06-20 13:30:00','Revisión de seguridad','Disponible'),(170,305,NULL,NULL,232,'2024-07-25 10:15:00','Actualización de amenidades','Disponible'),(171,306,NULL,NULL,233,'2024-08-30 15:50:00','Mantenimiento de aire acondicionado','Disponible'),(172,307,NULL,NULL,234,'2024-09-15 12:25:00','Limpieza post-temporada','Disponible'),(173,308,NULL,NULL,232,'2024-10-20 09:40:00','Preparación temporada baja','Disponible'),(174,309,NULL,NULL,233,'2024-11-28 14:05:00','Mantenimiento de iluminación','Disponible'),(175,310,NULL,NULL,234,'2024-12-25 16:30:00','Decoración navideña','Disponible'),(176,401,NULL,NULL,232,'2025-01-30 11:45:00','Limpieza profunda enero','Disponible'),(177,402,NULL,NULL,233,'2025-02-28 08:20:00','Mantenimiento fin de mes','Disponible'),(178,403,NULL,NULL,234,'2025-03-15 13:55:00','Revisión trimestral','Disponible'),(179,404,NULL,NULL,232,'2025-04-10 10:35:00','Preparación Semana Santa','Disponible'),(180,405,NULL,NULL,233,'2025-05-05 15:15:00','Mantenimiento pre-temporada','Disponible'),(181,101,NULL,NULL,9,'2024-11-20 14:30:00','Revisión general de sistemas','Bloqueado'),(182,101,NULL,NULL,44,'2024-11-20 17:45:00','Sistemas verificados y operativos','Disponible'),(183,205,NULL,NULL,9,'2025-03-10 09:30:00','Mantenimiento de jacuzzi','Fuera de servicio'),(184,205,NULL,NULL,46,'2025-03-10 16:20:00','Jacuzzi reparado y funcionando','Disponible'),(185,207,NULL,NULL,9,'2025-04-05 11:00:00','Revisión sistema domótico','Bloqueado'),(186,207,NULL,NULL,15,'2025-04-05 18:30:00','Sistema domótico actualizado','Disponible'),(187,308,NULL,NULL,9,'2025-01-20 13:15:00','Mantenimiento chimenea','Fuera de servicio'),(188,308,NULL,NULL,45,'2025-01-20 19:00:00','Chimenea revisada y limpia','Disponible'),(189,310,NULL,NULL,9,'2025-02-15 10:45:00','Revisión área de juegos','Bloqueado'),(190,310,NULL,NULL,46,'2025-02-15 16:15:00','Área de juegos segura','Disponible'),(191,605,NULL,NULL,9,'2025-03-18 14:20:00','Mantenimiento estudio de arte','Fuera de servicio'),(192,605,NULL,NULL,47,'2025-03-18 20:45:00','Estudio de arte renovado','Disponible'),(193,606,NULL,NULL,9,'2025-04-22 12:30:00','Revisión sala de conferencias','Bloqueado'),(194,606,NULL,NULL,15,'2025-04-22 17:20:00','Equipos audiovisuales actualizados','Disponible'),(195,610,NULL,NULL,9,'2025-05-08 15:45:00','Mantenimiento spa privado','Fuera de servicio'),(196,610,NULL,NULL,73,'2025-05-08 21:30:00','Spa privado completamente operativo','Disponible'),(197,810,NULL,NULL,9,'2025-05-20 08:00:00','Revisión anual suite presidencial','Bloqueado'),(198,810,NULL,NULL,1,'2025-05-20 19:45:00','Suite presidencial certificada','Disponible'),(199,807,NULL,NULL,232,'2025-05-22 10:30:00','Limpieza matutina estándar','Disponible'),(200,808,NULL,NULL,233,'2025-05-22 14:15:00','Preparación para próximo huésped','Disponible'),(201,404,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:52:10',NULL,'Disponible'),(202,105,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:52:10',NULL,'Ocupado'),(203,405,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:52:10',NULL,'Disponible'),(204,205,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:52:10',NULL,'Ocupado'),(205,105,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:58:01','Mejora por VIP - Habitación liberada para upgrade','Disponible'),(206,106,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:58:01','Mejora por VIP - Upgrade de Superior Individual a Superior Doble','Ocupado'),(207,205,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:58:01','Mejora por VIP - Habitación liberada para upgrade','Disponible'),(208,206,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 21:58:01','Mejora por VIP - Upgrade de Junior Suite a Suite Ejecutiva','Ocupado'),(209,106,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 22:03:19','Mejora por VIP - Habitación liberada para upgrade','Disponible'),(210,205,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 22:03:19','Mejora por VIP - Upgrade de Superior Doble a Junior Suite','Ocupado'),(211,206,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 22:03:19','Mejora por VIP - Habitación liberada para upgrade','Disponible'),(212,310,'2024-03-13 15:00:00','2024-03-18 12:00:00',NULL,'2025-05-26 22:03:19','Mejora por VIP - Upgrade de Suite Ejecutiva a Suite Familiar','Ocupado');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelacion`
--

LOCK TABLES `cancelacion` WRITE;
/*!40000 ALTER TABLE `cancelacion` DISABLE KEYS */;
INSERT INTO `cancelacion` VALUES (1,'Cambio de planes de viaje por motivos personales',825.00,'2024-01-30 09:15:00','RES-20240128-5671'),(2,'Cancelación por enfermedad familiar',0.00,'2024-02-28 11:20:00','RES-20240305-8924'),(3,'Conflicto con fechas laborales',462.00,'2024-03-22 14:30:00','RES-20240320-3157'),(4,'Problemas económicos inesperados',8360.00,'2024-05-10 16:45:00','RES-20240508-7486'),(5,'Cancelación por condiciones climáticas',5390.00,'2024-06-20 10:25:00','RES-20240530-1829'),(6,'Cambio de destino de vacaciones',6270.00,'2024-07-14 13:40:00','RES-20240712-6352'),(7,'Emergencia médica',0.00,'2024-07-25 08:50:00','RES-20240728-9675'),(8,'Cancelación por trabajo urgente',7425.00,'2024-09-12 15:10:00','RES-20240910-4218'),(9,'Problemas de documentación de viaje',4785.00,'2024-09-27 12:35:00','RES-20240925-7863'),(10,'Duelo familiar',0.00,'2024-11-03 17:20:00','RES-20241105-2541'),(11,'Cancelación tardía sin justificación',4015.00,'2024-06-28 14:15:00','RES-20240612-8287'),(12,'Problemas de salud',0.00,'2024-07-01 09:45:00','RES-20240705-3650'),(13,'Cambio de fechas de boda',4290.00,'2024-08-01 11:30:00','RES-20240730-7913'),(14,'Cancelación por huelga de aerolíneas',8030.00,'2024-09-06 16:25:00','RES-20240908-4276'),(15,'Motivos personales urgentes',4895.00,'2024-09-30 13:50:00','RES-20240928-8539'),(16,'Problemas financieros',0.00,'2024-11-10 10:15:00','RES-20241112-1862'),(17,'Cancelación por lluvia extrema',5225.00,'2024-11-27 12:40:00','RES-20241125-6325'),(18,'Emergencia familiar',7260.00,'2025-01-12 14:55:00','RES-20250110-2748'),(19,'Problemas de visa',0.00,'2025-02-03 09:20:00','RES-20250205-7471'),(20,'Cancelación por enfermedad',4785.00,'2025-03-10 11:35:00','RES-20250308-3894'),(21,'Motivos laborales inesperados',4015.00,'2024-03-20 15:25:00','RES-20240222-6432'),(22,'Problemas de transporte',6930.00,'2024-04-10 08:40:00','RES-20240408-9995'),(23,'Cancelación por mal tiempo',4675.00,'2024-05-14 13:15:00','RES-20240512-4558'),(24,'Emergencia médica familiar',8415.00,'2024-05-30 16:30:00','RES-20240528-8121'),(25,'Problemas económicos',5335.00,'2024-07-12 10:50:00','RES-20240710-3684'),(26,'Cancelación tardía',6270.00,'2024-08-04 14:05:00','RES-20240802-7247'),(27,'Cambio de planes vacacionales',0.00,'2024-09-03 11:20:00','RES-20240905-1810'),(28,'Problemas de salud',7645.00,'2024-10-12 15:45:00','RES-20241010-5373'),(29,'Duelo en la familia',0.00,'2024-11-01 12:30:00','RES-20241102-9036'),(30,'Cancelación por motivos personales',4290.00,'2024-11-30 09:15:00','RES-20241128-4699'),(32,'escuela',8580.00,'2025-05-26 23:47:42','RES-20250510-6714'),(33,'Cancelación tardía con penalización',8580.00,'2025-05-26 23:47:42','RES-20250510-6714'),(35,'trafico',6380.00,'2025-05-27 00:16:16','RES-20250320-6948'),(36,'Cancelación tardía con penalización',6380.00,'2025-05-27 00:16:16','RES-20250320-6948');
/*!40000 ALTER TABLE `cancelacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_aplicar_penalizacion_cancelacion_mejorado` AFTER INSERT ON `cancelacion` FOR EACH ROW BEGIN
    DECLARE v_id_reserva INT;
    DECLARE v_id_cliente INT;
    DECLARE v_rfc VARCHAR(13);
    DECLARE v_id_factura INT;
    DECLARE v_total_detalles INT DEFAULT 0;
    DECLARE v_penalizacion_por_detalle DECIMAL(10,2);
    DECLARE v_penalizacion_restante DECIMAL(10,2);
    DECLARE v_contador INT DEFAULT 0;
    
    -- Variables para el cursor de detalles de reserva
    DECLARE v_id_detalle_reserva INT;
    DECLARE v_id_habitacion INT;
    DECLARE v_nombre_habitacion VARCHAR(150);
    DECLARE v_precio_noche DECIMAL(10,2);
    DECLARE v_noches INT;
    DECLARE done INT DEFAULT FALSE;
    
    -- Cursor para obtener todos los detalles de reserva habitación
    DECLARE detalles_cursor CURSOR FOR
        SELECT 
            drh.ID_Detalle_Reserva_Habitacion,
            drh.ID_Habitacion,
            drh.Precio_Noche,
            DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada) AS noches,
            CONCAT(th.Nombre, ' - Habitación ', drh.ID_Habitacion) AS nombre_habitacion
        FROM detalle_reserva_habitacion drh
        JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
        JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
        JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
        WHERE r.Codigo_Confirmacion = NEW.Codigo_Confirmacion;
    
    -- Handler para el cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Solo procesar si hay penalización
    IF NEW.Penalizacion > 0 THEN
        
        -- Obtener información básica de la reserva
        SELECT 
            r.ID_Reserva, 
            r.ID_Cliente, 
            c.RFC 
        INTO 
            v_id_reserva, 
            v_id_cliente, 
            v_rfc
        FROM reserva r
        JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
        WHERE r.Codigo_Confirmacion = NEW.Codigo_Confirmacion
        LIMIT 1;
        
        -- Si no encontramos la reserva, salir
        IF v_id_reserva IS NULL THEN
            -- Log del error usando una tabla existente
            INSERT INTO bitacora_habitacion (ID_Habitacion, Motivo_cambio, Fecha_Hora_Cambio, Estado)
            VALUES (0, CONCAT('Error: No se encontró reserva para código ', NEW.Codigo_Confirmacion), NOW(), 'Bloqueado');
        ELSE
            -- Contar total de detalles para distribución proporcional
            SELECT COUNT(*) INTO v_total_detalles
            FROM detalle_reserva_habitacion drh
            JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
            WHERE r.Codigo_Confirmacion = NEW.Codigo_Confirmacion;
            
            -- Si no hay detalles, crear uno genérico
            IF v_total_detalles = 0 THEN
                -- Insertar un detalle genérico en detalle_reserva_habitacion
                INSERT INTO detalle_reserva_habitacion (
                    ID_Reserva, 
                    ID_Habitacion, 
                    Precio_Noche, 
                    ID_Cancelacion
                ) SELECT 
                    r.ID_Reserva,
                    101, -- Habitación genérica
                    0.00,
                    NEW.ID_Cancelacion
                FROM reserva r 
                WHERE r.Codigo_Confirmacion = NEW.Codigo_Confirmacion;
                
                SET v_total_detalles = 1;
            ELSE
                -- Actualizar los detalles existentes con el ID de cancelación
                UPDATE detalle_reserva_habitacion drh
                JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
                SET drh.ID_Cancelacion = NEW.ID_Cancelacion
                WHERE r.Codigo_Confirmacion = NEW.Codigo_Confirmacion;
            END IF;
            
            -- Crear la factura de penalización
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
                v_id_reserva,
                NOW(),
                NEW.Penalizacion,
                'Pendiente',
                NULL,
                CONCAT('CANCEL-', DATE_FORMAT(NOW(), '%Y%m%d'), '-', NEW.ID_Cancelacion),
                NULL,
                v_rfc
            );
            
            SET v_id_factura = LAST_INSERT_ID();
            
            -- Calcular penalización por detalle (distribución equitativa)
            SET v_penalizacion_por_detalle = NEW.Penalizacion / v_total_detalles;
            SET v_penalizacion_restante = NEW.Penalizacion;
            SET v_contador = 0;
            
            -- Procesar cada detalle de reserva habitación
            OPEN detalles_cursor;
            
            detalles_loop: LOOP
                FETCH detalles_cursor INTO 
                    v_id_detalle_reserva, 
                    v_id_habitacion, 
                    v_precio_noche,
                    v_noches,
                    v_nombre_habitacion;
                
                IF done THEN
                    LEAVE detalles_loop;
                END IF;
                
                SET v_contador = v_contador + 1;
                
                -- Para el último detalle, usar el monto restante para evitar diferencias por redondeo
                IF v_contador = v_total_detalles THEN
                    SET v_penalizacion_por_detalle = v_penalizacion_restante;
                ELSE
                    SET v_penalizacion_restante = v_penalizacion_restante - v_penalizacion_por_detalle;
                END IF;
                
                -- Insertar en detalle_factura
                INSERT INTO detalle_factura (
                    ID_Factura,
                    Concepto,
                    Cantidad,
                    Precio_Unitario,
                    Subtotal,
                    ID_Detalle_Reserva_Habitacion,
                    ID_Consumo_servicios
                ) VALUES (
                    v_id_factura,
                    CONCAT('PENALIZACIÓN POR CANCELACIÓN - ', v_nombre_habitacion, 
                           ' (', v_noches, ' noches) - Cancelación tardía'),
                    1,
                    v_penalizacion_por_detalle,
                    v_penalizacion_por_detalle,
                    v_id_detalle_reserva,
                    NULL
                );
                
            END LOOP;
            
            CLOSE detalles_cursor;
            
            -- Actualizar el total gastado del cliente en la tabla VIP
            UPDATE cliente_potencial_vip 
            SET Total_Gastado = Total_Gastado + NEW.Penalizacion
            WHERE ID_Cliente = v_id_cliente;
            
        END IF; -- Fin del IF v_id_reserva IS NOT NULL
        
    END IF; -- Fin del IF NEW.Penalizacion > 0
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_actualizar_penalizacion_cancelacion` AFTER UPDATE ON `cancelacion` FOR EACH ROW BEGIN
    DECLARE v_id_factura INT;
    DECLARE v_diferencia_penalizacion DECIMAL(10,2);
    
    -- Solo procesar si cambió la penalización
    IF OLD.Penalizacion != NEW.Penalizacion THEN
        
        SET v_diferencia_penalizacion = NEW.Penalizacion - OLD.Penalizacion;
        
        -- Buscar la factura asociada a esta cancelación
        SELECT f.ID_Factura INTO v_id_factura
        FROM factura f
        JOIN reserva r ON f.ID_Reserva = r.ID_Reserva
        WHERE r.Codigo_Confirmacion = NEW.Codigo_Confirmacion
        AND f.Numero_Transaccion LIKE CONCAT('CANCEL-%-', NEW.ID_Cancelacion)
        LIMIT 1;
        
        IF v_id_factura IS NOT NULL THEN
            -- Actualizar el total de la factura
            UPDATE factura 
            SET Total = Total + v_diferencia_penalizacion
            WHERE ID_Factura = v_id_factura;
            
            -- Actualizar los detalles de factura relacionados con esta cancelación
            UPDATE detalle_factura df
            JOIN detalle_reserva_habitacion drh ON df.ID_Detalle_Reserva_Habitacion = drh.ID_Detalle_Reserva_Habitacion
            SET 
                df.Precio_Unitario = NEW.Penalizacion,
                df.Subtotal = NEW.Penalizacion
            WHERE 
                df.ID_Factura = v_id_factura
                AND df.Concepto LIKE 'PENALIZACIÓN POR CANCELACIÓN%'
                AND drh.ID_Cancelacion = NEW.ID_Cancelacion;
        END IF;
        
    END IF;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','García','López',35,'Av. Reforma 123, Col. Centro','1989-03-15','M','5551234567','5559876543','juan.garcia@email.com','GALJ890315HM1',1,1,'2023-01-15',3),(2,'María','Rodríguez','Martínez',28,'Calle 5 de Mayo 456','1996-07-22','F','3331234567','3339876543','maria.rodriguez@email.com','ROMM960722MH2',0,5,'2023-02-20',2),(3,'Carlos','López','Sánchez',42,'Boulevard Marina 789','1982-11-08','M','9981234567','9989876543','carlos.lopez@email.com','LOSC821108HM3',1,15,'2022-12-10',5),(4,'Grupo Hotelero Internacional S.A. de C.V.',NULL,NULL,NULL,'Av. Universidad 321, Torre Corporativa','1993-05-12',NULL,'8181234567','8189876543','reservas@grupohotelero.com','GHI930512ABC',0,9,'2023-03-18',1),(5,'Luis','Hernández','Gómez',29,'Calle Juárez 654','1995-09-03','M','6641234567','6649876543','luis.hernandez@email.com','HEGL950903HM5',0,12,'2023-04-22',2),(6,'Carmen','Gómez','Torres',38,'Av. Revolución 987','1986-01-25','F','9981234568','9989876544','carmen.gomez@email.com','GOTC860125MH6',1,15,'2022-11-05',4),(7,'Constructora Península Maya S.A.',NULL,NULL,NULL,'Calle Morelos 147, Zona Industrial','1979-06-18',NULL,'5551234568','5559876544','eventos@peninsulamaya.com','CPM790618EMP',1,1,'2023-01-28',8),(8,'Patricia','Díaz','Ruiz',33,'Av. Hidalgo 258','1991-12-07','F','3331234568','3339876544','patricia.diaz@email.com','DIRP911207MH8',0,5,'2023-05-15',2),(9,'Miguel','Ruiz','Morales',37,'Boulevard Costero 369','1987-04-14','M','9981234569','9989876545','miguel.ruiz@email.com','RUMM870414HM9',1,15,'2022-08-20',6),(10,'Tecnología Avanzada del Sureste',NULL,NULL,NULL,'Calle Zaragoza 741, Parque Tecnológico','1998-10-30',NULL,'8181234569','8189876545','corporativo@tecavanzada.com','TAS981030TEC',0,9,'2023-06-12',3),(11,'Fernando','Jiménez','Vargas',40,'Av. Insurgentes 852','1984-02-28','M','5551234570','5559876546','fernando.jimenez@email.com','JIVF840228HM1',0,1,'2023-02-08',3),(12,'Laboratorios Farmacéuticos del Caribe',NULL,NULL,NULL,'Calle Aldama 963, Zona Médica','1990-08-16',NULL,'6641234570','6649876546','eventos@labcaribe.com','LFC900816LAB',0,12,'2023-07-03',2),(13,'Alejandro','Castro','Ramos',39,'Av. Constitución 159','1985-11-09','M','9981234571','9989876547','alejandro.castro@email.com','CARA851109HM3',1,15,'2022-09-15',5),(14,'Mónica','Ramos','Flores',32,'Boulevard Kukulcán 357','1992-03-21','F','9981234572','9989876548','monica.ramos@email.com','RAFM920321MH4',0,15,'2023-04-10',1),(15,'Banca Privada Elite',NULL,NULL,NULL,'Calle Benito Juárez 468, Torre Financiera','1980-07-05',NULL,'3331234572','3339876548','eventos@bancaelite.com','BPE800705BAN',1,5,'2023-01-25',12),(16,'Verónica','Mendoza','Ortega',30,'Av. Chapultepec 579','1994-12-18','F','5551234573','5559876549','veronica.mendoza@email.com','MEOV941218MH6',0,1,'2023-08-14',1),(17,'Javier','Ortega','Peña',36,'Calle Madero 681','1988-05-11','M','8181234573','8189876549','javier.ortega@email.com','ORPJ880511HM7',0,9,'2023-03-07',3),(18,'Claudia','Peña','Aguirre',41,'Boulevard Las Américas 792','1983-09-24','F','6641234573','6649876549','claudia.pena@email.com','PEAC830924MH8',1,12,'2022-10-18',6),(19,'Consultoría Estratégica Global S.C.',NULL,NULL,NULL,'Av. Tecnológico 893, World Trade Center','1997-01-13',NULL,'9981234574','9989876550','reservas@ceglobal.com','CEG970113CON',0,15,'2023-05-28',2),(20,'Gabriela','Reyes','Herrera',35,'Calle Independencia 194','1989-06-29','F','5551234574','5559876550','gabriela.reyes@email.com','REHG890629MH0',0,1,'2023-02-16',2),(21,'Daniel','Herrera','Silva',43,'Av. Lázaro Cárdenas 295','1981-10-12','M','3331234574','3339876550','daniel.herrera@email.com','HESD811012HM1',0,5,'2023-06-20',1),(22,'Adriana','Silva','Guerrero',29,'Boulevard Díaz Ordaz 396','1995-02-26','F','8181234574','8189876550','adriana.silva@email.com','SIGA950226MH2',0,9,'2023-07-11',2),(23,'Raúl','Guerrero','Medina',38,'Calle Victoria 497','1986-08-14','M','9981234575','9989876551','raul.guerrero@email.com','GEMR860814HM3',1,15,'2022-12-22',4),(24,'Petroquímica Industrial Mexicana',NULL,NULL,NULL,'Av. Juárez 598, Complejo Industrial','1993-12-01',NULL,'6641234575','6649876551','corporativo@pimex.com','PIM931201PET',1,12,'2023-04-05',15),(25,'Arturo','Contreras','Vega',46,'Boulevard Agua Caliente 699','1978-04-19','M','6641234576','6649876552','arturo.contreras@email.com','COVA780419HM5',0,12,'2023-01-12',3),(26,'Rosa','Vega','Santana',33,'Calle Revolución 711','1991-08-07','F','9981234576','9989876552','rosa.vega@email.com','VESR910807MH6',0,15,'2023-05-09',2),(27,'Héctor','Santana','Luna',40,'Av. Tulum 822','1984-11-23','M','9981234577','9989876553','hector.santana@email.com','SALH841123HM7',1,15,'2022-07-30',5),(28,'Desarrollos Inmobiliarios Premium',NULL,NULL,NULL,'Boulevard Colosio 933, Torre Ejecutiva','1996-03-16',NULL,'8181234577','8189876553','eventos@dipremium.com','DIP960316INM',0,9,'2023-08-02',6),(29,'Oscar','Delgado','Paredes',35,'Calle Hidalgo 144','1989-07-09','M','5551234577','5559876553','oscar.delgado@email.com','DEPO890709HM9',0,1,'2023-03-25',2),(30,'Marisol','Paredes','Cordero',37,'Av. Paseo de la Reforma 255','1987-11-25','F','5551234578','5559876554','marisol.paredes@email.com','PACM871125MH0',0,1,'2023-06-18',3),(31,'Industrias Manufactureras del Golfo',NULL,NULL,NULL,'Boulevard Adolfo López Mateos 366','1982-05-18',NULL,'3331234578','3339876554','ventas@imgolfo.com','IMG820518IND',1,5,'2023-02-14',9),(32,'Karla','Espinoza','Navarro',30,'Calle Francisco I. Madero 477','1994-09-06','F','6641234578','6649876554','karla.espinoza@email.com','ESKA940906MH2',0,12,'2023-07-27',2),(33,'Gerardo','Navarro','Rojas',36,'Av. Venustiano Carranza 588','1988-01-22','M','9981234578','9989876554','gerardo.navarro@email.com','NARG880122HM3',1,15,'2022-11-08',4),(34,'Leticia','Rojas','Campos',44,'Boulevard Kukul Kan 699','1980-06-10','F','9981234579','9989876555','leticia.rojas@email.com','ROCL800610MH4',1,15,'2022-08-14',6),(35,'Servicios Profesionales Integrados',NULL,NULL,NULL,'Calle Yaxchilán 811, Centro de Negocios','1993-10-28',NULL,'9981234580','9989876556','contacto@spi.com','SPI931028SER',0,15,'2023-04-21',4),(36,'Alicia','Montes','Rivera',39,'Av. Bonampak 922','1985-02-14','F','9981234581','9989876557','alicia.montes@email.com','MORA850214MH6',1,15,'2022-09-03',5),(37,'Guillermo','Rivera','Estrada',33,'Boulevard Chichén Itzá 133','1991-06-30','M','9981234582','9989876558','guillermo.rivera@email.com','RIEG910630HM7',0,15,'2023-05-16',2),(38,'Corporativo de Entretenimiento Maya',NULL,NULL,NULL,'Calle Pakal 244, Plaza Comercial','1996-11-15',NULL,'9981234583','9989876559','eventos@cemaya.com','CEM961115ENT',1,15,'2023-07-08',7),(39,'Francisco','Rangel','Soto',45,'Av. Xcaret 355','1979-03-03','M','9981234584','9989876560','francisco.rangel@email.com','RASF790303HM9',1,15,'2022-06-25',7),(40,'Elena','Soto','Fuentes',32,'Boulevard Xel-Há 466','1992-07-19','F','9981234585','9989876561','elena.soto@email.com','SOFE920719MH0',0,15,'2023-08-12',2),(41,'Andrés','Fuentes','Guzmán',37,'Calle Cobá 577','1987-11-07','M','9981234586','9989876562','andres.fuentes@email.com','FUGA871107HM1',1,15,'2022-10-05',4),(42,'Cristina','Guzmán','Ibarra',29,'Av. Chac Mool 688','1995-04-23','F','9981234587','9989876563','cristina.guzman@email.com','GUIC950423MH2',0,15,'2023-03-18',1),(43,'Mauricio','Ibarra','Lara',41,'Boulevard Costa Maya 799','1983-08-11','M','9981234588','9989876564','mauricio.ibarra@email.com','IBLM830811HM3',1,15,'2022-12-01',5),(44,'Beatriz','Lara','Maldonado',34,'Calle Akumal 911','1990-12-29','F','9981234589','9989876565','beatriz.lara@email.com','LAMB901229MH4',0,15,'2023-06-07',3),(45,'Ignacio','Maldonado','Nava',38,'Av. Playa del Carmen 122','1986-05-16','M','9981234590','9989876566','ignacio.maldonado@email.com','MANI860516HM5',1,15,'2022-07-22',6),(46,'Dolores','Nava','Ojeda',36,'Boulevard Tulúm 233','1988-09-04','F','9981234591','9989876567','dolores.nava@email.com','NAOD880904MH6',0,15,'2023-04-14',2),(47,'Ramón','Ojeda','Pacheco',43,'Calle Cozumel 344','1981-01-20','M','9981234592','9989876568','ramon.ojeda@email.com','OJPR810120HM7',1,15,'2022-08-09',4),(48,'Gloria','Pacheco','Quintero',30,'Av. Isla Mujeres 455','1994-05-08','F','9981234593','9989876569','gloria.pacheco@email.com','PAQG940508MH8',0,15,'2023-07-16',1),(49,'Salvador','Quintero','Rosales',35,'Boulevard Cancún 566','1989-09-26','M','9981234594','9989876570','salvador.quintero@email.com','QURS890926HM9',0,15,'2023-02-28',3),(50,'Esperanza','Rosales','Salinas',42,'Calle Puerto Morelos 677','1982-02-12','F','9981234595','9989876571','esperanza.rosales@email.com','ROSE820212MH0',1,15,'2022-11-16',5),(51,'Tomás','Salinas','Torres',31,'Av. Riviera Maya 788','1993-06-30','M','9981234596','9989876572','tomas.salinas@email.com','SATT930630HM1',0,15,'2023-05-04',2),(52,'Yolanda','Torres','Uribe',29,'Boulevard Holbox 899','1995-10-18','F','9981234597','9989876573','yolanda.torres@email.com','TOUY951018MH2',0,15,'2023-08-21',1),(53,'Víctor','Uribe','Vázquez',40,'Calle Contoy 911','1984-03-06','M','9981234598','9989876574','victor.uribe@email.com','URVV840306HM3',1,15,'2022-09-12',4),(54,'Zoila','Vázquez','Wolff',33,'Av. Mahahual 122','1991-07-24','F','9981234599','9989876575','zoila.vazquez@email.com','VAZZ910724MH4',0,15,'2023-03-30',2),(55,'Armando','Wolff','Ximénez',46,'Boulevard Chetumal 233','1978-11-12','M','9981234600','9989876576','armando.wolff@email.com','WOXA781112HM5',1,15,'2022-06-18',7),(56,'Blanca','Ximénez','Yáñez',32,'Calle Bacalar 344','1992-04-29','F','9981234601','9989876577','blanca.ximenez@email.com','XIYB920429MH6',0,15,'2023-07-05',3),(57,'Celestino','Yáñez','Zavala',38,'Av. Laguna Azul 455','1986-08-17','M','9981234602','9989876578','celestino.yanez@email.com','YAZC860817HM7',1,15,'2022-10-23',5),(58,'Diana','Zavala','Ávila',27,'Boulevard Xpujil 566','1997-12-05','F','9981234603','9989876579','diana.zavala@email.com','ZAAD971205MH8',0,15,'2023-05-19',1),(59,'Emilio','Ávila','Bermúdez',34,'Calle Kohunlich 677','1990-03-23','M','9981234604','9989876580','emilio.avila@email.com','AVBE900323HM9',0,15,'2023-08-06',2),(60,'Fabiola','Bermúdez','Cárdenas',41,'Av. Dzibanché 788','1983-07-11','F','9981234605','9989876581','fabiola.bermudez@email.com','BECF830711MH0',1,15,'2022-12-14',6),(61,'Gonzalo','Cárdenas','Domínguez',35,'Boulevard Kinichná 899','1989-11-29','M','9981234606','9989876582','gonzalo.cardenas@email.com','CADG891129HM1',0,15,'2023-04-03',3),(62,'Hortensia','Domínguez','Escalante',28,'Calle Oxtankah 911','1996-06-16','F','9981234607','9989876583','hortensia.dominguez@email.com','DOEH960616MH2',0,15,'2023-06-25',1),(63,'Iván','Escalante','Figueroa',39,'Av. San Gervasio 122','1985-10-04','M','9981234608','9989876584','ivan.escalante@email.com','ESFI851004HM3',1,15,'2022-08-30',4),(64,'Josefina','Figueroa','García',31,'Boulevard El Rey 233','1993-01-22','F','9981234609','9989876585','josefina.figueroa@email.com','FIGJ930122MH4',0,15,'2023-07-12',2),(65,'Kevin','García','Herrera',26,'Calle Caracol 344','1998-05-10','M','9981234610','9989876586','kevin.garcia@email.com','GAHK980510HM5',0,15,'2023-08-28',1),(66,'Lucía','Herrera','Iglesias',37,'Av. Chankanaab 455','1987-09-28','F','9981234611','9989876587','lucia.herrera@email.com','HEIL870928MH6',1,15,'2022-11-04',5),(67,'Manuel','Iglesias','Jiménez',44,'Boulevard Punta Sur 566','1980-02-15','M','9981234612','9989876588','manuel.iglesias@email.com','IGJM800215HM7',1,15,'2022-07-11',6),(68,'Nayeli','Jiménez','Krauss',29,'Calle Palancar 677','1995-06-03','F','9981234613','9989876589','nayeli.jimenez@email.com','JIKN950603MH8',0,15,'2023-03-17',1),(69,'Orlando','Krauss','López',33,'Av. Columbia 788','1991-10-21','M','9981234614','9989876590','orlando.krauss@email.com','KALO911021HM9',0,15,'2023-05-31',2),(70,'Paulina','López','Moreno',40,'Boulevard Santa Rosa 899','1984-01-09','F','9981234615','9989876591','paulina.lopez@email.com','LOMP840109MH0',1,15,'2022-09-27',4),(71,'Quintín','Moreno','Núñez',36,'Calle Dzul Há 911','1988-05-27','M','9981234616','9989876592','quintin.moreno@email.com','MONQ880527HM1',1,15,'2022-12-06',5),(72,'Rocío','Núñez','Oliva',32,'Av. Ixchel 122','1992-09-14','F','9981234617','9989876593','rocio.nunez@email.com','NUOR920914MH2',0,15,'2023-04-28',3),(73,'Sebastián','Oliva','Pérez',38,'Boulevard Kukulkán 233','1986-12-02','M','9981234618','9989876594','sebastian.oliva@email.com','OLPS861202HM3',1,15,'2022-08-15',4),(74,'Tatiana','Pérez','Quiroz',30,'Calle Itzamná 344','1994-03-20','F','9981234619','9989876595','tatiana.perez@email.com','PEQT940320MH4',0,15,'2023-06-13',2),(75,'Ulises','Quiroz','Ramírez',35,'Av. Chaac 455','1989-07-08','M','9981234620','9989876596','ulises.quiroz@email.com','QURU890708HM5',0,15,'2023-02-05',3),(76,'Vanessa','Ramírez','Sandoval',42,'Boulevard Itzmal 566','1982-11-26','F','9981234621','9989876597','vanessa.ramirez@email.com','RASV821126MH6',1,15,'2022-10-12',6),(77,'Wilson','Sandoval','Téllez',28,'Calle Hunab Ku 677','1996-04-13','M','9981234622','9989876598','wilson.sandoval@email.com','SATW960413HM7',0,15,'2023-07-29',1),(78,'Ximena','Téllez','Urquiza',34,'Av. Ek Balam 788','1990-08-01','F','9981234623','9989876599','ximena.tellez@email.com','TEUX900801MH8',0,15,'2023-05-22',6),(79,'Yahir','Urquiza','Valdez',41,'Boulevard Chichén 899','1983-12-19','M','9981234624','9989876600','yahir.urquiza@email.com','URVY831219HM9',1,15,'2022-06-08',5),(80,'Zoe','Valdez','Wilson',27,'Calle Uxmal 911','1997-05-07','F','9981234625','9989876601','zoe.valdez@email.com','VAWZ970507MH0',0,15,'2023-08-17',1),(81,'Joaquin','tumama',NULL,20,NULL,'2005-05-15','M','9887744556','9887744556','joaquin.tumama@email.com','SADQ90S0DJA0S',1,36,'2023-08-17',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_potencial_vip`
--

LOCK TABLES `cliente_potencial_vip` WRITE;
/*!40000 ALTER TABLE `cliente_potencial_vip` DISABLE KEYS */;
INSERT INTO `cliente_potencial_vip` VALUES (1,1,6,60000.00,NULL,'VIP Activo','2025-05-22'),(2,2,0,0.00,NULL,'Nuevo','2025-05-22'),(3,3,0,0.00,NULL,'Nuevo','2025-05-22'),(4,4,0,0.00,NULL,'Nuevo','2025-05-22'),(5,5,0,0.00,NULL,'Nuevo','2025-05-22'),(6,6,0,0.00,NULL,'Nuevo','2025-05-22'),(7,7,0,0.00,NULL,'Nuevo','2025-05-22'),(8,8,0,0.00,NULL,'Nuevo','2025-05-22'),(9,9,0,0.00,NULL,'Nuevo','2025-05-22'),(10,10,0,0.00,NULL,'Nuevo','2025-05-22'),(11,11,0,0.00,NULL,'Nuevo','2025-05-22'),(12,12,0,0.00,NULL,'Nuevo','2025-05-22'),(13,13,0,0.00,NULL,'Nuevo','2025-05-22'),(14,14,0,530.00,NULL,'Nuevo','2025-05-22'),(15,15,0,0.00,NULL,'Nuevo','2025-05-22'),(16,16,0,0.00,NULL,'Nuevo','2025-05-22'),(17,17,0,0.00,NULL,'Nuevo','2025-05-22'),(18,18,0,0.00,NULL,'Nuevo','2025-05-22'),(19,19,0,0.00,NULL,'Nuevo','2025-05-22'),(20,20,0,0.00,NULL,'Nuevo','2025-05-22'),(21,21,0,1070.00,NULL,'Nuevo','2025-05-22'),(22,22,0,0.00,NULL,'Nuevo','2025-05-22'),(23,23,0,0.00,NULL,'Nuevo','2025-05-22'),(24,24,0,0.00,NULL,'Nuevo','2025-05-22'),(25,25,0,0.00,NULL,'Nuevo','2025-05-22'),(26,26,0,0.00,NULL,'Nuevo','2025-05-22'),(27,27,0,0.00,NULL,'Nuevo','2025-05-22'),(28,28,0,0.00,NULL,'Nuevo','2025-05-22'),(29,29,0,0.00,NULL,'Nuevo','2025-05-22'),(30,30,0,0.00,NULL,'Nuevo','2025-05-22'),(31,31,0,0.00,NULL,'Nuevo','2025-05-22'),(32,32,0,0.00,NULL,'Nuevo','2025-05-22'),(33,33,0,0.00,NULL,'Nuevo','2025-05-22'),(34,34,0,0.00,NULL,'Nuevo','2025-05-22'),(35,35,0,0.00,NULL,'Nuevo','2025-05-22'),(36,36,0,0.00,NULL,'Nuevo','2025-05-22'),(37,37,0,0.00,NULL,'Nuevo','2025-05-22'),(38,38,0,0.00,NULL,'Nuevo','2025-05-22'),(39,39,0,0.00,NULL,'Nuevo','2025-05-22'),(40,40,0,0.00,NULL,'Nuevo','2025-05-22'),(41,41,0,0.00,NULL,'Nuevo','2025-05-22'),(42,42,0,0.00,NULL,'Nuevo','2025-05-22'),(43,43,0,0.00,NULL,'Nuevo','2025-05-22'),(44,44,0,0.00,NULL,'Nuevo','2025-05-22'),(45,45,0,0.00,NULL,'Nuevo','2025-05-22'),(46,46,0,0.00,NULL,'Nuevo','2025-05-22'),(47,47,0,0.00,NULL,'Nuevo','2025-05-22'),(48,48,0,0.00,NULL,'Nuevo','2025-05-22'),(49,49,0,0.00,NULL,'Nuevo','2025-05-22'),(50,50,0,0.00,NULL,'Nuevo','2025-05-22'),(51,51,0,0.00,NULL,'Nuevo','2025-05-22'),(52,52,0,0.00,NULL,'Nuevo','2025-05-22'),(53,53,0,0.00,NULL,'Nuevo','2025-05-22'),(54,54,0,0.00,NULL,'Nuevo','2025-05-22'),(55,55,0,0.00,NULL,'Nuevo','2025-05-22'),(56,56,0,0.00,NULL,'Nuevo','2025-05-22'),(57,57,0,0.00,NULL,'Nuevo','2025-05-22'),(58,58,0,0.00,NULL,'Nuevo','2025-05-22'),(59,59,0,0.00,NULL,'Nuevo','2025-05-22'),(60,60,0,0.00,NULL,'Nuevo','2025-05-22'),(61,61,0,0.00,NULL,'Nuevo','2025-05-22'),(62,62,0,0.00,NULL,'Nuevo','2025-05-22'),(63,63,0,0.00,NULL,'Nuevo','2025-05-22'),(64,64,0,0.00,NULL,'Nuevo','2025-05-22'),(65,65,0,0.00,NULL,'Nuevo','2025-05-22'),(66,66,0,4240.00,NULL,'Nuevo','2025-05-22'),(67,67,0,0.00,NULL,'Nuevo','2025-05-22'),(68,68,0,12760.00,NULL,'Nuevo','2025-05-22'),(69,69,0,0.00,NULL,'Nuevo','2025-05-22'),(70,70,0,0.00,NULL,'Nuevo','2025-05-22'),(71,71,0,0.00,NULL,'Nuevo','2025-05-22'),(72,72,0,0.00,NULL,'Nuevo','2025-05-22'),(73,73,0,0.00,NULL,'Nuevo','2025-05-22'),(74,74,0,0.00,NULL,'Nuevo','2025-05-22'),(75,75,0,0.00,NULL,'Nuevo','2025-05-22'),(76,76,0,0.00,NULL,'Nuevo','2025-05-22'),(77,77,0,0.00,NULL,'Nuevo','2025-05-22'),(78,78,4,0.00,'2025-06-15','Nuevo','2025-05-22'),(79,79,0,0.00,NULL,'Nuevo','2025-05-22'),(80,80,0,0.00,NULL,'Nuevo','2025-05-22'),(81,81,0,0.00,NULL,'Nuevo','2025-05-24');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumo_servicio`
--

LOCK TABLES `consumo_servicio` WRITE;
/*!40000 ALTER TABLE `consumo_servicio` DISABLE KEYS */;
INSERT INTO `consumo_servicio` VALUES (1,1,1,'2024-03-11 14:30:00',1,850.00,850.00,'Pagado',73),(2,1,7,'2024-03-12 19:45:00',2,1200.00,2400.00,'Pagado',103),(3,2,8,'2024-04-19 08:15:00',3,380.00,1140.00,'Pagado',94),(4,2,15,'2024-04-20 07:00:00',2,1850.00,3700.00,'Pagado',208),(5,3,4,'2024-05-04 16:20:00',1,450.00,450.00,'Pagado',81),(6,3,13,'2024-05-05 22:30:00',1,150.00,150.00,'Pagado',126),(7,4,11,'2024-06-08 09:00:00',2,750.00,1500.00,'Pagado',157),(8,4,9,'2024-06-09 20:15:00',4,180.00,720.00,'Pagado',140),(9,5,2,'2024-07-21 11:45:00',1,650.00,650.00,'Pagado',74),(10,5,10,'2024-07-22 23:00:00',1,550.00,550.00,'Pagado',142),(11,6,7,'2024-08-15 18:30:00',2,1200.00,2400.00,'Pagado',119),(12,6,5,'2024-08-16 15:00:00',2,380.00,760.00,'Pagado',77),(13,7,8,'2024-09-26 07:30:00',1,380.00,380.00,'Pagado',108),(14,7,17,'2024-09-27 07:30:00',1,1280.00,1280.00,'Pagado',213),(15,8,14,'2024-10-10 21:00:00',1,2500.00,2500.00,'Pagado',177),(16,8,13,'2024-10-11 20:45:00',2,150.00,300.00,'Pagado',129),(17,9,3,'2024-11-24 10:00:00',3,200.00,600.00,'Pagado',73),(18,9,19,'2024-11-28 16:00:00',4,450.00,1800.00,'Pagado',213),(19,10,1,'2024-12-19 13:15:00',2,850.00,1700.00,'Pagado',75),(20,10,7,'2024-12-20 19:00:00',3,1200.00,3600.00,'Pagado',121),(21,21,8,'2025-01-16 08:00:00',1,380.00,380.00,'Pagado',105),(22,21,13,'2025-01-17 21:30:00',1,150.00,150.00,'Pagado',131),(23,22,1,'2025-02-11 14:00:00',2,850.00,1700.00,'No_Pagado',76),(24,22,7,'2025-02-12 20:00:00',2,1200.00,2400.00,'No_Pagado',120),(25,23,6,'2025-03-04 16:30:00',1,150.00,150.00,'No_Pagado',82),(26,24,15,'2025-04-18 07:00:00',2,1850.00,3700.00,'Pagado',212),(27,24,9,'2025-04-19 18:45:00',3,180.00,540.00,'Pagado',141),(28,25,11,'2025-05-11 10:30:00',1,750.00,750.00,'Pagado',158),(29,25,12,'2025-05-12 11:00:00',1,320.00,320.00,'Pagado',161),(30,26,4,'2025-06-26 17:15:00',1,450.00,450.00,'No_Pagado',81),(31,27,2,'2025-07-14 12:30:00',1,650.00,650.00,'No_Pagado',78),(32,27,5,'2025-07-15 16:00:00',1,380.00,380.00,'No_Pagado',79),(33,28,16,'2025-08-21 08:00:00',3,1650.00,4950.00,'No_Pagado',208),(34,29,8,'2025-09-08 07:45:00',1,380.00,380.00,'No_Pagado',98),(35,30,7,'2025-10-24 19:30:00',2,1200.00,2400.00,'No_Pagado',117),(36,46,3,'2024-01-21 09:30:00',2,200.00,400.00,'Pagado',73),(37,47,1,'2024-02-14 15:45:00',1,850.00,850.00,'Pagado',74),(38,48,8,'2024-03-26 08:15:00',1,380.00,380.00,'Pagado',106),(39,49,11,'2024-04-11 14:00:00',1,750.00,750.00,'Pagado',157),(40,50,14,'2024-05-24 22:30:00',1,2500.00,2500.00,'Pagado',178),(41,51,6,'2024-06-18 16:45:00',2,150.00,300.00,'Pagado',82),(42,52,13,'2024-07-14 23:15:00',1,150.00,150.00,'Pagado',128),(43,53,9,'2024-08-26 20:00:00',3,180.00,540.00,'Pagado',144),(44,54,2,'2024-09-11 11:30:00',1,650.00,650.00,'Pagado',76),(45,55,18,'2024-10-21 09:00:00',2,950.00,1900.00,'Pagado',212),(46,56,4,'2024-11-14 17:20:00',1,450.00,450.00,'Pagado',82),(47,57,1,'2024-12-26 14:45:00',2,850.00,1700.00,'Pagado',75),(48,58,8,'2025-01-18 08:30:00',1,380.00,380.00,'No_Pagado',104),(49,59,7,'2025-02-21 19:15:00',2,1200.00,2400.00,'No_Pagado',115),(50,60,13,'2025-03-08 21:45:00',1,150.00,150.00,'No_Pagado',134),(51,32,3,'2025-05-27 02:02:48',1,200.00,200.00,'No_Pagado',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (1,1,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,1,NULL),(2,1,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,2),(3,1,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,21),(4,2,'Hospedaje: Habitación Estándar Doble - 4 noches (Hab 1)',1,2000.00,8000.00,2,NULL),(5,2,'Hospedaje: Habitación Estándar Doble - 4 noches (Hab 2)',1,2000.00,8000.00,3,NULL),(6,2,'Servicio: Desayuno Buffet Internacional',3,380.00,1140.00,NULL,3),(7,2,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,2),(8,3,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,4,NULL),(9,3,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,5),(10,3,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,6),(11,4,'Hospedaje: Habitación Superior Individual - 5 noches (Hab 1)',1,2200.00,11000.00,5,NULL),(12,4,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,6,NULL),(13,4,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 3)',1,1500.00,7500.00,7,NULL),(14,4,'Servicio: Clase de Golf',2,750.00,1500.00,NULL,7),(15,4,'Servicio: Cóctel Premium en Bar',4,180.00,720.00,NULL,8),(16,5,'Hospedaje: Habitación Superior Individual - 5 noches',1,2200.00,11000.00,8,NULL),(17,5,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,9),(18,5,'Servicio: Noche en Discoteca',1,550.00,550.00,NULL,10),(19,6,'Hospedaje: Habitación Superior Doble - 4 noches (Hab 1)',1,2800.00,11200.00,9,NULL),(20,6,'Hospedaje: Habitación Superior Doble - 4 noches (Hab 2)',1,2800.00,11200.00,10,NULL),(21,6,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,11),(22,6,'Servicio: Hidromasaje',2,380.00,760.00,NULL,12),(23,7,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,11,NULL),(24,7,'Servicio: Desayuno Buffet Internacional',1,380.00,380.00,NULL,13),(25,7,'Servicio: Tour Chichén Itzá',1,1850.00,1850.00,NULL,14),(26,8,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,12,NULL),(27,8,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,13,NULL),(28,8,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,15),(29,8,'Servicio: Servicio a Cuarto 24hrs',2,150.00,300.00,NULL,16),(30,9,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,14,NULL),(31,9,'Servicio: Sesión de Yoga',3,200.00,600.00,NULL,17),(32,9,'Servicio: Cenotes Dos Ojos',4,950.00,3800.00,NULL,18),(33,10,'Hospedaje: Suite Junior - 4 noches (Hab 1)',1,3500.00,14000.00,15,NULL),(34,10,'Hospedaje: Suite Ejecutiva - 4 noches (Hab 2)',1,4500.00,18000.00,16,NULL),(35,10,'Hospedaje: Suite Presidencial - 4 noches (Hab 3)',1,8000.00,32000.00,17,NULL),(36,10,'Servicio: Masaje Relajante',2,850.00,1700.00,NULL,19),(37,10,'Servicio: Cena Gourmet',3,1200.00,3600.00,NULL,20),(38,11,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,18,NULL),(39,11,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,19,NULL),(40,11,'Servicio: Sesión de Yoga',2,200.00,400.00,NULL,36),(41,12,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,20,NULL),(42,12,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,37),(43,13,'Hospedaje: Habitación Estándar Doble - 4 noches (Hab 1)',1,2000.00,8000.00,21,NULL),(44,13,'Hospedaje: Habitación Superior Doble - 4 noches (Hab 2)',1,2800.00,11200.00,22,NULL),(45,13,'Servicio: Desayuno Buffet Internacional',1,380.00,380.00,NULL,38),(46,14,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,23,NULL),(47,14,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,24,NULL),(48,14,'Servicio: Clase de Golf',1,750.00,750.00,NULL,39),(49,15,'Hospedaje: Habitación Estándar Individual - 4 noches',1,1500.00,6000.00,25,NULL),(50,15,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,40),(51,16,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,26,NULL),(52,16,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,27,NULL),(53,16,'Servicio: Aqua Aeróbicos',2,150.00,300.00,NULL,41),(54,17,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,28,NULL),(55,17,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,29,NULL),(56,17,'Hospedaje: Suite Familiar - 5 noches (Hab 3)',1,5500.00,27500.00,30,NULL),(57,17,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,42),(58,18,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,31,NULL),(59,18,'Servicio: Cóctel Premium en Bar',3,180.00,540.00,NULL,43),(60,19,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,32,NULL),(61,19,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,33,NULL),(62,19,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,44),(63,20,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,34,NULL),(64,20,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,35,NULL),(65,20,'Servicio: Cenotes Dos Ojos',2,950.00,1900.00,NULL,45),(66,21,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,36,NULL),(67,21,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,21),(68,21,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,22),(69,22,'Hospedaje: Suite Junior - 4 noches (Hab 1)',1,3500.00,14000.00,37,NULL),(70,22,'Hospedaje: Suite Ejecutiva - 4 noches (Hab 2)',1,4500.00,18000.00,38,NULL),(71,22,'Hospedaje: Suite Familiar - 4 noches (Hab 3)',1,5500.00,22000.00,39,NULL),(72,22,'Servicio: Masaje Relajante',2,850.00,1700.00,NULL,23),(73,22,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,24),(74,23,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,40,NULL),(75,23,'Servicio: Aqua Aeróbicos',1,150.00,150.00,NULL,25),(76,24,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,41,NULL),(77,24,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,42,NULL),(78,24,'Servicio: Tour Chichén Itzá',2,1850.00,3700.00,NULL,26),(79,24,'Servicio: Cóctel Premium en Bar',3,180.00,540.00,NULL,27),(80,25,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,43,NULL),(81,25,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,44,NULL),(82,25,'Servicio: Clase de Golf',1,750.00,750.00,NULL,28),(83,25,'Servicio: Renta de Equipo Golf',1,320.00,320.00,NULL,29),(84,26,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,77,NULL),(85,26,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,78,NULL),(86,26,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,46),(87,27,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,79,NULL),(88,27,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,80,NULL),(89,27,'Servicio: Masaje Relajante',2,850.00,1700.00,NULL,47),(90,28,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,81,NULL),(91,28,'Servicio: Desayuno Buffet Internacional',1,380.00,380.00,NULL,48),(92,29,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,82,NULL),(93,29,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,83,NULL),(94,29,'Servicio: Clase de Golf',1,750.00,750.00,NULL,49),(95,30,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,84,NULL),(96,30,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,85,NULL),(97,30,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,86,NULL),(98,30,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,50),(99,31,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,87,NULL),(100,31,'Servicio: Aqua Aeróbicos',2,150.00,300.00,NULL,NULL),(101,32,'Hospedaje: Habitación Superior Individual - 5 noches (Hab 1)',1,2200.00,11000.00,88,NULL),(102,32,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,89,NULL),(103,32,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,NULL),(104,33,'Hospedaje: Habitación Superior Doble - 5 noches',1,2800.00,14000.00,90,NULL),(105,33,'Servicio: Cóctel Premium en Bar',3,180.00,540.00,NULL,NULL),(106,34,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 1)',1,1500.00,7500.00,91,NULL),(107,34,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,92,NULL),(108,34,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(109,35,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,93,NULL),(110,35,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,94,NULL),(111,35,'Servicio: Cenotes Dos Ojos',2,950.00,1900.00,NULL,NULL),(112,36,'Hospedaje: Habitación Suite Junior - 5 noches',1,3500.00,17500.00,95,NULL),(113,36,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(114,37,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 1)',1,4500.00,22500.00,96,NULL),(115,37,'Hospedaje: Suite Familiar - 5 noches (Hab 2)',1,5500.00,27500.00,97,NULL),(116,37,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,98,NULL),(117,37,'Servicio: Masaje Relajante',2,850.00,1700.00,NULL,NULL),(118,38,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,135,NULL),(119,38,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,136,NULL),(120,38,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,137,NULL),(121,38,'Servicio: Cena Gourmet',3,1200.00,3600.00,NULL,NULL),(122,39,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,138,NULL),(123,39,'Servicio: Hidromasaje',1,380.00,380.00,NULL,NULL),(124,40,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,139,NULL),(125,40,'Hospedaje: Suite Junior - 5 noches (Hab 2)',1,3500.00,17500.00,140,NULL),(126,40,'Servicio: Tour Xcaret',2,1650.00,3300.00,NULL,NULL),(127,41,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,141,NULL),(128,41,'Servicio: Sesión de Yoga',2,200.00,400.00,NULL,NULL),(129,42,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,143,NULL),(130,42,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,143,NULL),(131,42,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,144,NULL),(132,42,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,NULL),(133,43,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,145,NULL),(134,43,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(135,44,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,146,NULL),(136,44,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,147,NULL),(137,44,'Servicio: Hidromasaje',2,380.00,760.00,NULL,NULL),(138,45,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,148,NULL),(139,45,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,149,NULL),(140,45,'Servicio: Clase de Golf',1,750.00,750.00,NULL,NULL),(141,46,'Hospedaje: Habitación Superior Individual - 5 noches',1,2200.00,11000.00,150,NULL),(142,46,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(143,47,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,151,NULL),(144,47,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,152,NULL),(145,47,'Servicio: Aqua Aeróbicos',3,150.00,450.00,NULL,NULL),(146,48,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,153,NULL),(147,48,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,154,NULL),(148,48,'Servicio: Servicio a Cuarto 24hrs',2,150.00,300.00,NULL,NULL),(149,49,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,155,NULL),(150,49,'Servicio: Sesión de Yoga',1,200.00,200.00,NULL,NULL),(151,50,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,156,NULL),(152,50,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,157,NULL),(153,50,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,158,NULL),(154,50,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,NULL),(155,51,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,214,NULL),(156,51,'Hospedaje: Suite Junior - 5 noches (Hab 2)',1,3500.00,17500.00,215,NULL),(157,51,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(158,52,'Hospedaje: Suite Ejecutiva - 5 noches',1,4500.00,22500.00,216,NULL),(159,52,'Servicio: Hidromasaje',1,380.00,380.00,NULL,NULL),(160,53,'Hospedaje: Suite Presidencial - 5 noches (Hab 1)',1,8000.00,40000.00,217,NULL),(161,53,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,218,NULL),(162,53,'Servicio: Tour Chichén Itzá',1,1850.00,1850.00,NULL,NULL),(163,54,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,219,NULL),(164,54,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(165,55,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,220,NULL),(166,55,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,221,NULL),(167,55,'Servicio: Clase de Golf',2,750.00,1500.00,NULL,NULL),(168,56,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,222,NULL),(169,56,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(170,57,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,223,NULL),(171,57,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,224,NULL),(172,57,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 3)',1,2000.00,10000.00,225,NULL),(173,57,'Servicio: Cena Gourmet',4,1200.00,4800.00,NULL,NULL),(174,58,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,226,NULL),(175,58,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,227,NULL),(176,58,'Servicio: Aqua Aeróbicos',2,150.00,300.00,NULL,NULL),(177,59,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,228,NULL),(178,59,'Servicio: Sesión de Yoga',1,200.00,200.00,NULL,NULL),(179,60,'Hospedaje: Habitación Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,229,NULL),(180,60,'Hospedaje: Superior Individual - 5 noches (Hab 2)',1,2200.00,11000.00,230,NULL),(181,60,'Servicio: Hidromasaje',3,380.00,1140.00,NULL,NULL),(182,61,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,231,NULL),(183,61,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(184,62,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,232,NULL),(185,62,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,233,NULL),(186,62,'Servicio: Tour Xcaret',1,1650.00,1650.00,NULL,NULL),(187,63,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,234,NULL),(188,63,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(189,64,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,235,NULL),(190,64,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,236,NULL),(191,64,'Servicio: Cenotes Dos Ojos',3,950.00,2850.00,NULL,NULL),(192,65,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,237,NULL),(193,65,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,238,NULL),(194,65,'Servicio: Servicio a Cuarto 24hrs',2,150.00,300.00,NULL,NULL),(195,66,'Hospedaje: Superior Individual - 5 noches',1,2200.00,11000.00,239,NULL),(196,66,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(197,67,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,240,NULL),(198,67,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,241,NULL),(199,67,'Servicio: Clase de Golf',1,750.00,750.00,NULL,NULL),(200,68,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,242,NULL),(201,68,'Servicio: Aqua Aeróbicos',1,150.00,150.00,NULL,NULL),(202,69,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,243,NULL),(203,69,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,244,NULL),(204,69,'Hospedaje: Superior Individual - 5 noches (Hab 3)',1,2200.00,11000.00,245,NULL),(205,69,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,NULL),(206,70,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,246,NULL),(207,70,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,247,NULL),(208,70,'Servicio: Hidromasaje',2,380.00,760.00,NULL,NULL),(209,71,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,54,NULL),(210,72,'Hospedaje: Habitación Estándar Doble - 4 noches (Hab 1)',1,2000.00,8000.00,55,NULL),(211,72,'Hospedaje: Superior Doble - 4 noches (Hab 2)',1,2800.00,11200.00,56,NULL),(212,73,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,57,NULL),(213,74,'Hospedaje: Superior Individual - 5 noches (Hab 1)',1,2200.00,11000.00,58,NULL),(214,74,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,59,NULL),(215,74,'Hospedaje: Suite Junior - 5 noches (Hab 3)',1,3500.00,17500.00,60,NULL),(216,75,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,61,NULL),(217,76,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,62,NULL),(218,76,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,63,NULL),(219,77,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,64,NULL),(220,78,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,65,NULL),(221,78,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,66,NULL),(222,79,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,67,NULL),(223,80,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,68,NULL),(224,80,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,69,NULL),(225,81,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,99,NULL),(226,81,'Servicio: Desayuno Buffet Internacional',1,380.00,380.00,NULL,48),(227,82,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,100,NULL),(228,82,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,101,NULL),(229,82,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,49),(230,83,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,102,NULL),(231,83,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,50),(232,90,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,174,NULL),(233,90,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,175,NULL),(234,90,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(235,120,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,205,NULL),(236,120,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,206,NULL),(237,120,'Servicio: Hidromasaje',2,380.00,760.00,NULL,NULL),(238,135,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,248,NULL),(239,135,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,249,NULL),(240,135,'Servicio: Tour Chichén Itzá',1,1850.00,1850.00,NULL,NULL),(241,140,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,250,NULL),(242,140,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(243,84,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,103,NULL),(244,84,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,104,NULL),(245,84,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,105,NULL),(246,84,'Servicio: Masaje Relajante',2,850.00,1700.00,NULL,NULL),(247,85,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,106,NULL),(248,85,'Servicio: Hidromasaje',1,380.00,380.00,NULL,NULL),(249,86,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,107,NULL),(250,86,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,108,NULL),(251,86,'Servicio: Entrenamiento Personal',2,450.00,900.00,NULL,NULL),(252,87,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,109,NULL),(253,87,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,110,NULL),(254,87,'Servicio: Clase de Golf',1,750.00,750.00,NULL,NULL),(255,88,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,111,NULL),(256,88,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(257,89,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,112,NULL),(258,89,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,113,NULL),(259,89,'Hospedaje: Suite Presidencial - 5 noches (Hab 3)',1,8000.00,40000.00,114,NULL),(260,89,'Servicio: Cena Gourmet',3,1200.00,3600.00,NULL,NULL),(261,91,'Hospedaje: Superior Individual - 5 noches',1,2200.00,11000.00,159,NULL),(262,91,'Servicio: Sesión de Yoga',1,200.00,200.00,NULL,NULL),(263,92,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,160,NULL),(264,92,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,161,NULL),(265,92,'Servicio: Aqua Aeróbicos',2,150.00,300.00,NULL,NULL),(266,93,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,162,NULL),(267,93,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(268,94,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,163,NULL),(269,94,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,164,NULL),(270,94,'Hospedaje: Superior Individual - 5 noches (Hab 3)',1,2200.00,11000.00,165,NULL),(271,94,'Servicio: Tour Xcaret',2,1650.00,3300.00,NULL,NULL),(272,95,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,166,NULL),(273,95,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,167,NULL),(274,95,'Servicio: Hidromasaje',1,380.00,380.00,NULL,NULL),(275,96,'Hospedaje: Superior Individual - 5 noches',1,2200.00,11000.00,168,NULL),(276,96,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(277,97,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,169,NULL),(278,97,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,170,NULL),(279,97,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,NULL),(280,98,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,171,NULL),(281,98,'Servicio: Clase de Golf',1,750.00,750.00,NULL,NULL),(282,99,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,172,NULL),(283,99,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,173,NULL),(284,99,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(285,100,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,174,NULL),(286,100,'Servicio: Sesión de Yoga',2,200.00,400.00,NULL,NULL),(287,101,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,175,NULL),(288,101,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,176,NULL),(289,101,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,NULL),(290,102,'Hospedaje: Suite Presidencial - 5 noches (Hab 1)',1,8000.00,40000.00,177,NULL),(291,102,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,178,NULL),(292,102,'Hospedaje: Superior Doble - 5 noches (Hab 3)',1,2800.00,14000.00,179,NULL),(293,102,'Servicio: Cena Gourmet',4,1200.00,4800.00,NULL,NULL),(294,103,'Hospedaje: Superior Individual - 5 noches',1,2200.00,11000.00,248,NULL),(295,103,'Servicio: Aqua Aeróbicos',1,150.00,150.00,NULL,NULL),(296,104,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,249,NULL),(297,104,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,250,NULL),(298,104,'Servicio: Hidromasaje',2,380.00,760.00,NULL,NULL),(299,105,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,180,NULL),(300,106,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,181,NULL),(301,106,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,182,NULL),(302,107,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,183,NULL),(303,108,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,184,NULL),(304,108,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,185,NULL),(305,108,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 3)',1,2000.00,10000.00,186,NULL),(306,109,'Hospedaje: Superior Doble - 5 noches',1,2800.00,14000.00,187,NULL),(307,110,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,188,NULL),(308,110,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,189,NULL),(309,111,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,190,NULL),(310,112,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 1)',1,1500.00,7500.00,191,NULL),(311,112,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,192,NULL),(312,113,'Hospedaje: Superior Doble - 5 noches (Hab 1)',1,2800.00,14000.00,193,NULL),(313,113,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,194,NULL),(314,114,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,195,NULL),(315,115,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 1)',1,1500.00,7500.00,196,NULL),(316,115,'Hospedaje: Suite Junior - 5 noches (Hab 2)',1,3500.00,17500.00,197,NULL),(317,115,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(318,116,'Hospedaje: Suite Ejecutiva - 5 noches',1,4500.00,22500.00,198,NULL),(319,116,'Servicio: Hidromasaje',1,380.00,380.00,NULL,NULL),(320,117,'Hospedaje: Suite Familiar - 5 noches (Hab 1)',1,5500.00,27500.00,199,NULL),(321,117,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 2)',1,1500.00,7500.00,200,NULL),(322,117,'Servicio: Tour Chichén Itzá',1,1850.00,1850.00,NULL,NULL),(323,118,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,201,NULL),(324,118,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(325,119,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 1)',1,2000.00,10000.00,202,NULL),(326,119,'Hospedaje: Superior Doble - 5 noches (Hab 2)',1,2800.00,14000.00,203,NULL),(327,119,'Hospedaje: Superior Doble - 5 noches (Hab 3)',1,2800.00,14000.00,204,NULL),(328,119,'Servicio: Cena Gourmet',3,1200.00,3600.00,NULL,NULL),(329,121,'Hospedaje: Superior Doble - 5 noches',1,2800.00,14000.00,207,NULL),(330,121,'Servicio: Clase de Golf',1,750.00,750.00,NULL,NULL),(331,122,'Hospedaje: Suite Junior - 5 noches (Hab 1)',1,3500.00,17500.00,208,NULL),(332,122,'Hospedaje: Suite Ejecutiva - 5 noches (Hab 2)',1,4500.00,22500.00,209,NULL),(333,122,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,NULL),(334,123,'Hospedaje: Suite Familiar - 5 noches',1,5500.00,27500.00,210,NULL),(335,123,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(336,124,'Hospedaje: Habitación Estándar Individual - 5 noches (Hab 1)',1,1500.00,7500.00,211,NULL),(337,124,'Hospedaje: Habitación Estándar Doble - 5 noches (Hab 2)',1,2000.00,10000.00,212,NULL),(338,124,'Servicio: Cenotes Dos Ojos',2,950.00,1900.00,NULL,NULL),(339,125,'Hospedaje: Superior Doble - 5 noches',1,2800.00,14000.00,213,NULL),(340,125,'Servicio: Sesión de Yoga',2,200.00,400.00,NULL,NULL),(341,126,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,NULL,NULL),(342,126,'Servicio: Aqua Aeróbicos',1,150.00,150.00,NULL,NULL),(343,127,'Hospedaje: Suite Junior - 5 noches',1,3500.00,17500.00,NULL,NULL),(344,127,'Servicio: Masaje Relajante',1,850.00,850.00,NULL,NULL),(345,128,'Hospedaje: Superior Individual - 5 noches',1,2200.00,11000.00,NULL,NULL),(346,128,'Servicio: Hidromasaje',1,380.00,380.00,NULL,NULL),(347,129,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,NULL,NULL),(348,129,'Servicio: Entrenamiento Personal',1,450.00,450.00,NULL,NULL),(349,130,'Hospedaje: Suite Ejecutiva - 5 noches',1,4500.00,22500.00,NULL,NULL),(350,130,'Servicio: Cena Gourmet',2,1200.00,2400.00,NULL,NULL),(351,131,'Hospedaje: Habitación Estándar Individual - 5 noches',1,1500.00,7500.00,NULL,NULL),(352,131,'Servicio: Clase de Golf',1,750.00,750.00,NULL,NULL),(353,132,'Hospedaje: Superior Doble - 5 noches',1,2800.00,14000.00,NULL,NULL),(354,132,'Servicio: Tour Xcaret',1,1650.00,1650.00,NULL,NULL),(355,133,'Hospedaje: Suite Familiar - 5 noches',1,5500.00,27500.00,NULL,NULL),(356,133,'Servicio: Mesa Privada Casino',1,2500.00,2500.00,NULL,NULL),(357,134,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,NULL,NULL),(358,134,'Servicio: Tratamiento Facial Anti-Edad',1,650.00,650.00,NULL,NULL),(359,136,'Hospedaje: Suite Junior - 5 noches',1,3500.00,17500.00,NULL,NULL),(360,136,'Servicio: Cenotes Dos Ojos',2,950.00,1900.00,NULL,NULL),(361,137,'Hospedaje: Superior Individual - 5 noches',1,2200.00,11000.00,NULL,NULL),(362,137,'Servicio: Sesión de Yoga',1,200.00,200.00,NULL,NULL),(363,138,'Hospedaje: Habitación Estándar Doble - 5 noches',1,2000.00,10000.00,NULL,NULL),(364,138,'Servicio: Aqua Aeróbicos',2,150.00,300.00,NULL,NULL),(365,139,'Hospedaje: Suite Ejecutiva - 5 noches',1,4500.00,22500.00,NULL,NULL),(366,139,'Servicio: Hidromasaje',2,380.00,760.00,NULL,NULL),(367,142,'PENALIZACIÓN POR CANCELACIÓN - Estándar Individual - Habitación 804 (5 noches) - Cancelación tardía',1,3190.00,3190.00,74,NULL),(368,142,'PENALIZACIÓN POR CANCELACIÓN - Estándar Doble - Habitación 805 (5 noches) - Cancelación tardía',1,3190.00,3190.00,75,NULL),(369,143,'PENALIZACIÓN POR CANCELACIÓN - Estándar Individual - Habitación 804 (5 noches) - Cancelación tardía',1,3190.00,3190.00,74,NULL),(370,143,'PENALIZACIÓN POR CANCELACIÓN - Estándar Doble - Habitación 805 (5 noches) - Cancelación tardía',1,3190.00,3190.00,75,NULL),(371,147,'Servicio: Clase de Golf',1,750.00,750.00,NULL,28),(372,147,'Servicio: Renta de Equipo Golf',1,320.00,320.00,NULL,29),(374,148,'Servicio: Tour Chichén Itzá',2,1850.00,3700.00,NULL,26),(375,148,'Servicio: Cóctel Premium en Bar',3,180.00,540.00,NULL,27),(377,152,'Servicio: Desayuno Buffet Internacional',1,380.00,380.00,NULL,21),(378,152,'Servicio: Servicio a Cuarto 24hrs',1,150.00,150.00,NULL,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_reserva_habitacion`
--

LOCK TABLES `detalle_reserva_habitacion` WRITE;
/*!40000 ALTER TABLE `detalle_reserva_habitacion` DISABLE KEYS */;
INSERT INTO `detalle_reserva_habitacion` VALUES (1,1,101,'2024-03-10 15:00:00','2024-03-15 12:00:00',1500.00,NULL),(2,2,102,'2024-04-18 15:00:00','2024-04-22 12:00:00',2000.00,NULL),(3,2,103,'2024-04-18 15:00:00','2024-04-22 12:00:00',2000.00,NULL),(4,3,104,'2024-05-03 15:00:00','2024-05-08 12:00:00',1500.00,NULL),(5,4,105,'2024-06-07 15:00:00','2024-06-12 12:00:00',2200.00,NULL),(6,4,106,'2024-06-07 15:00:00','2024-06-12 12:00:00',2800.00,NULL),(7,4,107,'2024-06-07 15:00:00','2024-06-12 12:00:00',1500.00,NULL),(8,5,108,'2024-07-20 15:00:00','2024-07-25 12:00:00',2200.00,NULL),(9,6,109,'2024-08-14 15:00:00','2024-08-18 12:00:00',2800.00,NULL),(10,6,110,'2024-08-14 15:00:00','2024-08-18 12:00:00',2800.00,NULL),(11,7,201,'2024-09-25 15:00:00','2024-09-30 12:00:00',1500.00,NULL),(12,8,202,'2024-10-09 15:00:00','2024-10-14 12:00:00',2000.00,NULL),(13,8,203,'2024-10-09 15:00:00','2024-10-14 12:00:00',2800.00,NULL),(14,9,204,'2024-11-23 15:00:00','2024-11-28 12:00:00',1500.00,NULL),(15,10,205,'2024-12-18 15:00:00','2024-12-22 12:00:00',3500.00,NULL),(16,10,206,'2024-12-18 15:00:00','2024-12-22 12:00:00',4500.00,NULL),(17,10,207,'2024-12-18 15:00:00','2024-12-22 12:00:00',8000.00,NULL),(18,11,208,'2023-06-10 15:00:00','2023-06-15 12:00:00',2000.00,NULL),(19,11,209,'2023-06-10 15:00:00','2023-06-15 12:00:00',2800.00,NULL),(20,12,210,'2023-07-25 15:00:00','2023-07-30 12:00:00',1500.00,NULL),(21,13,301,'2023-08-08 15:00:00','2023-08-12 12:00:00',2000.00,NULL),(22,13,302,'2023-08-08 15:00:00','2023-08-12 12:00:00',2800.00,NULL),(23,14,303,'2023-09-20 15:00:00','2023-09-25 12:00:00',2000.00,NULL),(24,14,304,'2023-09-20 15:00:00','2023-09-25 12:00:00',2800.00,NULL),(25,15,305,'2023-10-14 15:00:00','2023-10-18 12:00:00',1500.00,NULL),(26,16,306,'2023-11-17 15:00:00','2023-11-22 12:00:00',2000.00,NULL),(27,16,307,'2023-11-17 15:00:00','2023-11-22 12:00:00',2800.00,NULL),(28,17,308,'2023-12-25 15:00:00','2023-12-30 12:00:00',3500.00,NULL),(29,17,309,'2023-12-25 15:00:00','2023-12-30 12:00:00',4500.00,NULL),(30,17,310,'2023-12-25 15:00:00','2023-12-30 12:00:00',5500.00,NULL),(31,18,401,'2024-01-10 15:00:00','2024-01-15 12:00:00',1500.00,NULL),(32,19,402,'2024-02-23 15:00:00','2024-02-28 12:00:00',2000.00,NULL),(33,19,403,'2024-02-23 15:00:00','2024-02-28 12:00:00',2800.00,NULL),(34,20,205,'2024-03-13 15:00:00','2024-03-18 12:00:00',3500.00,NULL),(35,20,310,'2024-03-13 15:00:00','2024-03-18 12:00:00',5500.00,NULL),(36,21,406,'2025-01-15 15:00:00',NULL,1500.00,NULL),(37,22,407,'2025-02-10 15:00:00',NULL,3500.00,NULL),(38,22,408,'2025-02-10 15:00:00',NULL,4500.00,NULL),(39,22,409,'2025-02-10 15:00:00',NULL,5500.00,NULL),(40,23,410,'2025-03-03 15:00:00',NULL,1500.00,NULL),(41,24,501,'2025-04-17 15:00:00',NULL,2000.00,NULL),(42,24,502,'2025-04-17 15:00:00',NULL,2800.00,NULL),(43,25,503,'2025-05-10 15:00:00',NULL,2000.00,NULL),(44,25,504,'2025-05-10 15:00:00',NULL,2800.00,NULL),(45,26,505,'2025-06-25 15:00:00',NULL,1500.00,NULL),(46,27,506,'2025-07-13 15:00:00',NULL,2000.00,NULL),(47,27,507,'2025-07-13 15:00:00',NULL,2800.00,NULL),(48,28,508,'2025-08-20 15:00:00',NULL,3500.00,NULL),(49,28,509,'2025-08-20 15:00:00',NULL,4500.00,NULL),(50,28,510,'2025-08-20 15:00:00',NULL,5500.00,NULL),(51,29,601,'2025-09-07 15:00:00',NULL,1500.00,NULL),(52,30,602,'2025-10-23 15:00:00',NULL,2000.00,NULL),(53,30,603,'2025-10-23 15:00:00',NULL,2800.00,NULL),(54,31,604,NULL,NULL,1500.00,1),(55,32,605,NULL,NULL,2000.00,2),(56,32,606,NULL,NULL,2800.00,2),(57,33,607,NULL,NULL,1500.00,3),(58,34,608,NULL,NULL,2200.00,4),(59,34,609,NULL,NULL,2800.00,4),(60,34,610,NULL,NULL,3500.00,4),(61,35,701,NULL,NULL,2200.00,5),(62,36,702,NULL,NULL,2000.00,6),(63,36,703,NULL,NULL,2800.00,6),(64,37,704,NULL,NULL,1500.00,7),(65,38,705,NULL,NULL,2000.00,8),(66,38,706,NULL,NULL,2800.00,8),(67,39,707,NULL,NULL,1500.00,9),(68,40,708,NULL,NULL,2000.00,10),(69,40,709,NULL,NULL,2800.00,10),(70,41,710,NULL,NULL,1500.00,NULL),(71,42,801,NULL,NULL,2000.00,NULL),(72,42,802,NULL,NULL,2800.00,NULL),(73,43,803,NULL,NULL,1500.00,NULL),(74,44,804,NULL,NULL,2000.00,36),(75,44,805,NULL,NULL,2800.00,36),(76,45,806,NULL,NULL,1500.00,NULL),(77,46,807,'2024-01-20 15:00:00','2024-01-25 12:00:00',2000.00,NULL),(78,46,808,'2024-01-20 15:00:00','2024-01-25 12:00:00',2800.00,NULL),(79,47,809,'2024-02-13 15:00:00','2024-02-18 12:00:00',2000.00,NULL),(80,47,810,'2024-02-13 15:00:00','2024-02-18 12:00:00',2800.00,NULL),(81,48,101,'2024-03-25 15:00:00','2024-03-30 12:00:00',1500.00,NULL),(82,49,102,'2024-04-10 15:00:00','2024-04-15 12:00:00',2000.00,NULL),(83,49,103,'2024-04-10 15:00:00','2024-04-15 12:00:00',2000.00,NULL),(84,50,104,'2024-05-23 15:00:00','2024-05-28 12:00:00',3500.00,NULL),(85,50,105,'2024-05-23 15:00:00','2024-05-28 12:00:00',4500.00,NULL),(86,50,106,'2024-05-23 15:00:00','2024-05-28 12:00:00',8000.00,NULL),(87,51,107,'2024-06-17 15:00:00','2024-06-22 12:00:00',1500.00,NULL),(88,52,108,'2024-07-13 15:00:00','2024-07-18 12:00:00',2000.00,NULL),(89,52,109,'2024-07-13 15:00:00','2024-07-18 12:00:00',2800.00,NULL),(90,53,110,'2024-08-25 15:00:00','2024-08-30 12:00:00',1500.00,NULL),(91,54,201,'2024-09-10 15:00:00','2024-09-15 12:00:00',2000.00,NULL),(92,54,202,'2024-09-10 15:00:00','2024-09-15 12:00:00',2800.00,NULL),(93,55,207,'2024-10-20 15:00:00','2024-10-25 12:00:00',8000.00,NULL),(94,55,103,'2024-10-20 15:00:00','2024-10-25 12:00:00',2000.00,NULL),(95,56,205,'2024-11-13 15:00:00','2024-11-18 12:00:00',1500.00,NULL),(96,57,206,'2024-12-25 15:00:00','2024-12-30 12:00:00',3500.00,NULL),(97,57,207,'2024-12-25 15:00:00','2024-12-30 12:00:00',4500.00,NULL),(98,57,208,'2024-12-25 15:00:00','2024-12-30 12:00:00',8000.00,NULL),(99,58,209,'2025-01-17 15:00:00',NULL,1500.00,NULL),(100,59,210,'2025-02-20 15:00:00',NULL,2000.00,NULL),(101,59,301,'2025-02-20 15:00:00',NULL,2800.00,NULL),(102,60,302,'2025-03-07 15:00:00',NULL,1500.00,NULL),(103,61,303,'2025-04-23 15:00:00',NULL,3500.00,NULL),(104,61,304,'2025-04-23 15:00:00',NULL,4500.00,NULL),(105,61,305,'2025-04-23 15:00:00',NULL,8000.00,NULL),(106,62,306,'2025-05-13 15:00:00',NULL,1500.00,NULL),(107,63,307,'2025-06-10 15:00:00',NULL,2000.00,NULL),(108,63,308,'2025-06-10 15:00:00',NULL,2800.00,NULL),(109,64,309,'2025-07-25 15:00:00',NULL,2000.00,NULL),(110,64,310,'2025-07-25 15:00:00',NULL,2800.00,NULL),(111,65,401,'2025-08-07 15:00:00',NULL,1500.00,NULL),(112,66,402,'2025-09-23 15:00:00',NULL,3500.00,NULL),(113,66,403,'2025-09-23 15:00:00',NULL,4500.00,NULL),(114,66,404,'2025-09-23 15:00:00',NULL,8000.00,NULL),(115,67,405,'2025-10-10 15:00:00',NULL,2000.00,NULL),(116,67,406,'2025-10-10 15:00:00',NULL,2800.00,NULL),(117,68,407,'2025-11-25 15:00:00',NULL,1500.00,NULL),(118,69,408,'2025-12-17 15:00:00',NULL,3500.00,NULL),(119,69,409,'2025-12-17 15:00:00',NULL,4500.00,NULL),(120,69,410,'2025-12-17 15:00:00',NULL,8000.00,NULL),(121,70,501,NULL,NULL,1500.00,11),(122,71,502,NULL,NULL,2000.00,12),(123,71,503,NULL,NULL,2800.00,12),(124,72,504,NULL,NULL,1500.00,13),(125,73,505,NULL,NULL,2000.00,14),(126,73,506,NULL,NULL,2800.00,14),(127,74,507,NULL,NULL,1500.00,15),(128,75,508,NULL,NULL,2000.00,16),(129,75,509,NULL,NULL,2800.00,16),(130,76,510,NULL,NULL,1500.00,17),(131,77,601,NULL,NULL,2000.00,18),(132,77,602,NULL,NULL,2800.00,18),(133,78,603,NULL,NULL,1500.00,19),(134,79,604,NULL,NULL,1500.00,20),(135,80,605,'2023-12-20 15:00:00','2023-12-25 12:00:00',3500.00,NULL),(136,80,606,'2023-12-20 15:00:00','2023-12-25 12:00:00',4500.00,NULL),(137,80,607,'2023-12-20 15:00:00','2023-12-25 12:00:00',8000.00,NULL),(138,81,608,'2024-01-13 15:00:00','2024-01-18 12:00:00',1500.00,NULL),(139,82,609,'2024-02-20 15:00:00','2024-02-25 12:00:00',2000.00,NULL),(140,82,610,'2024-02-20 15:00:00','2024-02-25 12:00:00',3500.00,NULL),(141,83,701,'2024-03-23 15:00:00','2024-03-28 12:00:00',1500.00,NULL),(142,84,702,'2024-04-25 15:00:00','2024-04-30 12:00:00',3500.00,NULL),(143,84,703,'2024-04-25 15:00:00','2024-04-30 12:00:00',4500.00,NULL),(144,84,704,'2024-04-25 15:00:00','2024-04-30 12:00:00',8000.00,NULL),(145,85,705,'2024-05-10 15:00:00','2024-05-15 12:00:00',1500.00,NULL),(146,86,706,'2024-06-23 15:00:00','2024-06-28 12:00:00',2000.00,NULL),(147,86,707,'2024-06-23 15:00:00','2024-06-28 12:00:00',2800.00,NULL),(148,87,708,'2024-07-15 15:00:00','2024-07-20 12:00:00',2000.00,NULL),(149,87,709,'2024-07-15 15:00:00','2024-07-20 12:00:00',2800.00,NULL),(150,88,710,'2024-08-17 15:00:00','2024-08-22 12:00:00',2200.00,NULL),(151,89,801,'2024-09-13 15:00:00','2024-09-18 12:00:00',2000.00,NULL),(152,89,802,'2024-09-13 15:00:00','2024-09-18 12:00:00',2800.00,NULL),(153,90,803,'2024-10-25 15:00:00','2024-10-30 12:00:00',2000.00,NULL),(154,90,804,'2024-10-25 15:00:00','2024-10-30 12:00:00',2800.00,NULL),(155,91,805,'2024-11-07 15:00:00','2024-11-12 12:00:00',1500.00,NULL),(156,92,806,'2024-12-23 15:00:00','2024-12-28 12:00:00',3500.00,NULL),(157,92,807,'2024-12-23 15:00:00','2024-12-28 12:00:00',4500.00,NULL),(158,92,808,'2024-12-23 15:00:00','2024-12-28 12:00:00',8000.00,NULL),(159,93,809,'2025-01-20 15:00:00',NULL,2200.00,NULL),(160,94,810,'2025-02-13 15:00:00',NULL,2000.00,NULL),(161,94,101,'2025-02-13 15:00:00','2025-05-24 18:44:35',1500.00,NULL),(162,95,102,'2025-03-25 15:00:00',NULL,2000.00,NULL),(163,96,103,'2025-04-07 15:00:00',NULL,2000.00,NULL),(164,96,104,'2025-04-07 15:00:00',NULL,1500.00,NULL),(165,96,105,'2025-04-07 15:00:00',NULL,2200.00,NULL),(166,97,106,'2025-05-23 15:00:00',NULL,2800.00,NULL),(167,97,107,'2025-05-23 15:00:00',NULL,1500.00,NULL),(168,98,108,'2025-06-17 15:00:00',NULL,2200.00,NULL),(169,99,109,'2025-07-20 15:00:00',NULL,2800.00,NULL),(170,99,110,'2025-07-20 15:00:00',NULL,2800.00,NULL),(171,100,201,'2025-08-23 15:00:00',NULL,1500.00,NULL),(172,101,202,'2025-09-25 15:00:00',NULL,2000.00,NULL),(173,101,203,'2025-09-25 15:00:00',NULL,2800.00,NULL),(174,102,204,'2025-10-17 15:00:00',NULL,1500.00,NULL),(175,103,205,'2025-11-10 15:00:00',NULL,3500.00,NULL),(176,103,206,'2025-11-10 15:00:00',NULL,4500.00,NULL),(177,104,207,'2025-12-25 15:00:00',NULL,8000.00,NULL),(178,104,208,'2025-12-25 15:00:00',NULL,2000.00,NULL),(179,104,209,'2025-12-25 15:00:00',NULL,2800.00,NULL),(180,105,210,NULL,NULL,1500.00,21),(181,106,301,NULL,NULL,2000.00,22),(182,106,302,NULL,NULL,2800.00,22),(183,107,303,NULL,NULL,2000.00,23),(184,108,304,NULL,NULL,2800.00,24),(185,108,305,NULL,NULL,1500.00,24),(186,108,306,NULL,NULL,2000.00,24),(187,109,307,NULL,NULL,2800.00,25),(188,110,308,NULL,NULL,3500.00,26),(189,110,309,NULL,NULL,4500.00,26),(190,111,310,NULL,NULL,5500.00,27),(191,112,401,NULL,NULL,1500.00,28),(192,112,402,NULL,NULL,2000.00,28),(193,113,403,NULL,NULL,2800.00,29),(194,113,404,NULL,NULL,2800.00,29),(195,114,405,NULL,NULL,2000.00,30),(196,115,406,NULL,NULL,1500.00,NULL),(197,115,407,NULL,NULL,3500.00,NULL),(198,116,408,NULL,NULL,4500.00,NULL),(199,117,409,NULL,NULL,5500.00,NULL),(200,117,410,NULL,NULL,1500.00,NULL),(201,118,501,NULL,NULL,1500.00,NULL),(202,119,502,NULL,NULL,2000.00,33),(203,119,503,NULL,NULL,2800.00,33),(204,119,504,NULL,NULL,2800.00,33),(205,120,505,NULL,NULL,1500.00,NULL),(206,120,506,NULL,NULL,2000.00,NULL),(207,121,507,NULL,NULL,2800.00,NULL),(208,122,508,NULL,NULL,3500.00,NULL),(209,122,509,NULL,NULL,4500.00,NULL),(210,123,510,NULL,NULL,5500.00,NULL),(211,124,601,NULL,NULL,1500.00,NULL),(212,124,602,NULL,NULL,2000.00,NULL),(213,125,603,NULL,NULL,2800.00,NULL),(214,126,604,'2023-05-15 15:00:00','2023-05-20 12:00:00',2000.00,NULL),(215,126,605,'2023-05-15 15:00:00','2023-05-20 12:00:00',3500.00,NULL),(216,127,606,'2023-06-20 15:00:00','2023-06-25 12:00:00',4500.00,NULL),(217,128,607,'2023-07-23 15:00:00','2023-07-28 12:00:00',8000.00,NULL),(218,128,608,'2023-07-23 15:00:00','2023-07-28 12:00:00',1500.00,NULL),(219,129,609,'2023-08-25 15:00:00','2023-08-30 12:00:00',2000.00,NULL),(220,130,610,'2023-09-17 15:00:00','2023-09-22 12:00:00',3500.00,NULL),(221,130,701,'2023-09-17 15:00:00','2023-09-22 12:00:00',1500.00,NULL),(222,131,702,'2023-10-20 15:00:00','2023-10-25 12:00:00',2000.00,NULL),(223,132,703,'2023-11-13 15:00:00','2023-11-18 12:00:00',2800.00,NULL),(224,132,704,'2023-11-13 15:00:00','2023-11-18 12:00:00',1500.00,NULL),(225,132,705,'2023-11-13 15:00:00','2023-11-18 12:00:00',2000.00,NULL),(226,133,706,'2023-12-17 15:00:00','2023-12-22 12:00:00',2000.00,NULL),(227,133,707,'2023-12-17 15:00:00','2023-12-22 12:00:00',2800.00,NULL),(228,134,708,'2024-01-23 15:00:00','2024-01-28 12:00:00',2000.00,NULL),(229,135,709,'2024-02-15 15:00:00','2024-02-20 12:00:00',2800.00,NULL),(230,135,710,'2024-02-15 15:00:00','2024-02-20 12:00:00',2200.00,NULL),(231,136,801,'2024-03-20 15:00:00','2024-03-25 12:00:00',1500.00,NULL),(232,137,802,'2024-04-13 15:00:00','2024-04-18 12:00:00',2000.00,NULL),(233,137,803,'2024-04-13 15:00:00','2024-04-18 12:00:00',2000.00,NULL),(234,138,804,'2024-05-25 15:00:00','2024-05-30 12:00:00',1500.00,NULL),(235,139,805,'2024-06-15 15:00:00','2024-06-20 12:00:00',2000.00,NULL),(236,139,806,'2024-06-15 15:00:00','2024-06-20 12:00:00',2000.00,NULL),(237,140,807,'2024-07-20 15:00:00','2024-07-25 12:00:00',2000.00,NULL),(238,140,808,'2024-07-20 15:00:00','2024-07-25 12:00:00',2800.00,NULL),(239,141,809,'2024-08-23 15:00:00','2024-08-28 12:00:00',2200.00,NULL),(240,142,810,'2024-09-25 15:00:00','2024-09-30 12:00:00',2000.00,NULL),(241,142,101,'2024-09-25 15:00:00','2024-09-30 12:00:00',1500.00,NULL),(242,143,102,'2024-10-17 15:00:00','2024-10-22 12:00:00',2000.00,NULL),(243,144,103,'2024-11-23 15:00:00','2024-11-28 12:00:00',2000.00,NULL),(244,144,104,'2024-11-23 15:00:00','2024-11-28 12:00:00',1500.00,NULL),(245,144,105,'2024-11-23 15:00:00','2024-11-28 12:00:00',2200.00,NULL),(246,145,106,'2024-12-15 15:00:00','2024-12-20 12:00:00',2800.00,NULL),(247,145,107,'2024-12-15 15:00:00','2024-12-20 12:00:00',1500.00,NULL),(248,146,108,'2025-01-13 15:00:00',NULL,2200.00,NULL),(249,147,109,'2025-02-17 15:00:00',NULL,2800.00,NULL),(250,147,110,'2025-02-17 15:00:00',NULL,2800.00,NULL),(251,151,101,'2025-05-24 18:44:03',NULL,1500.00,NULL),(254,154,101,NULL,NULL,1500.00,NULL);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_upgrade_vip_bitacora` AFTER UPDATE ON `detalle_reserva_habitacion` FOR EACH ROW BEGIN
    DECLARE v_es_cliente_vip BOOLEAN DEFAULT FALSE;
    DECLARE v_nombre_cliente VARCHAR(255);
    DECLARE v_tipo_habitacion_anterior VARCHAR(100);
    DECLARE v_tipo_habitacion_nueva VARCHAR(100);
    DECLARE v_precio_anterior DECIMAL(10,2);
    DECLARE v_precio_nuevo DECIMAL(10,2);
    DECLARE v_motivo_upgrade TEXT;
    
    -- Solo procesar si cambió la habitación (indicador de upgrade)
    IF OLD.ID_Habitacion != NEW.ID_Habitacion THEN
        
        -- Verificar si el cliente de la reserva es VIP
        SELECT 
            c.Es_VIP,
            CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS nombre_completo
        INTO 
            v_es_cliente_vip,
            v_nombre_cliente
        FROM cliente c
        JOIN reserva r ON c.ID_Cliente = r.ID_Cliente
        WHERE r.ID_Reserva = NEW.ID_Reserva;
        
        -- Solo registrar si es cliente VIP (el upgrade probablemente fue por eso)
        IF v_es_cliente_vip = TRUE THEN
            
            -- Obtener información de los tipos de habitación
            SELECT th.Nombre, th.Precio_Base
            INTO v_tipo_habitacion_anterior, v_precio_anterior
            FROM habitacion h
            JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
            WHERE h.ID_Habitacion = OLD.ID_Habitacion;
            
            SELECT th.Nombre, th.Precio_Base
            INTO v_tipo_habitacion_nueva, v_precio_nuevo
            FROM habitacion h
            JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
            WHERE h.ID_Habitacion = NEW.ID_Habitacion;
            
            -- Registrar el cambio de la habitación ANTERIOR (liberada)
            INSERT INTO bitacora_habitacion (
                ID_Habitacion,
                CheckIn,
                Checkout,
                ID_Empleado,
                Fecha_Hora_Cambio,
                Motivo_cambio,
                Estado
            ) VALUES (
                OLD.ID_Habitacion,
                NEW.Fecha_Check_In,
                NEW.Fecha_Check_Out,
                NULL, -- Sistema automático
                NOW(),
                'Mejora por VIP - Habitación liberada para upgrade',
                'Disponible'
            );
            
            -- Registrar el cambio de la habitación NUEVA (asignada)
            INSERT INTO bitacora_habitacion (
                ID_Habitacion,
                CheckIn,
                Checkout,
                ID_Empleado,
                Fecha_Hora_Cambio,
                Motivo_cambio,
                Estado
            ) VALUES (
                NEW.ID_Habitacion,
                NEW.Fecha_Check_In,
                NEW.Fecha_Check_Out,
                NULL, -- Sistema automático
                NOW(),
                CONCAT('Mejora por VIP - Upgrade de ', v_tipo_habitacion_anterior, ' a ', v_tipo_habitacion_nueva),
                CASE 
                    WHEN NEW.Fecha_Check_In IS NOT NULL THEN 'Ocupado'
                    ELSE 'Disponible'
                END
            );
            
        END IF;
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,'2024-03-15 12:30:00',8500.00,'Pagada','Tarjeta de Crédito','TXN-20240315-7834',56,'CPM790618EMP'),(2,2,'2024-04-22 11:45:00',12750.00,'Pagada','Transferencia Bancaria','TXN-20240422-9156',61,'RUMM870414HM9'),(3,3,'2024-05-08 10:15:00',6200.00,'Pagada','Efectivo','TXN-20240508-2473',58,'DIRP911207MH8'),(4,4,'2024-06-12 13:20:00',15800.00,'Pagada','Tarjeta de Crédito','TXN-20240612-5691',62,'ESFI851004HM3'),(5,5,'2024-07-25 12:00:00',9400.00,'Pagada','Tarjeta de Débito','TXN-20240725-8237',65,'IGJM800215HM7'),(6,6,'2024-08-18 11:30:00',11250.00,'Pagada','Transferencia Bancaria','TXN-20240818-4582',59,'ROCL800610MH4'),(7,7,'2024-09-30 12:45:00',7800.00,'Pagada','Tarjeta de Crédito','TXN-20240930-7923',63,'NUOR920914MH2'),(8,8,'2024-10-14 14:10:00',13600.00,'Pagada','Efectivo','TXN-20241014-3467',57,'REHG890629MH0'),(9,9,'2024-11-28 11:20:00',10200.00,'Pagada','Tarjeta de Crédito','TXN-20241128-6841',64,'XIYB920429MH6'),(10,10,'2024-12-22 15:30:00',16750.00,'Pagada','Transferencia Bancaria','TXN-20241222-2195',60,'DEPO890709HM9'),(11,11,'2023-06-15 13:00:00',9800.00,'Pagada','Tarjeta de Crédito','TXN-20230615-4738',56,'MANI860516HM5'),(12,12,'2023-07-30 10:45:00',7350.00,'Pagada','Efectivo','TXN-20230730-8592',61,'IBLM830811HM3'),(13,13,'2023-08-12 12:15:00',14200.00,'Pagada','Tarjeta de Débito','TXN-20230812-1674',58,'PEAC830924MH8'),(14,14,'2023-09-25 11:50:00',11850.00,'Pagada','Transferencia Bancaria','TXN-20230925-5381',62,'RASV821126MH6'),(15,15,'2023-10-18 14:20:00',8750.00,'Pagada','Tarjeta de Crédito','TXN-20231018-9246',65,'ESKA940906MH2'),(16,16,'2023-11-22 12:30:00',12400.00,'Pagada','Efectivo','TXN-20231122-7163',59,'ZAVE951018MH2'),(17,17,'2023-12-30 16:00:00',15600.00,'Pagada','Tarjeta de Crédito','TXN-20231230-3827',63,'QURU890708HM5'),(18,18,'2024-01-15 11:00:00',6900.00,'Pagada','Transferencia Bancaria','TXN-20240115-8495',57,'SALH841123HM7'),(19,19,'2024-02-28 13:45:00',10800.00,'Pagada','Tarjeta de Débito','TXN-20240228-2758',64,'PAQG940508MH8'),(20,20,'2024-03-18 10:30:00',13200.00,'Pagada','Efectivo','TXN-20240318-6419',60,'URVY831219HM9'),(21,21,'2025-01-20 10:00:00',9500.00,'Pendiente',NULL,NULL,56,'RAMS920321MH4'),(22,22,'2025-02-14 11:30:00',18500.00,'Pendiente',NULL,NULL,61,'TOUY951018MH2'),(23,23,'2025-03-08 09:15:00',7200.00,'Pendiente',NULL,NULL,58,'PAQG940508MH8'),(24,24,'2025-04-22 12:45:00',11800.00,'Pendiente',NULL,NULL,62,'HEIL870928MH6'),(25,25,'2025-05-15 14:00:00',14300.00,'Pendiente',NULL,NULL,65,'HESD811012HM1'),(26,46,'2024-01-25 12:00:00',10300.00,'Pagada','Tarjeta de Crédito','TXN-20240125-7594',59,'TAS981030TEC'),(27,47,'2024-02-18 13:30:00',13900.00,'Pagada','Transferencia Bancaria','TXN-20240218-4817',63,'SATW960413HM7'),(28,48,'2024-03-30 11:45:00',7600.00,'Pagada','Efectivo','TXN-20240330-8362',57,'ROSE820212MH0'),(29,49,'2024-04-15 15:20:00',12100.00,'Pagada','Tarjeta de Débito','TXN-20240415-2685',64,'PIM931201PET'),(30,50,'2024-05-28 12:15:00',15400.00,'Pagada','Tarjeta de Crédito','TXN-20240528-9138',60,'NAVZ910724MH4'),(31,51,'2024-06-22 10:30:00',8300.00,'Pagada','Efectivo','TXN-20240622-5461',56,'WOXA781112HM5'),(32,52,'2024-07-18 14:45:00',11700.00,'Pagada','Transferencia Bancaria','TXN-20240718-1784',61,'ORPJ880511HM7'),(33,53,'2024-08-30 11:00:00',9600.00,'Pagada','Tarjeta de Crédito','TXN-20240830-6927',58,'PEQT940320MH4'),(34,54,'2024-09-15 13:15:00',13100.00,'Pagada','Tarjeta de Débito','TXN-20240915-3254',62,'ROGZ860520HM5'),(35,55,'2024-10-25 12:30:00',10700.00,'Pagada','Efectivo','TXN-20241025-7681',65,'LOMP840109MH0'),(36,56,'2024-11-18 15:00:00',8000.00,'Pagada','Tarjeta de Crédito','TXN-20241118-4315',59,'PAQG940508MH8'),(37,57,'2024-12-30 16:45:00',14800.00,'Pagada','Transferencia Bancaria','TXN-20241230-8756',63,'HESD811012HM1'),(38,80,'2023-12-25 17:30:00',16800.00,'Pagada','Tarjeta de Crédito','TXN-20231225-8157',60,'BPE800705BAN'),(39,81,'2024-01-18 10:15:00',7200.00,'Pagada','Efectivo','TXN-20240118-4620',56,'URVV840306HM3'),(40,82,'2024-02-25 12:45:00',12300.00,'Pagada','Tarjeta de Débito','TXN-20240225-9183',61,'DEPO890709HM9'),(41,83,'2024-03-28 11:30:00',8800.00,'Pagada','Transferencia Bancaria','TXN-20240328-5746',58,'QURS890926HM9'),(42,84,'2024-04-30 14:00:00',15900.00,'Pagada','Tarjeta de Crédito','TXN-20240430-2309',62,'GUIC950423MH2'),(43,85,'2024-05-15 10:45:00',9400.00,'Pagada','Efectivo','TXN-20240515-6872',65,'PEAC830924MH8'),(44,86,'2024-06-28 13:20:00',11200.00,'Pagada','Tarjeta de Débito','TXN-20240628-1435',59,'JOSF930122MH4'),(45,87,'2024-07-20 15:15:00',13700.00,'Pagada','Transferencia Bancaria','TXN-20240720-7998',63,'GAHK980510HM5'),(46,88,'2024-08-22 12:00:00',8100.00,'Pagada','Tarjeta de Crédito','TXN-20240822-4561',57,'QURU890708HM5'),(47,89,'2024-09-18 14:30:00',14500.00,'Pagada','Efectivo','TXN-20240918-8224',64,'DIP960316INM'),(48,90,'2024-10-30 11:15:00',10800.00,'Pagada','Tarjeta de Débito','TXN-20241030-3687',60,'QURU890708HM5'),(49,91,'2024-11-12 13:45:00',7600.00,'Pagada','Transferencia Bancaria','TXN-20241112-9350',56,'MANI860516HM5'),(50,92,'2024-12-28 16:20:00',16400.00,'Pagada','Tarjeta de Crédito','TXN-20241228-5813',61,'MEOV941218MH6'),(51,126,'2023-05-20 12:00:00',10900.00,'Pagada','Tarjeta de Crédito','TXN-20230520-8755',59,'CEG970113CON'),(52,127,'2023-06-25 11:30:00',7500.00,'Pagada','Efectivo','TXN-20230625-4318',63,'IBLM830811HM3'),(53,128,'2023-07-28 14:15:00',13800.00,'Pagada','Transferencia Bancaria','TXN-20230728-9881',57,'MORA850214MH6'),(54,129,'2023-08-30 10:45:00',9200.00,'Pagada','Tarjeta de Débito','TXN-20230830-5444',64,'NUOR920914MH2'),(55,130,'2023-09-22 13:00:00',12200.00,'Pagada','Tarjeta de Crédito','TXN-20230922-7007',60,'OJPR810120HM7'),(56,131,'2023-10-25 11:45:00',8600.00,'Pagada','Efectivo','TXN-20231025-3570',56,'GARG880122HM3'),(57,132,'2023-11-18 15:30:00',15700.00,'Pagada','Transferencia Bancaria','TXN-20231118-8133',61,'IGJM800215HM7'),(58,133,'2023-12-22 12:15:00',11000.00,'Pagada','Tarjeta de Crédito','TXN-20231222-4696',58,'COVA780419HM5'),(59,134,'2024-01-28 10:30:00',7700.00,'Pagada','Tarjeta de Débito','TXN-20240128-9259',62,'ZAVE951018MH2'),(60,135,'2024-02-20 14:00:00',13500.00,'Pagada','Efectivo','TXN-20240220-5822',65,'URVY831219HM9'),(61,136,'2024-03-25 11:20:00',9900.00,'Pagada','Tarjeta de Crédito','TXN-20240325-2385',59,'RASV821126MH6'),(62,137,'2024-04-18 13:45:00',12800.00,'Pagada','Transferencia Bancaria','TXN-20240418-6948',63,'PAQG940508MH8'),(63,138,'2024-05-30 10:00:00',8400.00,'Pagada','Tarjeta de Débito','TXN-20240530-1511',57,'DIP960316INM'),(64,139,'2024-06-20 12:30:00',14600.00,'Pagada','Efectivo','TXN-20240620-7974',64,'NAVZ910724MH4'),(65,140,'2024-07-25 15:15:00',10700.00,'Pagada','Tarjeta de Crédito','TXN-20240725-4537',60,'ESFI851004HM3'),(66,141,'2024-08-28 11:45:00',8900.00,'Pagada','Transferencia Bancaria','TXN-20240828-9100',56,'OLPS861202HM3'),(67,142,'2024-09-30 14:20:00',13200.00,'Pagada','Tarjeta de Débito','TXN-20240930-5663',61,'AVBE900323HM9'),(68,143,'2024-10-22 12:15:00',7800.00,'Pagada','Efectivo','TXN-20241022-2226',58,'GOHG880627HM7'),(69,144,'2024-11-28 16:00:00',15400.00,'Pagada','Tarjeta de Crédito','TXN-20241128-6789',62,'FIGJ930122MH4'),(70,145,'2024-12-20 13:30:00',11300.00,'Pagada','Transferencia Bancaria','TXN-20241220-3352',65,'REHG890629MH0'),(71,31,'2024-02-15 00:00:00',7500.00,'Cancelada',NULL,NULL,NULL,'COVA780419HM5'),(72,32,'2024-03-22 00:00:00',12000.00,'Cancelada',NULL,NULL,NULL,'OJPR810120HM7'),(73,33,'2024-04-08 00:00:00',8400.00,'Cancelada',NULL,NULL,NULL,'FIGJ930122MH4'),(74,34,'2024-05-25 00:00:00',15200.00,'Cancelada',NULL,NULL,NULL,'GARG880122HM3'),(75,35,'2024-06-18 00:00:00',9800.00,'Cancelada',NULL,NULL,NULL,'QURS890926HM9'),(76,36,'2024-07-30 00:00:00',11400.00,'Cancelada',NULL,NULL,NULL,'DIP960316INM'),(77,37,'2024-08-15 00:00:00',7900.00,'Cancelada',NULL,NULL,NULL,'JOSF930122MH4'),(78,38,'2024-09-28 00:00:00',13500.00,'Cancelada',NULL,NULL,NULL,'GUIC950423MH2'),(79,39,'2024-10-12 00:00:00',8700.00,'Cancelada',NULL,NULL,NULL,'OLPS861202HM3'),(80,40,'2024-11-25 00:00:00',12800.00,'Cancelada',NULL,NULL,NULL,'GOHG880627HM7'),(81,58,'2025-01-22 00:00:00',9100.00,'Pendiente',NULL,NULL,NULL,'URVY831219HM9'),(82,59,'2025-02-25 00:00:00',12500.00,'Pendiente',NULL,NULL,NULL,'MORA850214MH6'),(83,60,'2025-03-12 00:00:00',7400.00,'Pendiente',NULL,NULL,NULL,'VAWZ970507MH0'),(84,61,'2025-04-28 00:00:00',16200.00,'Pendiente',NULL,NULL,NULL,'CARA851109HM3'),(85,62,'2025-05-18 00:00:00',8600.00,'Pendiente',NULL,NULL,NULL,'SATT930630HM1'),(86,63,'2025-06-15 00:00:00',11900.00,'Pendiente',NULL,NULL,NULL,'NAOD880904MH6'),(87,64,'2025-07-30 00:00:00',13400.00,'Pendiente',NULL,NULL,NULL,'JIVF840228HM1'),(88,65,'2025-08-12 00:00:00',9700.00,'Pendiente',NULL,NULL,NULL,'WOXA781112HM5'),(89,66,'2025-09-28 00:00:00',15100.00,'Pendiente',NULL,NULL,NULL,'PACM871125MH0'),(90,67,'2025-10-15 00:00:00',10400.00,'Pendiente',NULL,NULL,NULL,'FIGJ930122MH4'),(91,68,'2025-11-30 00:00:00',8500.00,'Pendiente',NULL,NULL,NULL,'REHG890629MH0'),(92,69,'2025-12-22 00:00:00',17500.00,'Pendiente',NULL,NULL,NULL,'RASV821126MH6'),(93,93,'2025-01-25 00:00:00',9000.00,'Pendiente',NULL,NULL,NULL,'BECF830711MH0'),(94,94,'2025-02-18 00:00:00',12900.00,'Pendiente',NULL,NULL,NULL,'ROCL800610MH4'),(95,95,'2025-03-30 00:00:00',8400.00,'Pendiente',NULL,NULL,NULL,'TEUX900801MH8'),(96,96,'2025-04-12 00:00:00',15800.00,'Pendiente',NULL,NULL,NULL,'RUMM870414HM9'),(97,97,'2025-05-28 00:00:00',10200.00,'Pendiente',NULL,NULL,NULL,'ROSE820212MH0'),(98,98,'2025-06-22 00:00:00',7900.00,'Pendiente',NULL,NULL,NULL,'SALH841123HM7'),(99,99,'2025-07-25 00:00:00',13600.00,'Pendiente',NULL,NULL,NULL,'HEIL870928MH6'),(100,100,'2025-08-28 00:00:00',9800.00,'Pendiente',NULL,NULL,NULL,'PAQG940508MH8'),(101,101,'2025-09-30 00:00:00',11500.00,'Pendiente',NULL,NULL,NULL,'SATW960413HM7'),(102,102,'2025-10-22 00:00:00',8600.00,'Pendiente',NULL,NULL,NULL,'TOUY951018MH2'),(103,103,'2025-11-15 00:00:00',14900.00,'Pendiente',NULL,NULL,NULL,'HESD811012HM1'),(104,104,'2025-12-30 00:00:00',17200.00,'Pendiente',NULL,NULL,NULL,'NAVZ910724MH4'),(105,146,'2025-01-18 00:00:00',9500.00,'Pendiente',NULL,NULL,NULL,'QURU890708HM5'),(106,147,'2025-02-22 00:00:00',12700.00,'Pendiente',NULL,NULL,NULL,'KALO911021HM9'),(107,148,'2025-03-28 00:00:00',8100.00,'Pendiente',NULL,NULL,NULL,'PEAC830924MH8'),(108,149,'2025-04-30 00:00:00',14800.00,'Pendiente',NULL,NULL,NULL,'ZAAD971205MH8'),(109,150,'2025-05-25 00:00:00',10100.00,'Pendiente',NULL,NULL,NULL,'SPI931028SER'),(110,70,'2024-06-30 12:00:00',9300.00,'Cancelada',NULL,NULL,NULL,'ESFI851004HM3'),(111,71,'2024-07-22 13:30:00',12700.00,'Cancelada',NULL,NULL,NULL,'IGJM800215HM7'),(112,72,'2024-08-18 11:15:00',7800.00,'Cancelada',NULL,NULL,NULL,'GARG880122HM3'),(113,73,'2024-09-25 14:45:00',14600.00,'Cancelada',NULL,NULL,NULL,'ZAAD971205MH8'),(114,74,'2024-10-18 10:30:00',8900.00,'Cancelada',NULL,NULL,NULL,'COVA780419HM5'),(115,75,'2024-11-30 12:45:00',11800.00,'Cancelada',NULL,NULL,NULL,'NUOR920914MH2'),(116,76,'2024-12-15 15:20:00',9500.00,'Cancelada',NULL,NULL,NULL,'OJPR810120HM7'),(117,77,'2025-01-28 11:00:00',13200.00,'Cancelada',NULL,NULL,NULL,'RAMS920321MH4'),(118,78,'2025-02-22 13:15:00',10600.00,'Cancelada',NULL,NULL,NULL,'KALO911021HM9'),(119,79,'2025-03-25 12:30:00',8700.00,'Cancelada',NULL,NULL,NULL,'URVY831219HM9'),(120,115,'2025-01-15 00:00:00',14200.00,'Pendiente',NULL,NULL,NULL,'IMG820518IND'),(121,116,'2025-02-20 00:00:00',9100.00,'Pendiente',NULL,NULL,NULL,'XIYB920429MH6'),(122,117,'2025-03-22 00:00:00',11800.00,'Pendiente',NULL,NULL,NULL,'TAS981030TEC'),(123,118,'2025-04-25 00:00:00',8700.00,'Pendiente',NULL,NULL,NULL,'URVY831219HM9'),(124,119,'2025-05-30 00:00:00',15600.00,'Pendiente',NULL,NULL,NULL,'NAOD880904MH6'),(125,120,'2025-06-28 00:00:00',10500.00,'Pendiente',NULL,NULL,NULL,'ORPJ880511HM7'),(126,121,'2025-07-22 00:00:00',8000.00,'Pendiente',NULL,NULL,NULL,'IBLM830811HM3'),(127,122,'2025-08-30 00:00:00',12400.00,'Pendiente',NULL,NULL,NULL,'SOTO860509MH4'),(128,123,'2025-09-15 00:00:00',9600.00,'Pendiente',NULL,NULL,NULL,'VAWZ970507MH0'),(129,124,'2025-10-20 00:00:00',14100.00,'Pendiente',NULL,NULL,NULL,'PIM931201PET'),(130,125,'2025-11-25 00:00:00',8300.00,'Pendiente',NULL,NULL,NULL,'WOXA781112HM5'),(131,105,'2024-03-12 00:00:00',7300.00,'Cancelada',NULL,NULL,NULL,'IBLM830811HM3'),(132,106,'2024-04-25 00:00:00',12600.00,'Cancelada',NULL,NULL,NULL,'AVBE900323HM9'),(133,107,'2024-05-30 00:00:00',8500.00,'Cancelada',NULL,NULL,NULL,'SPI931028SER'),(134,108,'2024-06-15 00:00:00',15300.00,'Cancelada',NULL,NULL,NULL,'PEQT940320MH4'),(135,109,'2024-07-28 00:00:00',9700.00,'Cancelada',NULL,NULL,NULL,'PAQG940508MH8'),(136,110,'2024-08-20 00:00:00',11400.00,'Cancelada',NULL,NULL,NULL,'ROGZ860520HM5'),(137,111,'2024-09-22 00:00:00',8200.00,'Cancelada',NULL,NULL,NULL,'LOMP840109MH0'),(138,112,'2024-10-28 00:00:00',13900.00,'Cancelada',NULL,NULL,NULL,'KALO911021HM9'),(139,113,'2024-11-20 00:00:00',10300.00,'Cancelada',NULL,NULL,NULL,'HESD811012HM1'),(140,114,'2024-12-18 00:00:00',7800.00,'Cancelada',NULL,NULL,NULL,'KALO911021HM9'),(142,44,'2025-05-27 00:16:16',6380.00,'Pendiente',NULL,'CANCEL-20250527-35',NULL,'JIKN950603MH8'),(143,44,'2025-05-27 00:16:16',6380.00,'Pendiente',NULL,'CANCEL-20250527-36',NULL,'JIKN950603MH8'),(144,44,'2025-05-27 00:20:59',0.00,'Pagada','tarjeta','TRANS-20250527-3874',20,'JIKN950603MH8'),(145,44,'2025-05-27 00:21:59',0.00,'Pagada','Tarjeta','TRANS-20250527-5656',20,'JIKN950603MH8'),(146,45,'2025-05-27 00:31:10',0.00,'Pagada','Tarjeta','TRANS-20250527-6655',20,'LAMB901229MH4'),(147,25,'2025-05-27 00:33:32',1070.00,'Pagada','Tarjeta','TRANS-20250527-6309',20,'HESD811012HM1'),(148,24,'2025-05-27 00:34:26',4240.00,'Pagada','Efectivo','TRANS-20250527-1581',20,'HEIL870928MH6'),(149,44,'2025-05-27 00:36:06',0.00,'Pagada','Efectivo','TRANS-20250527-8977',20,'JIKN950603MH8'),(150,24,'2025-05-27 00:37:07',0.00,'Pagada','Tarjeta','TRANS-20250527-142',15,'HEIL870928MH6'),(151,24,'2025-05-27 00:37:33',0.00,'Pagada','Tarjeta','TRANS-20250527-3782',15,'HEIL870928MH6'),(152,21,'2025-05-27 00:39:01',530.00,'Pagada','Tarjeta','TRANS-20250527-8482',20,'RAFM920321MH4'),(153,13,'2025-05-27 00:00:00',10.00,'Pagada','Tarjeta','TRANS-20250527-8483',20,'PEAC830924MH8');
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
INSERT INTO `fechas_ocupadas` VALUES (101,'2024-03-10','2024-03-15',1),(102,'2024-04-18','2024-04-22',2),(103,'2024-04-18','2024-04-22',2),(104,'2024-05-03','2024-05-08',3),(105,'2024-06-07','2024-06-12',4),(106,'2024-06-07','2024-06-12',4),(107,'2024-06-07','2024-06-12',4),(108,'2024-07-20','2024-07-25',5),(109,'2024-08-14','2024-08-18',6),(110,'2024-08-14','2024-08-18',6),(201,'2024-09-25','2024-09-30',7),(202,'2024-10-09','2024-10-14',8),(203,'2024-10-09','2024-10-14',8),(204,'2024-11-23','2024-11-28',9),(205,'2024-12-18','2024-12-22',10),(206,'2024-12-18','2024-12-22',10),(207,'2024-12-18','2024-12-22',10),(208,'2023-06-10','2023-06-15',11),(209,'2023-06-10','2023-06-15',11),(210,'2023-07-25','2023-07-30',12),(301,'2023-08-08','2023-08-12',13),(302,'2023-08-08','2023-08-12',13),(303,'2023-09-20','2023-09-25',14),(304,'2023-09-20','2023-09-25',14),(305,'2023-10-14','2023-10-18',15),(306,'2023-11-17','2023-11-22',16),(307,'2023-11-17','2023-11-22',16),(308,'2023-12-25','2023-12-30',17),(309,'2023-12-25','2023-12-30',17),(310,'2023-12-25','2023-12-30',17),(401,'2024-01-10','2024-01-15',18),(402,'2024-02-23','2024-02-28',19),(403,'2024-02-23','2024-02-28',19),(205,'2024-03-13','2024-03-18',20),(310,'2024-03-13','2024-03-18',20),(406,'2025-01-15','2025-01-20',21),(407,'2025-02-10','2025-02-14',22),(408,'2025-02-10','2025-02-14',22),(409,'2025-02-10','2025-02-14',22),(410,'2025-03-03','2025-03-08',23),(501,'2025-04-17','2025-04-22',24),(502,'2025-04-17','2025-04-22',24),(503,'2025-05-10','2025-05-15',25),(504,'2025-05-10','2025-05-15',25),(505,'2025-06-25','2025-06-30',26),(506,'2025-07-13','2025-07-18',27),(507,'2025-07-13','2025-07-18',27),(508,'2025-08-20','2025-08-25',28),(509,'2025-08-20','2025-08-25',28),(510,'2025-08-20','2025-08-25',28),(601,'2025-09-07','2025-09-12',29),(602,'2025-10-23','2025-10-28',30),(603,'2025-10-23','2025-10-28',30),(604,'2024-02-10','2024-02-15',31),(605,'2024-03-18','2024-03-22',32),(606,'2024-03-18','2024-03-22',32),(607,'2024-04-03','2024-04-08',33),(608,'2024-05-20','2024-05-25',34),(609,'2024-05-20','2024-05-25',34),(610,'2024-05-20','2024-05-25',34),(701,'2024-06-13','2024-06-18',35),(702,'2024-07-25','2024-07-30',36),(703,'2024-07-25','2024-07-30',36),(704,'2024-08-10','2024-08-15',37),(705,'2024-09-23','2024-09-28',38),(706,'2024-09-23','2024-09-28',38),(707,'2024-10-07','2024-10-12',39),(708,'2024-11-20','2024-11-25',40),(709,'2024-11-20','2024-11-25',40),(710,'2025-01-05','2025-01-10',41),(801,'2025-02-23','2025-02-28',42),(802,'2025-02-23','2025-02-28',42),(803,'2025-03-10','2025-03-15',43),(806,'2025-05-17','2025-05-22',45),(807,'2024-01-20','2024-01-25',46),(808,'2024-01-20','2024-01-25',46),(809,'2024-02-13','2024-02-18',47),(810,'2024-02-13','2024-02-18',47),(101,'2024-03-25','2024-03-30',48),(102,'2024-04-10','2024-04-15',49),(103,'2024-04-10','2024-04-15',49),(104,'2024-05-23','2024-05-28',50),(105,'2024-05-23','2024-05-28',50),(106,'2024-05-23','2024-05-28',50),(107,'2024-06-17','2024-06-22',51),(108,'2024-07-13','2024-07-18',52),(109,'2024-07-13','2024-07-18',52),(110,'2024-08-25','2024-08-30',53),(201,'2024-09-10','2024-09-15',54),(202,'2024-09-10','2024-09-15',54),(103,'2024-10-20','2024-10-25',55),(207,'2024-10-20','2024-10-25',55),(205,'2024-11-13','2024-11-18',56),(206,'2024-12-25','2024-12-30',57),(207,'2024-12-25','2024-12-30',57),(208,'2024-12-25','2024-12-30',57),(209,'2025-01-17','2025-01-22',58),(210,'2025-02-20','2025-02-25',59),(301,'2025-02-20','2025-02-25',59),(302,'2025-03-07','2025-03-12',60),(303,'2025-04-23','2025-04-28',61),(304,'2025-04-23','2025-04-28',61),(305,'2025-04-23','2025-04-28',61),(306,'2025-05-13','2025-05-18',62),(307,'2025-06-10','2025-06-15',63),(308,'2025-06-10','2025-06-15',63),(309,'2025-07-25','2025-07-30',64),(310,'2025-07-25','2025-07-30',64),(401,'2025-08-07','2025-08-12',65),(402,'2025-09-23','2025-09-28',66),(403,'2025-09-23','2025-09-28',66),(404,'2025-09-23','2025-09-28',66),(405,'2025-10-10','2025-10-15',67),(406,'2025-10-10','2025-10-15',67),(407,'2025-11-25','2025-11-30',68),(408,'2025-12-17','2025-12-22',69),(409,'2025-12-17','2025-12-22',69),(410,'2025-12-17','2025-12-22',69),(501,'2024-06-25','2024-06-30',70),(502,'2024-07-17','2024-07-22',71),(503,'2024-07-17','2024-07-22',71),(504,'2024-08-13','2024-08-18',72),(505,'2024-09-20','2024-09-25',73),(506,'2024-09-20','2024-09-25',73),(507,'2024-10-13','2024-10-18',74),(508,'2024-11-25','2024-11-30',75),(509,'2024-11-25','2024-11-30',75),(510,'2024-12-10','2024-12-15',76),(601,'2025-01-23','2025-01-28',77),(602,'2025-01-23','2025-01-28',77),(603,'2025-02-17','2025-02-22',78),(604,'2025-03-20','2025-03-25',79),(605,'2023-12-20','2023-12-25',80),(606,'2023-12-20','2023-12-25',80),(607,'2023-12-20','2023-12-25',80),(608,'2024-01-13','2024-01-18',81),(609,'2024-02-20','2024-02-25',82),(610,'2024-02-20','2024-02-25',82),(701,'2024-03-23','2024-03-28',83),(702,'2024-04-25','2024-04-30',84),(703,'2024-04-25','2024-04-30',84),(704,'2024-04-25','2024-04-30',84),(705,'2024-05-10','2024-05-15',85),(706,'2024-06-23','2024-06-28',86),(707,'2024-06-23','2024-06-28',86),(708,'2024-07-15','2024-07-20',87),(709,'2024-07-15','2024-07-20',87),(710,'2024-08-17','2024-08-22',88),(801,'2024-09-13','2024-09-18',89),(802,'2024-09-13','2024-09-18',89),(803,'2024-10-25','2024-10-30',90),(804,'2024-10-25','2024-10-30',90),(805,'2024-11-07','2024-11-12',91),(806,'2024-12-23','2024-12-28',92),(807,'2024-12-23','2024-12-28',92),(808,'2024-12-23','2024-12-28',92),(809,'2025-01-20','2025-01-25',93),(101,'2025-02-13','2025-02-18',94),(810,'2025-02-13','2025-02-18',94),(102,'2025-03-25','2025-03-30',95),(103,'2025-04-07','2025-04-12',96),(104,'2025-04-07','2025-04-12',96),(105,'2025-04-07','2025-04-12',96),(106,'2025-05-23','2025-05-28',97),(107,'2025-05-23','2025-05-28',97),(108,'2025-06-17','2025-06-22',98),(109,'2025-07-20','2025-07-25',99),(110,'2025-07-20','2025-07-25',99),(201,'2025-08-23','2025-08-28',100),(202,'2025-09-25','2025-09-30',101),(203,'2025-09-25','2025-09-30',101),(204,'2025-10-17','2025-10-22',102),(205,'2025-11-10','2025-11-15',103),(206,'2025-11-10','2025-11-15',103),(207,'2025-12-25','2025-12-30',104),(208,'2025-12-25','2025-12-30',104),(209,'2025-12-25','2025-12-30',104),(210,'2024-03-07','2024-03-12',105),(301,'2024-04-20','2024-04-25',106),(302,'2024-04-20','2024-04-25',106),(303,'2024-05-25','2024-05-30',107),(304,'2024-06-10','2024-06-15',108),(305,'2024-06-10','2024-06-15',108),(306,'2024-06-10','2024-06-15',108),(307,'2024-07-23','2024-07-28',109),(308,'2024-08-15','2024-08-20',110),(309,'2024-08-15','2024-08-20',110),(310,'2024-09-17','2024-09-22',111),(401,'2024-10-23','2024-10-28',112),(402,'2024-10-23','2024-10-28',112),(403,'2024-11-15','2024-11-20',113),(404,'2024-11-15','2024-11-20',113),(405,'2024-12-13','2024-12-18',114),(406,'2025-01-10','2025-01-15',115),(407,'2025-01-10','2025-01-15',115),(408,'2025-02-15','2025-02-20',116),(409,'2025-03-17','2025-03-22',117),(410,'2025-03-17','2025-03-22',117),(501,'2025-04-20','2025-04-25',118),(505,'2025-06-23','2025-06-28',120),(506,'2025-06-23','2025-06-28',120),(507,'2025-07-17','2025-07-22',121),(508,'2025-08-25','2025-08-30',122),(509,'2025-08-25','2025-08-30',122),(510,'2025-09-10','2025-09-15',123),(601,'2025-10-15','2025-10-20',124),(602,'2025-10-15','2025-10-20',124),(603,'2025-11-20','2025-11-25',125),(604,'2023-05-15','2023-05-20',126),(605,'2023-05-15','2023-05-20',126),(606,'2023-06-20','2023-06-25',127),(607,'2023-07-23','2023-07-28',128),(608,'2023-07-23','2023-07-28',128),(609,'2023-08-25','2023-08-30',129),(610,'2023-09-17','2023-09-22',130),(701,'2023-09-17','2023-09-22',130),(702,'2023-10-20','2023-10-25',131),(703,'2023-11-13','2023-11-18',132),(704,'2023-11-13','2023-11-18',132),(705,'2023-11-13','2023-11-18',132),(706,'2023-12-17','2023-12-22',133),(707,'2023-12-17','2023-12-22',133),(708,'2024-01-23','2024-01-28',134),(709,'2024-02-15','2024-02-20',135),(710,'2024-02-15','2024-02-20',135),(801,'2024-03-20','2024-03-25',136),(802,'2024-04-13','2024-04-18',137),(803,'2024-04-13','2024-04-18',137),(804,'2024-05-25','2024-05-30',138),(805,'2024-06-15','2024-06-20',139),(806,'2024-06-15','2024-06-20',139),(807,'2024-07-20','2024-07-25',140),(808,'2024-07-20','2024-07-25',140),(809,'2024-08-23','2024-08-28',141),(101,'2024-09-25','2024-09-30',142),(810,'2024-09-25','2024-09-30',142),(102,'2024-10-17','2024-10-22',143),(103,'2024-11-23','2024-11-28',144),(104,'2024-11-23','2024-11-28',144),(105,'2024-11-23','2024-11-28',144),(106,'2024-12-15','2024-12-20',145),(107,'2024-12-15','2024-12-20',145),(108,'2025-01-13','2025-01-18',146),(109,'2025-02-17','2025-02-22',147),(110,'2025-02-17','2025-02-22',147),(101,'2025-12-01','2025-12-05',151),(101,'2025-12-06','2025-12-15',154);
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
) ENGINE=InnoDB AUTO_INCREMENT=811 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (101,1,'Disponible',NULL,1,1,1),(102,2,'Disponible',NULL,1,2,1),(103,2,'Disponible',NULL,1,2,1),(104,1,'Disponible',NULL,1,1,1),(105,3,'Disponible',NULL,1,1,1),(106,4,'Disponible',NULL,1,2,1),(107,1,'Disponible',NULL,1,1,1),(108,3,'Disponible',NULL,1,1,1),(109,4,'Disponible',NULL,1,2,1),(110,4,'Disponible',NULL,1,2,1),(201,1,'Disponible',NULL,2,1,1),(202,2,'Disponible',NULL,2,2,1),(203,4,'Disponible',NULL,2,2,1),(204,1,'Disponible',NULL,2,1,1),(205,5,'Disponible','Vista al mar',2,2,1),(206,6,'Disponible','Vista panorámica',2,2,1),(207,8,'Disponible','Suite presidencial con mayordomo',2,2,1),(208,2,'Disponible',NULL,2,2,1),(209,4,'Disponible',NULL,2,2,1),(210,1,'Disponible',NULL,2,1,1),(301,2,'Disponible',NULL,3,2,1),(302,4,'Disponible',NULL,3,2,1),(303,2,'Disponible',NULL,3,2,1),(304,4,'Disponible',NULL,3,2,1),(305,1,'Disponible',NULL,3,1,1),(306,2,'Disponible',NULL,3,2,1),(307,4,'Disponible',NULL,3,2,1),(308,5,'Disponible','Jacuzzi privado',3,2,1),(309,6,'Disponible','Terraza privada',3,2,1),(310,7,'Disponible','Dos dormitorios conectados',3,4,1),(401,1,'Disponible',NULL,4,1,1),(402,2,'Disponible',NULL,4,2,1),(403,4,'Disponible',NULL,4,2,1),(404,2,'Disponible',NULL,4,2,1),(405,4,'Disponible',NULL,4,2,1),(406,1,'Disponible',NULL,4,1,1),(407,5,'Disponible','Balcón con vista',4,2,1),(408,6,'Disponible','Sala de juntas',4,2,1),(409,7,'Disponible','Cocina completa',4,4,1),(410,1,'Disponible',NULL,4,1,1),(501,2,'Disponible',NULL,5,2,1),(502,4,'Disponible',NULL,5,2,1),(503,2,'Disponible',NULL,5,2,1),(504,4,'Disponible',NULL,5,2,1),(505,1,'Disponible',NULL,5,1,1),(506,2,'Disponible',NULL,5,2,1),(507,4,'Disponible',NULL,5,2,1),(508,5,'Disponible','Chimenea',5,2,1),(509,6,'Disponible','Biblioteca',5,2,1),(510,7,'Disponible','Sala de juegos para niños',5,4,1),(601,1,'Disponible',NULL,6,1,1),(602,2,'Disponible',NULL,6,2,1),(603,4,'Disponible',NULL,6,2,1),(604,2,'Disponible',NULL,6,2,1),(605,5,'Disponible','Estudio de arte',6,2,1),(606,6,'Disponible','Sala de conferencias',6,2,1),(607,7,'Disponible','Área de entretenimiento familiar',6,4,1),(608,1,'Disponible',NULL,6,1,1),(609,2,'Disponible',NULL,6,2,1),(610,5,'Disponible','Spa privado',6,2,1),(701,1,'Disponible',NULL,7,1,1),(702,2,'Disponible',NULL,7,2,1),(703,4,'Disponible',NULL,7,2,1),(704,1,'Disponible',NULL,7,1,1),(705,2,'Disponible',NULL,7,2,1),(706,2,'Disponible',NULL,7,2,1),(707,1,'Disponible',NULL,7,1,1),(708,2,'Disponible',NULL,7,2,1),(709,4,'Disponible',NULL,7,2,1),(710,3,'Disponible',NULL,7,1,1),(801,1,'Disponible',NULL,8,1,1),(802,2,'Disponible',NULL,8,2,1),(803,2,'Disponible',NULL,8,2,1),(804,1,'Disponible',NULL,8,1,1),(805,2,'Disponible',NULL,8,2,1),(806,2,'Disponible',NULL,8,2,1),(807,2,'Disponible',NULL,8,2,1),(808,4,'Disponible',NULL,8,2,1),(809,3,'Disponible',NULL,8,1,1),(810,8,'Disponible','Suite presidencial con cine privado',8,2,1);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_habitacion_upgrade_estado` AFTER UPDATE ON `habitacion` FOR EACH ROW BEGIN
    DECLARE v_reserva_vip INT DEFAULT 0;
    DECLARE v_cliente_nombre VARCHAR(255);
    
    -- Solo procesar cambios de estado
    IF OLD.Estado != NEW.Estado THEN
        
        -- Verificar si el cambio de estado está relacionado con una reserva VIP activa
        SELECT COUNT(*), MAX(CONCAT(c.Nombre, ' ', c.Apellido1))
        INTO v_reserva_vip, v_cliente_nombre
        FROM detalle_reserva_habitacion drh
        JOIN reserva r ON drh.ID_Reserva = r.ID_Reserva
        JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
        WHERE drh.ID_Habitacion = NEW.ID_Habitacion
        AND r.Estado = 'Confirmada'
        AND c.Es_VIP = 1
        AND (drh.Fecha_Check_In IS NULL OR drh.Fecha_Check_Out IS NULL);
        
        -- Si hay una reserva VIP activa, registrar con contexto especial
        IF v_reserva_vip > 0 THEN
            INSERT INTO bitacora_habitacion (
                ID_Habitacion,
                ID_Empleado,
                Fecha_Hora_Cambio,
                Motivo_cambio,
                Estado
            ) VALUES (
                NEW.ID_Habitacion,
                NULL, -- Sistema automático
                NOW(),
                CONCAT('CAMBIO DE ESTADO VIP - Cliente: ', v_cliente_nombre, 
                       ' | Estado: ', OLD.Estado, ' → ', NEW.Estado),
                NEW.Estado
            );
        END IF;
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
  `ID_Reserva` int NOT NULL,
  `ciudad_de_origen` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Huesped_Acompanante`),
  KEY `huesped_acompanante_ibfk_1_idx` (`ID_Reserva`),
  CONSTRAINT `huesped_acompanante_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`)
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
  `ID_Temporada` int DEFAULT NULL COMMENT 'Temporada específica (NULL = aplica en todas)',
  `Aplicable_Solo_Temporada` tinyint(1) DEFAULT '0' COMMENT '0=universal, 1=solo en temporada específica',
  `Descuento_Base_Original` decimal(5,2) DEFAULT NULL COMMENT 'Respaldo del descuento original',
  PRIMARY KEY (`ID_Paquete`),
  KEY `fk_paquete_temporada` (`ID_Temporada`),
  CONSTRAINT `fk_paquete_temporada` FOREIGN KEY (`ID_Temporada`) REFERENCES `temporada` (`ID_Temporada`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete_promocional`
--

LOCK TABLES `paquete_promocional` WRITE;
/*!40000 ALTER TABLE `paquete_promocional` DISABLE KEYS */;
INSERT INTO `paquete_promocional` VALUES (1,'Escapada Romántica de Invierno','Paquete especial para parejas que incluye cena romántica, spa para dos y botella de champagne de cortesía.','2024-12-01 00:00:00','2025-02-14 23:59:59','Activo',25.00,'Mínimo 2 noches de estancia. Válido solo para mayores de 18 años.','San Valentín','Romántico',NULL,0,25.00),(2,'Vacaciones Familiares de Año Nuevo','Paquete familiar con actividades para niños, acceso completo al parque acuático y cenas buffet.','2024-12-20 00:00:00','2025-01-15 23:59:59','Activo',20.00,'Mínimo 1 adulto y 1 niño. Niños menores de 12 años gratis.','Año Nuevo','Familiar',NULL,0,20.00),(3,'Aventura y Deportes Extremos','Incluye tours de aventura, equipo deportivo y clases de deportes acuáticos.','2024-11-01 00:00:00','2025-03-31 23:59:59','Activo',30.00,'Certificado médico requerido. Seguro de aventura incluido.','Deportes','Aventura',NULL,0,30.00),(4,'Retiro de Bienestar y Spa','Paquete de relajación total con tratamientos de spa, yoga y alimentación saludable.','2024-10-15 00:00:00','2025-04-30 23:59:59','Activo',35.00,'Mínimo 3 noches. Consulta médica incluida.','Wellness','Bienestar',3,1,35.00),(5,'Golf y Relax Premium','Acceso ilimitado al campo de golf, clases con profesional y relajación en el spa.','2024-11-15 00:00:00','2025-05-15 23:59:59','Activo',40.00,'Experiencia previa en golf recomendada. Equipo incluido.','Golf','Deportivo',NULL,0,40.00),(6,'Gastronómico Internacional','Degustación de cocina internacional con chefs invitados y maridajes exclusivos.','2025-01-01 00:00:00','2025-06-30 23:59:59','Activo',15.00,'Restricciones alimentarias deben notificarse. Incluye cenas especiales.','Gastronomía','Culinario',NULL,0,15.00),(7,'Business & Conference','Paquete corporativo con salas de juntas, equipo audiovisual y servicios de catering.','2024-09-01 00:00:00','2025-08-31 23:59:59','Activo',20.00,'Mínimo 10 personas. Reserva con 30 días de anticipación.','Corporativo','Negocios',NULL,0,20.00),(8,'Luna de Miel Tropical','Paquete exclusivo para recién casados con suite nupcial y experiencias románticas.','2024-10-01 00:00:00','2025-09-30 23:59:59','Activo',45.00,'Certificado de matrimonio requerido. Máximo 6 meses después de la boda.','Luna de Miel','Romántico',1,1,45.00),(9,'Cultural y Arqueológico','Tours a sitios históricos y museos con guías especializados y transporte incluido.','2024-11-01 00:00:00','2025-10-31 23:59:59','Activo',25.00,'Grupos de máximo 15 personas. Entradas a sitios incluidas.','Cultural','Educativo',NULL,0,25.00),(10,'Todo Incluido Premium','Acceso completo a todos los servicios del hotel sin restricciones.','2024-12-01 00:00:00','2025-11-30 23:59:59','Activo',50.00,'Mínimo 5 noches. Bebidas premium incluidas.','Todo Incluido','Premium',NULL,0,50.00),(11,'Verano Tropical 2023','Paquete de verano con actividades acuáticas y bebidas tropicales.','2023-06-01 00:00:00','2023-08-31 23:59:59','Inactivo',30.00,'Válido solo temporada de verano.','Verano','Estacional',NULL,0,30.00),(12,'Navidad Mágica 2022','Celebración navideña con cena especial y espectáculos.','2022-12-15 00:00:00','2022-12-31 23:59:59','Inactivo',25.00,'Reservas hasta el 20 de diciembre.','Navidad','Festivo',NULL,0,25.00),(13,'Spring Break 2023','Paquete para jóvenes con fiestas y actividades nocturnas.','2023-03-01 00:00:00','2023-04-30 23:59:59','Inactivo',20.00,'Solo mayores de 18 años.','Spring Break','Juvenil',NULL,0,20.00),(14,'Día de las Madres 2023','Homenaje especial a las madres con spa y cena gourmet.','2023-05-01 00:00:00','2023-05-15 23:59:59','Inactivo',35.00,'Válido solo para madres.','Día de las Madres','Familiar',NULL,0,35.00),(15,'Halloween Espectacular 2023','Fiesta de disfraces con espectáculos temáticos.','2023-10-25 00:00:00','2023-11-02 23:59:59','Inactivo',15.00,'Disfraz obligatorio.','Halloween','Temático',NULL,0,15.00),(16,'San Valentín 2023','Romance y amor con cenas íntimas y suites especiales.','2023-02-10 00:00:00','2023-02-18 23:59:59','Inactivo',40.00,'Solo parejas.','San Valentín','Romántico',NULL,0,40.00),(17,'Año Nuevo 2023','Celebración de fin de año con gala y fuegos artificiales.','2022-12-28 00:00:00','2023-01-02 23:59:59','Inactivo',50.00,'Evento de gala incluido.','Año Nuevo','Festivo',NULL,0,50.00),(18,'Semana Santa 2023','Paquete familiar para vacaciones de Semana Santa.','2023-04-02 00:00:00','2023-04-16 23:59:59','Inactivo',25.00,'Actividades religiosas opcionales.','Semana Santa','Religioso',NULL,0,25.00),(19,'Independencia Mexicana 2023','Celebración patria con comida típica y mariachis.','2023-09-10 00:00:00','2023-09-20 23:59:59','Inactivo',20.00,'Eventos culturales incluidos.','Independencia','Patriótico',NULL,0,20.00),(20,'Festival de Jazz 2023','Fin de semana con música jazz en vivo.','2023-07-15 00:00:00','2023-07-30 23:59:59','Inactivo',30.00,'Conciertos nocturnos incluidos.','Jazz','Musical',NULL,0,30.00),(21,'Invierno Acogedor 2022','Paquete de invierno con chimenea y chocolate caliente.','2022-12-01 00:00:00','2023-02-28 23:59:59','Inactivo',15.00,'Actividades de invierno.','Invierno','Estacional',NULL,0,15.00),(22,'Carnaval Brasileño 2023','Fiesta de carnaval con samba y caipiriñas.','2023-02-18 00:00:00','2023-02-28 23:59:59','Inactivo',35.00,'Clases de samba incluidas.','Carnaval','Cultural',NULL,0,35.00),(23,'Día del Padre 2023','Celebración especial para papás con actividades deportivas.','2023-06-15 00:00:00','2023-06-25 23:59:59','Inactivo',25.00,'Actividades padre-hijo.','Día del Padre','Familiar',NULL,0,25.00),(24,'Festival Gastronómico 2023','Semana de cocina internacional con chefs famosos.','2023-08-01 00:00:00','2023-08-15 23:59:59','Inactivo',40.00,'Degustaciones especiales.','Gastronomía','Culinario',NULL,0,40.00),(25,'Otoño Dorado 2023','Paquete de otoño con tours a la naturaleza.','2023-10-01 00:00:00','2023-11-30 23:59:59','Inactivo',20.00,'Tours ecológicos incluidos.','Otoño','Estacional',NULL,0,20.00),(26,'Cinco de Mayo 2023','Celebración mexicana con mariachis y tequila.','2023-05-01 00:00:00','2023-05-10 23:59:59','Inactivo',30.00,'Folclore mexicano.','Cinco de Mayo','Patriótico',NULL,0,30.00),(27,'Memorial Day 2023','Fin de semana largo con actividades especiales.','2023-05-26 00:00:00','2023-05-30 23:59:59','Inactivo',18.00,'Para huéspedes americanos.','Memorial Day','Estadounidense',NULL,0,18.00),(28,'Día de Muertos 2023','Celebración tradicional mexicana con altares y ofrendas.','2023-10-31 00:00:00','2023-11-05 23:59:59','Inactivo',25.00,'Tradición mexicana.','Día de Muertos','Cultural',NULL,0,25.00),(29,'Black Friday 2023','Ofertas especiales de reservas con descuentos únicos.','2023-11-24 00:00:00','2023-11-27 23:59:59','Inactivo',60.00,'Descuentos máximos del año.','Black Friday','Comercial',NULL,0,60.00),(30,'Labor Day 2023','Fin de semana del día del trabajo con relajación.','2023-09-01 00:00:00','2023-09-05 23:59:59','Inactivo',22.00,'Descanso laboral.','Labor Day','Estadounidense',NULL,0,22.00),(31,'Pascua 2023','Celebración de Pascua con actividades familiares.','2023-04-07 00:00:00','2023-04-12 23:59:59','Inactivo',28.00,'Búsqueda de huevos incluida.','Pascua','Religioso',NULL,0,28.00),(32,'4 de Julio 2023','Independencia americana con barbacoa y fuegos artificiales.','2023-07-02 00:00:00','2023-07-06 23:59:59','Inactivo',35.00,'Celebración estadounidense.','4 de Julio','Patriótico',NULL,0,35.00),(33,'Thanksgiving 2023','Acción de Gracias con cena tradicional americana.','2023-11-20 00:00:00','2023-11-26 23:59:59','Inactivo',45.00,'Cena de pavo incluida.','Thanksgiving','Estadounidense',NULL,0,45.00),(34,'San Patricio 2023','Celebración irlandesa con cerveza verde y música celta.','2023-03-15 00:00:00','2023-03-20 23:59:59','Inactivo',20.00,'Música irlandesa en vivo.','San Patricio','Irlandés',NULL,0,20.00),(35,'Equinoccio de Primavera 2023','Celebración del inicio de la primavera.','2023-03-18 00:00:00','2023-03-25 23:59:59','Inactivo',15.00,'Ceremonias ancestrales.','Equinoccio','Espiritual',NULL,0,15.00),(36,'Festival de Cerveza 2023','Oktoberfest mexicano con cervezas artesanales.','2023-10-05 00:00:00','2023-10-15 23:59:59','Inactivo',30.00,'Degustación de cervezas.','Oktoberfest','Cultural',NULL,0,30.00),(37,'Cyber Monday 2023','Ofertas digitales exclusivas para reservas online.','2023-11-27 00:00:00','2023-11-28 23:59:59','Inactivo',55.00,'Solo reservas online.','Cyber Monday','Digital',NULL,0,55.00),(38,'Día de la Tierra 2023','Paquete ecológico con actividades sustentables.','2023-04-20 00:00:00','2023-04-25 23:59:59','Inactivo',20.00,'Actividades ecológicas.','Día de la Tierra','Ecológico',NULL,0,20.00),(39,'Festival de Música 2023','Fin de semana con conciertos de diversos géneros.','2023-06-10 00:00:00','2023-06-20 23:59:59','Inactivo',40.00,'Múltiples artistas.','Música','Artístico',NULL,0,40.00),(40,'Solsticio de Verano 2023','Celebración del día más largo del año.','2023-06-20 00:00:00','2023-06-25 23:59:59','Inactivo',25.00,'Rituales de verano.','Solsticio','Espiritual',NULL,0,25.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queja`
--

LOCK TABLES `queja` WRITE;
/*!40000 ALTER TABLE `queja` DISABLE KEYS */;
INSERT INTO `queja` VALUES (1,15,'2024-03-11 08:30:00','Aire acondicionado no funciona en habitación 101. Hace mucho calor y no podemos dormir.','Alta','Resuelto','2024-03-11 10:15:00',56,9,'Se envió técnico de mantenimiento que reparó el sistema de climatización. Se ofreció cambio de habitación temporal.',4,2),(2,23,'2024-04-19 14:20:00','La televisión de la habitación 202 no enciende. Hemos reportado varias veces.','Media','Resuelto','2024-04-19 16:45:00',61,71,'Se reemplazó la televisión por una nueva. Se disculpó por la demora en el servicio.',3,4),(3,8,'2024-05-04 21:15:00','Ruido excesivo de la habitación 104 de arriba. Parece que hay una fiesta hasta muy tarde.','Alta','Resuelto','2024-05-04 22:00:00',58,190,'Seguridad habló con huéspedes de habitación superior. Se estableció toque de silencio.',5,14),(4,41,'2024-06-08 09:45:00','Fuga de agua en el baño de la habitación 401. El piso está completamente mojado.','Alta','Resuelto','2024-06-08 11:30:00',62,44,'Plomero reparó inmediatamente la fuga. Housekeeping limpió y secó completamente el área.',4,2),(5,67,'2024-07-21 16:30:00','La caja fuerte de la habitación 701 no funciona. No podemos guardar nuestros documentos importantes.','Media','Resuelto','2024-07-22 09:00:00',65,15,'Técnico IT reparó el sistema electrónico de la caja fuerte. Se verificó funcionamiento correcto.',4,4),(6,34,'2024-08-15 19:45:00','El servicio en el restaurante es muy lento. Llevamos esperando 45 minutos por nuestra comida.','Media','Resuelto','2024-08-15 20:30:00',59,22,'Se disculpó personalmente con los huéspedes. Se ofreció postre cortesía y descuento en la cuenta.',3,7),(7,72,'2024-09-26 10:15:00','Personal de limpieza no ha venido a limpiar la habitación 802 en dos días.','Media','Resuelto','2024-09-26 12:00:00',63,231,'Se asignó equipo de limpieza inmediato. Se implementó doble verificación de cronograma de housekeeping.',4,2),(8,19,'2024-10-10 22:30:00','Música en el bar muy alta. No podemos dormir en la habitación 203 que está cerca.','Media','Resuelto','2024-10-10 23:00:00',57,27,'Se redujo el volumen de la música después de las 22:00. Se disculpó con los huéspedes afectados.',4,9),(9,56,'2024-11-24 07:00:00','El agua caliente no llega a la habitación 601. Solo sale agua fría de la regadera.','Alta','Resuelto','2024-11-24 09:15:00',64,10,'Se reparó el calentador de agua del piso 6. Se verificó temperatura correcta en todas las habitaciones del piso.',5,2),(10,29,'2024-12-19 18:00:00','La comida del servicio a cuartos llegó fría a la habitación 301. Pedimos hace una hora.','Media','Resuelto','2024-12-19 19:30:00',60,33,'Se preparó nueva comida caliente inmediatamente. Se ofreció descuento del 50% en el servicio.',3,12),(11,14,'2025-01-16 11:20:00','El WiFi en la habitación 102 es muy lento. No podemos trabajar desde la habitación.','Media','En Proceso',NULL,56,15,'Técnico IT está verificando la señal en esa área del hotel.',NULL,4),(12,52,'2025-02-11 15:45:00','La ducha de la habitación 502 tiene muy poca presión de agua.','Baja','Pendiente',NULL,61,NULL,NULL,NULL,2),(13,39,'2025-03-04 20:10:00','Huéspedes de la habitación 302 haciendo ruido hasta muy tarde por segundo día consecutivo.','Media','En Proceso',NULL,58,195,'Seguridad habló con los huéspedes. Se está monitoreando la situación.',NULL,14),(14,66,'2025-04-18 08:30:00','El ascensor se quedó atascado con nosotros dentro por 20 minutos. Experiencia muy desagradable.','Alta','En Proceso',NULL,62,9,'Técnico de mantenimiento revisó completamente el sistema del ascensor.',NULL,2),(15,21,'2025-05-11 13:15:00','La comida del buffet estaba fría durante el desayuno. Varias opciones no estaban frescas.','Media','Pendiente',NULL,65,NULL,NULL,NULL,7),(16,77,'2025-06-26 10:45:00','Personal de recepción fue muy grosero al hacer check-in. Actitud muy poco profesional.','Media','En Proceso',NULL,59,4,'Se está investigando el incidente con el departamento de recursos humanos.',NULL,3),(17,43,'2025-07-14 16:20:00','Housekeeping entró a la habitación 403 sin tocar la puerta. Invadieron nuestra privacidad.','Alta','En Proceso',NULL,63,4,'Se disculpó formalmente. Se está reforzando el protocolo de entrada a habitaciones.',NULL,2),(18,58,'2025-08-21 09:00:00','El valet parking rayó nuestro auto. Hay una marca visible en la puerta del conductor.','Alta','Pendiente',NULL,57,NULL,NULL,NULL,19),(19,35,'2025-09-08 14:30:00','La piscina estaba sucia con hojas y basura flotando. No pudimos usarla.','Media','Pendiente',NULL,64,NULL,NULL,NULL,2),(20,69,'2025-10-24 11:00:00','El gimnasio no tiene aire acondicionado funcionando. Es imposible hacer ejercicio con este calor.','Media','Pendiente',NULL,60,NULL,NULL,NULL,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,15,'2024-03-15','2024-03-10','Completada','Online',56,8500.00,'2024-02-28 14:30:00',1,'RES-20240228-1534',3),(2,23,'2024-04-22','2024-04-18','Completada','Teléfono',61,12750.00,'2024-03-05 10:15:00',2,'RES-20240305-2847',1),(3,8,'2024-05-08','2024-05-03','Completada','Presencial',58,6200.00,'2024-04-20 16:45:00',1,'RES-20240420-9361',NULL),(4,41,'2024-06-12','2024-06-07','Completada','Online',62,15800.00,'2024-05-25 09:20:00',3,'RES-20240525-5729',7),(5,67,'2024-07-25','2024-07-20','Completada','Email',65,9400.00,'2024-07-02 13:10:00',1,'RES-20240702-8164',NULL),(6,34,'2024-08-18','2024-08-14','Completada','Teléfono',59,11250.00,'2024-07-30 11:35:00',2,'RES-20240730-4582',5),(7,72,'2024-09-30','2024-09-25','Completada','Online',63,7800.00,'2024-09-10 15:20:00',1,'RES-20240910-7923',NULL),(8,19,'2024-10-14','2024-10-09','Completada','Presencial',57,13600.00,'2024-09-28 08:45:00',2,'RES-20240928-3467',8),(9,56,'2024-11-28','2024-11-23','Completada','Online',64,10200.00,'2024-11-05 12:30:00',1,'RES-20241105-6841',4),(10,29,'2024-12-22','2024-12-18','Completada','Teléfono',60,16750.00,'2024-12-01 14:15:00',3,'RES-20241201-2195',2),(11,45,'2023-06-15','2023-06-10','Completada','Online',56,9800.00,'2023-05-28 16:20:00',2,'RES-20230528-4738',11),(12,63,'2023-07-30','2023-07-25','Completada','Email',61,7350.00,'2023-07-08 10:45:00',1,'RES-20230708-8592',13),(13,18,'2023-08-12','2023-08-08','Completada','Presencial',58,14200.00,'2023-07-22 13:30:00',2,'RES-20230722-1674',15),(14,76,'2023-09-25','2023-09-20','Completada','Teléfono',62,11850.00,'2023-09-05 09:15:00',2,'RES-20230905-5381',NULL),(15,32,'2023-10-18','2023-10-14','Completada','Online',65,8750.00,'2023-09-30 15:45:00',1,'RES-20230930-9246',19),(16,54,'2023-11-22','2023-11-17','Completada','Email',59,12400.00,'2023-11-02 11:20:00',2,'RES-20231102-7163',21),(17,71,'2023-12-30','2023-12-25','Completada','Presencial',63,15600.00,'2023-12-10 14:30:00',3,'RES-20231210-3827',17),(18,27,'2024-01-15','2024-01-10','Completada','Online',57,6900.00,'2023-12-28 16:10:00',1,'RES-20231228-8495',NULL),(19,49,'2024-02-28','2024-02-23','Completada','Teléfono',64,10800.00,'2024-02-08 12:45:00',2,'RES-20240208-2758',22),(20,38,'2024-03-18','2024-03-13','Completada','Email',60,45000.00,'2024-02-25 09:30:00',2,'RES-20240225-6419',NULL),(21,14,'2025-01-20','2025-01-15','Completada','Online',56,530.00,'2024-12-30 10:15:00',1,'RES-20241230-4726',1),(22,52,'2025-02-14','2025-02-10','Confirmada','Teléfono',61,18500.00,'2025-01-25 14:20:00',3,'RES-20250125-8351',1),(23,39,'2025-03-08','2025-03-03','Confirmada','Presencial',58,7200.00,'2025-02-18 16:45:00',1,'RES-20250218-1937',NULL),(24,66,'2025-04-22','2025-04-17','Completada','Email',62,0.00,'2025-04-02 11:30:00',2,'RES-20250402-5684',3),(25,21,'2025-05-15','2025-05-10','Completada','Online',65,1070.00,'2025-04-25 13:15:00',2,'RES-20250425-9172',4),(26,77,'2025-06-30','2025-06-25','Confirmada','Teléfono',59,8800.00,'2025-06-10 15:40:00',1,'RES-20250610-3568',NULL),(27,43,'2025-07-18','2025-07-13','Confirmada','Presencial',63,12600.00,'2025-06-28 09:25:00',2,'RES-20250628-7245',5),(28,58,'2025-08-25','2025-08-20','Confirmada','Online',57,16900.00,'2025-08-05 12:50:00',3,'RES-20250805-4813',6),(29,35,'2025-09-12','2025-09-07','Confirmada','Email',64,10500.00,'2025-08-22 14:35:00',1,'RES-20250822-8627',NULL),(30,69,'2025-10-28','2025-10-23','Confirmada','Teléfono',60,13800.00,'2025-10-08 16:20:00',2,'RES-20251008-2394',7),(31,25,'2024-02-15','2024-02-10','Cancelada','Online',56,7500.00,'2024-01-28 10:30:00',1,'RES-20240128-5671',NULL),(32,47,'2024-03-22','2024-03-18','Cancelada','Teléfono',61,12000.00,'2024-03-05 14:15:00',2,'RES-20240305-8924',NULL),(33,61,'2024-04-08','2024-04-03','Cancelada','Email',58,8400.00,'2024-03-20 16:45:00',1,'RES-20240320-3157',NULL),(34,33,'2024-05-25','2024-05-20','Cancelada','Presencial',62,15200.00,'2024-05-08 09:20:00',3,'RES-20240508-7486',NULL),(35,75,'2024-06-18','2024-06-13','Cancelada','Online',65,9800.00,'2024-05-30 13:10:00',1,'RES-20240530-1829',NULL),(36,28,'2024-07-30','2024-07-25','Cancelada','Teléfono',59,11400.00,'2024-07-12 15:35:00',2,'RES-20240712-6352',NULL),(37,64,'2024-08-15','2024-08-10','Cancelada','Email',63,7900.00,'2024-07-28 11:50:00',1,'RES-20240728-9675',NULL),(38,42,'2024-09-28','2024-09-23','Cancelada','Presencial',57,13500.00,'2024-09-10 14:25:00',2,'RES-20240910-4218',NULL),(39,73,'2024-10-12','2024-10-07','Cancelada','Online',64,8700.00,'2024-09-25 16:40:00',1,'RES-20240925-7863',NULL),(40,37,'2024-11-25','2024-11-20','Cancelada','Teléfono',60,12800.00,'2024-11-05 12:15:00',2,'RES-20241105-2541',NULL),(41,16,'2025-01-10','2025-01-05','Pendiente','Online',56,6800.00,'2024-12-20 10:45:00',1,'RES-20241220-8397',NULL),(42,59,'2025-02-28','2025-02-23','Pendiente','Email',61,14700.00,'2025-02-10 13:20:00',2,'RES-20250210-5164',NULL),(43,31,'2025-03-15','2025-03-10','Pendiente','Teléfono',58,9200.00,'2025-02-25 15:30:00',1,'RES-20250225-1725',NULL),(44,68,'2025-04-08','2025-04-03','Completada','Presencial',62,0.00,'2025-03-20 09:40:00',2,'RES-20250320-6948',NULL),(45,44,'2025-05-28','2025-05-27','Completada','Online',65,0.00,'2025-05-02 12:55:00',1,'RES-20250502-3271',NULL),(46,12,'2024-01-25','2024-01-20','Completada','Teléfono',59,10300.00,'2024-01-05 14:10:00',2,'RES-20240105-7594',18),(47,78,'2024-02-18','2024-02-13','Completada','Online',63,13900.00,'2024-01-30 16:25:00',2,'RES-20240130-4817',NULL),(48,50,'2024-03-30','2024-03-25','Completada','Email',57,7600.00,'2024-03-10 11:15:00',1,'RES-20240310-8362',NULL),(49,24,'2024-04-15','2024-04-10','Completada','Presencial',64,12100.00,'2024-03-28 13:40:00',2,'RES-20240328-2685',23),(50,65,'2024-05-28','2024-05-23','Completada','Teléfono',60,15400.00,'2024-05-08 15:50:00',3,'RES-20240508-9138',NULL),(51,40,'2024-06-22','2024-06-17','Completada','Online',56,8300.00,'2024-06-02 10:20:00',1,'RES-20240602-5461',25),(52,17,'2024-07-18','2024-07-13','Completada','Email',61,11700.00,'2024-06-28 12:35:00',2,'RES-20240628-1784',NULL),(53,74,'2024-08-30','2024-08-25','Completada','Presencial',58,9600.00,'2024-08-10 14:45:00',1,'RES-20240810-6927',24),(54,26,'2024-09-15','2024-09-10','Completada','Teléfono',62,13100.00,'2024-08-25 16:30:00',2,'RES-20240825-3254',NULL),(55,70,'2024-10-25','2024-10-20','Completada','Online',65,50000.00,'2024-10-05 09:10:00',2,'RES-20241005-7681',26),(56,48,'2024-11-18','2024-11-13','Completada','Email',59,8000.00,'2024-10-28 11:55:00',1,'RES-20241028-4315',NULL),(57,22,'2024-12-30','2024-12-25','Completada','Presencial',63,14800.00,'2024-12-10 13:25:00',3,'RES-20241210-8756',2),(58,79,'2025-01-22','2025-01-17','Confirmada','Teléfono',57,9100.00,'2025-01-02 15:40:00',1,'RES-20250102-2189',NULL),(59,36,'2025-02-25','2025-02-20','Confirmada','Online',64,12500.00,'2025-02-05 10:15:00',2,'RES-20250205-5832',3),(60,80,'2025-03-12','2025-03-07','Confirmada','Email',60,7400.00,'2025-02-20 12:30:00',1,'RES-20250220-9475',NULL),(61,13,'2025-04-28','2025-04-23','Confirmada','Presencial',56,16200.00,'2025-04-08 14:20:00',3,'RES-20250408-6158',4),(62,51,'2025-05-18','2025-05-13','Confirmada','Teléfono',61,8600.00,'2025-04-28 16:10:00',1,'RES-20250428-3721',NULL),(63,46,'2025-06-15','2025-06-10','Confirmada','Online',58,11900.00,'2025-05-25 09:45:00',2,'RES-20250525-7284',5),(64,11,'2025-07-30','2025-07-25','Confirmada','Email',62,13400.00,'2025-07-10 11:20:00',2,'RES-20250710-4547',NULL),(65,55,'2025-08-12','2025-08-07','Confirmada','Presencial',65,9700.00,'2025-07-22 13:35:00',1,'RES-20250722-8912',6),(66,30,'2025-09-28','2025-09-23','Confirmada','Teléfono',59,15100.00,'2025-09-08 15:50:00',3,'RES-20250908-2375',NULL),(67,62,'2025-10-15','2025-10-10','Confirmada','Online',63,10400.00,'2025-09-25 10:25:00',2,'RES-20250925-6738',7),(68,20,'2025-11-30','2025-11-25','Confirmada','Email',57,8500.00,'2025-11-10 12:40:00',1,'RES-20251110-1461',NULL),(69,76,'2025-12-22','2025-12-17','Confirmada','Presencial',64,17500.00,'2025-12-02 14:55:00',3,'RES-20251202-5924',10),(70,41,'2024-06-30','2024-06-25','Cancelada','Teléfono',60,9300.00,'2024-06-12 16:15:00',1,'RES-20240612-8287',NULL),(71,67,'2024-07-22','2024-07-17','Cancelada','Online',56,12700.00,'2024-07-05 11:30:00',2,'RES-20240705-3650',NULL),(72,33,'2024-08-18','2024-08-13','Cancelada','Email',61,7800.00,'2024-07-30 13:45:00',1,'RES-20240730-7913',NULL),(73,58,'2024-09-25','2024-09-20','Cancelada','Presencial',58,14600.00,'2024-09-08 15:20:00',2,'RES-20240908-4276',NULL),(74,25,'2024-10-18','2024-10-13','Cancelada','Teléfono',62,8900.00,'2024-09-28 10:35:00',1,'RES-20240928-8539',NULL),(75,72,'2024-11-30','2024-11-25','Cancelada','Online',65,11800.00,'2024-11-12 12:50:00',2,'RES-20241112-1862',NULL),(76,47,'2024-12-15','2024-12-10','Cancelada','Email',59,9500.00,'2024-11-25 14:25:00',1,'RES-20241125-6325',NULL),(77,14,'2025-01-28','2025-01-23','Cancelada','Presencial',63,13200.00,'2025-01-10 16:40:00',2,'RES-20250110-2748',NULL),(78,69,'2025-02-22','2025-02-17','Cancelada','Teléfono',57,10600.00,'2025-02-05 09:15:00',2,'RES-20250205-7471',NULL),(79,38,'2025-03-25','2025-03-20','Cancelada','Online',64,8700.00,'2025-03-08 11:25:00',1,'RES-20250308-3894',NULL),(80,15,'2023-12-25','2023-12-20','Completada','Email',60,16800.00,'2023-12-05 13:10:00',3,'RES-20231205-8157',12),(81,53,'2024-01-18','2024-01-13','Completada','Presencial',56,7200.00,'2023-12-28 15:30:00',1,'RES-20231228-4620',NULL),(82,29,'2024-02-25','2024-02-20','Completada','Teléfono',61,12300.00,'2024-02-05 10:45:00',2,'RES-20240205-9183',16),(83,75,'2024-03-28','2024-03-23','Completada','Online',58,8800.00,'2024-03-08 12:20:00',1,'RES-20240308-5746',NULL),(84,42,'2024-04-30','2024-04-25','Completada','Email',62,15900.00,'2024-04-10 14:35:00',3,'RES-20240410-2309',18),(85,18,'2024-05-15','2024-05-10','Completada','Presencial',65,9400.00,'2024-04-25 16:50:00',1,'RES-20240425-6872',NULL),(86,64,'2024-06-28','2024-06-23','Completada','Teléfono',59,11200.00,'2024-06-08 09:05:00',2,'RES-20240608-1435',NULL),(87,37,'2024-07-20','2024-07-15','Completada','Online',63,13700.00,'2024-06-30 11:40:00',2,'RES-20240630-7998',20),(88,73,'2024-08-22','2024-08-17','Completada','Email',57,8100.00,'2024-08-02 13:15:00',1,'RES-20240802-4561',NULL),(89,28,'2024-09-18','2024-09-13','Completada','Presencial',64,14500.00,'2024-08-28 15:25:00',2,'RES-20240828-8224',NULL),(90,71,'2024-10-30','2024-10-25','Completada','Teléfono',60,10800.00,'2024-10-10 10:40:00',2,'RES-20241010-3687',19),(91,45,'2024-11-12','2024-11-07','Completada','Online',56,7600.00,'2024-10-22 12:55:00',1,'RES-20241022-9350',NULL),(92,16,'2024-12-28','2024-12-23','Completada','Email',61,16400.00,'2024-12-08 14:30:00',3,'RES-20241208-5813',17),(93,60,'2025-01-25','2025-01-20','Confirmada','Presencial',58,9000.00,'2025-01-05 16:45:00',1,'RES-20250105-2476',NULL),(94,34,'2025-02-18','2025-02-13','Confirmada','Teléfono',62,12900.00,'2025-01-28 09:20:00',2,'RES-20250128-6139',NULL),(95,78,'2025-03-30','2025-03-25','Confirmada','Online',65,8400.00,'2025-03-10 11:35:00',1,'RES-20250310-9702',3),(96,23,'2025-04-12','2025-04-07','Confirmada','Email',59,15800.00,'2025-03-22 13:50:00',3,'RES-20250322-4265',4),(97,50,'2025-05-28','2025-05-23','Confirmada','Presencial',63,10200.00,'2025-05-08 15:05:00',2,'RES-20250508-7928',NULL),(98,27,'2025-06-22','2025-06-17','Confirmada','Teléfono',57,7900.00,'2025-06-02 10:15:00',1,'RES-20250602-3591',5),(99,66,'2025-07-25','2025-07-20','Confirmada','Online',64,13600.00,'2025-07-05 12:30:00',2,'RES-20250705-8154',NULL),(100,39,'2025-08-28','2025-08-23','Confirmada','Email',60,9800.00,'2025-08-08 14:45:00',1,'RES-20250808-4717',6),(101,77,'2025-09-30','2025-09-25','Confirmada','Presencial',56,11500.00,'2025-09-10 16:20:00',2,'RES-20250910-1280',NULL),(102,52,'2025-10-22','2025-10-17','Confirmada','Teléfono',61,8600.00,'2025-10-02 09:35:00',1,'RES-20251002-5643',7),(103,21,'2025-11-15','2025-11-10','Confirmada','Online',58,14900.00,'2025-10-25 11:50:00',2,'RES-20251025-9306',NULL),(104,65,'2025-12-30','2025-12-25','Confirmada','Email',62,17200.00,'2025-12-10 13:25:00',3,'RES-20251210-2869',10),(105,43,'2024-03-12','2024-03-07','Cancelada','Presencial',65,7300.00,'2024-02-22 15:40:00',1,'RES-20240222-6432',NULL),(106,59,'2024-04-25','2024-04-20','Cancelada','Teléfono',59,12600.00,'2024-04-08 10:55:00',2,'RES-20240408-9995',NULL),(107,35,'2024-05-30','2024-05-25','Cancelada','Online',63,8500.00,'2024-05-12 12:10:00',1,'RES-20240512-4558',NULL),(108,74,'2024-06-15','2024-06-10','Cancelada','Email',57,15300.00,'2024-05-28 14:25:00',3,'RES-20240528-8121',NULL),(109,48,'2024-07-28','2024-07-23','Cancelada','Presencial',64,9700.00,'2024-07-10 16:40:00',1,'RES-20240710-3684',NULL),(110,26,'2024-08-20','2024-08-15','Cancelada','Teléfono',60,11400.00,'2024-08-02 09:15:00',2,'RES-20240802-7247',NULL),(111,70,'2024-09-22','2024-09-17','Cancelada','Online',56,8200.00,'2024-09-05 11:30:00',1,'RES-20240905-1810',NULL),(112,44,'2024-10-28','2024-10-23','Cancelada','Email',61,13900.00,'2024-10-10 13:45:00',2,'RES-20241010-5373',NULL),(113,22,'2024-11-20','2024-11-15','Cancelada','Presencial',58,10300.00,'2024-11-02 15:20:00',2,'RES-20241102-9036',NULL),(114,68,'2024-12-18','2024-12-13','Cancelada','Teléfono',62,7800.00,'2024-11-28 10:35:00',1,'RES-20241128-4699',NULL),(115,31,'2025-01-15','2025-01-10','Pendiente','Online',65,14200.00,'2024-12-25 12:50:00',2,'RES-20241225-8262',NULL),(116,56,'2025-02-20','2025-02-15','Pendiente','Email',59,9100.00,'2025-01-30 14:05:00',1,'RES-20250130-3825',NULL),(117,12,'2025-03-22','2025-03-17','Pendiente','Presencial',63,11800.00,'2025-03-02 16:15:00',2,'RES-20250302-7488',NULL),(118,79,'2025-04-25','2025-04-20','Pendiente','Teléfono',57,8700.00,'2025-04-05 09:30:00',1,'RES-20250405-2151',NULL),(119,46,'2025-05-30','2025-05-27','Cancelada','Online',64,15600.00,'2025-05-10 11:45:00',3,'RES-20250510-6714',NULL),(120,17,'2025-06-28','2025-06-23','Pendiente','Email',60,10500.00,'2025-06-08 13:20:00',2,'RES-20250608-1377',NULL),(121,63,'2025-07-22','2025-07-17','Pendiente','Presencial',56,8000.00,'2025-07-02 15:35:00',1,'RES-20250702-5940',NULL),(122,40,'2025-08-30','2025-08-25','Pendiente','Teléfono',61,12400.00,'2025-08-10 10:50:00',2,'RES-20250810-9503',NULL),(123,80,'2025-09-15','2025-09-10','Pendiente','Online',58,9600.00,'2025-08-25 12:25:00',1,'RES-20250825-4166',NULL),(124,24,'2025-10-20','2025-10-15','Pendiente','Email',62,14100.00,'2025-09-30 14:40:00',2,'RES-20250930-7729',NULL),(125,55,'2025-11-25','2025-11-20','Pendiente','Presencial',65,8300.00,'2025-11-05 16:55:00',1,'RES-20251105-3292',NULL),(126,19,'2023-05-20','2023-05-15','Completada','Teléfono',59,10900.00,'2023-04-30 11:10:00',2,'RES-20230430-8755',14),(127,61,'2023-06-25','2023-06-20','Completada','Online',63,7500.00,'2023-06-05 13:25:00',1,'RES-20230605-4318',NULL),(128,36,'2023-07-28','2023-07-23','Completada','Email',57,13800.00,'2023-07-08 15:40:00',2,'RES-20230708-9881',NULL),(129,72,'2023-08-30','2023-08-25','Completada','Presencial',64,9200.00,'2023-08-10 10:15:00',1,'RES-20230810-5444',15),(130,47,'2023-09-22','2023-09-17','Completada','Teléfono',60,12200.00,'2023-09-02 12:30:00',2,'RES-20230902-7007',NULL),(131,33,'2023-10-25','2023-10-20','Completada','Online',56,8600.00,'2023-10-05 14:45:00',1,'RES-20231005-3570',19),(132,67,'2023-11-18','2023-11-13','Completada','Email',61,15700.00,'2023-10-28 16:20:00',3,'RES-20231028-8133',21),(133,25,'2023-12-22','2023-12-17','Completada','Presencial',58,11000.00,'2023-12-02 09:35:00',2,'RES-20231202-4696',17),(134,54,'2024-01-28','2024-01-23','Completada','Teléfono',62,7700.00,'2024-01-08 11:50:00',1,'RES-20240108-9259',NULL),(135,38,'2024-02-20','2024-02-15','Completada','Online',65,13500.00,'2024-01-30 13:15:00',2,'RES-20240130-5822',22),(136,76,'2024-03-25','2024-03-20','Completada','Email',59,9900.00,'2024-03-05 15:30:00',1,'RES-20240305-2385',NULL),(137,49,'2024-04-18','2024-04-13','Completada','Presencial',63,12800.00,'2024-03-28 10:45:00',2,'RES-20240328-6948',23),(138,28,'2024-05-30','2024-05-25','Completada','Teléfono',57,8400.00,'2024-05-10 12:20:00',1,'RES-20240510-1511',NULL),(139,65,'2024-06-20','2024-06-15','Completada','Online',64,14600.00,'2024-05-30 14:35:00',2,'RES-20240530-7974',25),(140,41,'2024-07-25','2024-07-20','Completada','Email',60,10700.00,'2024-07-05 16:50:00',2,'RES-20240705-4537',NULL),(141,73,'2024-08-28','2024-08-23','Completada','Presencial',56,8900.00,'2024-08-08 09:25:00',1,'RES-20240808-9100',24),(142,51,'2024-09-30','2024-09-25','Completada','Teléfono',61,13200.00,'2024-09-10 11:40:00',2,'RES-20240910-5663',NULL),(143,37,'2024-10-22','2024-10-17','Completada','Online',58,7800.00,'2024-10-02 13:55:00',1,'RES-20241002-2226',26),(144,62,'2024-11-28','2024-11-23','Completada','Email',62,15400.00,'2024-11-08 15:10:00',3,'RES-20241108-6789',NULL),(145,20,'2024-12-20','2024-12-15','Completada','Presencial',65,11300.00,'2024-11-30 10:25:00',2,'RES-20241130-3352',2),(146,71,'2025-01-18','2025-01-13','Confirmada','Teléfono',59,9500.00,'2024-12-28 12:40:00',1,'RES-20241228-7915',NULL),(147,44,'2025-02-22','2025-02-17','Confirmada','Online',63,12700.00,'2025-02-02 14:55:00',2,'RES-20250202-4478',NULL),(148,18,'2025-03-28','2025-03-23','Confirmada','Email',57,8100.00,'2025-03-08 16:30:00',1,'RES-20250308-8041',3),(149,58,'2025-04-30','2025-04-25','Confirmada','Presencial',64,14800.00,'2025-04-10 09:45:00',3,'RES-20250410-1604',4),(150,35,'2025-05-25','2025-05-20','Confirmada','Teléfono',60,10100.00,'2025-05-05 11:20:00',2,'RES-20250505-5167',NULL),(151,1,'2025-12-05','2025-12-01','Confirmada','Online',NULL,5000.00,'2025-05-24 18:43:00',1,'TEST-20251201-9999',NULL),(152,1,'2025-12-05','2025-12-01','Confirmada','Online',NULL,5000.00,'2025-05-24 18:55:42',1,'TEST-20251201-9999',NULL),(153,50,'2025-12-05','2025-12-01','Confirmada','Online',NULL,5000.00,'2025-05-24 18:56:05',1,'TEST-20251201-9999',NULL),(154,50,'2025-12-15','2025-12-06','Confirmada','Online',NULL,5000.00,'2025-05-24 18:57:07',1,'TEST-20251201-9999',NULL),(156,78,'2025-06-20','2025-06-15','Confirmada','en linea',56,21875.00,'2025-05-27 01:31:58',2,'RES-20250527-98846',NULL),(157,78,'2025-06-20','2025-06-15','Confirmada','en linea',56,21875.00,'2025-05-27 01:32:26',2,'RES-20250527-62242',NULL),(158,78,'2025-06-20','2025-06-15','Confirmada','en linea',56,21875.00,'2025-05-27 01:32:31',2,'RES-20250527-14671',NULL),(159,78,'2025-06-20','2025-06-15','Confirmada','en linea',56,18593.75,'2025-05-27 01:32:59',2,'RES-20250527-86630',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaccion_cliente`
--

LOCK TABLES `satisfaccion_cliente` WRITE;
/*!40000 ALTER TABLE `satisfaccion_cliente` DISABLE KEYS */;
INSERT INTO `satisfaccion_cliente` VALUES (36,1,'2023-12-26',5,5,5,5,5,'Experiencia perfecta en el hotel. Servicio impecable, instalaciones de lujo y atención personalizada excepcional. El mejor hotel en el que hemos estado.',1),(37,45,'2024-06-23',5,5,5,5,5,'Como cliente VIP, siempre recibo el mejor trato. La suite junior con jacuzzi es fantástica. Atención personalizada de primer nivel. Mi hotel favorito en la Riviera Maya.',1),(38,50,'2024-05-30',5,5,4,5,5,'Vacaciones familiares increíbles. Las instalaciones para niños son excelentes, habitación amplia y cómoda. Solo el servicio de tours podría ser un poco más rápido.',1),(39,31,'2024-01-19',5,4,5,5,5,'Excelente para eventos corporativos. Instalaciones profesionales y servicio de primera. La habitación muy buena aunque podría tener mejor vista.',1),(40,47,'2024-02-19',5,5,5,4,5,'Experiencia romántica perfecta. Habitación hermosa, servicios de spa relajantes. Un empleado fue un poco lento pero el resto compensó ampliamente.',1),(41,71,'2024-12-30',5,5,5,5,4,'Fin de año espectacular. La suite familiar perfecta para celebrar en grande. Fuegos artificiales desde la habitación increíbles. Solo pequeño detalle de limpieza.',1),(42,12,'2024-01-26',4,4,4,4,4,'Muy buena experiencia de negocios. Instalaciones modernas y servicios profesionales. El equipo de eventos muy organizado. Definitivamente regresaríamos.',1),(43,38,'2024-03-19',4,4,5,4,4,'Hotel excelente para entretenimiento. El casino es de primera clase y los shows nocturnos espectaculares. Habitación confortable y bien equipada.',1),(44,62,'2025-05-18',4,4,4,5,4,'Experiencia muy positiva. Personal extremadamente amable y profesional. Instalaciones bien mantenidas. El spa es relajante y los masajes excelentes.',1),(45,64,'2024-04-30',4,5,4,4,4,'Habitaciones de lujo verdadero. Suite ejecutiva con todas las comodidades. Servicios buenos aunque algunos pueden mejorar en velocidad. Muy recomendable.',1),(46,11,'2024-11-12',4,4,4,5,4,'Staff increíblemente atento durante toda la estancia. Siempre dispuestos a ayudar con cualquier solicitud. Instalaciones de primera clase.',1),(47,17,'2024-03-08',3,3,4,3,3,'Estancia aceptable con algunas áreas de mejora. Los servicios de spa son excelentes pero otros aspectos podrían estar mejor. Precio justo.',1),(48,26,'2024-09-16',3,3,3,4,3,'Hotel decente para vacaciones familiares. Personal muy amable pero instalaciones necesitan actualización. Buena ubicación y ambiente agradable.',0),(49,53,'2024-08-30',4,4,3,4,3,'Buenas vacaciones en general. Habitación cómoda y limpia. Algunos servicios tardaron más de lo esperado pero la experiencia fue positiva.',1),(50,16,'2024-06-28',3,4,3,3,4,'Hotel con potencial. Las habitaciones están bien pero los servicios pueden mejorar. Personal nuevo que necesita más entrenamiento. Instalaciones bonitas.',0),(51,29,'2023-08-30',4,4,4,3,4,'Experiencia satisfactoria. Buena relación calidad-precio. Habitación amplia y confortable. Servicio de restaurante un poco lento pero comida deliciosa.',1),(52,74,'2024-05-30',2,3,2,2,3,'Por debajo de las expectativas para un hotel 5 estrellas. Muchos servicios básicos fallaron. Personal poco entrenado. No justifica el precio.',0),(53,6,'2025-04-12',3,2,3,3,2,'Experiencia mixta. Algunos aspectos buenos pero muchos detalles por mejorar. La habitación necesita renovación urgente. Limpieza inconsistente.',0),(54,21,'2025-09-30',2,2,3,2,2,'Decepcionante estancia. Problemas múltiples que no se resolvieron adecuadamente. Personal desorganizado. Esperábamos mucho más por el costo.',0),(55,39,'2024-06-20',3,3,2,3,3,'Hotel promedio. Instalaciones aceptables pero servicios lentos. Personal amable pero ineficiente. Algunas mejoras podrían hacer gran diferencia.',0),(56,44,'2024-11-28',2,3,2,2,3,'Muy por debajo del estándar esperado. Múltiples inconvenientes durante la estancia. Gerencia necesita revisar protocolos de servicio urgentemente.',0),(57,33,'2024-04-09',5,5,4,5,5,'Como cliente VIP, experiencia excepcional como siempre. Upgrade automático apreciado. Atención personalizada que marca la diferencia. Altamente recomendado.',1),(58,27,'2024-05-19',4,4,4,5,4,'Cliente frecuente muy satisfecho. Beneficios VIP excelentes. Personal conoce nuestras preferencias. Calidad consistente en múltiples visitas.',1),(59,63,'2025-06-15',5,5,5,5,4,'Perfecto como siempre. Trato VIP excepcional, suite premium impecable. Personal anticipa nuestras necesidades. Pequeño detalle de limpieza solucionado inmediatamente.',1),(60,36,'2025-01-23',4,5,4,4,4,'Muy satisfechos con estancia VIP. Habitación con vista al mar hermosa. Servicios de spa relajantes. Personal generalmente muy atento y profesional.',1),(61,55,'2024-07-01',5,5,4,5,4,'Cliente VIP leal muy contento. Calidad consistente que nos hace regresar. Personal excepcional que va más allá. Mejoras continuas del hotel notables.',1),(62,22,'2025-02-15',5,5,5,4,5,'Luna de miel perfecta. Suite presidencial como un sueño. Atención romántica en cada detalle. Un empleado fue lento pero el resto compensó perfectamente.',1),(63,60,'2025-03-13',4,4,4,5,4,'Excelente experiencia familiar. Instalaciones para niños fantásticas. Personal muy paciente con los pequeños. Habitación espaciosa y cómoda para todos.',1),(64,79,'2025-01-25',5,5,5,5,5,'Cliente VIP extremadamente satisfecho. Cada aspecto de la estancia fue perfecto. Personal excepcional que conoce nuestro historial. Experiencia sin fallas.',1),(65,14,'2025-02-18',3,3,4,3,3,'Estancia aceptable pero esperábamos más. Servicios básicos funcionaron bien. Personal amable pero falta coordinación entre departamentos.',0),(66,3,'2025-11-15',4,4,4,4,5,'Muy buena experiencia de fin de año. Instalaciones bien mantenidas y limpias. Personal profesional. Eventos especiales muy bien organizados.',1),(67,76,'2024-12-21',4,4,4,4,4,'Navidad familiar muy especial. Decoraciones hermosas y ambiente festivo. Habitación confortable. Servicios navideños bien organizados y divertidos.',1),(68,2,'2024-12-28',5,5,5,5,5,'Fin de año espectacular. Gala de año nuevo increíble. Suite presidencial de ensueño. Servicio de mayordomo excepcional. Experiencia inolvidable.',1),(69,35,'2024-02-20',3,4,3,3,3,'Hotel bonito pero con detalles por mejorar. Habitación confortable pero servicios lentos. Personal amable que se esfuerza. Potencial para ser excelente.',1),(70,5,'2024-12-20',4,4,4,4,4,'Excelente para celebraciones. Instalaciones elegantes y servicio profesional. Atención a detalles notable. Precios acordes a la calidad ofrecida.',1),(71,18,'2024-08-12',4,4,5,4,4,'Excelente experiencia VIP. Upgrade automático muy apreciado. Servicios de spa de primera clase. Personal conoce nuestras preferencias como clientes frecuentes.',1),(72,24,'2024-04-16',3,3,3,4,3,'Estancia corporativa aceptable. Instalaciones para eventos buenas pero servicios pueden mejorar. Personal amable pero falta coordinación entre departamentos.',0),(73,48,'2024-11-18',2,2,3,2,2,'Muy decepcionante para el precio pagado. Habitación necesita renovación urgente. Servicios lentos e ineficientes. Personal poco profesional en varios momentos.',0),(74,65,'2024-05-15',4,4,4,4,4,'Muy buena experiencia familiar. Instalaciones para niños excelentes. Habitación espaciosa y cómoda. Personal muy paciente y amable con los pequeños.',1),(75,75,'2024-03-28',3,4,2,3,3,'Hotel con potencial pero servicios inconsistentes. Habitación bonita pero restaurante muy lento. Personal se esfuerza pero necesita mejor organización.',0),(76,1,'2024-01-18',5,5,4,5,5,'Experiencia perfecta de inicio a fin. Personal excepcional que va más allá de expectativas. Instalaciones de lujo verdadero. Altamente recomendado.',1),(77,7,'2024-07-20',4,3,4,4,4,'Buena estancia con pequeños detalles a mejorar. Servicios generalmente buenos. Personal amable y dispuesto a ayudar. Relación calidad-precio justa.',1),(78,13,'2025-01-25',2,3,2,2,3,'Por debajo de expectativas. Múltiples problemas durante la estancia. Personal desorganizado. Para un hotel 5 estrellas esperábamos mucho más.',0),(79,9,'2025-07-25',4,4,4,5,4,'Muy satisfechos con el servicio. Personal extremadamente atento y profesional. Instalaciones bien mantenidas. Experiencia muy positiva en general.',1),(80,4,'2025-12-30',5,5,5,5,5,'Celebración de fin de año perfecta. Gala espectacular y fuegos artificiales increíbles. Suite presidencial de ensueño. Experiencia inolvidable para toda la familia.',1),(81,26,'2023-05-20',4,4,3,4,4,'Buena experiencia de vacaciones. Habitación confortable y limpia. Algunos servicios lentos pero personal muy amable. Instalaciones bonitas y bien ubicadas.',1),(82,32,'2023-11-18',3,3,4,3,3,'Estancia promedio. Servicios de spa excelentes pero otros aspectos pueden mejorar. Personal amable pero falta entrenamiento. Precio un poco elevado.',0),(83,40,'2024-07-25',4,5,4,4,4,'Muy buena experiencia. Habitación superior hermosa y espaciosa. Servicios profesionales. Personal atento. Definitivamente consideraríamos regresar.',1),(84,46,'2025-01-18',3,3,3,3,4,'Hotel decente pero sin destacar. Instalaciones aceptables y personal amable. Limpieza muy buena. Esperábamos un poco más por las 5 estrellas.',0),(85,52,'2024-09-20',5,5,5,5,5,'Experiencia absolutamente perfecta. Cada detalle superó nuestras expectativas. Personal increíblemente profesional. Sin duda el mejor hotel de la región.',1),(86,68,'2024-06-15',3,3,3,4,3,'Estancia promedio con algunos aspectos destacables. Personal muy amable y servicial. Instalaciones necesitan actualización pero ambiente agradable.',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporada`
--

LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
INSERT INTO `temporada` VALUES (1,'Temporada Alta 2023','2023-12-15','2024-04-15','Temporada de mayor demanda que incluye Navidad, Año Nuevo, Carnaval y Semana Santa. Ideal para turistas que buscan escapar del invierno del norte.',1.75),(2,'Temporada Media Primavera 2024','2024-04-16','2024-06-15','Temporada de transición con clima agradable. Ideal para turistas que buscan mejores precios antes del verano.',1.20),(3,'Temporada Baja Verano 2024','2024-06-16','2024-10-31','Temporada de lluvias y huracanes. Precios más accesibles para huéspedes que no les importa el clima tropical. Ideal para turismo nacional.',0.85),(4,'Temporada Media Otoño 2024','2024-11-01','2024-12-14','Temporada de recuperación post-huracanes con excelente clima. Perfecta para eventos corporativos y bodas.',1.25),(5,'Temporada Alta 2025','2024-12-15','2025-04-15','Temporada pico con mayor afluencia turística internacional. Incluye festividades navideñas, Año Nuevo y Semana Santa.',1.80),(6,'Temporada Media Primavera 2025','2025-04-16','2025-06-15','Temporada de transición con clima estable. Excelente para turismo familiar y de parejas.',1.25),(7,'Temporada Baja Verano 2025','2025-06-16','2025-10-31','Temporada de lluvias con promociones especiales. Ideal para huéspedes que buscan experiencias auténticas del trópico mexicano.',0.90),(8,'Temporada Media Otoño 2025','2025-11-01','2025-12-14','Temporada dorada con clima perfecto. Ideal para eventos especiales, bodas y turismo de lujo.',1.30),(9,'Temporada Especial Año Nuevo 2024','2023-12-28','2024-01-05','Temporada ultra-premium para celebraciones de Año Nuevo. Incluye galas, fiestas exclusivas y paquetes VIP.',2.25),(10,'Temporada Especial Semana Santa 2024','2024-03-24','2024-04-01','Temporada especial para las vacaciones de Semana Santa. Alta demanda de familias mexicanas y turismo religioso.',2.00),(11,'Temporada Especial Día de Muertos 2024','2024-10-30','2024-11-03','Temporada especial para celebrar el Día de Muertos con eventos culturales auténticos y experiencias únicas.',1.60),(12,'Temporada Especial Año Nuevo 2025','2024-12-28','2025-01-05','Temporada ultra-premium para celebraciones de fin de año. Experiencias exclusivas y servicios de máximo lujo.',2.30);
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporada_promocion_modificador`
--

DROP TABLE IF EXISTS `temporada_promocion_modificador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada_promocion_modificador` (
  `ID_Modificador` int NOT NULL AUTO_INCREMENT,
  `ID_Paquete` int NOT NULL,
  `ID_Temporada` int NOT NULL,
  `Factor_Descuento_Adicional` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Descuento adicional/reducción por temporada',
  `Descuento_Maximo` decimal(5,2) DEFAULT NULL COMMENT 'Límite máximo de descuento total',
  `Descuento_Minimo` decimal(5,2) DEFAULT NULL COMMENT 'Límite mínimo de descuento total',
  `Activo` tinyint(1) DEFAULT '1',
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Modificador`),
  UNIQUE KEY `uk_paquete_temporada` (`ID_Paquete`,`ID_Temporada`),
  KEY `idx_paquete_modificador` (`ID_Paquete`),
  KEY `idx_temporada_modificador` (`ID_Temporada`),
  CONSTRAINT `fk_modificador_paquete` FOREIGN KEY (`ID_Paquete`) REFERENCES `paquete_promocional` (`ID_Paquete`) ON DELETE CASCADE,
  CONSTRAINT `fk_modificador_temporada` FOREIGN KEY (`ID_Temporada`) REFERENCES `temporada` (`ID_Temporada`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporada_promocion_modificador`
--

LOCK TABLES `temporada_promocion_modificador` WRITE;
/*!40000 ALTER TABLE `temporada_promocion_modificador` DISABLE KEYS */;
INSERT INTO `temporada_promocion_modificador` VALUES (1,1,3,10.00,40.00,15.00,1,'2025-05-24 10:37:45'),(2,1,7,15.00,45.00,20.00,1,'2025-05-24 10:37:45'),(3,2,1,-5.00,20.00,10.00,1,'2025-05-24 10:37:45'),(4,2,5,-8.00,15.00,8.00,1,'2025-05-24 10:37:45'),(5,3,2,5.00,40.00,25.00,1,'2025-05-24 10:37:45'),(6,3,6,8.00,45.00,30.00,1,'2025-05-24 10:37:45'),(7,4,3,15.00,55.00,30.00,1,'2025-05-24 10:37:45'),(8,4,7,20.00,60.00,35.00,1,'2025-05-24 10:37:45');
/*!40000 ALTER TABLE `temporada_promocion_modificador` ENABLE KEYS */;
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
-- Temporary view structure for view `v_modificadores_activos`
--

DROP TABLE IF EXISTS `v_modificadores_activos`;
/*!50001 DROP VIEW IF EXISTS `v_modificadores_activos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_modificadores_activos` AS SELECT 
 1 AS `ID_Modificador`,
 1 AS `Paquete_Nombre`,
 1 AS `Temporada_Nombre`,
 1 AS `Descuento_Base`,
 1 AS `Factor_Descuento_Adicional`,
 1 AS `Descuento_Total`,
 1 AS `Descuento_Maximo`,
 1 AS `Descuento_Minimo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_promociones_temporadas`
--

DROP TABLE IF EXISTS `v_promociones_temporadas`;
/*!50001 DROP VIEW IF EXISTS `v_promociones_temporadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_promociones_temporadas` AS SELECT 
 1 AS `ID_Paquete`,
 1 AS `Nombre`,
 1 AS `Descripcion`,
 1 AS `Fecha_inicio`,
 1 AS `Fecha_Fin`,
 1 AS `Estado`,
 1 AS `Descuento_Porcentaje`,
 1 AS `Aplicable_Solo_Temporada`,
 1 AS `ID_Temporada`,
 1 AS `Temporada_Nombre`,
 1 AS `Factor_Multiplicador_Precio`,
 1 AS `Descuento_Efectivo_Hoy`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'hotel_mafia'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calcular_descuento_efectivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_descuento_efectivo`(
    p_id_paquete INT, 
    p_fecha_reserva DATE
) RETURNS decimal(5,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_descuento_base DECIMAL(5,2) DEFAULT 0.00;
    DECLARE v_descuento_adicional DECIMAL(5,2) DEFAULT 0.00;
    DECLARE v_descuento_total DECIMAL(5,2) DEFAULT 0.00;
    DECLARE v_descuento_maximo DECIMAL(5,2) DEFAULT NULL;
    DECLARE v_descuento_minimo DECIMAL(5,2) DEFAULT NULL;
    DECLARE v_id_temporada_actual INT;
    DECLARE v_paquete_solo_temporada TINYINT(1) DEFAULT 0;
    DECLARE v_paquete_temporada_asignada INT DEFAULT NULL;
    
    -- Obtener temporada actual
    SET v_id_temporada_actual = fn_obtener_temporada_actual(p_fecha_reserva);
    
    -- Obtener información del paquete
    SELECT 
        Descuento_Porcentaje,
        Aplicable_Solo_Temporada,
        ID_Temporada
    INTO 
        v_descuento_base,
        v_paquete_solo_temporada,
        v_paquete_temporada_asignada
    FROM paquete_promocional 
    WHERE ID_Paquete = p_id_paquete AND Estado = 'Activo';
    
    -- Si el paquete no existe o está inactivo, retornar 0
    IF v_descuento_base IS NULL THEN
        RETURN 0.00;
    END IF;
    
    -- Si el paquete es solo para temporada específica y no coincide, retornar 0
    IF v_paquete_solo_temporada = 1 AND v_paquete_temporada_asignada != v_id_temporada_actual THEN
        RETURN 0.00;
    END IF;
    
    -- Obtener modificador de temporada si existe
    SELECT 
        Factor_Descuento_Adicional,
        Descuento_Maximo,
        Descuento_Minimo
    INTO 
        v_descuento_adicional,
        v_descuento_maximo,
        v_descuento_minimo
    FROM temporada_promocion_modificador 
    WHERE ID_Paquete = p_id_paquete 
    AND ID_Temporada = v_id_temporada_actual 
    AND Activo = 1;
    
    -- Calcular descuento total
    SET v_descuento_total = v_descuento_base + IFNULL(v_descuento_adicional, 0.00);
    
    -- Aplicar límites si existen
    IF v_descuento_maximo IS NOT NULL AND v_descuento_total > v_descuento_maximo THEN
        SET v_descuento_total = v_descuento_maximo;
    END IF;
    
    IF v_descuento_minimo IS NOT NULL AND v_descuento_total < v_descuento_minimo THEN
        SET v_descuento_total = v_descuento_minimo;
    END IF;
    
    -- Asegurar que no sea negativo ni mayor a 100%
    IF v_descuento_total < 0 THEN
        SET v_descuento_total = 0.00;
    ELSEIF v_descuento_total > 100.00 THEN
        SET v_descuento_total = 100.00;
    END IF;
    
    RETURN v_descuento_total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_obtener_temporada_actual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_obtener_temporada_actual`(p_fecha DATE) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE v_id_temporada INT DEFAULT NULL;
    
    SELECT ID_Temporada 
    INTO v_id_temporada
    FROM temporada 
    WHERE p_fecha BETWEEN Fecha_Inicio AND Fecha_Fin
    ORDER BY 
        CASE 
            WHEN Nombre LIKE '%Especial%' THEN 1  -- Prioridad a temporadas especiales
            ELSE 2
        END,
        Factor_Multiplicador_Precio DESC  -- Luego por factor más alto
    LIMIT 1;
    
    RETURN v_id_temporada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_asignar_upgrade_vip`(
    IN p_id_reserva INT,
    OUT p_upgrade_aplicado BOOLEAN,
    OUT p_habitaciones_mejoradas INT,
    OUT p_mensaje TEXT
)
sp_label: BEGIN
    DECLARE v_es_vip BOOLEAN DEFAULT FALSE;
    DECLARE v_id_cliente INT;
    DECLARE v_fecha_entrada DATE;
    DECLARE v_fecha_salida DATE;
    DECLARE v_total_habitaciones INT DEFAULT 0;
    DECLARE v_habitaciones_upgradeadas INT DEFAULT 0;
    
    -- Variables para el cursor
    DECLARE v_id_habitacion_actual INT;
    DECLARE v_id_tipo_actual INT;
    DECLARE v_id_tipo_superior INT;
    DECLARE v_id_habitacion_superior INT;
    DECLARE v_precio_original DECIMAL(10,2);
    DECLARE v_precio_nuevo DECIMAL(10,2);
    DECLARE v_nombre_tipo_original VARCHAR(100);
    DECLARE v_nombre_tipo_nuevo VARCHAR(100);
    
    -- Variables de control del cursor
    DECLARE done INT DEFAULT FALSE;
    
    -- Cursor para todas las habitaciones de la reserva
    DECLARE habitaciones_cursor CURSOR FOR
        SELECT 
            drh.ID_Habitacion,
            h.ID_Tipo_Habitacion,
            th.Precio_Base,
            th.Nombre
        FROM detalle_reserva_habitacion drh
        JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
        JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
        WHERE drh.ID_Reserva = p_id_reserva;
    
    -- Handler para el final del cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Inicializar variables de salida
    SET p_upgrade_aplicado = FALSE;
    SET p_habitaciones_mejoradas = 0;
    SET p_mensaje = '';
    
    -- Obtener información básica de la reserva
    SELECT 
        r.ID_Cliente,
        r.Fecha_Entrada,
        r.Fecha_Salida
    INTO 
        v_id_cliente,
        v_fecha_entrada,
        v_fecha_salida
    FROM reserva r
    WHERE r.ID_Reserva = p_id_reserva;
    
    -- Verificar que la reserva existe
    IF v_id_cliente IS NULL THEN
        SET p_mensaje = 'Error: La reserva no existe';
        LEAVE sp_label;
    END IF;
    
    -- Verificar si el cliente es VIP
    SELECT Es_VIP INTO v_es_vip FROM cliente WHERE ID_Cliente = v_id_cliente;
    
    IF v_es_vip != 1 THEN
        SET p_mensaje = 'El cliente no es VIP, no se aplica upgrade';
        LEAVE sp_label;
    END IF;
    
    -- Contar total de habitaciones en la reserva
    SELECT COUNT(*) INTO v_total_habitaciones
    FROM detalle_reserva_habitacion
    WHERE ID_Reserva = p_id_reserva;
    
    -- Procesar cada habitación de la reserva
    OPEN habitaciones_cursor;
    
    habitaciones_loop: LOOP
        FETCH habitaciones_cursor INTO 
            v_id_habitacion_actual, 
            v_id_tipo_actual, 
            v_precio_original,
            v_nombre_tipo_original;
        
        IF done THEN
            LEAVE habitaciones_loop;
        END IF;
        
        -- Reinicializar variables para cada habitación
        SET v_id_tipo_superior = NULL;
        SET v_id_habitacion_superior = NULL;
        
        -- Buscar el siguiente tipo de habitación superior disponible
        SELECT 
            th.ID_Tipo_Habitacion,
            th.Precio_Base,
            th.Nombre
        INTO 
            v_id_tipo_superior,
            v_precio_nuevo,
            v_nombre_tipo_nuevo
        FROM tipo_habitacion th
        WHERE th.Precio_Base > v_precio_original
        ORDER BY th.Precio_Base ASC
        LIMIT 1;
        
        -- Si existe un tipo superior, buscar habitación disponible
        IF v_id_tipo_superior IS NOT NULL THEN
            SELECT h.ID_Habitacion INTO v_id_habitacion_superior
            FROM habitacion h
            WHERE 
                h.ID_Tipo_Habitacion = v_id_tipo_superior
                AND h.Estado = 'Disponible'
                AND h.ID_Habitacion NOT IN (
                    -- Verificar que no esté ocupada en las fechas de la reserva
                    SELECT fo.ID_Habitacion
                    FROM fechas_ocupadas fo
                    WHERE 
                        fo.ID_Habitacion = h.ID_Habitacion
                        AND (
                            (v_fecha_entrada BETWEEN fo.Fecha_Checkin AND DATE_SUB(fo.Fecha_Checkout, INTERVAL 1 DAY))
                            OR (v_fecha_salida BETWEEN DATE_ADD(fo.Fecha_Checkin, INTERVAL 1 DAY) AND fo.Fecha_Checkout)
                            OR (fo.Fecha_Checkin BETWEEN v_fecha_entrada AND DATE_SUB(v_fecha_salida, INTERVAL 1 DAY))
                            OR (fo.Fecha_Checkout BETWEEN DATE_ADD(v_fecha_entrada, INTERVAL 1 DAY) AND v_fecha_salida)
                        )
                )
            ORDER BY h.Piso, h.ID_Habitacion -- Preferir pisos superiores
            LIMIT 1;
            
            -- Si encontramos una habitación superior disponible, hacer el upgrade
            IF v_id_habitacion_superior IS NOT NULL THEN
                -- Actualizar la habitación en el detalle de reserva
                UPDATE detalle_reserva_habitacion
                SET 
                    ID_Habitacion = v_id_habitacion_superior,
                    Precio_Noche = v_precio_nuevo
                WHERE ID_Reserva = p_id_reserva AND ID_Habitacion = v_id_habitacion_actual;
                
                -- Actualizar fechas ocupadas
                UPDATE fechas_ocupadas
                SET ID_Habitacion = v_id_habitacion_superior
                WHERE ID_Reserva = p_id_reserva AND ID_Habitacion = v_id_habitacion_actual;
                
                -- Incrementar contador de habitaciones upgradeadas
                SET v_habitaciones_upgradeadas = v_habitaciones_upgradeadas + 1;
                
                -- Construir mensaje informativo
                IF p_mensaje = '' THEN
                    SET p_mensaje = 'Upgrades aplicados: ';
                END IF;
                
                SET p_mensaje = CONCAT(
                    p_mensaje,
                    'Hab. ', v_id_habitacion_actual, ' (', v_nombre_tipo_original, ') -> ',
                    'Hab. ', v_id_habitacion_superior, ' (', v_nombre_tipo_nuevo, '); '
                );
            END IF;
        END IF;
        
    END LOOP;
    
    CLOSE habitaciones_cursor;
    
    -- Establecer resultados finales
    IF v_habitaciones_upgradeadas > 0 THEN
        SET p_upgrade_aplicado = TRUE;
        SET p_habitaciones_mejoradas = v_habitaciones_upgradeadas;
        
        -- Actualizar el costo total de la reserva si es necesario
        UPDATE reserva r
        SET Costo_Total = (
            SELECT SUM(drh.Precio_Noche * DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada))
            FROM detalle_reserva_habitacion drh
            WHERE drh.ID_Reserva = p_id_reserva
        )
        WHERE r.ID_Reserva = p_id_reserva;
        
        SET p_mensaje = CONCAT(
            'Upgrade VIP exitoso: ', v_habitaciones_upgradeadas, ' de ', v_total_habitaciones, 
            ' habitaciones mejoradas. ', p_mensaje
        );
        
    ELSE
        SET p_mensaje = CONCAT(
            'No se pudo aplicar upgrade: No hay habitaciones superiores disponibles para las ',
            v_total_habitaciones, ' habitaciones de la reserva.'
        );
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
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_penalizaciones_pendientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_penalizaciones_pendientes`()
BEGIN
    SELECT 
        f.ID_Factura,
        f.Numero_Transaccion,
        c.Nombre AS Cliente,
        c.Email,
        c.Telefono_Cel,
        r.Codigo_Confirmacion,
        can.Motivo_Cancelacion,
        can.Penalizacion,
        f.Total AS Total_Factura,
        f.Fecha_Emision,
        DATEDIFF(NOW(), f.Fecha_Emision) AS Dias_Pendiente
    FROM factura f
    JOIN reserva r ON f.ID_Reserva = r.ID_Reserva
    JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
    JOIN cancelacion can ON r.Codigo_Confirmacion = can.Codigo_Confirmacion
    WHERE 
        f.Estado = 'Pendiente'
        AND f.Numero_Transaccion LIKE 'CANCEL-%'
        AND can.Penalizacion > 0
    ORDER BY f.Fecha_Emision DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_display_checkout_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_display_checkout_total`(
    IN p_id_reserva INT,
    IN p_metodo_pago VARCHAR(50),
    OUT p_total DECIMAL(10,2),
    OUT p_rfc VARCHAR(13),
    OUT p_nombre_completo VARCHAR(255),
    OUT p_fecha_emision DATETIME
)
sp_checkout_label: BEGIN
    DECLARE v_id_cliente INT;
    DECLARE v_nombre_cliente VARCHAR(255);
    DECLARE v_rfc VARCHAR(13);
    DECLARE v_total_hospedaje DECIMAL(10,2) DEFAULT 0;
    DECLARE v_total_servicios DECIMAL(10,2) DEFAULT 0;
    DECLARE v_total_penalizaciones DECIMAL(10,2) DEFAULT 0;
    DECLARE v_fecha_entrada DATE;
    DECLARE v_fecha_salida DATE;
    DECLARE v_codigo_confirmacion VARCHAR(50);
    DECLARE v_noches INT;
    DECLARE v_es_vip TINYINT(1);
    
    -- Obtener información básica de la reserva y cliente
    SELECT 
        r.ID_Cliente,
        CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS nombre_completo,
        c.RFC,
        r.Fecha_Entrada,
        r.Fecha_Salida,
        r.Codigo_Confirmacion,
        DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada) AS noches,
        c.Es_VIP
    INTO 
        v_id_cliente, v_nombre_cliente, v_rfc, v_fecha_entrada, 
        v_fecha_salida, v_codigo_confirmacion, v_noches, v_es_vip
    FROM reserva r
    JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
    WHERE r.ID_Reserva = p_id_reserva;
    
    -- Si no existe la reserva, salir
    IF v_id_cliente IS NULL THEN
        SET p_total = 0;
        SET p_rfc = '';
        SET p_nombre_completo = '';
        SET p_fecha_emision = NULL;
        SELECT 'Error: Reserva no encontrada' AS mensaje;
        LEAVE sp_checkout_label;
    END IF;
    
    -- Establecer valores de salida
    SET p_rfc = v_rfc;
    SET p_nombre_completo = v_nombre_cliente;
    SET p_fecha_emision = NOW();
    
    -- Calcular total de hospedaje (usando fechas reales si ya hizo check-in/out, sino usar fechas de reserva)
    SELECT COALESCE(
        SUM(CASE 
            WHEN drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL THEN
                drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
            ELSE
                drh.Precio_Noche * v_noches
        END), 0
    ) INTO v_total_hospedaje
    FROM detalle_reserva_habitacion drh
    WHERE drh.ID_Reserva = p_id_reserva;
    
    -- Calcular total de servicios no pagados
    SELECT COALESCE(SUM(cs.Total), 0) INTO v_total_servicios
    FROM consumo_servicio cs
    WHERE cs.ID_Reserva = p_id_reserva AND cs.Estado = 'No_Pagado';
    
    -- Calcular penalizaciones pendientes (facturas de cancelación no pagadas)
    SELECT COALESCE(SUM(f.Total), 0) INTO v_total_penalizaciones
    FROM factura f
    WHERE f.ID_Reserva = p_id_reserva 
    AND f.Estado = 'Pendiente'
    AND f.Numero_Transaccion LIKE 'CANCEL-%';
    
    -- Calcular total general
    SET p_total = v_total_hospedaje + v_total_servicios + v_total_penalizaciones;
    
    -- Mostrar el desglose completo para el cliente
    SELECT 
        v_codigo_confirmacion AS 'Código Confirmación',
        v_nombre_cliente AS 'Cliente',
        v_rfc AS 'RFC',
        p_metodo_pago AS 'Método de Pago',
        p_fecha_emision AS 'Fecha Emisión',
        CASE WHEN v_es_vip = 1 THEN 'VIP' ELSE 'Regular' END AS 'Tipo Cliente',
        v_fecha_entrada AS 'Fecha Entrada',
        v_fecha_salida AS 'Fecha Salida',
        v_noches AS 'Noches',
        v_total_hospedaje AS 'Total Hospedaje',
        v_total_servicios AS 'Total Servicios',
        v_total_penalizaciones AS 'Total Penalizaciones',
        p_total AS 'TOTAL A PAGAR';
    
    -- Mostrar desglose detallado de habitaciones
    SELECT 
        'HOSPEDAJE' AS 'TIPO',
        CONCAT('Habitación ', h.ID_Habitacion, ' - ', th.Nombre) AS 'CONCEPTO',
        CASE 
            WHEN drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL THEN
                DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
            ELSE v_noches
        END AS 'NOCHES',
        drh.Precio_Noche AS 'PRECIO/NOCHE',
        CASE 
            WHEN drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL THEN
                drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
            ELSE drh.Precio_Noche * v_noches
        END AS 'SUBTOTAL'
    FROM detalle_reserva_habitacion drh
    JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
    JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
    WHERE drh.ID_Reserva = p_id_reserva
    
    UNION ALL
    
    -- Mostrar desglose de servicios no pagados
    SELECT 
        'SERVICIO' AS 'TIPO',
        s.Nombre AS 'CONCEPTO',
        cs.Cantidad AS 'CANTIDAD',
        cs.Precio_Unitario AS 'PRECIO UNITARIO',
        cs.Total AS 'SUBTOTAL'
    FROM consumo_servicio cs
    JOIN servicio s ON cs.ID_Servicio = s.ID_Servicio
    WHERE cs.ID_Reserva = p_id_reserva AND cs.Estado = 'No_Pagado'
    
    UNION ALL
    
    -- Mostrar penalizaciones pendientes
    SELECT 
        'PENALIZACIÓN' AS 'TIPO',
        CONCAT('Cancelación tardía - ', can.Motivo_Cancelacion) AS 'CONCEPTO',
        1 AS 'CANTIDAD',
        f.Total AS 'PRECIO UNITARIO',
        f.Total AS 'SUBTOTAL'
    FROM factura f
    JOIN cancelacion can ON f.Numero_Transaccion = CONCAT('CANCEL-', DATE_FORMAT(can.Fecha_Cancelacion, '%Y%m%d'), '-', can.ID_Cancelacion)
    WHERE f.ID_Reserva = p_id_reserva 
    AND f.Estado = 'Pendiente'
    AND f.Numero_Transaccion LIKE 'CANCEL-%'
    
    ORDER BY TIPO DESC, CONCEPTO;
    
END sp_checkout_label ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_factura_rapida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_factura_rapida`(
    IN p_id_reserva INT,
    IN p_metodo_pago VARCHAR(50),
    OUT p_total DECIMAL(10,2),
    OUT p_rfc VARCHAR(13),
    OUT p_nombre_completo VARCHAR(255),
    OUT p_fecha_emision DATETIME
)
sp_checkout_label: BEGIN
    DECLARE v_id_cliente INT;
    DECLARE v_nombre_cliente VARCHAR(255);
    DECLARE v_rfc VARCHAR(13);
    DECLARE v_total_hospedaje DECIMAL(10,2) DEFAULT 0;
    DECLARE v_total_servicios DECIMAL(10,2) DEFAULT 0;
    DECLARE v_total_penalizaciones DECIMAL(10,2) DEFAULT 0;
    DECLARE v_fecha_entrada DATE;
    DECLARE v_fecha_salida DATE;
    DECLARE v_codigo_confirmacion VARCHAR(50);
    DECLARE v_noches INT;
    DECLARE v_es_vip TINYINT(1);
    
    -- Obtener información básica de la reserva y cliente
    SELECT 
        r.ID_Cliente,
        CONCAT(c.Nombre, ' ', c.Apellido1, ' ', IFNULL(c.Apellido2, '')) AS nombre_completo,
        c.RFC,
        r.Fecha_Entrada,
        r.Fecha_Salida,
        r.Codigo_Confirmacion,
        DATEDIFF(r.Fecha_Salida, r.Fecha_Entrada) AS noches,
        c.Es_VIP
    INTO 
        v_id_cliente, v_nombre_cliente, v_rfc, v_fecha_entrada, 
        v_fecha_salida, v_codigo_confirmacion, v_noches, v_es_vip
    FROM reserva r
    JOIN cliente c ON r.ID_Cliente = c.ID_Cliente
    WHERE r.ID_Reserva = p_id_reserva;
    
    -- Si no existe la reserva, salir
    IF v_id_cliente IS NULL THEN
        SET p_total = 0;
        SET p_rfc = '';
        SET p_nombre_completo = '';
        SET p_fecha_emision = NULL;
        SELECT 'Error: Reserva no encontrada' AS mensaje;
        LEAVE sp_checkout_label;
    END IF;
    
    -- Establecer valores de salida
    SET p_rfc = v_rfc;
    SET p_nombre_completo = v_nombre_cliente;
    SET p_fecha_emision = NOW();
    
    -- Calcular total de hospedaje (usando fechas reales si ya hizo check-in/out, sino usar fechas de reserva)
    SELECT COALESCE(
        SUM(CASE 
            WHEN drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL THEN
                drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
            ELSE
                drh.Precio_Noche * v_noches
        END), 0
    ) INTO v_total_hospedaje
    FROM detalle_reserva_habitacion drh
    WHERE drh.ID_Reserva = p_id_reserva;
    
    -- Calcular total de servicios no pagados
    SELECT COALESCE(SUM(cs.Total), 0) INTO v_total_servicios
    FROM consumo_servicio cs
    WHERE cs.ID_Reserva = p_id_reserva AND cs.Estado = 'No_Pagado';
    
    -- Calcular penalizaciones pendientes (facturas de cancelación no pagadas)
    SELECT COALESCE(SUM(f.Total), 0) INTO v_total_penalizaciones
    FROM factura f
    WHERE f.ID_Reserva = p_id_reserva 
    AND f.Estado = 'Pendiente'
    AND f.Numero_Transaccion LIKE 'CANCEL-%';
    
    -- Calcular total general
    SET p_total = v_total_hospedaje + v_total_servicios + v_total_penalizaciones;
    
    -- Mostrar el desglose completo para el cliente
    SELECT 
        v_codigo_confirmacion AS 'Código Confirmación',
        v_nombre_cliente AS 'Cliente',
        v_rfc AS 'RFC',
        p_metodo_pago AS 'Método de Pago',
        p_fecha_emision AS 'Fecha Emisión',
        CASE WHEN v_es_vip = 1 THEN 'VIP' ELSE 'Regular' END AS 'Tipo Cliente',
        v_fecha_entrada AS 'Fecha Entrada',
        v_fecha_salida AS 'Fecha Salida',
        v_noches AS 'Noches',
        v_total_hospedaje AS 'Total Hospedaje',
        v_total_servicios AS 'Total Servicios',
        v_total_penalizaciones AS 'Total Penalizaciones',
        p_total AS 'TOTAL A PAGAR';
    
    -- Mostrar desglose detallado de habitaciones
    SELECT 
        'HOSPEDAJE' AS 'TIPO',
        CONCAT('Habitación ', h.ID_Habitacion, ' - ', th.Nombre) AS 'CONCEPTO',
        CASE 
            WHEN drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL THEN
                DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
            ELSE v_noches
        END AS 'NOCHES',
        drh.Precio_Noche AS 'PRECIO/NOCHE',
        CASE 
            WHEN drh.Fecha_Check_In IS NOT NULL AND drh.Fecha_Check_Out IS NOT NULL THEN
                drh.Precio_Noche * DATEDIFF(drh.Fecha_Check_Out, drh.Fecha_Check_In)
            ELSE drh.Precio_Noche * v_noches
        END AS 'SUBTOTAL'
    FROM detalle_reserva_habitacion drh
    JOIN habitacion h ON drh.ID_Habitacion = h.ID_Habitacion
    JOIN tipo_habitacion th ON h.ID_Tipo_Habitacion = th.ID_Tipo_Habitacion
    WHERE drh.ID_Reserva = p_id_reserva
    
    UNION ALL
    
    -- Mostrar desglose de servicios no pagados
    SELECT 
        'SERVICIO' AS 'TIPO',
        s.Nombre AS 'CONCEPTO',
        cs.Cantidad AS 'CANTIDAD',
        cs.Precio_Unitario AS 'PRECIO UNITARIO',
        cs.Total AS 'SUBTOTAL'
    FROM consumo_servicio cs
    JOIN servicio s ON cs.ID_Servicio = s.ID_Servicio
    WHERE cs.ID_Reserva = p_id_reserva AND cs.Estado = 'No_Pagado'
    
    UNION ALL
    
    -- Mostrar penalizaciones pendientes
    SELECT 
        'PENALIZACIÓN' AS 'TIPO',
        CONCAT('Cancelación tardía - ', can.Motivo_Cancelacion) AS 'CONCEPTO',
        1 AS 'CANTIDAD',
        f.Total AS 'PRECIO UNITARIO',
        f.Total AS 'SUBTOTAL'
    FROM factura f
    JOIN cancelacion can ON f.Numero_Transaccion = CONCAT('CANCEL-', DATE_FORMAT(can.Fecha_Cancelacion, '%Y%m%d'), '-', can.ID_Cancelacion)
    WHERE f.ID_Reserva = p_id_reserva 
    AND f.Estado = 'Pendiente'
    AND f.Numero_Transaccion LIKE 'CANCEL-%'
    
    ORDER BY TIPO DESC, CONCEPTO;
    
END sp_checkout_label ;;
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
/*!50003 DROP PROCEDURE IF EXISTS `sp_procesar_pago_penalizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_procesar_pago_penalizacion`(
    IN p_id_factura INT,
    IN p_metodo_pago VARCHAR(50),
    IN p_numero_transaccion VARCHAR(100),
    IN p_id_empleado INT,
    OUT p_resultado VARCHAR(255)
)
BEGIN
    DECLARE v_estado_actual VARCHAR(50);
    DECLARE v_total DECIMAL(10,2);
    
    -- Verificar que la factura existe y está pendiente
    SELECT Estado, Total INTO v_estado_actual, v_total
    FROM factura 
    WHERE ID_Factura = p_id_factura;
    
    IF v_estado_actual IS NULL THEN
        SET p_resultado = 'Error: Factura no encontrada';
    ELSEIF v_estado_actual != 'Pendiente' THEN
        SET p_resultado = 'Error: La factura no está pendiente de pago';
    ELSE
        -- Actualizar la factura como pagada
        UPDATE factura 
        SET 
            Estado = 'Pagada',
            Metodo_Pago = p_metodo_pago,
            Numero_Transaccion = IFNULL(p_numero_transaccion, 
                CONCAT('PAY-', DATE_FORMAT(NOW(), '%Y%m%d-%H%i%s'), '-', p_id_factura))
        WHERE ID_Factura = p_id_factura;
        
        SET p_resultado = CONCAT('Pago procesado exitosamente. Total pagado: $', v_total);
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_reserva_con_temporada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_reserva_con_temporada`(
    IN p_id_cliente INT,
    IN p_fecha_entrada DATE,
    IN p_fecha_salida DATE,
    IN p_metodo_reserva VARCHAR(50),
    IN p_id_empleado INT,
    IN p_num_cuartos INT,
    IN p_id_paquete INT,
    OUT p_id_reserva INT,
    OUT p_codigo_confirmacion VARCHAR(50),
    OUT p_descuento_aplicado DECIMAL(5,2),
    OUT p_costo_total DECIMAL(10,2),
    OUT p_success BOOLEAN,
    OUT p_mensaje VARCHAR(500)
)
sp_registrar_reserva_con_temporada: BEGIN
    -- Variables locales
    DECLARE v_costo_base DECIMAL(10,2) DEFAULT 0;
    DECLARE v_costo_final DECIMAL(10,2) DEFAULT 0;
    DECLARE v_codigo VARCHAR(50);
    DECLARE v_promocion_valida BOOLEAN DEFAULT FALSE;
    DECLARE v_descuento_efectivo DECIMAL(5,2) DEFAULT 0.00;
    DECLARE v_id_temporada INT;
    DECLARE v_factor_temporada DECIMAL(5,2) DEFAULT 1.00;
    DECLARE v_cliente_existe BOOLEAN DEFAULT FALSE;
    DECLARE v_cliente_vip BOOLEAN DEFAULT FALSE;
    DECLARE v_noches INT;
    DECLARE v_codigo_unico BOOLEAN DEFAULT FALSE;
    DECLARE v_intentos INT DEFAULT 0;
    DECLARE v_max_intentos INT DEFAULT 5;
    
    -- Control de errores
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_success = FALSE;
        SET p_mensaje = 'Error interno del sistema al procesar la reserva';
        SET p_id_reserva = 0;
        SET p_codigo_confirmacion = '';
        SET p_descuento_aplicado = 0.00;
        SET p_costo_total = 0.00;
    END;
    
    -- Inicializar outputs
    SET p_success = FALSE;
    SET p_id_reserva = 0;
    SET p_codigo_confirmacion = '';
    SET p_descuento_aplicado = 0.00;
    SET p_costo_total = 0.00;
    SET p_mensaje = '';
    
    -- Iniciar transacción
    START TRANSACTION;
    
    -- ========== VALIDACIONES DE ENTRADA ==========
    
    -- Validar fechas
    IF p_fecha_entrada IS NULL OR p_fecha_salida IS NULL THEN
        SET p_mensaje = 'Error: Las fechas de entrada y salida son obligatorias';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    IF p_fecha_salida <= p_fecha_entrada THEN
        SET p_mensaje = 'Error: La fecha de salida debe ser posterior a la fecha de entrada';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    IF p_fecha_entrada < CURDATE() THEN
        SET p_mensaje = 'Error: La fecha de entrada no puede ser anterior a hoy';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    -- Calcular número de noches
    SET v_noches = DATEDIFF(p_fecha_salida, p_fecha_entrada);
    
    IF v_noches > 365 THEN
        SET p_mensaje = 'Error: La estancia no puede exceder 365 días';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    -- Validar cliente
    IF p_id_cliente IS NULL OR p_id_cliente <= 0 THEN
        SET p_mensaje = 'Error: ID de cliente inválido';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    SELECT COUNT(*) > 0, MAX(Es_VIP) = 1
    INTO v_cliente_existe, v_cliente_vip
    FROM cliente 
    WHERE ID_Cliente = p_id_cliente;
    
    IF NOT v_cliente_existe THEN
        SET p_mensaje = 'Error: El cliente especificado no existe';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    -- Validar número de cuartos
    IF p_num_cuartos IS NULL OR p_num_cuartos <= 0 OR p_num_cuartos > 10 THEN
        SET p_mensaje = 'Error: Número de cuartos debe estar entre 1 y 10';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    -- Validar método de reserva
    IF p_metodo_reserva IS NULL OR TRIM(p_metodo_reserva) = '' THEN
        SET p_mensaje = 'Error: Método de reserva es obligatorio';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    -- ========== OBTENER TEMPORADA Y FACTOR DE PRECIO ==========
    
    SET v_id_temporada = fn_obtener_temporada_actual(p_fecha_entrada);
    
    IF v_id_temporada IS NOT NULL THEN
        SELECT Factor_Multiplicador_Precio
        INTO v_factor_temporada
        FROM temporada
        WHERE ID_Temporada = v_id_temporada;
    END IF;
    
    -- ========== VALIDAR Y PROCESAR PROMOCIÓN ==========
    
    IF p_id_paquete IS NOT NULL AND p_id_paquete > 0 THEN
        CALL sp_validar_promocion_vigente(
            p_id_paquete, 
            p_fecha_entrada, 
            p_fecha_salida,
            v_promocion_valida,
            v_descuento_efectivo,
            p_mensaje
        );
        
        IF NOT v_promocion_valida THEN
            -- Agregar información sobre por qué falló la promoción pero continuar sin ella
            SET p_mensaje = CONCAT('Advertencia: Promoción no aplicable - ', p_mensaje, '. Reserva creada sin promoción.');
            SET p_id_paquete = NULL;
            SET v_descuento_efectivo = 0.00;
        END IF;
    END IF;
    
    -- ========== GENERAR CÓDIGO DE CONFIRMACIÓN ÚNICO ==========
    
    WHILE NOT v_codigo_unico AND v_intentos < v_max_intentos DO
        SET v_codigo = CONCAT('RES-', DATE_FORMAT(NOW(), '%Y%m%d'), '-', LPAD(FLOOR(RAND() * 99999), 5, '0'));
        
        -- Verificar que el código no existe
        IF (SELECT COUNT(*) FROM reserva WHERE Codigo_Confirmacion = v_codigo) = 0 THEN
            SET v_codigo_unico = TRUE;
        END IF;
        
        SET v_intentos = v_intentos + 1;
    END WHILE;
    
    IF NOT v_codigo_unico THEN
        SET p_mensaje = 'Error: No se pudo generar un código de confirmación único';
        ROLLBACK;
        LEAVE sp_registrar_reserva_con_temporada;
    END IF;
    
    -- ========== CALCULAR COSTO BASE ESTIMADO ==========
    -- Nota: Este será un cálculo aproximado ya que las habitaciones específicas se asignarán después
    
    SELECT AVG(th.Precio_Base * v_factor_temporada) * p_num_cuartos * v_noches
    INTO v_costo_base
    FROM tipo_habitacion th
    WHERE th.ID_Tipo_Habitacion IN (1, 2) -- Tipos más comunes
    LIMIT 1;
    
    -- Si no se pudo calcular, usar un valor por defecto
    IF v_costo_base IS NULL OR v_costo_base = 0 THEN
        SET v_costo_base = 1500.00 * v_factor_temporada * p_num_cuartos * v_noches;
    END IF;
    
    -- Aplicar descuento si hay promoción válida
    IF v_descuento_efectivo > 0 THEN
        SET v_costo_final = v_costo_base * (1 - (v_descuento_efectivo / 100));
    ELSE
        SET v_costo_final = v_costo_base;
    END IF;
    
    -- ========== INSERTAR LA RESERVA ==========
    
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
        v_costo_final,
        NOW(),
        p_num_cuartos,
        v_codigo,
        p_id_paquete
    );
    
    -- Obtener el ID de la reserva recién creada
    SET p_id_reserva = LAST_INSERT_ID();
    
    -- ========== ACTUALIZAR INFORMACIÓN DEL CLIENTE ==========
    
    -- Actualizar contador de reservas del cliente
    UPDATE cliente 
    SET Contador_Registro = Contador_Registro + 1 
    WHERE ID_Cliente = p_id_cliente;
    
    -- Actualizar información de cliente potencial VIP si existe
    UPDATE cliente_potencial_vip 
    SET 
        Contador_Reservas = Contador_Reservas + 1,
        Ultima_Estancia = p_fecha_entrada
    WHERE ID_Cliente = p_id_cliente;
    
    -- ========== CONFIGURAR OUTPUTS FINALES ==========
    
    SET p_codigo_confirmacion = v_codigo;
    SET p_descuento_aplicado = v_descuento_efectivo;
    SET p_costo_total = v_costo_final;
    SET p_success = TRUE;
    
    -- Construir mensaje final
    IF p_id_paquete IS NOT NULL THEN
        SET p_mensaje = CONCAT(
            'Reserva creada exitosamente con promoción. ',
            'Código: ', v_codigo, ' | ',
            'Descuento: ', v_descuento_efectivo, '% | ',
            'Costo estimado: $', FORMAT(v_costo_final, 2), ' | ',
            'Noches: ', v_noches,
            CASE WHEN v_cliente_vip THEN ' | Cliente VIP' ELSE '' END
        );
    ELSE
        SET p_mensaje = CONCAT(
            'Reserva creada exitosamente sin promoción. ',
            'Código: ', v_codigo, ' | ',
            'Costo estimado: $', FORMAT(v_costo_final, 2), ' | ',
            'Noches: ', v_noches,
            CASE WHEN v_cliente_vip THEN ' | Cliente VIP' ELSE '' END
        );
    END IF;
    
    -- Si llegamos aquí, todo salió bien
    COMMIT;
    
    -- Nota informativa sobre próximos pasos
    SET p_mensaje = CONCAT(p_mensaje, ' | NOTA: Asigne habitaciones específicas para completar la reserva.');
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_reserva_validacion_fechas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_reserva_validacion_fechas`(
    IN p_id_cliente INT,
    IN p_fecha_entrada DATE,
    IN p_fecha_salida DATE,
    IN p_metodo_reserva VARCHAR(50),
    IN p_id_empleado INT,
    IN p_num_cuartos INT,
    IN p_id_paquete INT,
    IN p_habitaciones JSON,  -- [1,2,3] - IDs de habitaciones específicas
    OUT p_id_reserva INT,
    OUT p_codigo_confirmacion VARCHAR(50),
    OUT p_exito BOOLEAN,
    OUT p_mensaje TEXT
)
sp_main: BEGIN
    DECLARE v_contador INT DEFAULT 0;
    DECLARE v_habitacion_id INT;
    DECLARE v_i INT DEFAULT 0;
    DECLARE v_json_length INT;
    
    -- Inicializar outputs
    SET p_exito = FALSE;
    SET p_mensaje = '';
    SET p_id_reserva = 0;
    SET p_codigo_confirmacion = '';
    
    START TRANSACTION;
    
    -- VALIDACIÓN DE FECHAS
    IF p_fecha_salida <= p_fecha_entrada THEN
        SET p_mensaje = 'Error: La fecha de salida debe ser posterior a la fecha de entrada';
        ROLLBACK;
        LEAVE sp_main;
    END IF;
    
    -- Obtener número de habitaciones
    SET v_json_length = JSON_LENGTH(p_habitaciones);
    
    -- VALIDACIÓN PRINCIPAL: Verificar que las habitaciones NO estén ocupadas
    SET v_i = 0;
    WHILE v_i < v_json_length DO
        SET v_habitacion_id = JSON_UNQUOTE(JSON_EXTRACT(p_habitaciones, CONCAT('$[', v_i, ']')));
        
        -- Verificar conflicto de fechas
        SELECT COUNT(*) INTO v_contador
        FROM fechas_ocupadas
        WHERE 
            ID_Habitacion = v_habitacion_id
            AND (
                (p_fecha_entrada >= Fecha_Checkin AND p_fecha_entrada < Fecha_Checkout) OR
                (p_fecha_salida > Fecha_Checkin AND p_fecha_salida <= Fecha_Checkout) OR
                (p_fecha_entrada <= Fecha_Checkin AND p_fecha_salida >= Fecha_Checkout)
            );
        
        IF v_contador > 0 THEN
            SET p_mensaje = CONCAT('Error: Habitación ', v_habitacion_id, ' ocupada del ', p_fecha_entrada, ' al ', p_fecha_salida);
            ROLLBACK;
            LEAVE sp_main;
        END IF;
        
        SET v_i = v_i + 1;
    END WHILE;
    
    -- Si pasó todas las validaciones, crear la reserva
    INSERT INTO reserva (
        ID_Cliente, Fecha_Entrada, Fecha_Salida, Estado, Metodo_Reserva,
        ID_Empleado, Costo_Total, Fecha_Creacion, numCuartos, 
        Codigo_Confirmacion, ID_Paquete
    ) VALUES (
        p_id_cliente, p_fecha_entrada, p_fecha_salida, 'Confirmada', p_metodo_reserva,
        p_id_empleado, 0, NOW(), p_num_cuartos, 
        CONCAT('RES-', DATE_FORMAT(NOW(), '%Y%m%d'), '-', FLOOR(RAND() * 10000)), 
        p_id_paquete
    );
    
    SET p_id_reserva = LAST_INSERT_ID();
    SET p_codigo_confirmacion = CONCAT('RES-', DATE_FORMAT(NOW(), '%Y%m%d'), '-', FLOOR(RAND() * 10000));
    
    -- Registrar fechas ocupadas
    SET v_i = 0;
    WHILE v_i < v_json_length DO
        SET v_habitacion_id = JSON_UNQUOTE(JSON_EXTRACT(p_habitaciones, CONCAT('$[', v_i, ']')));
        
        INSERT INTO fechas_ocupadas (ID_Habitacion, Fecha_Checkin, Fecha_Checkout, ID_Reserva)
        VALUES (v_habitacion_id, p_fecha_entrada, p_fecha_salida, p_id_reserva);
        
        SET v_i = v_i + 1;
    END WHILE;
    
    COMMIT;
    
    SET p_exito = TRUE;
    SET p_mensaje = 'Reserva creada exitosamente';
    
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
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
    DECLARE v_subtotal_habitaciones DECIMAL(10,2) DEFAULT 0;
    DECLARE v_cantidad_habitaciones INT DEFAULT 0;
    DECLARE v_subtotal_actual DECIMAL(10,2);
    DECLARE done INT DEFAULT FALSE;
    
    -- Cursor para recorrer todas las facturas de habitaciones del mes
    DECLARE cur_habitaciones CURSOR FOR
        SELECT df.Subtotal
        FROM factura f
        JOIN detalle_factura df ON f.ID_Factura = df.ID_Factura
        WHERE f.Fecha_Emision BETWEEN v_fecha_inicio AND v_fecha_fin
          AND f.Estado = 'Pagada'
          AND df.ID_Detalle_Reserva_Habitacion IS NOT NULL;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    SET v_fecha_inicio = CONCAT(p_anio, '-', p_mes, '-01');
    SET v_fecha_fin = LAST_DAY(v_fecha_inicio);
    
    -- Recorrer habitaciones y sumar subtotales
    OPEN cur_habitaciones;
    
    read_loop: LOOP
        FETCH cur_habitaciones INTO v_subtotal_actual;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SET v_subtotal_habitaciones = v_subtotal_habitaciones + v_subtotal_actual;
        SET v_cantidad_habitaciones = v_cantidad_habitaciones + 1;
    END LOOP;
    
    CLOSE cur_habitaciones;
    
    -- Consulta combinada con UNION ALL
    (
        -- Reporte de ingresos por servicios individuales
        SELECT 
            'Servicio' AS Tipo_Ingreso,
            TRIM(SUBSTRING_INDEX(df.Concepto, ':', -1)) AS Concepto,
            SUM(df.Cantidad) AS Cantidad,
            SUM(df.Subtotal) AS Total
        FROM 
            factura f
        JOIN 
            detalle_factura df ON f.ID_Factura = df.ID_Factura
        WHERE 
            f.Fecha_Emision BETWEEN v_fecha_inicio AND v_fecha_fin
            AND f.Estado = 'Pagada'
            AND df.ID_Consumo_servicios IS NOT NULL
        GROUP BY 
            TRIM(SUBSTRING_INDEX(df.Concepto, ':', -1))
    )
    
    UNION ALL
    
    (
        -- Subtotal de habitaciones calculado con cursor
        SELECT 
            'SUBTOTAL Habitaciones' AS Tipo_Ingreso,
            '' AS Concepto,
            v_cantidad_habitaciones AS Cantidad,
            v_subtotal_habitaciones AS Total
    )
    
    UNION ALL
    
    (
        -- Total general
        SELECT 
            'TOTAL' AS Tipo_Ingreso,
            '' AS Concepto,
            COUNT(DISTINCT f.ID_Factura) AS Cantidad,
            SUM(f.Total) AS Total
        FROM 
            factura f
        WHERE 
            f.Fecha_Emision BETWEEN v_fecha_inicio AND v_fecha_fin
            AND f.Estado = 'Pagada'
    );
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_validar_promocion_vigente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_validar_promocion_vigente`(
    IN p_id_paquete INT,
    IN p_fecha_inicio DATE,
    IN p_fecha_fin DATE,
    OUT p_valida BOOLEAN,
    OUT p_descuento_efectivo DECIMAL(5,2),
    OUT p_mensaje VARCHAR(255)
)
sp_validar_promocion_vigente: BEGIN
    DECLARE v_paquete_existe BOOLEAN DEFAULT FALSE;
    DECLARE v_paquete_activo BOOLEAN DEFAULT FALSE;
    DECLARE v_fecha_valida BOOLEAN DEFAULT FALSE;
    DECLARE v_temporada_valida BOOLEAN DEFAULT FALSE;
    
    -- Inicializar outputs
    SET p_valida = FALSE;
    SET p_descuento_efectivo = 0.00;
    SET p_mensaje = '';
    
    -- Verificar si el paquete existe y está activo
    SELECT 
        COUNT(*) > 0,
        MAX(CASE WHEN Estado = 'Activo' THEN 1 ELSE 0 END) = 1
    INTO 
        v_paquete_existe,
        v_paquete_activo
    FROM paquete_promocional 
    WHERE ID_Paquete = p_id_paquete;
    
    IF NOT v_paquete_existe THEN
        SET p_mensaje = 'El paquete promocional no existe';
        LEAVE sp_validar_promocion_vigente;
    END IF;
    
    IF NOT v_paquete_activo THEN
        SET p_mensaje = 'El paquete promocional no está activo';
        LEAVE sp_validar_promocion_vigente;
    END IF;
    
    -- Verificar fechas de vigencia del paquete
    SELECT 
        p_fecha_inicio >= Fecha_inicio AND p_fecha_fin <= Fecha_Fin
    INTO 
        v_fecha_valida
    FROM paquete_promocional 
    WHERE ID_Paquete = p_id_paquete;
    
    IF NOT v_fecha_valida THEN
        SET p_mensaje = 'Las fechas de la reserva están fuera del período de vigencia de la promoción';
        LEAVE sp_validar_promocion_vigente;
    END IF;
    
    -- Calcular descuento efectivo para la fecha de inicio
    SET p_descuento_efectivo = fn_calcular_descuento_efectivo(p_id_paquete, p_fecha_inicio);
    
    IF p_descuento_efectivo = 0.00 THEN
        SET p_mensaje = 'La promoción no aplica para la temporada actual';
        LEAVE sp_validar_promocion_vigente;
    END IF;
    
    -- Si llegamos aquí, todo está válido
    SET p_valida = TRUE;
    SET p_mensaje = CONCAT('Promoción válida con ', p_descuento_efectivo, '% de descuento');
    
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

--
-- Final view structure for view `v_modificadores_activos`
--

/*!50001 DROP VIEW IF EXISTS `v_modificadores_activos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_modificadores_activos` AS select 1 AS `ID_Modificador`,1 AS `Paquete_Nombre`,1 AS `Temporada_Nombre`,1 AS `Descuento_Base`,1 AS `Factor_Descuento_Adicional`,1 AS `Descuento_Total`,1 AS `Descuento_Maximo`,1 AS `Descuento_Minimo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_promociones_temporadas`
--

/*!50001 DROP VIEW IF EXISTS `v_promociones_temporadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_promociones_temporadas` AS select 1 AS `ID_Paquete`,1 AS `Nombre`,1 AS `Descripcion`,1 AS `Fecha_inicio`,1 AS `Fecha_Fin`,1 AS `Estado`,1 AS `Descuento_Porcentaje`,1 AS `Aplicable_Solo_Temporada`,1 AS `ID_Temporada`,1 AS `Temporada_Nombre`,1 AS `Factor_Multiplicador_Precio`,1 AS `Descuento_Efectivo_Hoy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27  2:48:34
