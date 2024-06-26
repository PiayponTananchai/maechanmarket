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
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dname` varchar(45) NOT NULL,
  `amphure_id` int DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `amp_idx` (`amphure_id`),
  KEY `pvin_idx` (`province_id`),
  CONSTRAINT `amp` FOREIGN KEY (`amphure_id`) REFERENCES `amphures` (`id`),
  CONSTRAINT `pvin` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11124 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'เวียง',1,1),(2,'รอบเวียง',1,1),(3,'บ้านดู่',1,1),(4,'นางแล',1,1),(5,'แม่ข้าวต้ม',1,1),(6,'แม่ยาว',1,1),(7,'สันทราย',1,1),(8,'แม่กรณ์',1,1),(9,'ห้วยชมภู',1,1),(10,'ห้วยสัก',1,1),(11,'ริมกก',1,1),(12,'ดอยลาน',1,1),(13,'ป่าอ้อดอนชัย',1,1),(14,'ท่าสาย',1,1),(15,'ดอยฮาง',1,1),(16,'ท่าสุด',1,1),(17,'เวียงชัย',2,1),(18,'ผางาม',2,1),(19,'เวียงเหนือ	',2,1),(20,'ดอนศิลา',2,1),(21,'เมืองชุม',2,1),(22,'เวียง',3,1),(23,'	สถาน',3,1),(24,'	ครึ่ง',3,1),(25,'	บุญเรือง',3,1),(26,'ห้วยซ้อ',3,1),(27,'ศรีดอนชัย	',3,1),(28,'ริมโขง',3,1),(29,'เวียง',4,1),(30,'งิ้ว',4,1),(31,'	ปล้อง',4,1),(32,'	แม่ลอย',4,1),(33,'เชียงเคี่ยน',4,1),(34,'ตับเต่า',4,1),(35,'หงาว',4,1),(36,'สันทรายงาม',4,1),(37,'ศรีดอนไชย',4,1),(38,'หนองแรด',4,1),(39,'สันมะเค็ด',5,1),(40,'แม่อ้อ',5,1),(41,'	ธารทอง',5,1),(42,'	สันติสุข',5,1),(43,'	ดอยงาม',5,1),(44,'	หัวง้ม',5,1),(45,'เจริญเมือง	',5,1),(46,'ป่าหุ่ง',5,1),(47,'ม่วงคำ',5,1),(48,'ทรายขาว',5,1),(49,'สันกลาง',5,1),(50,'แม่เย็น',5,1),(51,'เมืองพาน',5,1),(52,'ทานตะวัน',5,1),(53,'เวียงห้าว',5,1),(54,'ป่าแดด',6,1),(55,'ป่าแงะ',6,1),(56,'สันมะค่า',6,1),(57,'โรงช้าง',6,1),(58,'ศรีโพธิ์เงิน',6,1),(59,'แม่จัน',7,1),(60,'	จันจว้า',7,1),(61,'	แม่คำ',7,1),(62,'	ป่าซาง',7,1),(63,'สันทราย',7,1),(64,'ท่าข้าวเปลือก',7,1),(65,'ป่าตึง',7,1),(66,'แม่ไร่',7,1),(67,'ศรีค้ำ',7,1),(68,'จันจว้าใต้',7,1),(69,'จอมสวรรค์',7,1),(70,'	เวียง',8,1),(71,'	ป่าสัก',8,1),(72,'บ้านแซว',8,1),(73,'ศรีดอนมูล',8,1),(74,'แม่เงิน',8,1),(75,'โยนก',8,1),(76,'แม่สาย',9,1),(77,'	ห้วยไคร้',9,1),(78,'เกาะช้าง',9,1),(79,'โป่งผา',9,1),(80,'ศรีเมืองชุม',9,1),(81,'เวียงพางคำ	',9,1),(82,'	บ้านด้าย',9,1),(83,'โป่งงาม',9,1),(84,'แม่สรวย',10,1),(85,'ป่าแดด',10,1),(86,'แม่พริก',10,1),(87,'ศรีถ้อย',10,1),(88,'ท่าก๊อ',10,1),(89,'วาวี',10,1),(90,'เจดีย์หลวง',10,1),(91,'สันสลี',11,1),(92,'เวียง',11,1),(93,'บ้านโป่ง',11,1),(94,'ป่างิ้ว',11,1),(95,'เวียงกาหลง	',11,1),(96,'แม่เจดีย์',11,1),(97,'แม่เจดีย์ใหม่	',11,1),(98,'แม่เปา',12,1),(99,'แม่ต๋ำ',12,1),(100,'	ไม้ยา',12,1),(101,'เม็งราย',12,1),(102,'	ตาดควัน',12,1),(103,'ม่วงยาย',13,1),(104,'ปอ',13,1),(105,'หล่ายงาว',13,1),(106,'ท่าข้าม',13,1),(107,'ต้า',14,1),(108,'ป่าตาล',14,1),(109,'ยางฮอม',14,1),(110,'เทอดไทย',15,1),(111,'แม่สลองใน',15,1),(112,'แม่สลองนอก',15,1),(113,'แม่ฟ้าหลวง',15,1),(114,'ดงมะดะ',16,1),(115,'จอมหมอกแก้ว	',16,1),(116,'บัวสลี',16,1),(117,'ป่าก่อดำ',16,1),(118,'โป่งแพร่',16,1),(119,'ทุ่งก่อ',17,1),(120,'ดงมหาวัน',17,1),(121,'ป่าซาง',17,1),(122,'โนนปอแดง',19,2),(123,'บานา',20,3),(124,'ฉลอง',21,4),(125,'คลองหนึ่ง',22,5),(126,'เวียง',23,6),(127,'โป่งแยง',24,7),(128,'คลองตันเหนือ',25,8),(129,'ปลวกแดง',26,9),(130,'บ้านช้าง',27,7),(131,'หนองเมือง',28,10),(132,'บ้านนา',29,11),(133,'หลักสอง',30,8),(134,'หนองจ๊อม',31,7),(135,'กองดิน',32,9),(136,'แม่เหียะ',33,7),(137,'แม่นาวาง',34,7);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
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
