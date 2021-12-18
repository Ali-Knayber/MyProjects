-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: covid_project
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `contagiousinstructions`
--

DROP TABLE IF EXISTS `contagiousinstructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contagiousinstructions` (
  `instruction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contagiousinstructions`
--

LOCK TABLES `contagiousinstructions` WRITE;
/*!40000 ALTER TABLE `contagiousinstructions` DISABLE KEYS */;
INSERT INTO `contagiousinstructions` VALUES ('Wear a mask properly.'),('Stay at home.'),('Take care of yourself.'),('Stay in touch with your doctor.'),('Avoid public transportation.'),('As much as possible, stay in a specific room');
/*!40000 ALTER TABLE `contagiousinstructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safeinstructions`
--

DROP TABLE IF EXISTS `safeinstructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safeinstructions` (
  `instruction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safeinstructions`
--

LOCK TABLES `safeinstructions` WRITE;
/*!40000 ALTER TABLE `safeinstructions` DISABLE KEYS */;
INSERT INTO `safeinstructions` VALUES ('Always keep your mask on!'),('Wear a mask properly.'),('Make your environment safer!'),('Keep good hygiene!'),('Keep social distance!'),('Go outside peek hour!'),('Keep your sanitizer with you!'),('Keep your shopping time short and make a list!');
/*!40000 ALTER TABLE `safeinstructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trustedfriends`
--

DROP TABLE IF EXISTS `trustedfriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trustedfriends` (
  `username` varchar(255) NOT NULL,
  `trusted_user` varchar(255) NOT NULL,
  PRIMARY KEY (`username`,`trusted_user`),
  CONSTRAINT `trustedfriends_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trustedfriends`
--

LOCK TABLES `trustedfriends` WRITE;
/*!40000 ALTER TABLE `trustedfriends` DISABLE KEYS */;
INSERT INTO `trustedfriends` VALUES ('John','will_smith'),('Bill','will_smith');
/*!40000 ALTER TABLE `trustedfriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `photo` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `vaccinated` tinyint(1) NOT NULL,
  `vaccination_card` varbinary(8000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pcr_result` varchar(255) DEFAULT 'negative',
  `location` varchar(255) DEFAULT NULL,
  `time_arrived` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'ofline',
  `infected_date` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('null','John','Smith','John@gmail.com','John',_binary '\ïy|ð-ûd\Ý]?v#=S,\É\\^×¨¦O',0,_binary 'null','contagious','positive','Nicol_Hall_201','Sun Nov 28 19:43:45 EET 2021','online','2021-11-28 00:00:00'),('null','Will','Smith','will.smith@gmail.com','will_smith',_binary '\ïy|ð-ûd\Ý]?v#=S,\É\\^×¨¦O',0,_binary 'null','safe','negative','Nicol_Hall_201','Sun Nov 28 19:42:53 EET 2021','online','2021-11-28 00:00:00'),('null','Bill','Smith','bill@gmail.com','Bill',_binary '\ïy|ð-ûd\Ý]?v#=S,\É\\^×¨¦O',1,_binary 'null','safe','negative','Nicol_Hall_201','Sun Nov 28 18:22:05 EET 2021','offline',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  6:54:49
