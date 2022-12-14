-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `adminlist`
--

DROP TABLE IF EXISTS `adminlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlist` (
  `num` int NOT NULL AUTO_INCREMENT,
  `aId` char(20) NOT NULL,
  `aPw` char(20) DEFAULT NULL,
  `aName` char(20) DEFAULT NULL,
  `aEmail` char(20) DEFAULT NULL,
  `aPhone` char(20) DEFAULT NULL,
  `joinTM` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`aId`),
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlist`
--

LOCK TABLES `adminlist` WRITE;
/*!40000 ALTER TABLE `adminlist` DISABLE KEYS */;
INSERT INTO `adminlist` VALUES (1,'admin','1234','관리자','admin@naver.com','01000000000','2022-10-31 02:44:02');
/*!40000 ALTER TABLE `adminlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminwritetbl`
--

DROP TABLE IF EXISTS `adminwritetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminwritetbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `aName` char(30) NOT NULL,
  `asubject` char(50) NOT NULL,
  `acontent` text NOT NULL,
  `pos` int NOT NULL,
  `ref` int NOT NULL,
  `depth` int NOT NULL,
  `regTM` timestamp NOT NULL,
  `ip` char(30) NOT NULL,
  `readCnt` int NOT NULL,
  `oriFileName` char(30) DEFAULT NULL,
  `systemFileName` char(200) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminwritetbl`
--

LOCK TABLES `adminwritetbl` WRITE;
/*!40000 ALTER TABLE `adminwritetbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminwritetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `num` int NOT NULL AUTO_INCREMENT,
  `uId` char(30) NOT NULL,
  `pNum` int DEFAULT NULL,
  `pVolumn` int DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodstbl`
--

DROP TABLE IF EXISTS `goodstbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goodstbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `regId` char(20) NOT NULL,
  `pName` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pType` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `stockVolumn` int NOT NULL,
  `salesVolumn` int DEFAULT NULL,
  `oriPrice` int NOT NULL,
  `sellPrice` int NOT NULL,
  `sellLabel` char(5) NOT NULL,
  `content` text,
  `regTM` datetime NOT NULL,
  `readCnt` smallint unsigned NOT NULL,
  `oriFileName` char(255) DEFAULT NULL,
  `sysFileName` char(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodstbl`
--

