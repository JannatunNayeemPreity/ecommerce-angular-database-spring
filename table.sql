-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: shoppingdb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` int NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('a','a',1,'1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerserial` int NOT NULL,
  `customerid` varchar(45) DEFAULT NULL,
  `customername` varchar(45) DEFAULT NULL,
  `customerphone` varchar(45) DEFAULT NULL,
  `customeraddress` varchar(45) DEFAULT NULL,
  `customeremail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customerserial`),
  UNIQUE KEY `customerid_UNIQUE` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoiceserial` int NOT NULL AUTO_INCREMENT,
  `invoicenumber` varchar(45) NOT NULL,
  `transactionnumber` varchar(45) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `totalquantity` double DEFAULT NULL,
  `totalprice` double DEFAULT NULL,
  `customername` varchar(45) DEFAULT NULL,
  `customerphone` varchar(45) DEFAULT NULL,
  `customerid` varchar(45) DEFAULT NULL,
  `orderstatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoiceserial`),
  UNIQUE KEY `invoicenumber_UNIQUE` (`invoicenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (29,'inv-1717215262984','111','2024-06-07',12,128500,'md jahir','111','1234','processing'),(30,'inv-1717215708056','111','2024-06-01',98,2450000,'md jahir','111','1234','processing'),(31,'inv-1717216238480','111','2024-06-01',2,100000,'md jahir','111','1234','delivered'),(32,'inv-1717219658626','1122334455','2024-06-01',2,55000,'md jahir','01795013338','1234','delivered'),(33,'inv-1717220454960','1122334455','2024-06-01',5,140000,'md jahir','01795013338','1234','processing'),(34,'inv-1717558067930','1','2024-06-05',1,1000,'preity','1','1','processing'),(35,'inv-1717558141501','1','2024-06-05',1,1000,'preity','1','1','processing'),(36,'inv-1717562207807','1','2024-06-05',4,160000,'preity','1','1','processing'),(37,'inv-1717562283901','1','2024-06-05',4,160000,'preity','1','1','processing'),(38,'inv-1717567573152','1','2024-06-05',1,25000,'preity','1','1','processing'),(39,'inv-1717571832689','1','2024-06-05',1,1000,'preity','1','1','processing'),(40,'inv-1717826709546','50','2024-06-08',1,50000,'preity','50','50','processing'),(41,'inv-1717915854042','123','2024-06-09',1,30000,'babu','16','20','processing'),(42,'inv-1717918556864','75','2024-06-09',1,50000,'preity','1681008002','75','processing');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetail`
--

DROP TABLE IF EXISTS `invoicedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicedetail` (
  `invoicedetailserial` int NOT NULL AUTO_INCREMENT,
  `productid` int DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `productbrand` varchar(45) DEFAULT NULL,
  `productcategory` varchar(45) DEFAULT NULL,
  `productunitprice` double DEFAULT NULL,
  `itemquantity` int DEFAULT NULL,
  `itemtotalprice` double DEFAULT NULL,
  `invoicenumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoicedetailserial`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetail`
--

LOCK TABLES `invoicedetail` WRITE;
/*!40000 ALTER TABLE `invoicedetail` DISABLE KEYS */;
INSERT INTO `invoicedetail` VALUES (120,100,'Computer','Inter','pc',25000,2,50000,'inv-1717215262984'),(121,101,'Iphone pro max','Iphone','mobile',30000,2,60000,'inv-1717215262984'),(122,106,'Bagpack','execories','execories',2000,3,6000,'inv-1717215262984'),(123,107,'Kco Watch','japan','watch',2500,5,12500,'inv-1717215262984'),(124,100,'Computer','Inter','pc',25000,98,2450000,'inv-1717215708056'),(125,102,'Lapto','hp','laptop',50000,2,100000,'inv-1717216238480'),(126,100,'Computer','Inter','pc',25000,1,25000,'inv-1717219658626'),(127,101,'Iphone pro max','Iphone','mobile',30000,1,30000,'inv-1717219658626'),(128,100,'Computer','Inter','pc',25000,2,50000,'inv-1717220454960'),(129,101,'Iphone pro max','Iphone','mobile',30000,3,90000,'inv-1717220454960'),(130,105,'Multiplug','china ','kabol',1000,1,1000,'inv-1717558067930'),(131,105,'Multiplug','china ','kabol',1000,1,1000,'inv-1717558141501'),(132,101,'Iphone pro max','Iphone','mobile',30000,2,60000,'inv-1717562207807'),(133,102,'Lapto','hp','laptop',50000,2,100000,'inv-1717562207807'),(134,101,'Iphone pro max','Iphone','mobile',30000,2,60000,'inv-1717562283901'),(135,102,'Lapto','hp','laptop',50000,2,100000,'inv-1717562283901'),(136,100,'Computer','Inter','pc',25000,1,25000,'inv-1717567573152'),(137,105,'Multiplug','china ','kabol',1000,1,1000,'inv-1717571832689'),(138,102,'Lapto','hp','laptop',50000,1,50000,'inv-1717826709546'),(139,101,'Iphone pro max','Iphone','mobile',30000,1,30000,'inv-1717915854042'),(140,102,'Lapto','hp','laptop',50000,1,50000,'inv-1717918556864');
/*!40000 ALTER TABLE `invoicedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` int NOT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `productbrand` varchar(45) DEFAULT NULL,
  `productcategory` varchar(45) DEFAULT NULL,
  `productunitprice` double DEFAULT NULL,
  `productstock` int DEFAULT NULL,
  `photos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (100,'Computer','Inter','pc',25000,7,'assets\\images\\pc.jpg'),(101,'Iphone pro max','Iphone','mobile',30000,79,'assets\\images\\phone.jpg'),(102,'Lapto','hp','laptop',50000,72,'assets\\images\\laptop.jpg'),(103,'Mouse','A4Tech','mouse',1200,50,'assets\\images\\mouse.jpg'),(104,'Keybord','A4Tech','keyboard',1200,120,'assets\\images\\keyboard.jpg'),(105,'Multiplug','china ','kabol',1000,197,'assets\\images\\multi.jpg'),(106,'Bagpack','execories','execories',2000,147,'assets\\images\\Bacpack.jpg'),(107,'Casio Watch','japan','watch',2500,195,'assets\\images\\CasioWatch.jpg'),(108,'Casio Calculator','Casio','Calcolator',2500,300,'assets\\images\\calculator.jpg'),(109,'Matador','matador','pen',10,300,'assets\\images\\pen.jpg'),(110,'mag bath','fr.lower','Book',250,50,'assets\\images\\book.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productcategory` (
  `productcategoryserial` int NOT NULL AUTO_INCREMENT,
  `productcategoryid` varchar(45) DEFAULT NULL,
  `productcategoryname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productcategoryserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionvarify`
--

DROP TABLE IF EXISTS `transactionvarify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionvarify` (
  `serialnumber` int NOT NULL AUTO_INCREMENT,
  `mobilenumber` varchar(45) DEFAULT NULL,
  `transactionid` varchar(45) DEFAULT NULL,
  `transactionamount` double DEFAULT NULL,
  PRIMARY KEY (`serialnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionvarify`
--

LOCK TABLES `transactionvarify` WRITE;
/*!40000 ALTER TABLE `transactionvarify` DISABLE KEYS */;
INSERT INTO `transactionvarify` VALUES (1,'1','1',1000),(2,'2','2',25000),(3,'20','20',50000),(4,'50','50',25000),(5,'16','123',30000),(6,'1681008002','75',50000);
/*!40000 ALTER TABLE `transactionvarify` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09 16:34:17
