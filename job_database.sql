-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: job
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `3i_infotech`
--

DROP TABLE IF EXISTS `3i_infotech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `3i_infotech` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3i_infotech`
--

LOCK TABLES `3i_infotech` WRITE;
/*!40000 ALTER TABLE `3i_infotech` DISABLE KEYS */;
/*!40000 ALTER TABLE `3i_infotech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accenture`
--

DROP TABLE IF EXISTS `accenture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accenture` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accenture`
--

LOCK TABLES `accenture` WRITE;
/*!40000 ALTER TABLE `accenture` DISABLE KEYS */;
/*!40000 ALTER TABLE `accenture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capgemini`
--

DROP TABLE IF EXISTS `capgemini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capgemini` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capgemini`
--

LOCK TABLES `capgemini` WRITE;
/*!40000 ALTER TABLE `capgemini` DISABLE KEYS */;
/*!40000 ALTER TABLE `capgemini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coforge`
--

DROP TABLE IF EXISTS `coforge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coforge` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coforge`
--

LOCK TABLES `coforge` WRITE;
/*!40000 ALTER TABLE `coforge` DISABLE KEYS */;
/*!40000 ALTER TABLE `coforge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `name` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `jobs` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('3i infotech','Navi Mumbai','Tower # 5, 3 to 6 Floor International Infotech Park, Vashi Station Complex, Vashi, Navi Mumbai, Maharashtra 400703.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/3i_Infotech.html'),('Accenture','Pune','Address of Company:<br>Building B-1, Magarpatta City (SEZ, Mundhwa Rd, Magarpatta, Hadapsar,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Capgemini','Pune','Plot No.14, Rajiv Gandhi Infotech Park, Hinjewadi, Phase-III,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Coforge','Pune','6th & 7th Floor, Bldg No.2, Commerzone, S No.144/145,, Yerawada,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('eInfochips','Pune','9, Hadapsar Rd, Undri, Pune, Maharashtra 411028.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/eInfochips.html'),('Fueled Technologies','Delhi ','PLAZA CINEMA BUILDING 2ND FLOOR H BLOCK CONNAUGHT PLACE NEW DELHI Central Delhi DL 110001 IN.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Fueled.html'),('Google','Pune','20, Balewadi High St, Laxman Nagar, Balewadi, Pune, Maharashtra 411045.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Hexaware Technologies','Pune','HMRH+6MG, Phase 3, Hinjewadi Rajiv Gandhi Infotech Park, Hinjawadi,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Hyperlink infosystem','Gujarat ','Block C, 106/B Ganesh Meridian Sarkhej - Gandhinagar Highway Opp Gujarat high court, Ahmedabad, Gujarat 3800618.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Hyperlink_InfoSystem.html'),('Larsen & Tourbo Infotech','Pune','Plot No. 1/77 MIDC, EON free Zone. Cluster C, Kharadi Knowledge Park,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Microsoft Corporation','Pune','Smartworks, Sixth Floor, Veerbhadra Nagar Rd, above Croma Showroom, Veerbhadra Nagar, Baner, Pune, Maharashtra 411045.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Mindtree','Pune','Hinjawadi Phase 2 Rd, Phase 1, Hinjewadi Rajiv Gandhi Infotech Park,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Mphsis','Pune','Plot No. 1/77 MIDC, EON free Zone. Cluster C, Kharadi Knowledge Park,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Newgen Software','Navi Mumbai','MBP Rd, Sector I, Sector 2, Kopar Khairane, Navi Mumbai, Maharashtra','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('Oracle Corporation','Pune','Ambrosia, Oracle Park, Mulshi Rd, Bavdhan, Pune, Maharashtra','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Oracle.html'),('Quick Heal','Pune','Marvel Edge, C-7010, Kashmiri Sounf Rd, Opposite NECO Garden Society, Clover Park, Viman Nagar, Pune, Maharashtra 411014.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Quick_Heal.html'),('Ramco Systems','Mumbai','Mumbai #615 6th Floor, C - Wing, 215 Atrium, Next to Hotel Courtyard Marriott, Andheri – Kurla Road, Andheri East','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Ramco.html'),('Sonata Software','Pune','127/1; Flat No 1, Sanewadi, Aundh, Above Udhya Sahakari Building;,Aundh, near to Hotel Sarja, Pune, Maharashtra 411007.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Sonata_Software.html'),('Tech Mahindra','Pune','Hinjawadi Phase II, Hinjewadi Rajiv Gandhi Infotech Park, Hinjawadi,','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345',NULL),('WillowTree','Pune','WORLD TRADE CENTER, 105, Tower 2, Kharadi, Pune, Maharashtra411014.','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/WillowTree.html'),('Zensar Technologies','Pune','Adreess of Company:<br>Plot #4, MIDC, Off Nagar Road, Zensar Knowledge Park, Kharadi, Pune','Programmer, Software developer, Tester and many more.','B.E.','Java, Php, C.','2 years/Fresher','12345','Company/Zenser.html');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `einfochips`
--

DROP TABLE IF EXISTS `einfochips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `einfochips` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `einfochips`
--

LOCK TABLES `einfochips` WRITE;
/*!40000 ALTER TABLE `einfochips` DISABLE KEYS */;
/*!40000 ALTER TABLE `einfochips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fueled_technologies`
--

DROP TABLE IF EXISTS `fueled_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fueled_technologies` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fueled_technologies`
--

LOCK TABLES `fueled_technologies` WRITE;
/*!40000 ALTER TABLE `fueled_technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `fueled_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google`
--

DROP TABLE IF EXISTS `google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google`
--

LOCK TABLES `google` WRITE;
/*!40000 ALTER TABLE `google` DISABLE KEYS */;
/*!40000 ALTER TABLE `google` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hcl_technologies`
--

DROP TABLE IF EXISTS `hcl_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hcl_technologies` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hcl_technologies`
--

LOCK TABLES `hcl_technologies` WRITE;
/*!40000 ALTER TABLE `hcl_technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `hcl_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hexaware_technologies`
--

DROP TABLE IF EXISTS `hexaware_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hexaware_technologies` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hexaware_technologies`
--

LOCK TABLES `hexaware_technologies` WRITE;
/*!40000 ALTER TABLE `hexaware_technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `hexaware_technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hyperlink_infosystem`
--

DROP TABLE IF EXISTS `hyperlink_infosystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hyperlink_infosystem` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hyperlink_infosystem`
--

LOCK TABLES `hyperlink_infosystem` WRITE;
/*!40000 ALTER TABLE `hyperlink_infosystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `hyperlink_infosystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infosys`
--

DROP TABLE IF EXISTS `infosys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infosys` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infosys`
--

LOCK TABLES `infosys` WRITE;
/*!40000 ALTER TABLE `infosys` DISABLE KEYS */;
/*!40000 ALTER TABLE `infosys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `larsen_&_tourbo_infotech`
--

DROP TABLE IF EXISTS `larsen_&_tourbo_infotech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `larsen_&_tourbo_infotech` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `larsen_&_tourbo_infotech`
--

LOCK TABLES `larsen_&_tourbo_infotech` WRITE;
/*!40000 ALTER TABLE `larsen_&_tourbo_infotech` DISABLE KEYS */;
/*!40000 ALTER TABLE `larsen_&_tourbo_infotech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Dob` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('Kaushal Khachane','9359168397','khachaneks22@gmail.com','2003-04-22'),('Amarbirsingh Randhawa','9307468233','amarbirrandhawa@gmail.com','2003-07-22'),('Tanavi Shailesh Narkhede','7796114459','narkhedetanavi21@gmail.com','2003-01-21'),('Kaushal Sunil Khachane','9359168397','khachaneks22@gmail.com','2003-04-22'),('Pratik Anil Waghode','7823040425','patila2003@gmail.com','2002-07-11'),('Vaishnavi Gajanan Chopade','7796114450','vaishnavichopade03@gmail.com','2002-01-11'),('vaishnavi','7823040425','vaishnavichopade03@gmail.com','2003-02-01'),('Shantanu Anil Khachane','7823040426','khachaneshantanu@gmail.com','2001-04-22');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microsoft_corporation`
--

DROP TABLE IF EXISTS `microsoft_corporation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `microsoft_corporation` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microsoft_corporation`
--

LOCK TABLES `microsoft_corporation` WRITE;
/*!40000 ALTER TABLE `microsoft_corporation` DISABLE KEYS */;
/*!40000 ALTER TABLE `microsoft_corporation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mindtree`
--

DROP TABLE IF EXISTS `mindtree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mindtree` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mindtree`
--

LOCK TABLES `mindtree` WRITE;
/*!40000 ALTER TABLE `mindtree` DISABLE KEYS */;
/*!40000 ALTER TABLE `mindtree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mphsis`
--

DROP TABLE IF EXISTS `mphsis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mphsis` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mphsis`
--

LOCK TABLES `mphsis` WRITE;
/*!40000 ALTER TABLE `mphsis` DISABLE KEYS */;
/*!40000 ALTER TABLE `mphsis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newgen_software`
--

DROP TABLE IF EXISTS `newgen_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newgen_software` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newgen_software`
--

LOCK TABLES `newgen_software` WRITE;
/*!40000 ALTER TABLE `newgen_software` DISABLE KEYS */;
/*!40000 ALTER TABLE `newgen_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_heal`
--

DROP TABLE IF EXISTS `quick_heal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quick_heal` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_heal`
--

LOCK TABLES `quick_heal` WRITE;
/*!40000 ALTER TABLE `quick_heal` DISABLE KEYS */;
/*!40000 ALTER TABLE `quick_heal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ramco_systems`
--

DROP TABLE IF EXISTS `ramco_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ramco_systems` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ramco_systems`
--

LOCK TABLES `ramco_systems` WRITE;
/*!40000 ALTER TABLE `ramco_systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `ramco_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sonata_software`
--

DROP TABLE IF EXISTS `sonata_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sonata_software` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sonata_software`
--

LOCK TABLES `sonata_software` WRITE;
/*!40000 ALTER TABLE `sonata_software` DISABLE KEYS */;
/*!40000 ALTER TABLE `sonata_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Name` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Dob` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`Email`,`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Pragati Sunil Khachane','8806848817','khachaneps@gmail.com','2001-02-12','827ccb0eea8a706c4c34a16891f84e7b'),('Shantanu Anil Khachane','7823040426','khachaneshantanu@gmail.com','2001-04-22','827ccb0eea8a706c4c34a16891f84e7b'),('Vaishnavi Gajanan Chopade','7796114450','vaishnavichopade03@gmail.com','2002-01-11','827ccb0eea8a706c4c34a16891f84e7b'),('Pratik Anil Waghode','7823040425','patila2003@gmail.com','2002-07-11','827ccb0eea8a706c4c34a16891f84e7b'),('Tanavi Shailesh Narkhede','7796114459','narkhedetanavi21@gmail.com','2003-01-21','827ccb0eea8a706c4c34a16891f84e7b'),('Kaushal Sunil Khachane','9359168397','khachaneks22@gmail.com','2003-04-22','827ccb0eea8a706c4c34a16891f84e7b'),('Amarbirsingh Randhawa','9307468233','amarbirrandhawa@gmail.com','2003-07-22','827ccb0eea8a706c4c34a16891f84e7b');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_mahindra`
--

DROP TABLE IF EXISTS `tech_mahindra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_mahindra` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_mahindra`
--

LOCK TABLES `tech_mahindra` WRITE;
/*!40000 ALTER TABLE `tech_mahindra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tech_mahindra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `willowtree`
--

DROP TABLE IF EXISTS `willowtree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `willowtree` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `willowtree`
--

LOCK TABLES `willowtree` WRITE;
/*!40000 ALTER TABLE `willowtree` DISABLE KEYS */;
/*!40000 ALTER TABLE `willowtree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zensar_technologies`
--

DROP TABLE IF EXISTS `zensar_technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zensar_technologies` (
  `s_name` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_email` varchar(255) DEFAULT NULL,
  `s_dob` varchar(255) DEFAULT NULL,
  `s_qualification` varchar(255) DEFAULT NULL,
  `s_expertise` varchar(255) DEFAULT NULL,
  `s_experience` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zensar_technologies`
--

LOCK TABLES `zensar_technologies` WRITE;
/*!40000 ALTER TABLE `zensar_technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `zensar_technologies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-30 23:06:38
