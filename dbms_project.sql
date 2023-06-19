-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `artistid` varchar(20) NOT NULL,
  `gid` varchar(20) DEFAULT NULL,
  `custid` varchar(20) DEFAULT NULL,
  `eid` varchar(20) DEFAULT NULL,
  `fname` char(25) DEFAULT NULL,
  `lname` char(25) DEFAULT NULL,
  `birthplace` char(25) DEFAULT NULL,
  `style` char(25) DEFAULT NULL,
  PRIMARY KEY (`artistid`),
  KEY `custid` (`custid`),
  KEY `eid` (`eid`),
  KEY `gid` (`gid`),
  CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `exhibition` (`eid`),
  CONSTRAINT `artist_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `gallery` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('ART1','G1','CUST1','E1','SHIVAM','JHA','INDIA','MADHUBANI'),('ART10','G10','CUST10','E10','DUARTE','PERIRA','PORTUGAL','SURREALISM'),('ART11','G11','CUST11','E11','EMMA','WATSON','NETHERLANDS','MODERN-ART'),('ART12','G12','CUST12','E12','KANE','WILLIAMSON','NETHERLANDS','ABSTRACT'),('ART13','G13','CUST13','E13','RAMCHANDRA','IYER','INDIA','KERALA-MURALS'),('ART14','G14','CUST14','E14','TUPAC','SHAKUR','USA','CUBISM'),('ART15','G15','CUST15','E15','JOFRA','ARCHER','RUSSIA','CONTEMPORARY'),('ART2','G2','CUST2','E2','AKSHAY','REDDY','INDIA','KALAMKARI'),('ART3','G3','CUST3','E3','NIKITA','KUMARI','INDIA','PATACHITRA'),('ART4','G4','CUST4','E4','RAJ','REDDY','USA','OIL PAINTING'),('ART5','G5','CUST5','E5','ALBA','FLORES','SAPIN','ABSTRACT'),('ART6','G6','CUST6','E6','URSULA','CORBERO','SAPIN','CUBISM'),('ART7','G7','CUST7','E7','LUIS','SUAREZ','ITALY','POP-ART'),('ART8','G8','CUST8','E8','TEX','WILLER','ITALY','GRAFFITI'),('ART9','G9','CUST9','E9','PEDRO','ALONSO','SPAIN','POP-ART');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artwork`
--

