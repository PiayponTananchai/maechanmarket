-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: maechan_market
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
-- Table structure for table `amphures`
--

DROP TABLE IF EXISTS `amphures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amphures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aname` varchar(45) NOT NULL,
  `province_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `province_idx` (`province_id`),
  CONSTRAINT `pv` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amphures`
--

LOCK TABLES `amphures` WRITE;
/*!40000 ALTER TABLE `amphures` DISABLE KEYS */;
INSERT INTO `amphures` VALUES (1,'เมืองเชียงราย',1),(2,'เวียงชัย',1),(3,'เชียงของ',1),(4,'เทิง',1),(5,'พาน',1),(6,'ป่าแดด',1),(7,'แม่จัน',1),(8,'เชียงแสน',1),(9,'แม่สาย',1),(10,'แม่สรวย',1),(11,'เวียงป่าเป้า',1),(12,'พญาเม็งราย',1),(13,'เวียงแก่น',1),(14,'ขุนตาล',1),(15,'แม่ฟ้าหลวง',1),(16,'แม่ลาว',1),(17,'เวียงเชียงรุ้ง',1),(18,'ดอยหลวง',1),(19,'ผาขาว',2),(20,'เมืองปัตตานี',3),(21,'เมืองภูเก็ต',4),(22,'คลองหลวง',5),(23,'เชียงคำ',6),(24,'แม่ริม',7),(25,'วัฒนา',8),(26,'ปลวกแดง',9),(27,'แม่แตง',7),(28,'ม่วงสามสิบ',10),(29,'เมืองชุมพร',11),(30,'บางแค',8),(31,'สันทราย',7),(32,'แกลง',9),(33,'เมือง',7),(34,'แม่อาย',7);
/*!40000 ALTER TABLE `amphures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 12:18:24