LOCK TABLES `goodstbl` WRITE;
/*!40000 ALTER TABLE `goodstbl` DISABLE KEYS */;
INSERT INTO `goodstbl` VALUES (12,'admin','세라마이드탑투토워시 500ml','스킨케어',60,30,8900,7900,'1110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:18:49',0,'세라마이드탑투토워시 500ml.png','세라마이드탑투토워시 500ml.png',56982),(13,'admin','세라마이드 아토 버블워시 앤 샴푸 400ml','기타',40,20,12000,8900,'1110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:19:46',0,'세라마이드 아토 버블워시 앤 샴푸 400ml.png','세라마이드 아토 버블워시 앤 샴푸 400ml.png',40926),(14,'admin','톤업 선 SPF50+PA++ 50ml','스킨케어',40,15,13000,12000,'1110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:21:31',0,'톤업 선 SPF50+PA++ 50ml.jpg','톤업 선 SPF50+PA++ 50ml.jpg',13101),(15,'admin','세라마이드 무향 핸드크림 50ml','스킨케어',22,11,5800,5000,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:22:56',0,'세라마이드 무향 핸드크림 50ml.png','세라마이드 무향 핸드크림 50ml.png',14656),(16,'admin','수분가득 콜라겐 인텐스 크림 75m','스킨케어',30,5,17370,15300,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:25:08',0,'수분가득 콜라겐 인텐스 크림 75m.jpg','수분가득 콜라겐 인텐스 크림 75m.jpg',17509),(17,'admin','탄력 앰플밤 스틱','스킨케어',30,20,8500,7000,'0110','','2022-10-05 17:26:03',15,'탄력 앰플밤 스틱.jpg','탄력 앰플밤 스틱.jpg',27143),(18,'admin','시카딘 레스큐 워터 선스틱 19g','핸드크림',30,11,5000,3500,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:28:18',0,'데어 바디 핸드크림 30ml.jpg','데어 바디 핸드크림 30ml.jpg',16863),(19,'admin','세라마이드 무향 핸드크림 50ml','핸드크림',40,20,3000,2400,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:28:52',0,'세라마이드 무향 핸드크림 50ml.png','세라마이드 무향 핸드크림 50ml1.png',14656),(20,'admin','세라마이드탑투토워시 500ml','기타',30,22,5000,4500,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:29:40',0,'세라마이드탑투토워시 500ml.png','세라마이드탑투토워시 500ml1.png',56982),(21,'admin','수퍼 오프 클렌징 오일 305ml','기타',20,5,8400,7400,'0011','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:30:27',0,'수퍼 오프 클렌징 오일 305ml.jpg','수퍼 오프 클렌징 오일 305ml.jpg',15461),(22,'admin','수퍼 아쿠아 3종 기획세트','스킨케어',30,10,18700,14700,'1010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:31:26',0,'수퍼 아쿠아 3종 기획세트.jpg','수퍼 아쿠아 3종 기획세트.jpg',25288),(23,'admin','일리윤MD 레드이치 큐어밤 60ml','스킨케어',30,21,9000,9000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:32:13',0,'일리윤MD 레드이치 큐어밤 60ml.png','일리윤MD 레드이치 큐어밤 60ml.png',68706),(25,'admin','지구의 날 순정 토너','스킨케어',20,10,6000,6000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:33:46',2,'지구의 날 순정 토너.jpg','지구의 날 순정 토너.jpg',134935),(26,'admin','순정약산성 탑투토워시 400ml','',30,12,7000,5000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:34:46',0,'순정약산성 탑투토워시 400ml.jpg','순정약산성 탑투토워시 400ml.jpg',21051),(27,'admin','시카딘 레스큐 워터 선스틱 19g','기타',30,21,6000,5500,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:35:27',0,'시카딘 레스큐 워터 선스틱 19g.jpg','시카딘 레스큐 워터 선스틱 19g.jpg',20687),(28,'admin','순정 스킨케어 타이거 에너지 2종세트','스킨케어',40,9,13000,10000,'1010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:36:36',0,'순정 스킨케어 2종세트.jpg','순정 스킨케어 2종세트.jpg',24626),(29,'admin','카카오 썸머 피크닉 100ml','스킨케어',50,22,14000,14000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:37:17',0,'카카오 썸머 피크닉 100ml.jpg','카카오 썸머 피크닉 100ml.jpg',47010),(30,'admin','일리윤 세라마이드 아토 수딩젤','로션',40,10,13000,10000,'1010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:38:09',0,'일리윤 세라마이드 아토 수딩젤.png','일리윤 세라마이드 아토 수딩젤.png',44113),(31,'admin','순정 수분 베리어 크림 130ml','로션',40,15,12000,9000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:38:49',0,'순정 수분 베리어 크림 130ml.jpg','순정 수분 베리어 크림 130ml.jpg',12101),(32,'admin','★한정기획★ 로열허니세트','스킨케어',30,1,12000,7000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:40:36',0,'★한정기획★ 로열허니세트.png','★한정기획★ 로열허니세트1.png',158929),(33,'admin','골드 캐비어 콜라겐 플러스 스페셜 세트','스킨케어',10,5,84000,74000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:41:40',0,'골드 캐비어 콜라겐 플러스 스페셜 세트.png','골드 캐비어 콜라겐 플러스 스페셜 세트.png',138790),(34,'admin','골드 캐비어 콜라겐 플러스 아이크림 (30g)','스킨케어',50,11,32000,20000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:42:17',0,'골드 캐비어 콜라겐 플러스 아이크림 (30g).png','골드 캐비어 콜라겐 플러스 아이크림 (30g).png',36606),(35,'admin','워터사일런스 에센스 (50ml)','기타',20,10,12000,8000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:44:12',0,'워터사일런스 에센스 (50ml).jpg','워터사일런스 에센스 (50ml).jpg',57660),(36,'admin','비폴렌 리뉴 크림 50ml','스킨케어',20,5,11000,9900,'0011','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:47:38',0,'비폴렌 리뉴 크림 50ml.jpg','비폴렌 리뉴 크림 50ml.jpg',19524),(37,'admin','타임프라임리프팅 세럼 50ml','기타',20,5,13000,7800,'0110','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:48:29',0,'타임프라임리프팅 세럼 50ml.jpg','타임프라임리프팅 세럼 50ml.jpg',16586),(39,'admin','타임 레볼루션 더 퍼스트 에센스 크림 50ml','로션',25,8,20000,18000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:50:11',0,'타임 레볼루션 더 퍼스트 에센스 크림 50ml.jpg','타임 레볼루션 더 퍼스트 에센스 크림 50ml.jpg',21289),(41,'admin','비폴렌 리뉴 앰풀 스킨 150ml','스킨케어',20,11,12000,12000,'1001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:51:38',0,'비폴렌 리뉴 앰풀 스킨 150ml.jpg','비폴렌 리뉴 앰풀 스킨 150ml.jpg',22849),(43,'admin','워터사일런스 에센스 (50ml)','스킨케어',111,1,6000,6000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:54:50',0,'워터사일런스 에센스 (50ml).jpg','워터사일런스 에센스 (50ml)1.jpg',57660),(44,'admin','골드 캐비어 콜라겐 플러스 토너 (120ml)','스킨케어',30,11,13000,13000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:55:26',0,'골드 캐비어 콜라겐 플러스 토너 (120ml).png','골드 캐비어 콜라겐 플러스 토너 (120ml).png',44060),(45,'admin','마이 래쉬 세럼 9g 2개','기타',111,1,13000,7800,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:58:03',0,'554X554.jpg','554X554.jpg',35190),(46,'admin','플레이 컬러 아이즈 팔레트 굿 모닝 +립앤아이리무버','기타',22,1,12000,7000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 17:59:23',0,'554X554 (1).jpg','554X554 (1).jpg',9561),(47,'admin','모디 네일 리무버 플로럴','기타',30,20,10000,5500,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:00:21',0,'554X554 (2).jpg','554X554 (2).jpg',18008),(48,'admin','스윗 레이어 틴트','기타',30,20,8000,4000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:01:17',0,'554X554.png','554X554.png',109525),(49,'admin','그림자 쉐딩 브러쉬 02(코)','기타',30,12,4900,4900,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:02:04',0,'554X554 (3).jpg','554X554 (3).jpg',17158),(50,'admin','몬스터 클렌징 코튼 화장솜(408매입)','',30,1,8000,8000,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:02:53',0,'554X554 (4).jpg','554X554 (4).jpg',25070),(51,'admin','스윗 레이어 블러셔','기타',50,25,9500,5350,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:03:57',0,'554X554 (1).png','554X554 (1).png',119132),(52,'admin','에뛰드하우스 쁘띠비쥬 코튼스노우 바디워시 300ML','기타',30,15,7000,5000,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:04:49',0,'554X554 (5).jpg','554X554 (5).jpg',27128),(53,'admin','몬스터 클렌징 코튼 4개','기타',50,23,30000,16200,'0010','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:05:56',0,'554X554 (6).jpg','554X554 (6).jpg',28691),(54,'admin','에뛰드 살구 막대 글로스 1.9g','기타',30,11,2800,2800,'0001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed dui ex. Integer imperdiet, ex et condimentum pulvinar, leo nibh semper mi, et tempor ante dolor non ex. Aliquam erat volutpat. Nunc mattis ipsum sed odio vehicula, a blandit arcu aliquam. Donec id fringilla lacus, sed iaculis dolor. Nullam massa arcu, pellentesque eu maximus non, varius id sapien. Phasellus pellentesque pulvinar arcu id volutpat. Ut eleifend, mauris sed tincidunt auctor, urna arcu vehicula lectus, quis facilisis felis velit sit amet nulla. Nunc efficitur lectus in orci semper, sit amet finibus erat pharetra. Praesent molestie rutrum lorem eu fermentum.\r\n\r\nEtiam nec scelerisque diam. Phasellus dictum aliquam arcu eu gravida. Integer condimentum, nisl eu euismod bibendum, purus urna consequat quam, vel feugiat risus sapien eget dui. Phasellus lacinia quam id lacus venenatis, eget aliquam enim condimentum. Pellentesque sed augue ut nisi porttitor tincidunt. Praesent tempor placerat mauris et eleifend. Donec id lectus id quam consectetur tempor quis quis dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas dapibus, eros volutpat facilisis porta, elit quam tristique turpis, vitae posuere arcu nisl nec mauris. Praesent scelerisque cursus mauris, ullamcorper egestas turpis tristique ac. Donec eleifend id purus vulputate consectetur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','2022-10-05 18:06:42',0,'554X554 (7).jpg','554X554 (7).jpg',32488),(55,'admin','달링 틴트 아이스크림','기타',30,20,600,3700,'0010','공지사항\r\n구 제품 소진시 별도의 연락없이 리뉴얼된 신제품으로 발송됨을 \r\n알려드리며 이에 대한 문의는 판매자 고객센터에 연락바랍니다.\r\n이로 인한 반품 및 환불은 불가함을 알려드립니다.\r\n꾸안꾸 \r\n남자친구도 쌩얼 미녀인줄 알아요\r\n본래 피부인듯 자연스럽고 화사한 톤업 베이스로 \r\n깐달걀 피부 연출이 가능한 꾸안꾸 필수','2022-10-05 18:07:47',4,'554X554 (8).jpg','554X554 (8).jpg',40985),(56,'admin','컬 픽스 마스카라 리무버 80mlx3개','기타',20,11,10500,10500,'0001','#쉽고빠르게\r\n#부드럽게\r\n#말끔클렌징\r\n어떤순간에도 흔들림 없는 컬픽스 마스카라를 \r\n쉽고 빠르게 지워주는 강력 마스카라 리무버','2022-10-05 18:08:35',4,'554X554 (9).jpg','554X554 (9).jpg',41007),(57,'admin','수분가득 콜라겐 시트 마스크','기타',30,30,3000,3000,'0001','# 피부결이 거칠고 건조한 피부\r\n# 즉각적인 수분 충전이 필요한 피부\r\n# 피부 유수분 밸런스가 필요한 피부\r\n# 일상속 피부 스트레스로 인해 연약해진 피부','2022-10-05 18:09:56',6,'554X554 (10).jpg','554X554 (10).jpg',12972),(58,'admin','에뛰드 AC 클린업 약산성 클렌징 폼 (2개)','기타',40,20,15900,15900,'0001','용량 및 중량\r\n5.07 fl. oz. / 150 ml 2개\r\n\r\n제품 주요 사양 (피부타입, 색상(호, 번) 등)\r\n모든피부용\r\n\r\n사용기한 또는 개봉 후 사용기간 (개봉 후 사용기간을 기재할 경우에는 제조연월일을 병행표기)\r\n\r\n발송일로부터 1년 이내 제조상품/개봉 후 12개월\r\n\r\n사용방법\r\n적당량을 덜어 소량의 물로 충분히 거품을 낸 다음 얼굴에 마사지 하듯 부드럽게 문지른 후, 미온수로 깨끗이 씻어냅니다.','2022-10-05 18:11:00',4,'554X554 (11).jpg','554X554 (11).jpg',25309),(59,'admin','시어 버터 드라이 스킨 핸드 크림 30ml','핸드크림',50,30,12900,12900,'0001','혜택\r\n#4초핸드크림\r\n#원조시어버터\r\n#멜팅텍스쳐\r\n사용 부위\r\n건조함을 느낄 때 손에 수시로 발라 줍니다.\r\n록시땅 베스트 프리미엄 핸드케어\r\nNEW 록시땅 시어버터 핸드크림 150ML\r\n\r\n풍부한 시어버터의 보습, 글로벌 베스트 핸드크림!\r\n시어 나무의 너트에서 얻은 20%의 오리지널 시어버터가 풍부한 보습 장벽을 강화해주고, 유채꽃 프리바이오틱스가 함유되어 건강하고 탄력 있는 손으로 가꾸어줍니다.\r\n오리지널 시어버터의 파우더리 머스크향과 피부에 스며들 듯 녹아드는 감각적인 멜팅 텍스쳐가 특징입니다.\r\n\r\n오가닉 시어 버터\r\n지방산이 풍부한 시어 버터는 아프리카 여성들이 수세기 동안 뜨거운 날씨와 건조함으로부터 피부와 모발을 보호하는데 사용하였습니다. 피부를 진정시키는 것으로 알려진 오메가 6와 오메가 3가 풍부하게 함유되어있습니다.\r\n정제수 시어버터(20%) 글리세린 코코-카프릴레이트/카프레이트 세테아릴알코올 글리세릴스테아레이트 유채스테롤 아르간커넬오일 코코넛야자오일 해바라기씨오일 피이지-100스테아레이트 하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머 세테아레스-33 카프릴릴글라이콜 에틸헥실글리세린 솔비탄아이소스테아레이트 폴리솔베이트60 펜틸렌글라이콜 베타-글루칸 토코페롤 향료 리날룰 쿠마린 시트로넬올 알파-아이소메틸아이오논 리모넨 제라니올','2022-10-05 18:13:22',8,'554X554.jpg','554X5541.jpg',18555);
/*!40000 ALTER TABLE `goodstbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiretbl`
--

DROP TABLE IF EXISTS `inquiretbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiretbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `uid` char(20) NOT NULL,
  `uName` char(30) NOT NULL,
  `bbsPw` char(20) NOT NULL,
  `subject` char(50) NOT NULL,
  `qnaType` char(10) NOT NULL,
  `content` text NOT NULL,
  `pos` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `depth` int DEFAULT NULL,
  `regTM` timestamp NOT NULL,
  `ip` char(30) NOT NULL,
  `readCnt` int NOT NULL,
  `oriFileName` char(30) DEFAULT NULL,
  `systemFileName` char(200) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiretbl`
--

LOCK TABLES `inquiretbl` WRITE;
/*!40000 ALTER TABLE `inquiretbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiretbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberlist`
--

DROP TABLE IF EXISTS `memberlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberlist` (
  `num` int NOT NULL AUTO_INCREMENT,
  `uId` char(20) NOT NULL,
  `uPw` char(20) NOT NULL,
  `uName` char(20) NOT NULL,
  `uEmail` char(20) NOT NULL,
  `uPhone` char(20) NOT NULL,
  `uAge` int NOT NULL,
  `uAddr` char(100) DEFAULT NULL,
  `uGender` int NOT NULL,
  `uBirth` char(20) NOT NULL,
  `recoPerson` char(20) NOT NULL,
  `joinTM` timestamp NOT NULL,
  PRIMARY KEY (`uId`),
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberlist`
--

LOCK TABLES `memberlist` WRITE;
/*!40000 ALTER TABLE `memberlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oftentbl`
--

DROP TABLE IF EXISTS `oftentbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oftentbl` (
  `num` int NOT NULL AUTO_INCREMENT,
  `aId` char(30) NOT NULL,
  `aName` char(30) DEFAULT NULL,
  `subject` char(50) NOT NULL,
  `qnaType` char(10) NOT NULL,
  `content` text NOT NULL,
  `regTM` timestamp NOT NULL,
  `readCnt` int NOT NULL,
  `fileName` char(50) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oftentbl`
--

LOCK TABLES `oftentbl` WRITE;
/*!40000 ALTER TABLE `oftentbl` DISABLE KEYS */;
INSERT INTO `oftentbl` VALUES (1,'admin','관리자','배송기간은 얼마나 되나요?','주문/결제','평일 기준 오후 2시 이전 입금확인 분에 한해서 당일 출고 됩니다.\r\n\r\n-결제 완료 후 평일 기준 평균 2-3일정도 이내에 배송되며,\r\n주말/공휴일/명절 연휴가 포함되거나 이벤트로 인한 주문 폭주 시에는\r\n오후 2시 이전 입금확인 분이라고 하더라도 순차 출고 진행됩니다.\r\n\r\n-당일 발송한 제품은 빠르면 다음날 수령이 가능하시지만, \r\n택배사 자체적으로 물량이 폭주할 경우 조금 지연이 될 수 있는 점 너그러운 양해 부탁드리\r\n겠습니다.','2022-10-31 02:49:59',2,NULL,NULL),(2,'admin','관리자','회원탈퇴는 어떻게 하나요?','기타','로그인 후 마이페이 서브메뉴에\r\n회원탈퇴버튼을 클릭하신 이후 비밀번호 재확인 후 탈퇴가능합니다','2022-10-31 02:51:09',2,NULL,NULL),(3,'admin','관리자','반품 및 교환 신청 기준은 어떻게 되나요?','취소/반품/교환','교환.반품 가능 시점\r\n- 상품을 사용하지 않았거나 포장을 훼손하지 않으셨다면 7일이내에 반품을 신청하실 수 \r\n있습니다.\r\n-제품 사용 후 부작용이 생긴 경우: 내용물이 2/3이상 남아있으신 경우에 한해, 증상이 나\r\n타난 사진이나 진단서 첨부 시(진료비 및 약제비 등은 지원되지 않습니다)\r\n\r\n※ 상품 불량 및 트러블로 인한 교환 및 반품은 전자상거래법에 의거, 주문날짜로부터 30\r\n일이 지나면 반품 및 환불이 불가합니다.','2022-10-31 02:53:16',5,NULL,NULL),(4,'admin','관리자','주소 및 연락처 등 개인정보 변경은 어디서 할 수 있나요?','기타','홈페이지 로그인 하신 후 마이페이지에서 회원정보 수정으로 가능합니다','2022-10-31 03:03:08',0,NULL,NULL);
/*!40000 ALTER TABLE `oftentbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordergoods`
--

DROP TABLE IF EXISTS `ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordergoods` (
  `num` int NOT NULL AUTO_INCREMENT,
  `orderNum` int NOT NULL,
  `pNum` int NOT NULL,
  `pVolumn` int NOT NULL,
  `reviewStatus` char(1) DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordergoods`
--

LOCK TABLES `ordergoods` WRITE;
/*!40000 ALTER TABLE `ordergoods` DISABLE KEYS */;
INSERT INTO `ordergoods` VALUES (1,1,59,1,'0');
/*!40000 ALTER TABLE `ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewrecommed`
--

DROP TABLE IF EXISTS `reviewrecommed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewrecommed` (
  `num` int NOT NULL AUTO_INCREMENT,
  `totalReviewNum` int NOT NULL,
  `presserId` char(30) NOT NULL,
  `recommendTM` timestamp NOT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewrecommed`
--

LOCK TABLES `reviewrecommed` WRITE;
/*!40000 ALTER TABLE `reviewrecommed` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewrecommed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewtbl`
--

DROP TABLE IF EXISTS `reviewtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewtbl` (
  `totalReviewNum` int NOT NULL AUTO_INCREMENT,
  `orderNum` int DEFAULT NULL,
  `prodNum` int NOT NULL,
  `regId` char(30) NOT NULL,
  `regName` char(30) NOT NULL,
  `subject` char(50) NOT NULL,
  `content` text,
  `regDate` datetime NOT NULL,
  `ip` char(30) NOT NULL,
  `love` int DEFAULT NULL,
  `oriFileName` char(255) DEFAULT NULL,
  `sysFileName` char(255) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  UNIQUE KEY `totalReviewNum` (`totalReviewNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewtbl`
--

LOCK TABLES `reviewtbl` WRITE;
/*!40000 ALTER TABLE `reviewtbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uorder`
--

DROP TABLE IF EXISTS `uorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uorder` (
  `num` int NOT NULL AUTO_INCREMENT,
  `orderId` char(30) NOT NULL,
  `delivAdd` char(100) NOT NULL,
  `goodsPay` int NOT NULL,
  `delivFee` int NOT NULL,
  `totalPay` int NOT NULL,
  `payWay` char(30) NOT NULL,
  `ordetStatus` char(30) DEFAULT NULL,
  `orderTM` char(30) DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uorder`
--

LOCK TABLES `uorder` WRITE;
/*!40000 ALTER TABLE `uorder` DISABLE KEYS */;
INSERT INTO `uorder` VALUES (1,'sample','(63309)제주특별자치도 제주시 첨단로 242 102호 (영평동)',12900,3000,15900,'계좌이체','주문완료','2022-10-31 15:29:09');
/*!40000 ALTER TABLE `uorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `num` int NOT NULL AUTO_INCREMENT,
  `uId` char(30) NOT NULL,
  `pNum` int DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 14:58:43
