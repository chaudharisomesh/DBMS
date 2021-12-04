-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Cnum` int NOT NULL,
  `Cname` varchar(20) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `Snum` int DEFAULT NULL,
  PRIMARY KEY (`Cnum`),
  KEY `Snum` (`Snum`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Snum`) REFERENCES `salespeople` (`Snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2001,'Hoffman','London',1001),(2002,'Giovanni','Rome',1003),(2003,'Liu','Sanjose',1002),(2004,'Grass','Berlin',1002),(2006,'Clemens','London',1001),(2007,'Pereira','Rome',1004),(2008,'Cisneros','Sanjose',1007);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Onum` int NOT NULL,
  `AMT` float DEFAULT NULL,
  `Odate` date DEFAULT NULL,
  `Cnum` int DEFAULT NULL,
  `Snum` int DEFAULT NULL,
  PRIMARY KEY (`Onum`),
  KEY `Cnum` (`Cnum`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Cnum`) REFERENCES `customers` (`Cnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3001,18.69,'1990-10-03',2008,1007),(3002,1900.1,'1990-10-03',2007,1004),(3003,767.19,'1990-10-03',2001,1001),(3005,5160.45,'1990-10-03',2003,1002),(3006,1098.16,'1990-10-03',2008,1007),(3007,75.75,'1990-10-04',2004,1002),(3008,4273,'1990-10-05',2006,1001),(3009,1713.23,'1990-10-04',2002,1003),(3010,1309.95,'1990-10-06',2004,1002),(3011,9891.88,'1990-10-06',2006,1001);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salespeople`
--

DROP TABLE IF EXISTS `salespeople`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salespeople` (
  `Snum` int NOT NULL,
  `Sname` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `comm` int DEFAULT NULL,
  PRIMARY KEY (`Snum`),
  UNIQUE KEY `Sname` (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespeople`
--

LOCK TABLES `salespeople` WRITE;
/*!40000 ALTER TABLE `salespeople` DISABLE KEYS */;
INSERT INTO `salespeople` VALUES (1001,'peel','london',12),(1002,'Serres','Sanjose',13),(1003,'Axelrod','Newyork',10),(1004,'Motika','london',11),(1007,'Rifkin','Barcelona',15);
/*!40000 ALTER TABLE `salespeople` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-04  9:24:46
show databases;