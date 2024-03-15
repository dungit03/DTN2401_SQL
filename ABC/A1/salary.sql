-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: salary
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `Id` int NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `Description` text,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Ky thuat','Phòng Admin','2023-10-01 12:10:10','2023-10-01 12:10:10'),(2,'HR','Phòng HR','2023-11-01 12:10:10','2023-11-01 12:10:10'),(3,'IT','Phòng IT','2023-11-01 12:10:10','2023-11-01 12:10:10'),(4,'DEV','Phòng phát triển','2023-12-30 11:33:42','2023-12-30 11:33:42');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Giám đốc','2023-01-01 00:00:00','2023-01-01 00:00:00'),(2,'Trưởng phòng','2023-01-01 00:00:00','2023-01-01 00:00:00'),(3,'Phó phòng','2023-01-01 00:00:00','2023-01-01 00:00:00'),(4,'Chuyên viên','2023-01-01 00:00:00','2023-01-01 00:00:00'),(5,'CTV','2023-01-01 00:00:00','2023-01-01 00:00:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `ID` int NOT NULL,
  `UserRoleId` int DEFAULT NULL,
  `Total_salary` double(12,2) DEFAULT NULL,
  `Month` varchar(20) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UserRoleId` (`UserRoleId`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`UserRoleId`) REFERENCES `user_role` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,1,5000.00,'02','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(2,1,6000.00,'03','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(3,1,3500.00,'04','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(4,1,4000.00,'05','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(5,1,4000.00,'06','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(6,1,3500.00,'07','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(7,2,900000.00,'02','2023','2023-12-30 16:27:50','2023-12-30 16:27:50'),(8,2,900000.00,'03','2023','2023-12-30 16:27:55','2023-12-30 16:27:55'),(9,2,80000.00,'04','2023','2023-12-30 16:28:04','2023-12-30 16:28:04'),(10,2,5000000.00,'05','2023','2023-12-30 16:28:07','2023-12-30 16:28:07'),(11,2,3232000.00,'06','2023','2023-12-30 16:28:09','2023-12-30 16:28:09'),(12,2,4234000.00,'07','2023','2023-12-30 16:28:10','2023-12-30 16:28:10'),(13,2,86750.00,'08','2023','2023-12-30 16:28:11','2023-12-30 16:28:11'),(14,4,3232000.00,'02','2023','2023-12-30 16:29:08','2023-12-30 16:29:08'),(15,4,86750.00,'03','2023','2023-12-30 16:29:10','2023-12-30 16:29:10'),(16,4,3232000.00,'04','2023','2023-12-30 16:29:11','2023-12-30 16:29:11'),(17,4,900000.00,'05','2023','2023-12-30 16:29:13','2023-12-30 16:29:13'),(18,4,3232000.00,'06','2023','2023-12-30 16:29:14','2023-12-30 16:29:14'),(19,5,4000.00,'07','2023','2023-12-30 16:29:23','2023-12-30 16:29:23'),(20,3,3232000.00,'02','2023','2023-12-30 16:30:04','2023-12-30 16:30:04'),(21,3,4000.00,'03','2023','2023-12-30 16:30:05','2023-12-30 16:30:05'),(22,3,4000.00,'04','2023','2023-12-30 16:30:06','2023-12-30 16:30:06'),(23,3,86750.00,'05','2023','2023-12-30 16:30:07','2023-12-30 16:30:07'),(24,3,4234000.00,'06','2023','2023-12-30 16:30:08','2023-12-30 16:30:08'),(25,3,5000000.00,'07','2023','2023-12-30 16:30:09','2023-12-30 16:30:09'),(26,3,80000.00,'08','2023','2023-12-30 16:30:11','2023-12-30 16:30:11'),(27,3,3232000.00,'09','2023','2023-12-30 16:30:20','2023-12-30 16:30:20');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_detail`
--

DROP TABLE IF EXISTS `salary_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_detail` (
  `Id` int NOT NULL,
  `SalaryId` int DEFAULT NULL,
  `SalaryDetailTypeId` int DEFAULT NULL,
  `operation` tinyint DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `SalaryId` (`SalaryId`),
  KEY `SalaryDetailTypeId` (`SalaryDetailTypeId`),
  CONSTRAINT `salary_detail_ibfk_1` FOREIGN KEY (`SalaryId`) REFERENCES `salary` (`ID`),
  CONSTRAINT `salary_detail_ibfk_2` FOREIGN KEY (`SalaryDetailTypeId`) REFERENCES `salary_detail_type` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_detail`
--

LOCK TABLES `salary_detail` WRITE;
/*!40000 ALTER TABLE `salary_detail` DISABLE KEYS */;
INSERT INTO `salary_detail` VALUES (1,1,1,1,5100),(2,1,2,2,100),(3,7,1,1,80000),(4,7,4,2,5000),(5,7,2,1,15000);
/*!40000 ALTER TABLE `salary_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_detail_type`
--

DROP TABLE IF EXISTS `salary_detail_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_detail_type` (
  `Id` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_detail_type`
--

LOCK TABLES `salary_detail_type` WRITE;
/*!40000 ALTER TABLE `salary_detail_type` DISABLE KEYS */;
INSERT INTO `salary_detail_type` VALUES (1,'Lương cứng','2023-12-30 16:32:14','2023-12-30 16:32:14'),(2,'Phụ cấp','2023-12-30 16:32:15','2023-12-30 16:32:15'),(3,'Thưởng','2023-12-30 16:32:16','2023-12-30 16:32:16'),(4,'Thuế TNCN','2023-12-30 16:32:16','2023-12-30 16:32:16');
/*!40000 ALTER TABLE `salary_detail_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_department`
--

DROP TABLE IF EXISTS `user_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_department` (
  `Id` int NOT NULL,
  `UserId` int DEFAULT NULL,
  `DepartmentId` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `FK_User` (`UserId`),
  KEY `FK_De` (`DepartmentId`),
  CONSTRAINT `FK_De` FOREIGN KEY (`DepartmentId`) REFERENCES `departments` (`Id`),
  CONSTRAINT `FK_User` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_department`
--

LOCK TABLES `user_department` WRITE;
/*!40000 ALTER TABLE `user_department` DISABLE KEYS */;
INSERT INTO `user_department` VALUES (1,1,1,'2023-01-01','2023-04-30','2023-11-01 12:10:10','2023-11-01 12:10:10'),(2,1,2,'2023-05-01','2023-12-31','2023-11-01 12:10:10','2023-11-01 12:10:10'),(3,2,3,'2023-01-01','2024-08-29','2023-12-30 16:23:37','2023-12-30 16:23:37'),(4,7,4,'2023-12-30','2024-02-22','2023-12-30 16:24:48','2023-12-30 16:24:48'),(5,8,2,'2022-12-25','2024-08-01','2023-12-30 16:25:10','2023-12-30 16:25:10');
/*!40000 ALTER TABLE `user_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `Id` int NOT NULL,
  `UserDpId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `UserDpId` (`UserDpId`),
  KEY `RoleId` (`RoleId`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`UserDpId`) REFERENCES `user_department` (`Id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,2,'2023-01-01','2023-04-30','2023-12-30 16:20:20','2023-12-30 16:20:20'),(2,1,1,'2023-05-01','2023-12-30','2023-12-30 16:20:20','2023-12-30 16:20:20'),(3,2,5,'2023-01-01','2023-02-28','2023-12-30 16:20:20','2023-12-30 16:20:20'),(4,2,4,'2023-03-01','2023-08-31','2023-12-30 16:20:20','2023-12-30 16:20:20'),(5,2,2,'2023-12-01','2024-01-31','2023-12-30 16:20:52','2023-12-30 16:20:52'),(6,5,1,'2023-01-01','2024-05-31','2023-12-30 16:25:39','2023-12-30 16:25:39'),(7,4,3,'2023-01-01','2024-04-27','2023-12-30 16:26:02','2023-12-30 16:26:02');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `EmployeeID` varchar(10) DEFAULT NULL,
  `Avatar` text,
  `DepartmentID` int DEFAULT NULL,
  `Gender` tinyint DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `BirthDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyễn Văn','Sơn','sonnv@gmail.com','0936972000',NULL,' ',1,1,20,'2023-12-01 12:10:10','2023-12-01 12:10:10',NULL),(2,'Nguyễn Văn','Tuấn','Tuannb@gmail.com','0933497000',NULL,NULL,2,1,48,'2023-11-01 12:10:10','2023-11-01 12:10:10',NULL),(3,'Lê','Hoàng','hoang@gmail.com','012345677',NULL,' ',1,1,18,'2023-12-01 12:10:10','2023-12-01 12:10:10',NULL),(4,'Phạm văn','Phong','Phong@gmail.com','0923232344',NULL,NULL,2,1,45,'2023-11-01 12:10:10','2023-11-01 12:10:10',NULL),(5,'Vũ Văn','Tùng','Tung@gmail.com','095335345',NULL,NULL,3,1,30,'2023-11-01 12:10:10','2023-11-01 12:10:10',NULL),(6,'Hoàng xuân','Bach','Bách@gmail.com','089535453',NULL,NULL,3,1,22,'2023-11-01 12:10:10','2023-11-01 12:10:10',NULL),(7,'Nguyễn Thị','Tuyết','Tuyết@gmail.com','0984245354353',NULL,NULL,2,2,45,'2023-11-01 12:10:10','2023-11-01 12:10:10',NULL),(8,'Cao thị','Ngọc','Ngọc@gmail.com','012445555',NULL,NULL,2,2,24,'2023-11-01 12:10:10','2023-11-01 12:10:10',NULL);
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

-- Dump completed on 2024-03-15 19:38:10
