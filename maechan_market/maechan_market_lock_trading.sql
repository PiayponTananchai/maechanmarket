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
-- Table structure for table `lock_trading`
--

DROP TABLE IF EXISTS `lock_trading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lock_trading` (
  `id` int NOT NULL AUTO_INCREMENT,
  `market_id` int DEFAULT NULL,
  `marketdate_id` int DEFAULT NULL,
  `annualmember_id` int DEFAULT NULL,
  `pay` int DEFAULT NULL,
  `walkIn` tinyint DEFAULT NULL,
  `clear` tinyint DEFAULT NULL,
  `charge_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_idx` (`marketdate_id`),
  KEY `annual_idx` (`annualmember_id`),
  KEY `market_idx` (`market_id`),
  KEY `cha_idx` (`charge_id`),
  CONSTRAINT `annual` FOREIGN KEY (`annualmember_id`) REFERENCES `annualmember` (`id`),
  CONSTRAINT `cha` FOREIGN KEY (`charge_id`) REFERENCES `charge` (`id`),
  CONSTRAINT `date` FOREIGN KEY (`marketdate_id`) REFERENCES `marketdate` (`id`),
  CONSTRAINT `mk` FOREIGN KEY (`market_id`) REFERENCES `market` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_trading`
--

LOCK TABLES `lock_trading` WRITE;
/*!40000 ALTER TABLE `lock_trading` DISABLE KEYS */;
INSERT INTO `lock_trading` VALUES (26,NULL,10,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,346,1,0,0,NULL),(28,NULL,NULL,345,1,0,0,NULL),(29,1,8,NULL,NULL,NULL,NULL,NULL),(30,1,4,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lock_trading` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 12:18:23
