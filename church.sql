-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: church
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `monthDonated` text COLLATE utf8mb4_general_ci NOT NULL,
  `memberID` int(11) NOT NULL,
  `paymentType` enum('cash','check') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `moneyDonated` float NOT NULL,
  `checkNumber` int(5) DEFAULT NULL,
  `donationID` int(5) NOT NULL,
  PRIMARY KEY (`donationID`),
  KEY `memberID` (`memberID`),
  CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `members` (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES ('April 2021',8,'check',940,685,1),('April 2021',15,'check',412,182,2),('March 2021',6,'check',729,391,3),('March 2021',11,'check',65,114,4),('March 2021',4,'check',6,903,5),('April 2021',18,'check',2,398,6),('April 2021',4,'check',210,802,7),('March 2021',15,'check',828,373,8),('January 2021',11,'check',360,753,9),('March 2021',12,'check',262,719,10),('April 2021',8,'check',61,395,11),('January 2021',18,'check',45,579,12),('January 2021',10,'check',84,440,13),('March 2021',5,'check',39,541,14),('February 2021',2,'check',74,443,15),('February 2021',16,'check',26,559,16),('April 2021',5,'check',677,591,17),('March 2021',4,'check',666,679,18),('January 2021',5,'check',989,413,19),('April 2021',10,'check',666,593,20),('April 2021',4,'check',22,364,21),('April 2021',16,'check',413,771,22),('March 2021',13,'check',57,599,23),('February 2021',16,'check',263,977,24),('January 2021',2,'check',13,424,25),('February 2021',1,'check',140,476,26),('April 2021',9,'check',450,660,27),('January 2021',1,'check',212,994,28),('April 2021',2,'check',851,780,29),('March 2021',2,'check',297,433,30),('February 2021',12,'check',634,334,31),('March 2021',1,'check',16,202,32),('January 2021',16,'check',35,692,33),('April 2021',17,'check',331,128,34),('March 2021',12,'check',767,817,35),('January 2021',16,'check',763,954,36),('January 2021',18,'check',329,124,37),('February 2021',8,'check',928,302,38),('February 2021',12,'check',75,216,39),('January 2021',6,'check',632,649,40),('January 2021',13,'cash',240,NULL,41),('April 2021',6,'cash',450,NULL,42),('March 2021',19,'cash',90,NULL,43),('February 2021',5,'cash',622,NULL,44),('February 2021',4,'cash',683,NULL,45),('January 2021',17,'cash',204,NULL,46),('February 2021',6,'cash',768,NULL,47),('March 2021',17,'cash',133,NULL,48),('April 2021',5,'cash',572,NULL,49),('April 2021',18,'cash',671,NULL,50),('March 2021',11,'cash',829,NULL,51),('April 2021',17,'cash',9,NULL,52),('April 2021',7,'cash',22,NULL,53),('April 2021',12,'cash',747,NULL,54),('January 2021',16,'cash',65,NULL,55),('March 2021',11,'cash',616,NULL,56),('January 2021',6,'cash',652,NULL,57),('January 2021',13,'cash',892,NULL,58),('March 2021',8,'cash',113,NULL,59),('January 2021',4,'cash',69,NULL,60),('January 2021',16,'cash',827,NULL,61),('March 2021',15,'cash',725,NULL,62),('January 2021',7,'cash',253,NULL,63),('February 2021',20,'cash',535,NULL,64),('February 2021',13,'cash',645,NULL,65),('March 2021',14,'cash',989,NULL,66),('January 2021',15,'cash',929,NULL,67),('March 2021',6,'cash',24,NULL,68),('April 2021',12,'cash',322,NULL,69),('January 2021',19,'cash',211,NULL,70),('January 2021',3,'cash',240,NULL,71),('April 2021',3,'cash',100,NULL,72);
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `Name` text COLLATE utf8mb4_general_ci NOT NULL,
  `Address` text COLLATE utf8mb4_general_ci NOT NULL,
  `phoneNumber` text COLLATE utf8mb4_general_ci NOT NULL,
  `Email` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Nasim Hendrix','617-1733 Mauris St.','(491) 734-8224','dui.nec.tempus@Suspendisse.edu'),(2,'Basil Oconnor','830-1161 Donec Avenue','(616) 352-9026','consectetuer.rhoncus@vitaediam.co.uk'),(3,'Ina Steele','507-877 Velit St.','(294) 895-1681','nascetur.ridiculus@tellus.org'),(4,'Hilary Clayton','852-3106 Aliquam St.','(629) 525-5404','Curabitur@posuerecubiliaCurae.com'),(5,'Jin Jimenez','Ap #178-1296 Magnis Rd.','(462) 726-2862','convallis.ante@vitaealiquet.com'),(6,'Charde Ramos','565-7842 A, Road','(337) 921-4597','ut@nunc.ca'),(7,'Nero Finley','272-6854 Non Rd.','(793) 745-6800','bibendum.fermentum.metus@diam.edu'),(8,'Christine Barton','650-6394 At Street','(784) 500-5309','Donec.tincidunt@duinectempus.edu'),(9,'Yael Fisher','Ap #977-1486 In St.','(392) 477-3296','odio@malesuadautsem.co.uk'),(10,'Althea Hopkins','557-4120 Eget Av.','(454) 986-3701','eleifend@disparturientmontes.ca'),(11,'Teagan Stevenson','Ap #530-2351 Nisi Rd.','(859) 263-0745','nec@ac.org'),(12,'Ebony Gillespie','P.O. Box 219, 7708 A, Street','(116) 900-6659','enim.gravida.sit@ridiculusmus.edu'),(13,'Alana Hernandez','Ap #142-462 Eget Avenue','(939) 364-9621','natoque@risusDuisa.ca'),(14,'Chaim Ryan','Ap #298-1635 Imperdiet, St.','(980) 866-8922','mi.pede@arcuNunc.net'),(15,'Glenna Garrison','9515 Id Av.','(789) 916-9926','felis.ullamcorper@luctusvulputatenisi.ca'),(16,'Sopoline Chapman','Ap #793-1228 Egestas Rd.','(364) 826-3347','et@cursuset.net'),(17,'Whoopi Frost','P.O. Box 359, 8715 Congue St.','(226) 146-3931','ullamcorper.Duis.at@Integereulacus.org'),(18,'Ava Becker','Ap #576-7628 Enim, Avenue','(339) 155-1152','non.bibendum@urna.org'),(19,'Melanie Martinez','620-2979 Metus. Avenue','(350) 312-4606','Donec@lobortisquam.com'),(20,'Kerry Riddle','853 Massa. Rd.','(858) 413-8247','vitae.semper.egestas@vitaesemper.ca');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-02 23:38:16
