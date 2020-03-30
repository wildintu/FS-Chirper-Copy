-- MySQL dump 10.13  Distrib 5.7.29, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: chirpr
-- ------------------------------------------------------
-- Server version	5.7.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chirps`
--

DROP TABLE IF EXISTS `chirps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chirps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_userid` (`userid`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chirps`
--

LOCK TABLES `chirps` WRITE;
/*!40000 ALTER TABLE `chirps` DISABLE KEYS */;
INSERT INTO `chirps` VALUES (5,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(6,2,'randomtext','Birmingham','2020-03-18 17:58:28'),(7,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(8,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(9,4,'randomtext','Birmingham','2020-03-18 17:58:28'),(10,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(11,5,'randomtext','Birmingham','2020-03-18 17:58:28'),(12,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(13,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(14,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(15,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(16,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(17,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(18,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(19,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(20,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(21,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(22,10,'randomtext','Birmingham','2020-03-18 17:58:28'),(23,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(24,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(25,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(26,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(27,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(28,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(29,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(30,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(31,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(32,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(33,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(34,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(35,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(36,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(37,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(38,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(39,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(40,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(41,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(42,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(43,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(44,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(45,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(46,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(47,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(48,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(49,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(50,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(51,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(52,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(53,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(54,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(55,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(56,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(57,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(58,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(59,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(60,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(61,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(62,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(63,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(64,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(65,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(66,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(67,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(68,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(69,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(70,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(71,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(72,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(73,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(74,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(75,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(76,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(77,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(78,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(79,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(80,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(81,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(82,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(83,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(84,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(85,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(86,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(87,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(88,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(89,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(90,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(91,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(92,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(93,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(94,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(95,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(96,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(97,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(98,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(99,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(100,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(101,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(102,10,'randomtext','Birmingham','2020-03-18 17:58:29'),(103,10,'randomtext','Birmingham','2020-03-18 17:58:29');
/*!40000 ALTER TABLE `chirps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text,
  `_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Karen','abc@123.com','unicorn','2020-03-18 17:46:55'),(2,'Tom','abc@123.com','unicorn','2020-03-18 17:46:55'),(3,'Kim','abc@123.com','unicorn','2020-03-18 17:46:55'),(4,'Linda','abc@123.com','unicorn','2020-03-18 17:46:55'),(5,'Lisa','abc@123.com','unicorn','2020-03-18 17:46:55'),(6,'Larry','abc@123.com','unicorn','2020-03-18 17:46:55'),(7,'Susan','abc@123.com','unicorn','2020-03-18 17:46:55'),(8,'Amy','abc@123.com','unicorn','2020-03-18 17:46:55'),(9,'Jon','abc@123.com','unicorn','2020-03-18 17:46:55'),(10,'Bob','abc@123.com','unicorn','2020-03-18 17:46:55');
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

-- Dump completed on 2020-03-30 17:16:48