DROP TABLE IF EXISTS `artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artwork` (
  `artid` varchar(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `eid` varchar(10) DEFAULT NULL,
  `gid` varchar(10) DEFAULT NULL,
  `artistid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`artid`),
  KEY `artistid` (`artistid`),
  KEY `gid` (`gid`),
  KEY `eid` (`eid`),
  CONSTRAINT `artwork_ibfk_1` FOREIGN KEY (`artistid`) REFERENCES `artist` (`artistid`),
  CONSTRAINT `artwork_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `gallery` (`gid`),
  CONSTRAINT `artwork_ibfk_3` FOREIGN KEY (`eid`) REFERENCES `exhibition` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork`
--

LOCK TABLES `artwork` WRITE;
/*!40000 ALTER TABLE `artwork` DISABLE KEYS */;
INSERT INTO `artwork` VALUES ('AW1','MADHUBANI','1972',30000000,'EX1','G1','ART1'),('AW10','FERNANDA LAMELAS','1768',32550000,'EX10','G10','ART10'),('AW11','VINCENT VAN GOGH','1962',47800000,'EX11','G11','ART11'),('AW12','EMMA','2010',8000000,'EX12','G12','ART12'),('AW13','KALAMEZHUTHU','700',12300000,'EX13','G13','ART13'),('AW14','GEORGES BRAQUE','1800',198000000,'EX14','G14','ART14'),('AW15','PUZZLE VASSILY KANDINSKY','1988',29000000,'EX15','G15','ART15'),('AW2','KALAMKARI','1275',75000000,'EX2','G2','ART2'),('AW3','PATACHITRA','1100',76700000,'EX3','G3','ART3'),('AW4','WHISTLER\'S MOTHER','1873',1738000,'EX4','G4','ART4'),('AW5','MYROS CAT','1900',6780000,'EX5','G5','ART5'),('AW6','PICASSO','1907',4560000,'EX6','G6','ART6'),('AW7','STEPHANIE STOREY','1400',6000000,'EX7','G7','ART7'),('AW8','REVOK','1864',9650000,'EX8','G8','ART8'),('AW9','HOCKNEY','1974',4550000,'EX9','G9','ART9');
/*!40000 ALTER TABLE `artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `custid` varchar(10) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  KEY `custid` (`custid`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('CUST1','9117297038'),('CUST2','9117296638'),('CUST3','8217296638'),('CUST5','1234567849'),('CUST4','7488795650'),('CUST6','9727467238'),('CUST7','6724997654'),('CUST8','8690342167'),('CUST9','7755998873'),('CUST10','9823145678'),('CUST11','8764532879'),('CUST12','9754367821'),('CUST13','8795432176'),('CUST14','9876437291'),('CUST15','7756242986');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custid` varchar(10) NOT NULL,
  `gid` varchar(10) DEFAULT NULL,
  `artid` varchar(10) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`custid`),
  KEY `artid` (`artid`),
  KEY `gid` (`gid`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`artid`) REFERENCES `artwork` (`artid`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `gallery` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('CUST1','G1','AW1','SHIV','PRASAD','WARANGAL'),('CUST10','G10','AW10','PAUL','POGBA','MALDIVES'),('CUST11','G11','AW11','JAMIE','LORENTE','SPAIN'),('CUST12','G12','AW12','NINA','DOBREV','FRANCE'),('CUST13','G13','AW13','PAUL','WESLEY','NETHERLANDS'),('CUST14','G14','AW14','JEREMY','GILBERT','ITALY'),('CUST15','G15','AW15','AMBER','HEARD','UK'),('CUST2','G2','AW2','SOHAIL','AHMAD','HYDERABAD'),('CUST3','G3','AW3','SHRIRAM','GONE','KARIMNAGAR'),('CUST4','G4','AW4','MANISH','SINGHANIYA','DHANBAD'),('CUST5','G5','AW5','KOUSTUBH','SRUJAN','BHOPAL'),('CUST6','G6','AW6','KRISHNA','DAHALE','NAGPUR'),('CUST7','G7','AW7','ANUJ','PARULEKAR','GOA'),('CUST8','G8','AW8','VIGNESHWAR','RAVINDRAN','CHENNAI'),('CUST9','G9','AW9','SAMANTHA','RUTHPRABHU','CHENNAI');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibition` (
  `eid` varchar(10) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `gid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `gid` (`gid`),
  CONSTRAINT `exhibition_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `gallery` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES ('EX1','2018-03-26','2018-07-28','G1'),('EX10','2000-01-06','2001-10-10','G10'),('EX11','1997-01-06','1999-10-10','G11'),('EX12','2005-07-06','2006-10-10','G12'),('EX13','2009-05-23','2007-11-17','G13'),('EX14','2011-05-23','2013-11-17','G14'),('EX15','2013-05-23','2013-11-17','G15'),('EX2','2019-03-26','2019-07-28','G2'),('EX3','2017-05-21','2018-08-29','G3'),('EX4','2020-05-18','2020-08-09','G4'),('EX5','2022-01-18','2022-12-19','G5'),('EX6','2021-02-06','2021-12-10','G6'),('EX7','2015-01-06','2016-10-10','G7'),('EX8','2017-06-06','2019-10-10','G8'),('EX9','2018-07-06','2019-10-10','G9');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `gid` varchar(10) NOT NULL,
  `gname` varchar(100) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES ('G1','NATIONAL GALLERY OF MODERN ART','BANGALORE'),('G10','CASA DAS HISTORIAS','PORTUGAL'),('G11','HERMITAGE','AMSTERDAM'),('G12','KATTENKABINET','AMSTERDAM'),('G13','GALLERY VEDA','KERALA'),('G14','ART GENICS','USA'),('G15','ARMOURY CHAMBER','RUSSIA'),('G2','WARNGAL-ART','WARANGAL'),('G3','MY-GALLERY','DELHI'),('G4','NATIONAL GALLERY','USA'),('G5','MUSEO DEL PRADO','SPAIN'),('G6','PICASSO MUSEUM','SPAIN'),('G7','UFFIZI GALLERY','ITALY'),('G8','NATIONAL ROMAN MUSEUM','ITALY'),('G9','MUSEO NACIONAL DEL PARDO','MADRID');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-19 21:32:43
