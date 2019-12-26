CREATE DATABASE  IF NOT EXISTS `vk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vk`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_closed` tinyint(1) DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'dolore','2019-12-25 23:54:15',NULL,NULL),(2,'quisquam','2019-12-25 23:54:15',NULL,NULL),(3,'eaque','2019-12-25 23:54:15',1,'2019-12-26 00:04:44'),(4,'officiis','2019-12-25 23:54:15',NULL,NULL),(5,'deleniti','2019-12-25 23:54:15',NULL,NULL),(6,'assumenda','2019-12-25 23:54:15',NULL,NULL),(7,'rerum','2019-12-25 23:54:15',NULL,NULL),(8,'fugiat','2019-12-25 23:54:15',NULL,NULL),(9,'quia','2019-12-25 23:54:15',NULL,NULL),(10,'porro','2019-12-25 23:54:15',NULL,NULL),(11,'qui','2019-12-25 23:54:15',NULL,NULL),(12,'vel','2019-12-25 23:54:15',NULL,NULL),(13,'voluptates','2019-12-25 23:54:15',NULL,NULL),(14,'ut','2019-12-25 23:54:15',1,'2019-12-26 00:04:44'),(15,'est','2019-12-25 23:54:15',NULL,NULL),(16,'similique','2019-12-25 23:54:15',NULL,NULL),(17,'voluptatum','2019-12-25 23:54:15',NULL,NULL),(18,'occaecati','2019-12-25 23:54:15',NULL,NULL),(19,'aut','2019-12-25 23:54:15',NULL,NULL),(20,'id','2019-12-25 23:54:15',NULL,NULL),(21,'et','2019-12-25 23:54:15',NULL,NULL),(22,'eum','2019-12-25 23:54:15',NULL,NULL),(23,'ipsum','2019-12-25 23:54:15',NULL,NULL),(24,'eius','2019-12-25 23:54:15',NULL,NULL),(25,'totam','2019-12-25 23:54:15',NULL,NULL),(26,'quam','2019-12-25 23:54:15',NULL,NULL),(27,'optio','2019-12-25 23:54:15',1,'2019-12-26 00:04:44'),(28,'officia','2019-12-25 23:54:15',NULL,NULL),(29,'architecto','2019-12-25 23:54:15',NULL,NULL),(30,'suscipit','2019-12-25 23:54:15',NULL,NULL),(31,'in','2019-12-25 23:54:15',NULL,NULL),(32,'nobis','2019-12-25 23:54:15',NULL,NULL),(33,'fugit','2019-12-25 23:54:15',NULL,NULL),(34,'eos','2019-12-25 23:54:15',NULL,NULL),(35,'laudantium','2019-12-25 23:54:15',NULL,NULL),(36,'ex','2019-12-25 23:54:15',NULL,NULL),(37,'omnis','2019-12-25 23:54:15',NULL,NULL),(38,'explicabo','2019-12-25 23:54:15',NULL,NULL),(39,'ducimus','2019-12-25 23:54:15',NULL,NULL),(40,'numquam','2019-12-25 23:54:15',NULL,NULL),(41,'impedit','2019-12-25 23:54:15',NULL,NULL),(42,'mollitia','2019-12-25 23:54:15',NULL,NULL),(43,'inventore','2019-12-25 23:54:15',NULL,NULL),(44,'quas','2019-12-25 23:54:15',NULL,NULL),(45,'illum','2019-12-25 23:54:15',NULL,NULL),(46,'dignissimos','2019-12-25 23:54:15',NULL,NULL),(47,'expedita','2019-12-25 23:54:15',NULL,NULL),(48,'voluptatibus','2019-12-25 23:54:15',NULL,NULL),(49,'sit','2019-12-25 23:54:15',NULL,NULL),(50,'non','2019-12-25 23:54:15',1,'2019-12-26 00:04:44');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,57,NULL,NULL),(1,95,NULL,NULL),(2,92,NULL,NULL),(3,100,1,NULL),(4,44,NULL,NULL),(4,59,NULL,NULL),(4,88,NULL,NULL),(5,49,NULL,NULL),(5,95,NULL,NULL),(8,27,NULL,NULL),(8,43,NULL,NULL),(8,78,NULL,NULL),(9,21,NULL,NULL),(9,24,NULL,1),(9,39,NULL,NULL),(9,60,NULL,NULL),(9,71,NULL,NULL),(9,98,NULL,NULL),(11,11,NULL,NULL),(11,82,NULL,NULL),(12,21,NULL,NULL),(13,74,1,NULL),(15,46,NULL,NULL),(15,99,NULL,NULL),(16,27,NULL,NULL),(17,98,NULL,NULL),(18,12,1,NULL),(18,67,NULL,NULL),(18,72,NULL,NULL),(18,83,NULL,NULL),(19,2,NULL,NULL),(19,81,NULL,NULL),(20,15,NULL,NULL),(20,59,NULL,NULL),(20,66,NULL,NULL),(21,5,NULL,NULL),(21,88,NULL,NULL),(22,1,1,NULL),(23,49,NULL,NULL),(23,52,NULL,NULL),(23,81,NULL,NULL),(23,86,NULL,NULL),(24,56,1,NULL),(24,59,NULL,NULL),(24,62,NULL,NULL),(25,22,NULL,NULL),(26,27,NULL,NULL),(26,41,NULL,NULL),(26,77,NULL,NULL),(27,91,NULL,NULL),(27,94,NULL,NULL),(28,1,1,NULL),(28,9,NULL,NULL),(28,24,NULL,1),(28,30,NULL,NULL),(28,32,NULL,NULL),(29,51,NULL,NULL),(30,76,NULL,NULL),(31,100,1,NULL),(32,47,NULL,NULL),(33,43,NULL,NULL),(33,64,NULL,NULL),(33,77,NULL,NULL),(34,13,NULL,NULL),(34,52,NULL,NULL),(34,67,NULL,NULL),(34,68,NULL,NULL),(34,72,NULL,NULL),(34,96,NULL,NULL),(35,48,NULL,NULL),(35,68,NULL,NULL),(37,82,NULL,NULL),(39,7,NULL,1),(40,10,NULL,NULL),(40,21,NULL,NULL),(41,9,NULL,NULL),(41,82,NULL,NULL),(42,27,NULL,NULL),(42,59,NULL,NULL),(43,25,NULL,NULL),(43,50,NULL,NULL),(44,50,NULL,NULL),(44,92,NULL,NULL),(45,17,NULL,NULL),(45,25,NULL,NULL),(45,97,NULL,NULL),(45,98,NULL,NULL),(46,24,NULL,1),(46,63,NULL,NULL),(46,89,NULL,NULL),(47,26,NULL,NULL),(47,33,NULL,NULL),(47,39,NULL,NULL),(47,75,NULL,1),(48,18,NULL,NULL),(48,42,NULL,NULL),(48,70,NULL,NULL),(49,7,NULL,1),(50,68,NULL,NULL),(50,78,NULL,NULL);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (2,21,3,'2006-11-04 17:07:14','2006-12-25 20:06:14'),(2,44,5,'1995-11-09 16:16:26','1996-01-02 13:40:26'),(4,47,8,'1979-01-13 04:12:32','1979-02-28 19:34:32'),(4,49,1,'1985-03-10 08:12:45','1985-03-12 10:11:45'),(5,37,3,'1998-02-26 07:04:37','1998-03-07 16:10:37'),(7,11,10,'1979-10-01 07:46:40','1979-11-10 23:19:40'),(7,73,3,'1972-08-13 16:31:28','1972-09-18 21:39:28'),(9,12,3,'1998-11-26 07:03:10','1999-01-24 10:01:10'),(14,39,4,'1976-12-05 00:06:30','1977-01-22 02:12:30'),(14,54,10,'1987-05-01 03:02:18','1987-07-03 04:37:18'),(16,88,9,'1991-10-17 14:39:30','1991-11-18 18:55:30'),(19,7,5,'2008-02-05 22:57:35','2008-03-18 02:11:35'),(21,68,9,'1998-07-01 10:54:54','1998-08-10 03:36:54'),(21,74,7,'2011-03-13 09:45:03','2011-03-19 00:52:03'),(21,77,6,'2016-05-06 17:19:05','2016-06-23 16:09:05'),(22,69,1,'1998-04-04 04:11:14','1998-04-18 16:59:14'),(22,80,5,'1984-02-13 06:28:16','1984-04-20 23:16:16'),(23,80,1,'1986-09-02 04:46:13','1986-09-19 07:44:13'),(23,81,1,'2006-02-06 08:31:27','2006-02-27 18:14:27'),(25,28,1,'1983-06-13 18:57:38','1983-08-08 10:37:38'),(25,60,10,'2003-01-16 20:41:05','2003-01-22 13:53:05'),(25,62,6,'2016-01-20 02:46:20','2016-01-20 15:06:20'),(26,47,2,'2012-01-05 04:37:19','2012-02-29 01:22:19'),(26,63,1,'1989-07-06 16:34:05','1989-09-09 03:16:05'),(27,44,7,'2003-07-18 18:32:18','2003-08-06 12:29:18'),(27,85,4,'2015-12-21 20:15:43','2016-01-30 03:11:43'),(29,7,7,'1983-06-18 00:01:49','1983-06-19 07:32:49'),(30,67,3,'1992-07-03 04:36:29','1992-07-30 18:42:29'),(30,90,5,'1999-06-30 09:23:10','1999-09-02 22:40:10'),(31,15,6,'1981-10-10 10:14:43','1981-11-11 02:20:43'),(31,20,2,'2009-08-15 08:23:45','2009-09-18 11:43:45'),(32,37,4,'1988-02-28 16:42:17','1988-03-05 22:22:17'),(32,63,4,'1982-09-29 18:10:01','1982-12-06 09:50:01'),(34,37,8,'1994-09-17 19:23:06','1994-10-29 14:04:06'),(34,39,7,'1981-11-02 16:37:39','1981-11-08 15:02:39'),(35,27,10,'2015-09-18 22:12:42','2015-11-01 03:32:42'),(35,87,9,'1984-06-12 10:37:30','1984-08-10 20:40:30'),(36,22,4,'2010-04-15 06:02:35','2010-05-13 18:57:35'),(36,35,1,'2009-12-25 01:27:32','2010-01-27 22:31:32'),(36,92,3,'1973-09-02 20:15:20','1973-09-17 04:11:20'),(37,39,10,'1984-03-31 00:08:48','1984-05-09 11:14:48'),(38,6,2,'2013-10-15 02:54:27','2013-10-30 13:17:27'),(38,56,8,'1985-10-18 01:31:23','1985-11-15 06:49:23'),(39,20,3,'1979-05-08 12:37:53','1979-06-02 21:15:53'),(39,88,3,'1975-07-24 16:49:12','1975-09-04 20:06:12'),(43,19,4,'1987-10-30 23:33:58','1988-01-04 03:24:58'),(44,60,10,'1972-03-25 12:54:58','1972-05-25 00:55:58'),(44,62,10,'2003-12-11 05:42:38','2004-01-17 19:37:38'),(44,100,9,'2011-02-10 13:53:21','2011-02-16 23:21:21'),(45,4,4,'2007-08-03 09:56:58','2007-09-30 12:51:58'),(45,64,10,'1976-11-11 07:27:51','1977-01-13 09:38:51'),(46,29,1,'1984-10-05 21:17:36','1984-10-08 02:08:36'),(46,74,4,'1988-06-07 14:56:50','1988-07-07 16:37:50'),(47,100,5,'2007-04-02 02:24:06','2007-04-06 22:56:06'),(49,30,4,'1992-09-04 04:53:54','1992-09-07 17:11:54'),(51,77,5,'2008-03-24 05:19:18','2008-03-27 05:09:18'),(52,17,1,'2011-05-29 04:22:40','2011-06-02 14:41:40'),(58,47,1,'1989-09-08 06:24:32','1989-09-21 10:27:32'),(58,90,2,'2016-09-06 22:42:16','2016-10-29 11:59:16'),(59,56,6,'1970-11-28 21:53:52','1970-12-13 20:11:52'),(60,29,2,'1971-07-27 04:44:27','1971-09-21 01:40:27'),(61,86,1,'2006-04-04 22:07:42','2006-05-01 03:52:42'),(62,25,8,'1972-11-19 23:08:48','1972-12-22 23:44:48'),(63,17,9,'1986-01-08 07:29:40','1986-01-25 06:34:40'),(64,32,1,'2017-11-03 16:31:07','2017-12-28 20:47:07'),(64,64,4,'1977-02-21 14:24:06','1977-03-10 06:30:06'),(66,24,10,'2005-12-23 13:42:05','2006-02-18 06:43:05'),(67,36,5,'1990-05-11 18:42:13','1990-06-05 23:29:13'),(67,54,4,'1974-05-10 10:23:30','1974-06-04 17:55:30'),(67,72,7,'1991-09-25 19:34:08','1991-11-15 18:52:08'),(68,68,3,'2003-08-05 01:28:07','2003-09-14 02:02:07'),(69,49,3,'1989-03-08 04:52:18','1989-04-24 09:49:18'),(71,45,7,'2005-01-02 00:40:56','2005-02-17 12:59:56'),(75,54,2,'1984-12-27 13:21:53','1985-01-18 01:27:53'),(76,3,1,'2015-04-05 12:43:49','2015-05-12 22:53:49'),(76,10,6,'2017-02-11 06:40:27','2017-04-05 10:34:27'),(76,32,7,'2003-11-17 22:15:52','2003-12-02 13:53:52'),(77,85,7,'2012-08-17 06:35:39','2012-10-08 22:21:39'),(78,82,4,'1996-06-22 02:16:25','1996-07-03 02:15:25'),(78,84,6,'1990-08-12 11:50:41','1990-09-17 09:44:41'),(78,94,1,'1982-03-03 08:53:38','1982-03-11 01:05:38'),(79,86,5,'1984-02-27 21:19:23','1984-02-27 23:18:23'),(80,12,1,'1997-06-16 12:17:17','1997-08-02 08:16:17'),(82,65,1,'1982-10-30 05:28:00','1982-11-24 19:25:00'),(82,90,3,'1993-11-01 16:33:43','1993-12-28 12:59:43'),(83,55,8,'2010-03-17 09:28:36','2010-05-25 00:26:36'),(83,99,3,'1976-05-22 15:12:04','1976-06-25 07:26:04'),(84,7,10,'2019-08-08 07:41:44','2019-09-09 06:35:44'),(84,10,8,'1998-04-10 09:53:35','1998-06-08 03:41:35'),(84,25,3,'1974-09-26 17:11:07','1974-11-24 16:10:07'),(85,18,8,'2006-11-03 08:49:09','2006-12-22 11:40:09'),(86,21,10,'2015-07-17 11:39:23','2015-09-24 04:55:23'),(86,76,4,'2005-06-11 08:58:25','2005-08-07 17:23:25'),(88,78,3,'1975-03-24 00:34:28','1975-04-04 04:12:28'),(91,98,9,'1975-02-21 04:40:10','1975-03-15 18:56:10'),(91,100,8,'1996-08-14 14:25:26','1996-08-24 16:08:26'),(93,45,2,'1998-12-28 09:42:48','1999-02-18 10:10:48'),(96,48,5,'1982-09-26 02:44:26','1982-10-17 15:56:26'),(97,34,8,'1996-06-28 05:53:26','1996-07-19 09:06:26'),(99,32,3,'1980-09-17 01:54:21','1980-10-28 02:21:21');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (10,'animi'),(8,'consequatur'),(1,'cupiditate'),(4,'dicta'),(9,'in'),(6,'laborum'),(5,'pariatur'),(2,'qui'),(3,'quia'),(7,'voluptatem');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,3,83,'optio',1,'{\"optio\": \"1\"}','1994-05-04 00:24:40','2019-12-26 00:04:55'),(2,3,65,'soluta',1,'{\"soluta\": \"1\"}','1975-08-12 04:55:25','2019-12-26 00:04:55'),(3,1,76,'magni',6696761,'{\"magni\": \"6696761\"}','1976-04-15 13:03:37','2019-12-26 00:04:55'),(4,3,85,'quos',498210149,'{\"quos\": \"498210149\"}','1971-10-23 15:05:19','2019-12-26 00:04:55'),(5,2,98,'reprehenderit',1,'{\"reprehenderit\": \"1\"}','1979-09-05 10:36:32','2019-12-26 00:04:55'),(6,1,31,'dolorem',81675089,'{\"dolorem\": \"81675089\"}','1991-07-11 01:38:48','2019-12-26 00:04:55'),(7,2,62,'quod',5057,'{\"quod\": \"5057\"}','1981-02-17 10:20:01','2019-12-26 00:04:55'),(8,2,18,'consequatur',899,'{\"consequatur\": \"899\"}','1974-10-29 17:52:20','2019-12-26 00:04:55'),(9,1,100,'dolores',398,'{\"dolores\": \"398\"}','1976-11-26 05:24:31','2019-12-26 00:04:55'),(10,1,49,'blanditiis',365,'{\"blanditiis\": \"365\"}','1989-04-08 12:59:42','2019-12-26 00:04:55'),(11,2,42,'fugit',7647,'{\"fugit\": \"7647\"}','1993-07-02 13:37:29','2019-12-26 00:04:55'),(12,2,65,'assumenda',3,'{\"assumenda\": \"3\"}','1986-10-23 11:04:54','2019-12-26 00:04:55'),(13,1,96,'et',96638213,'{\"et\": \"96638213\"}','1987-11-01 18:54:32','2019-12-26 00:04:55'),(14,2,86,'velit',9411276,'{\"velit\": \"9411276\"}','1980-05-23 08:43:32','2019-12-26 00:04:55'),(15,1,40,'et',69496454,'{\"et\": \"69496454\"}','1980-12-23 03:31:17','2019-12-26 00:04:55'),(16,1,44,'aliquam',1,'{\"aliquam\": \"1\"}','1985-01-15 06:50:37','2019-12-26 00:04:55'),(17,3,100,'qui',855552616,'{\"qui\": \"855552616\"}','1984-01-12 14:22:18','2019-12-26 00:04:55'),(18,3,64,'quia',53065190,'{\"quia\": \"53065190\"}','2003-05-16 17:31:40','2019-12-26 00:04:55'),(19,3,22,'recusandae',9,'{\"recusandae\": \"9\"}','1983-02-05 13:39:48','2019-12-26 00:04:55'),(20,1,18,'hic',1798,'{\"hic\": \"1798\"}','1987-07-10 17:12:46','2019-12-26 00:04:55'),(21,2,23,'dolor',773124758,'{\"dolor\": \"773124758\"}','1987-08-20 12:38:01','2019-12-26 00:04:55'),(22,1,59,'quidem',8996199,'{\"quidem\": \"8996199\"}','1981-02-18 10:23:40','2019-12-26 00:04:55'),(23,2,26,'voluptas',908,'{\"voluptas\": \"908\"}','2002-10-09 00:11:52','2019-12-26 00:04:55'),(24,3,51,'cupiditate',186046913,'{\"cupiditate\": \"186046913\"}','1978-01-29 12:28:14','2019-12-26 00:04:55'),(25,1,78,'incidunt',9,'{\"incidunt\": \"9\"}','1982-11-22 06:34:40','2019-12-26 00:04:55'),(26,3,37,'possimus',9,'{\"possimus\": \"9\"}','1977-09-18 22:53:24','2019-12-26 00:04:55'),(27,2,50,'sunt',639231,'{\"sunt\": \"639231\"}','1997-01-28 20:31:02','2019-12-26 00:04:55'),(28,2,39,'et',8,'{\"et\": \"8\"}','1991-08-01 13:48:55','2019-12-26 00:04:55'),(29,3,45,'facilis',197686774,'{\"facilis\": \"197686774\"}','1970-01-22 21:57:37','2019-12-26 00:04:55'),(30,2,6,'rerum',2977,'{\"rerum\": \"2977\"}','1994-11-11 08:17:36','2019-12-26 00:04:55'),(31,2,95,'autem',2790502,'{\"autem\": \"2790502\"}','2014-09-29 17:24:07','2019-12-26 00:04:55'),(32,3,55,'animi',27154776,'{\"animi\": \"27154776\"}','1985-06-26 19:13:16','2019-12-26 00:04:55'),(33,2,90,'dignissimos',20127,'{\"dignissimos\": \"20127\"}','1982-07-05 14:56:56','2019-12-26 00:04:55'),(34,3,87,'adipisci',874,'{\"adipisci\": \"874\"}','1991-10-07 14:12:10','2019-12-26 00:04:55'),(35,1,61,'voluptas',9250,'{\"voluptas\": \"9250\"}','2008-05-25 07:43:12','2019-12-26 00:04:55'),(36,2,47,'tenetur',1,'{\"tenetur\": \"1\"}','1971-09-25 06:03:42','2019-12-26 00:04:55'),(37,1,49,'accusamus',244680114,'{\"accusamus\": \"244680114\"}','1994-07-31 08:50:13','2019-12-26 00:04:55'),(38,2,5,'voluptas',51193552,'{\"voluptas\": \"51193552\"}','1970-04-22 01:10:07','2019-12-26 00:04:55'),(39,2,78,'sit',5242,'{\"sit\": \"5242\"}','2006-02-27 13:22:40','2019-12-26 00:04:55'),(40,2,74,'natus',6,'{\"natus\": \"6\"}','1975-07-19 06:12:48','2019-12-26 00:04:55'),(41,2,36,'excepturi',54640,'{\"excepturi\": \"54640\"}','1990-02-24 01:17:39','2019-12-26 00:04:55'),(42,2,58,'pariatur',7403,'{\"pariatur\": \"7403\"}','1975-05-04 21:37:59','2019-12-26 00:04:55'),(43,2,80,'est',17763201,'{\"est\": \"17763201\"}','2001-12-11 03:57:46','2019-12-26 00:04:55'),(44,3,25,'voluptas',223,'{\"voluptas\": \"223\"}','2003-01-30 18:09:16','2019-12-26 00:04:55'),(45,1,83,'aut',43826,'{\"aut\": \"43826\"}','1988-08-08 11:02:10','2019-12-26 00:04:55'),(46,3,42,'beatae',1,'{\"beatae\": \"1\"}','1987-05-24 21:45:45','2019-12-26 00:04:55'),(47,3,59,'officia',8,'{\"officia\": \"8\"}','1999-01-25 15:55:57','2019-12-26 00:04:55'),(48,1,71,'dolorum',881823488,'{\"dolorum\": \"881823488\"}','1972-11-18 13:02:43','2019-12-26 00:04:55'),(49,1,76,'quo',1,'{\"quo\": \"1\"}','1974-05-27 17:01:22','2019-12-26 00:04:55'),(50,2,67,'at',3364,'{\"at\": \"3364\"}','1972-07-01 01:20:26','2019-12-26 00:04:55'),(51,3,8,'reiciendis',3037,'{\"reiciendis\": \"3037\"}','1996-10-13 06:15:00','2019-12-26 00:04:55'),(52,1,37,'atque',1,'{\"atque\": \"1\"}','1973-09-08 09:35:38','2019-12-26 00:04:55'),(53,2,61,'quia',1,'{\"quia\": \"1\"}','1991-11-17 21:19:55','2019-12-26 00:04:55'),(54,2,95,'fugit',298254814,'{\"fugit\": \"298254814\"}','1976-10-27 08:29:21','2019-12-26 00:04:55'),(55,1,91,'quia',3733,'{\"quia\": \"3733\"}','1991-01-07 07:05:22','2019-12-26 00:04:55'),(56,2,68,'ut',5383,'{\"ut\": \"5383\"}','1986-01-04 03:56:39','2019-12-26 00:04:55'),(57,3,67,'quas',21,'{\"quas\": \"21\"}','1985-04-13 09:31:20','2019-12-26 00:04:55'),(58,1,32,'non',556652843,'{\"non\": \"556652843\"}','1984-09-06 05:26:51','2019-12-26 00:04:55'),(59,2,55,'molestiae',87991020,'{\"molestiae\": \"87991020\"}','1992-01-15 05:51:01','2019-12-26 00:04:55'),(60,3,82,'qui',33,'{\"qui\": \"33\"}','1971-02-22 14:20:12','2019-12-26 00:04:55'),(61,3,44,'culpa',8762803,'{\"culpa\": \"8762803\"}','1986-04-18 06:03:34','2019-12-26 00:04:55'),(62,3,74,'minus',49767158,'{\"minus\": \"49767158\"}','1999-08-29 00:25:18','2019-12-26 00:04:55'),(63,2,37,'quam',9,'{\"quam\": \"9\"}','1982-03-04 20:20:04','2019-12-26 00:04:55'),(64,1,64,'ea',268678,'{\"ea\": \"268678\"}','2011-03-23 13:12:15','2019-12-26 00:04:55'),(65,2,9,'sit',278,'{\"sit\": \"278\"}','1986-01-24 10:14:11','2019-12-26 00:04:55'),(66,1,51,'labore',1,'{\"labore\": \"1\"}','1994-10-10 22:01:48','2019-12-26 00:04:55'),(67,2,26,'nam',56621,'{\"nam\": \"56621\"}','1979-04-26 01:20:19','2019-12-26 00:04:55'),(68,1,78,'voluptas',1,'{\"voluptas\": \"1\"}','2016-02-24 05:00:03','2019-12-26 00:04:55'),(69,3,12,'explicabo',88407,'{\"explicabo\": \"88407\"}','1989-11-26 01:18:20','2019-12-26 00:04:55'),(70,3,26,'voluptatum',853325,'{\"voluptatum\": \"853325\"}','1974-11-04 08:35:15','2019-12-26 00:04:55'),(71,2,95,'reprehenderit',647086,'{\"reprehenderit\": \"647086\"}','1972-03-16 00:45:10','2019-12-26 00:04:55'),(72,2,93,'laudantium',602796,'{\"laudantium\": \"602796\"}','1974-01-14 08:34:46','2019-12-26 00:04:55'),(73,2,83,'voluptatem',6113,'{\"voluptatem\": \"6113\"}','1973-04-28 17:19:19','2019-12-26 00:04:55'),(74,3,33,'consectetur',1,'{\"consectetur\": \"1\"}','2005-09-26 03:42:12','2019-12-26 00:04:55'),(75,2,17,'inventore',18,'{\"inventore\": \"18\"}','1983-04-29 11:19:10','2019-12-26 00:04:55'),(76,2,86,'necessitatibus',2387,'{\"necessitatibus\": \"2387\"}','1973-02-23 23:08:52','2019-12-26 00:04:55'),(77,2,77,'vel',5607,'{\"vel\": \"5607\"}','1980-06-13 15:09:25','2019-12-26 00:04:55'),(78,2,26,'ullam',67,'{\"ullam\": \"67\"}','1978-02-22 19:41:54','2019-12-26 00:04:55'),(79,2,100,'et',786,'{\"et\": \"786\"}','1970-12-01 05:53:15','2019-12-26 00:04:55'),(80,2,20,'et',366583032,'{\"et\": \"366583032\"}','1983-12-20 00:55:20','2019-12-26 00:04:55'),(81,1,98,'dignissimos',5,'{\"dignissimos\": \"5\"}','1979-06-06 10:42:50','2019-12-26 00:04:55'),(82,2,32,'est',1787752,'{\"est\": \"1787752\"}','2008-07-23 07:40:04','2019-12-26 00:04:55'),(83,2,64,'occaecati',63,'{\"occaecati\": \"63\"}','1984-04-26 22:48:58','2019-12-26 00:04:55'),(84,1,24,'saepe',51175695,'{\"saepe\": \"51175695\"}','1974-03-07 23:25:03','2019-12-26 00:04:55'),(85,2,29,'praesentium',1085,'{\"praesentium\": \"1085\"}','1985-11-26 05:58:57','2019-12-26 00:04:55'),(86,1,70,'vel',7107077,'{\"vel\": \"7107077\"}','1983-12-23 19:31:06','2019-12-26 00:04:55'),(87,1,64,'deleniti',49144,'{\"deleniti\": \"49144\"}','1972-04-13 09:51:57','2019-12-26 00:04:55'),(88,3,9,'corrupti',6,'{\"corrupti\": \"6\"}','1985-03-30 17:00:55','2019-12-26 00:04:55'),(89,1,53,'omnis',90974,'{\"omnis\": \"90974\"}','2001-11-08 10:02:31','2019-12-26 00:04:55'),(90,2,39,'cum',22110,'{\"cum\": \"22110\"}','1977-12-20 01:27:37','2019-12-26 00:04:55'),(91,1,34,'voluptatibus',8022976,'{\"voluptatibus\": \"8022976\"}','1977-02-12 08:00:46','2019-12-26 00:04:55'),(92,1,54,'qui',824270,'{\"qui\": \"824270\"}','1972-09-30 10:06:06','2019-12-26 00:04:55'),(93,1,66,'sit',357018,'{\"sit\": \"357018\"}','2007-05-23 00:44:39','2019-12-26 00:04:55'),(94,1,68,'iste',32578,'{\"iste\": \"32578\"}','1984-10-27 11:57:23','2019-12-26 00:04:55'),(95,2,42,'fugit',2858921,'{\"fugit\": \"2858921\"}','1986-11-17 17:30:19','2019-12-26 00:04:55'),(96,3,6,'velit',488203,'{\"velit\": \"488203\"}','1981-03-22 09:25:14','2019-12-26 00:04:55'),(97,2,4,'quaerat',56844,'{\"quaerat\": \"56844\"}','1995-01-05 16:37:18','2019-12-26 00:04:55'),(98,3,1,'cupiditate',5654782,'{\"cupiditate\": \"5654782\"}','1976-01-03 05:20:27','2019-12-26 00:04:55'),(99,1,93,'magni',784,'{\"magni\": \"784\"}','1982-09-04 10:29:44','2019-12-26 00:04:55'),(100,3,61,'autem',1,'{\"autem\": \"1\"}','1992-01-25 13:31:20','2019-12-26 00:04:55');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (3,'audio'),(1,'photo'),(2,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attached_media_id` int(10) unsigned DEFAULT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,48,94,'Corporis in eaque cumque est natus soluta nostrum molestias. Consequuntur ea vitae quisquam quia. Facere quis quas esse. Voluptates unde amet sequi facilis occaecati corrupti aut.',NULL,1,0,'2019-05-10 22:17:00'),(2,26,45,'Repellat aliquam tempore distinctio sint qui molestiae. Repellendus sed assumenda cupiditate consequatur accusantium. Occaecati doloremque dignissimos veniam beatae voluptatem.',23,1,1,'1992-06-10 12:27:14'),(3,49,9,'Ad sit laudantium impedit vel. Ipsum et iure aut est aperiam excepturi facilis.',10,1,0,'1981-06-19 07:33:53'),(4,95,50,'Aliquid quibusdam accusantium consequatur. Neque esse beatae est culpa officiis. Aperiam omnis et qui quisquam. Eum consequatur perferendis quia corporis laborum ducimus.',31,1,1,'1988-07-14 07:21:23'),(5,64,68,'Et omnis saepe doloremque quibusdam rerum ut consequuntur. Velit nulla quo porro commodi sint officiis. Quae in est mollitia modi.',18,0,0,'2018-09-29 15:55:38'),(6,50,44,'Et similique ut dolorem fuga. Laudantium distinctio dolores ullam maxime. Alias sequi officia aperiam amet sed suscipit.',27,1,0,'1975-03-23 09:24:01'),(7,70,18,'Et molestiae iste non sunt aut omnis est. Consectetur ab labore sunt. Facilis recusandae ratione deleniti quia.',86,1,1,'2000-11-19 14:55:49'),(8,81,49,'Rerum sit nihil repellat atque ullam iusto. Quaerat culpa nesciunt assumenda dignissimos. Mollitia voluptas quis amet.',NULL,0,0,'2011-11-10 10:25:46'),(9,3,67,'Est accusantium tenetur facilis nemo aliquid delectus. Voluptas dolore sit sit. Aut et id nihil culpa.',NULL,1,0,'1970-02-28 11:41:10'),(10,26,29,'Voluptatem eum vel ea quo. Soluta quis delectus sunt dolores deserunt facilis eligendi. Aut illum nihil voluptatem consectetur. Dolor architecto libero omnis occaecati natus.',23,0,1,'2014-10-08 18:48:57'),(11,64,34,'Alias vel facilis ducimus dolor dicta. Sed quo nihil doloremque voluptas. Ad dignissimos sed voluptatum at sint.',18,0,1,'1981-11-26 04:54:17'),(12,78,88,'Deserunt qui dolores omnis voluptatibus omnis dicta. Incidunt quo a numquam voluptatem et. Et soluta maxime voluptas temporibus quia.',25,0,0,'1974-04-04 15:48:36'),(13,5,58,'Doloribus quia animi et facere sint inventore nam. Laboriosam id sunt iusto dicta dolorum. Nesciunt quia aliquam aut ea eius sunt similique. Quo aliquid in recusandae enim porro.',38,1,1,'2012-02-29 10:50:36'),(14,78,13,'Modi corporis modi blanditiis sed omnis. Esse molestiae iure facilis molestias quam quia. Nobis temporibus non voluptatibus qui.',25,1,0,'2017-02-18 05:53:28'),(15,29,9,'Sed sunt et debitis eos delectus. Placeat sapiente ab tempora quaerat aspernatur veritatis beatae itaque. Modi maiores non perferendis eos ex quia voluptates. Natus nam voluptatem corporis et facere.',85,0,1,'2005-05-03 08:00:21'),(16,56,52,'Natus placeat quis et. Sit voluptates consequatur dolores expedita in ut sit. Laboriosam est explicabo dignissimos ea ea.',NULL,1,1,'2006-12-17 04:55:49'),(17,93,9,'Quisquam labore similique fuga nostrum alias quo consequatur. Ipsam fugiat fuga vero quam. Et atque et soluta.',72,0,0,'2014-05-08 17:00:42'),(18,64,93,'Ea est excepturi architecto. Facilis molestiae incidunt et earum. Voluptas dicta minima accusamus sed consequuntur sint voluptatem. Saepe sit eum qui facilis deleniti mollitia quod.',18,0,1,'1976-10-08 18:28:15'),(19,71,78,'Omnis sunt qui nam. Placeat ea repellat et delectus vel reiciendis. Maxime sit quibusdam odit nostrum perferendis labore.',48,0,0,'2001-07-11 10:03:50'),(20,74,35,'Consequatur iure accusamus quis fugiat qui. Quia qui commodi et voluptatem illo sequi. Id dolor veniam veritatis temporibus.',40,0,0,'2015-12-24 10:11:29'),(21,53,59,'Temporibus qui enim et. Eveniet tempore porro vel ab. Rerum dolorum et accusamus. Animi possimus et nobis assumenda voluptatem veniam.',89,1,1,'1984-02-08 17:23:58'),(22,37,5,'Occaecati tempora rerum soluta sed qui fugit fugiat. Voluptatum perspiciatis eum illum voluptatem accusamus ut. Vel qui accusamus qui iste est. Tenetur adipisci laboriosam natus.',26,1,1,'2011-06-06 03:49:29'),(23,14,55,'Ipsum ut reiciendis quidem qui. Rerum quia dignissimos officiis et perferendis. Commodi qui quia ea praesentium quo rerum.',NULL,0,1,'2001-04-27 04:07:10'),(24,31,92,'Qui nisi numquam aliquid qui. Vel suscipit non et ea beatae quia. Ut repudiandae error sunt voluptates.',6,1,0,'1988-03-03 07:46:56'),(25,64,45,'Laborum necessitatibus numquam ea saepe. Qui odio ullam dolores minima ut nulla quia. Et fuga animi tenetur.',18,1,1,'2017-10-25 07:45:13'),(26,33,28,'Hic sunt eveniet quia. Sunt aliquam id sapiente nostrum. Et beatae omnis quia et ut explicabo ut sed. Est blanditiis explicabo ducimus mollitia.',74,1,1,'1976-02-20 12:49:31'),(27,39,14,'Quis sit recusandae placeat ab nisi. Excepturi impedit quo veniam id eum similique. Voluptas nobis saepe facere perspiciatis rerum eos molestiae. Quia hic ut amet veniam vel inventore sint voluptatem.',28,1,0,'2015-06-14 23:34:49'),(28,49,5,'Laudantium deserunt in beatae. Ut inventore veritatis cupiditate rerum nostrum voluptates accusantium. Repellendus consectetur recusandae aperiam autem sit. Aut velit provident ullam debitis.',10,0,1,'1993-01-15 03:38:32'),(29,75,61,'Rerum ipsum numquam rerum similique aut exercitationem. Nam voluptatem deleniti tenetur eos pariatur minima eveniet.',NULL,0,1,'1987-12-14 09:10:27'),(30,81,18,'Ut distinctio facilis nisi aut commodi dolore ducimus. Nesciunt sit eius qui voluptatem dolorem aut. Aperiam velit doloribus quasi voluptatem est in accusantium quos.',NULL,0,1,'2011-04-23 00:07:21'),(31,50,95,'Dolores non quisquam sequi. Iusto voluptates deleniti cumque harum fuga. Doloremque quo et velit aut provident. Nemo impedit maiores ut omnis vel ipsa aut.',27,0,0,'1972-09-21 21:23:55'),(32,25,39,'Dolor hic voluptatem accusamus ipsum. Illum minima aspernatur dolorem voluptas ut qui quaerat. Maxime distinctio qui est quis.',44,1,1,'1992-10-01 03:37:36'),(33,17,71,'Ipsa dolor maxime autem non ut et quisquam est. Debitis quae sunt occaecati consequatur. Dolores nobis est quisquam error. Et nihil nulla facilis. Sunt nihil odit ducimus voluptas cupiditate exercitationem.',75,1,0,'2018-02-04 22:57:36'),(34,3,1,'Eveniet ipsam ad et officiis atque maxime corporis modi. Est commodi esse et qui ullam voluptates. Fuga autem vel sed voluptates occaecati ab vero. Illo error commodi dolor consequatur.',NULL,1,1,'1976-08-10 15:50:29'),(35,96,77,'Maxime et voluptas distinctio rem. Sint quo doloribus consequuntur aspernatur. Omnis et sunt eum consequatur aut optio maxime. Labore quaerat beatae modi id debitis.',13,0,1,'1998-02-08 11:42:12'),(36,94,41,'Ut tempora et error delectus. Aliquam excepturi fugit quis dolore quisquam laborum.',NULL,0,0,'1977-01-04 16:38:04'),(37,20,79,'Qui perspiciatis accusamus ratione. Sit provident id quibusdam inventore perspiciatis vero.',80,1,0,'1995-06-18 05:42:23'),(38,35,38,'Earum adipisci qui ut facilis quia. Qui non voluptatum quis omnis quis molestiae. Sunt qui dolore harum molestiae deleniti quasi maxime. Beatae rerum neque ea in iure quo.',NULL,1,0,'2017-03-22 23:48:43'),(39,82,95,'Nihil totam eum ut. Sapiente tenetur qui non similique. Minima recusandae omnis id qui quisquam alias.',60,0,1,'1987-02-10 17:05:11'),(40,30,66,'Ratione vero sequi recusandae voluptas animi. Et animi sed mollitia illum animi earum. Ut provident minima deleniti tempora neque accusantium est.',NULL,1,0,'1991-12-11 08:32:41'),(41,37,89,'Exercitationem debitis optio consequuntur est repellendus ut. Ea ad et qui in id rerum. Officiis aut tempore incidunt atque. Aut quo distinctio dolorum vero. Quam qui magni incidunt deserunt temporibus.',26,1,1,'2016-11-07 07:18:57'),(42,33,99,'Aut sit perferendis odit cum minima debitis aliquam minus. Explicabo quasi consequatur numquam itaque cum. Nemo eos quidem dolore eos quas sequi.',74,0,0,'1980-01-06 21:03:39'),(43,93,67,'Quasi est quia et sed. Non soluta eum placeat dolor. Ipsa velit rerum suscipit delectus. Voluptates incidunt vel aut in ex qui.',72,1,0,'2010-01-09 07:22:27'),(44,56,81,'Sit ut tempora alias quia vero aut eum in. Esse similique aut reiciendis aspernatur architecto. Sit culpa veniam non reiciendis sunt.',NULL,1,0,'2006-12-06 00:31:21'),(45,34,29,'Quisquam qui est voluptatum placeat tempore facilis distinctio. Quia impedit a et nulla. Qui impedit similique ex quos sapiente.',91,0,1,'1993-12-25 08:04:38'),(46,39,10,'Quod quia odio eaque ex sed voluptatum. Molestias maiores quisquam id ut vel. Veniam corporis et repudiandae et voluptates.',28,1,1,'1989-01-17 02:57:03'),(47,34,36,'Ex ipsam quasi hic pariatur autem. Eius voluptatem et dolorem dolorum. Sapiente accusantium animi asperiores esse.',91,0,1,'1986-02-28 08:23:57'),(48,79,85,'Tenetur sed quos nisi dolorem quae. Sed corrupti veniam occaecati est sit facere rerum. Quia necessitatibus beatae harum nihil omnis harum.',NULL,0,0,'2011-05-03 06:52:06'),(49,87,79,'Aut dolor necessitatibus nisi odit nesciunt culpa quia blanditiis. Et soluta omnis fuga. Nesciunt cumque consequatur a molestias quia suscipit illum.',34,1,0,'1986-01-06 09:24:34'),(50,33,29,'Ab aut sit qui aut consequatur aut. Nobis tempore ducimus sunt similique qui eligendi neque. Consectetur nihil quod odio enim eum minus possimus. Veritatis est qui quia ipsum quo voluptatum dolor id.',74,0,0,'2007-07-03 01:53:57'),(51,45,38,'Numquam fuga dicta nihil qui dolor vitae sed. Rerum cupiditate rem beatae voluptas. Dolor consectetur quod eos nemo.',29,1,1,'1989-08-09 19:41:47'),(52,53,51,'Voluptates unde nihil fugiat ipsa reiciendis earum. Vel repudiandae neque illum. Harum eligendi reprehenderit eum beatae dolore officiis. Temporibus sit possimus eius debitis eius veritatis. Aut tenetur aut illo odio et corporis fugit.',89,0,1,'1989-12-27 19:09:04'),(53,96,25,'Et facilis cumque voluptas sunt dolor. Aut placeat sapiente quisquam suscipit non. Blanditiis ut error totam consequatur.',13,0,1,'1981-12-28 18:38:10'),(54,36,7,'Repudiandae ut sed ut fuga. Blanditiis doloribus adipisci quod perspiciatis et. Excepturi ut dolorum qui quia dolore. Eaque et voluptatem aspernatur voluptatibus omnis qui minus.',41,0,1,'1980-02-01 20:28:20'),(55,25,5,'Consectetur nobis doloremque qui. Iure et unde sint illum dolores excepturi. Fuga dignissimos aut repudiandae adipisci blanditiis repellat sit facere. Alias vel ut eligendi ipsum.',44,0,0,'1986-08-22 00:04:30'),(56,49,28,'Voluptatem maxime excepturi quam qui rerum. Reiciendis quos dolore est ab omnis. Possimus numquam dolor enim distinctio placeat sit alias ratione.',10,0,1,'2002-07-23 21:21:56'),(57,94,84,'Odit inventore in ea doloribus tenetur rerum. Consectetur voluptatibus unde aut. Nobis animi nemo sint architecto consequuntur fugiat. Dolor sit deleniti ut voluptatem rem quia.',NULL,1,0,'1976-07-03 04:05:37'),(58,37,35,'Voluptatum doloremque quae consequuntur laudantium aliquid. Quas et aliquid cupiditate aut nihil. Nesciunt voluptatem quibusdam odio maxime et.',26,1,1,'1983-05-22 16:01:00'),(59,63,11,'Eveniet dolor atque ducimus aut perferendis eum. Sed debitis magni rem repellat voluptatibus. Ab quo voluptatem sapiente molestias aut voluptas quaerat. Commodi error corrupti sed aut.',NULL,1,1,'2008-12-24 06:25:15'),(60,62,79,'Perspiciatis ut quaerat quaerat rerum consequatur omnis. Placeat cupiditate possimus ipsam sed molestias neque corrupti ad. Dolor aspernatur suscipit et.',7,0,0,'1996-08-05 05:45:38'),(61,6,96,'Animi ut similique fugiat doloremque id accusantium id aliquam. Eos itaque fuga soluta et quis qui est. Placeat ea ducimus accusantium ab voluptas ea voluptas atque. Dignissimos facere sit a.',30,1,0,'1974-05-09 18:55:17'),(62,59,7,'Autem libero provident aut est. Eos blanditiis ratione ut accusamus. Sit deleniti ullam molestiae numquam. Voluptate eveniet deserunt deleniti voluptas. Quaerat tenetur ea est quo.',22,1,1,'1977-11-02 22:53:44'),(63,59,72,'Aliquam magni ut quisquam eaque tenetur eius. Numquam assumenda voluptatem aspernatur adipisci ut quia omnis. Adipisci aut corrupti repellat libero libero sit. Aliquid veritatis porro expedita reiciendis exercitationem.',22,0,0,'2007-11-13 16:23:28'),(64,82,96,'Sint repellendus qui eligendi voluptatem necessitatibus animi dignissimos ut. Dolores magni autem distinctio nobis sit.',60,0,1,'1993-02-01 07:08:36'),(65,31,67,'Rem ad dolore dolorum et sapiente sed cum. Veniam sit sed odit autem. Rerum aliquam quibusdam quis quidem.',6,1,1,'2010-01-27 20:00:34'),(66,42,10,'Nihil saepe aut vitae quis vitae ex distinctio. Ducimus quisquam quam ut aliquid voluptate alias maxime. Doloribus impedit consequatur voluptatem. Sit necessitatibus excepturi sed voluptatem eos doloribus.',11,0,0,'2019-05-25 00:17:25'),(67,22,78,'Eaque illo blanditiis ipsum sunt at deleniti. Amet est suscipit omnis sint eos. Nostrum quo fugit aliquid nisi voluptatibus vero.',19,0,1,'1979-07-05 08:50:54'),(68,27,98,'Et aliquam temporibus iusto voluptatum quo. Voluptate quaerat libero rem quasi eligendi ducimus ex.',NULL,0,0,'1991-06-25 07:06:38'),(69,8,45,'Optio at accusantium dolores quis. Soluta ullam dolor fugiat sint dolore mollitia.',51,0,0,'1999-05-05 12:10:48'),(70,99,63,'Reiciendis dolor aut non quas sequi enim. Odit sit aspernatur ea omnis nihil. Totam et eum assumenda sint id voluptatem et. Consequatur laborum accusamus sit rerum vero.',NULL,0,0,'1986-08-15 01:37:16'),(71,15,87,'Excepturi quia ipsa doloremque ea. Repudiandae repellendus veniam ad quo velit. Provident fugit sit mollitia eum. Tempore quas dolor consequatur.',NULL,1,0,'2007-10-23 15:35:40'),(72,89,85,'Sequi ratione est aut sed veritatis. Cupiditate itaque ullam nulla iusto. Eum et nam veritatis.',NULL,0,0,'1984-08-26 04:07:21'),(73,56,26,'Necessitatibus voluptas nisi ut temporibus. Consequatur non voluptatem aspernatur alias sunt in facilis labore. Aut at aliquid ullam voluptate ut beatae totam.',NULL,0,0,'1982-10-31 16:39:41'),(74,62,31,'Eaque consequatur in sed illum provident sequi illum. Ipsam nam cupiditate cupiditate id suscipit maiores blanditiis. Dicta sunt est quas quia. Laudantium sunt dolorem nihil minus ducimus facere voluptatibus.',7,0,1,'2019-05-13 15:33:41'),(75,68,45,'Omnis rerum id eligendi nam maiores sint eaque. Iste quis accusantium iure praesentium qui.',56,0,1,'1981-11-15 13:36:39'),(76,21,71,'Voluptas ut doloremque cumque temporibus iure a sed. Repellat velit tempore consequuntur beatae nihil. Et consectetur qui in nesciunt. Tenetur voluptatem eveniet debitis ullam perspiciatis dolor.',NULL,1,1,'1984-07-09 10:23:58'),(77,91,40,'Perferendis quas sequi ratione praesentium occaecati. Rerum ut ut aut necessitatibus optio assumenda praesentium. Quia ut et voluptas autem. Et nostrum corporis qui quo veniam mollitia. Id qui est deleniti quia et quis.',55,1,0,'2000-05-23 11:33:27'),(78,26,11,'Ea mollitia autem ea sit quasi. Qui saepe et quia aspernatur numquam eum quo. Est adipisci beatae omnis autem voluptate. Quod quo mollitia voluptatibus quia qui et et. Quia soluta eos delectus consectetur.',23,0,1,'1971-01-21 14:47:05'),(79,78,56,'Consequatur doloribus ipsam accusamus sunt eaque. Corporis commodi sed voluptatem accusamus ducimus adipisci. Explicabo iusto praesentium autem at. Quisquam magni assumenda quia dolores ab.',25,1,1,'1975-01-28 17:13:18'),(80,44,51,'Ducimus beatae fugiat est delectus dolorum adipisci. Reiciendis eos illum modi adipisci facere tempora sequi.',16,1,1,'1995-08-19 14:03:28'),(81,22,59,'Qui porro libero quia sit saepe fugit. Voluptatem repellendus facilis et perspiciatis nisi quae doloremque et. Sed consequatur temporibus ut pariatur. Repudiandae quia voluptatum et officia odit.',19,0,0,'1990-08-07 20:23:17'),(82,28,63,'Ea impedit et placeat ad. Laudantium voluptatibus veritatis ab iste ea voluptatem omnis eos. Et quis sed asperiores est laudantium ipsa quod. Animi laborum nesciunt consectetur saepe qui omnis.',NULL,1,1,'2014-11-27 11:03:35'),(83,28,53,'Sed sapiente eius vitae illo fugiat doloribus. Voluptatum expedita sunt officiis repellat. Et sed est quasi nihil. Adipisci ut blanditiis ut.',NULL,1,1,'2011-05-15 03:16:37'),(84,80,40,'Et voluptates veniam excepturi ad aperiam. Maxime id fuga minus velit at. Sed a ut fuga sed error totam. Hic et omnis quae consequuntur voluptatem.',43,0,0,'2016-12-12 00:39:22'),(85,59,73,'Iure et accusamus soluta accusantium quibusdam. Veritatis exercitationem ut sunt saepe at. Suscipit ipsum adipisci nihil dicta dolore. Pariatur dolorem ea ex consequatur autem.',22,0,1,'1980-06-23 07:27:16'),(86,91,32,'Quis enim quas vel at qui velit minima sit. Optio esse velit et mollitia. Odit et quibusdam quidem consequatur voluptatem autem ex. Aperiam blanditiis architecto dolorum enim eum fuga voluptas et.',55,0,1,'2015-12-22 16:29:17'),(87,90,52,'A facere est voluptates autem dicta iusto adipisci. Culpa id vel qui fuga quisquam architecto sunt delectus. Voluptates id ut placeat in quam. Modi nihil et rem repellat dolorem et.',33,0,0,'1979-03-30 17:47:15'),(88,88,85,'Deserunt dolores sed tempora et eum incidunt. Fuga et nihil iste qui quos pariatur. Quos praesentium reprehenderit molestiae. Dolores natus ratione qui quia.',NULL,0,1,'1981-06-21 17:09:38'),(89,61,48,'Eius modi magni rem et. Quia ullam odio fugit quisquam enim. Vitae et eos dicta. Sit ab veritatis beatae adipisci quas qui.',35,1,1,'1994-10-20 08:00:12'),(90,55,34,'Illum minus suscipit reprehenderit ut quidem nulla. Sunt impedit accusamus adipisci rerum. Eaque similique nisi occaecati doloribus libero.',32,0,1,'2001-02-16 00:52:08'),(91,4,15,'Placeat molestiae itaque odio ad rem nisi. Sunt accusamus amet perferendis fuga magnam sunt.',97,0,0,'2010-03-12 18:36:37'),(92,64,72,'A ut omnis commodi ut. Quidem quaerat est illo alias est velit numquam. Voluptas magni amet nam animi architecto. Reiciendis mollitia nobis non veniam voluptate voluptatem ex et.',18,0,0,'1980-05-29 12:09:20'),(93,71,37,'Laborum aspernatur perferendis et et. Sit doloribus aut praesentium delectus. Vel ut aut velit neque odit.',48,0,1,'1981-12-27 18:07:59'),(94,72,47,'Necessitatibus vel et corporis rerum ad neque et. Repellat ullam consectetur exercitationem molestias dicta. Sed quia porro est unde officiis repellendus et fuga. Quod laudantium praesentium nostrum sint non qui. Magni dolor voluptas quia quia.',NULL,1,0,'1996-03-24 23:46:14'),(95,18,49,'Dignissimos non est natus quae id sit aspernatur labore. Eligendi ut saepe voluptas laudantium quas ipsum. Rerum unde quam fugiat illum voluptates est et et. Debitis sint saepe assumenda minus.',8,0,1,'1996-03-12 11:33:49'),(96,90,2,'Sed et ullam autem voluptatem et. Mollitia ut fugit odit delectus repellendus facilis. Voluptatibus fugit aliquid perferendis magni. Voluptatem ab repellat eum qui est beatae saepe.',33,0,1,'2007-08-31 17:15:40'),(97,42,4,'Ratione sit est qui sit neque ipsum reiciendis sint. Nihil assumenda enim nam facilis aut nostrum magni ut. Repudiandae ut perspiciatis rem et tempora omnis.',11,1,0,'2000-06-26 08:02:06'),(98,91,43,'Necessitatibus rem a dolores fugiat. Sit ea ut odit commodi tempora vel. Dolores numquam nulla saepe dolores. Quidem sit ut autem ratione.',55,0,0,'1999-03-28 01:53:59'),(99,41,76,'Autem sint ullam sapiente sunt rerum debitis non molestiae. Libero dolores quia tenetur quia. Autem quae non quibusdam est nisi ut.',NULL,1,1,'1978-06-28 09:51:41'),(100,56,50,'Voluptatem explicabo vitae consequatur autem. Dolorem id dolor fugiat soluta nam laboriosam. Suscipit quisquam sunt blanditiis repellendus et deleniti modi molestiae. Dolorem et ullam ut et. Tenetur quia nobis et quia dolores voluptate autem.',NULL,1,1,'1987-04-08 12:57:38');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy`
--

DROP TABLE IF EXISTS `privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy`
--

LOCK TABLES `privacy` WRITE;
/*!40000 ALTER TABLE `privacy` DISABLE KEYS */;
INSERT INTO `privacy` VALUES (1,'Все пользователи'),(2,'Только друзья'),(3,'Друзья и друзья друзей'),(4,'Только я'),(5,'Все кроме...'),(6,'Некоторые друзья');
/*!40000 ALTER TABLE `privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_except_user`
--

DROP TABLE IF EXISTS `privacy_except_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_except_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `privacy_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`friend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_except_user`
--

LOCK TABLES `privacy_except_user` WRITE;
/*!40000 ALTER TABLE `privacy_except_user` DISABLE KEYS */;
INSERT INTO `privacy_except_user` VALUES (1,65,61,6),(2,9,60,5),(3,72,79,6),(4,79,57,5),(5,50,75,5),(6,27,9,5),(7,62,84,6),(8,33,11,5),(9,56,48,5),(10,72,14,6);
/*!40000 ALTER TABLE `privacy_except_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1987-02-12','East',1),(2,'f','2012-09-03','South',2),(3,'f','1982-03-11','North',3),(4,'f','1996-01-27','North',4),(5,'f','2006-04-10','East',5),(6,'f','1992-08-22','Lake',6),(7,'m','2010-02-28','Lake',7),(8,'m','1971-01-05','Lake',8),(9,'m','1987-09-22','Port',9),(10,'m','1990-07-12','East',10),(11,'m','1996-10-03','Lake',11),(12,'m','1992-04-06','Port',12),(13,'m','1980-05-30','South',13),(14,'f','2013-01-04','Port',14),(15,'m','2002-11-24','Lake',15),(16,'f','2016-10-15','South',16),(17,'f','1981-04-11','North',17),(18,'f','1987-03-17','North',18),(19,'f','1983-02-05','Lake',19),(20,'f','1992-08-01','Lake',20),(21,'m','1979-07-01','New',21),(22,'m','2007-09-05','Port',22),(23,'m','2019-08-12','Port',23),(24,'m','1985-04-18','Lake',24),(25,'m','1970-06-09','East',25),(26,'f','2017-07-02','New',26),(27,'m','2000-09-21','Lake',27),(28,'f','2001-11-07','North',28),(29,'f','1980-09-08','South',29),(30,'f','2004-12-31','Port',30),(31,'f','1977-04-18','North',31),(32,'f','1992-04-24','New',32),(33,'f','2008-09-09','East',33),(34,'m','1974-04-14','West',34),(35,'m','2008-08-28','West',35),(36,'m','1985-12-27','South',36),(37,'f','2008-07-19','North',37),(38,'m','1998-12-15','New',38),(39,'m','2010-02-08','North',39),(40,'f','2005-10-02','East',40),(41,'m','2000-06-01','New',41),(42,'f','1982-05-28','West',42),(43,'f','1985-05-02','Port',43),(44,'f','2011-01-06','North',44),(45,'f','1999-03-18','North',45),(46,'f','1979-02-19','Lake',46),(47,'m','1996-08-22','Port',47),(48,'f','2012-02-18','East',48),(49,'m','1986-07-19','Lake',49),(50,'m','1976-12-30','East',50),(51,'f','1974-08-31','East',51),(52,'m','2003-02-15','New',52),(53,'f','1997-06-16','East',53),(54,'m','1975-04-08','Lake',54),(55,'f','2007-08-23','New',55),(56,'f','1975-08-31','West',56),(57,'f','1986-08-27','East',57),(58,'m','1981-01-16','East',58),(59,'f','2018-12-12','North',59),(60,'f','2019-11-20','New',60),(61,'m','2003-05-04','West',61),(62,'f','2014-08-21','South',62),(63,'f','2008-10-02','East',63),(64,'f','2019-04-20','Lake',64),(65,'f','1972-09-22','East',65),(66,'m','2000-12-14','West',66),(67,'f','1982-07-08','Port',67),(68,'f','1991-04-08','East',68),(69,'f','2002-11-13','West',69),(70,'f','1989-02-02','West',70),(71,'f','1971-08-27','West',71),(72,'m','1996-11-20','South',72),(73,'f','1976-12-30','New',73),(74,'m','2013-09-23','Port',74),(75,'m','1978-07-25','North',75),(76,'m','2016-06-30','Port',76),(77,'f','1979-07-12','North',77),(78,'m','2010-03-01','West',78),(79,'f','1983-04-07','New',79),(80,'m','2013-09-27','East',80),(81,'m','1981-07-13','North',81),(82,'m','1983-12-25','North',82),(83,'m','1970-12-17','South',83),(84,'m','2004-12-07','North',84),(85,'m','1995-01-01','Lake',85),(86,'f','1982-11-27','South',86),(87,'f','1997-10-01','Lake',87),(88,'f','2003-01-28','East',88),(89,'f','1979-09-18','East',89),(90,'f','1983-06-19','Lake',90),(91,'m','1976-01-07','Port',91),(92,'m','2017-09-30','East',92),(93,'m','2017-05-21','North',93),(94,'m','2014-12-14','West',94),(95,'m','2006-07-07','South',95),(96,'m','1979-12-06','South',96),(97,'f','2012-12-09','Lake',97),(98,'f','1974-12-28','South',98),(99,'m','1978-06-25','North',99),(100,'m','2011-02-22','New',100);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Кто видит основную информацию моей страницы'),(2,'Кто видит фотографии, на которых меня отметили'),(3,'Кто видит список моих сохранённых фотографий'),(4,'Кто видит список моих групп');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_privacy`
--

DROP TABLE IF EXISTS `user_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_privacy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `privacy_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_privacy`
--

LOCK TABLES `user_privacy` WRITE;
/*!40000 ALTER TABLE `user_privacy` DISABLE KEYS */;
INSERT INTO `user_privacy` VALUES (1,19,4,3,'1982-07-15 04:09:51','2019-12-26 02:41:21'),(2,41,3,1,'1995-06-25 17:09:43','2019-12-26 02:12:00'),(3,45,4,1,'1980-11-20 09:19:25','2019-12-26 02:41:21'),(4,85,2,4,'2012-03-28 17:39:14','2019-12-26 02:46:12'),(5,66,2,3,'2005-10-09 17:28:02','2019-12-26 02:12:00'),(6,49,4,3,'1977-03-23 15:19:36','2019-12-26 02:41:21'),(7,50,3,2,'1971-03-11 23:34:47','2019-12-26 02:48:04'),(8,34,4,4,'2004-10-04 08:30:55','2019-12-26 02:12:00'),(9,85,4,2,'1975-03-28 19:35:28','2019-12-26 02:46:12'),(10,63,4,4,'1988-02-12 05:43:48','2019-12-26 02:48:14'),(11,22,1,3,'1973-06-25 02:47:39','2019-12-26 02:12:00'),(12,26,1,1,'2001-07-09 02:16:16','2019-12-26 02:12:00'),(13,97,3,5,'1972-11-01 10:53:07','2019-12-26 02:12:00'),(14,49,3,4,'1997-09-23 13:23:38','2019-12-26 02:41:21'),(15,63,1,2,'2007-10-31 10:07:28','2019-12-26 02:12:00'),(16,91,3,1,'1984-08-11 18:33:07','2019-12-26 02:12:00'),(17,46,1,5,'2002-10-20 22:47:18','2019-12-26 02:12:00'),(18,80,4,2,'1982-12-24 04:27:12','2019-12-26 02:12:00'),(19,65,2,6,'1974-01-04 17:33:17','2019-12-26 02:12:00'),(20,32,4,4,'1985-11-09 10:46:43','2019-12-26 02:12:00'),(21,57,4,3,'1976-06-03 06:08:52','2019-12-26 02:12:00'),(22,69,1,4,'2012-05-06 02:39:51','2019-12-26 02:12:00'),(23,50,2,4,'1987-01-31 02:10:34','2019-12-26 02:48:04'),(24,24,2,4,'1970-05-28 04:35:47','2019-12-26 02:12:00'),(25,19,1,6,'1998-01-11 15:18:20','2019-12-26 02:41:21'),(26,48,4,4,'1992-03-13 00:13:49','2019-12-26 02:12:00'),(27,67,2,3,'1989-08-17 01:40:41','2019-12-26 02:12:00'),(28,66,1,1,'1979-03-10 06:29:45','2019-12-26 02:12:00'),(29,35,3,1,'2001-08-17 11:07:28','2019-12-26 02:41:21'),(30,27,3,3,'1971-01-08 03:50:37','2019-12-26 02:12:00'),(31,95,3,2,'1994-03-27 03:20:57','2019-12-26 02:12:00'),(32,60,1,4,'1971-08-26 20:57:29','2019-12-26 02:12:00'),(33,96,4,3,'1976-07-22 05:46:25','2019-12-26 02:12:00'),(34,25,2,1,'1972-12-29 13:13:26','2019-12-26 02:41:21'),(35,56,4,2,'1975-02-19 19:33:52','2019-12-26 02:12:00'),(36,10,2,6,'1982-08-04 07:52:29','2019-12-26 02:43:40'),(37,85,1,1,'1975-12-15 00:51:32','2019-12-26 02:46:12'),(38,11,3,4,'1971-09-07 12:44:18','2019-12-26 02:12:00'),(39,36,4,3,'1989-04-11 09:03:45','2019-12-26 02:12:00'),(40,45,2,5,'1980-10-06 23:24:54','2019-12-26 02:41:21'),(41,3,3,3,'1980-05-23 07:09:53','2019-12-26 02:41:21'),(42,21,1,5,'2011-05-23 18:30:12','2019-12-26 02:45:21'),(43,76,4,4,'1974-03-19 13:18:08','2019-12-26 02:12:00'),(44,58,1,1,'1977-06-14 01:54:15','2019-12-26 02:12:00'),(45,84,4,3,'2010-07-05 21:12:00','2019-12-26 02:12:00'),(46,1,4,2,'1975-07-24 03:40:57','2019-12-26 02:12:00'),(47,6,4,5,'1977-03-13 02:24:30','2019-12-26 02:41:21'),(48,91,1,6,'1977-08-18 03:57:13','2019-12-26 02:12:00'),(49,21,4,6,'1978-10-22 03:28:09','2019-12-26 02:45:21'),(50,73,3,3,'1971-08-09 14:09:59','2019-12-26 02:12:00'),(51,80,3,3,'2000-11-22 19:00:19','2019-12-26 02:12:00'),(52,6,2,6,'1989-05-13 12:42:33','2019-12-26 02:41:21'),(53,76,2,1,'2004-12-14 03:07:58','2019-12-26 02:12:00'),(54,82,4,3,'1990-07-22 17:17:44','2019-12-26 02:12:00'),(55,10,1,3,'2007-03-05 05:05:58','2019-12-26 02:43:40'),(56,28,2,6,'2003-10-12 22:45:48','2019-12-26 02:12:00'),(57,63,2,5,'2004-01-02 15:15:06','2019-12-26 02:12:00'),(58,54,3,3,'1980-09-06 08:47:40','2019-12-26 02:12:00'),(59,14,3,4,'1980-04-16 16:52:25','2019-12-26 02:42:55'),(60,13,1,5,'1989-11-02 10:15:49','2019-12-26 02:12:00'),(61,4,4,2,'1979-06-05 21:00:47','2019-12-26 02:41:21'),(62,69,2,2,'1998-03-17 15:06:44','2019-12-26 02:12:00'),(63,51,3,1,'1971-01-22 01:00:55','2019-12-26 02:12:00'),(64,64,4,3,'1994-06-08 16:39:13','2019-12-26 02:47:03'),(65,4,3,5,'1975-09-28 22:17:54','2019-12-26 02:41:21'),(66,72,2,6,'2006-02-28 00:07:55','2019-12-26 02:12:00'),(67,64,3,2,'1995-12-23 20:33:16','2019-12-26 02:47:03'),(68,74,4,6,'1983-02-22 23:29:37','2019-12-26 02:12:00'),(69,75,1,6,'2003-09-30 06:37:35','2019-12-26 02:12:00'),(70,95,4,6,'2010-06-02 19:11:46','2019-12-26 02:12:00'),(71,64,2,4,'1971-10-13 15:55:31','2019-12-26 02:47:03'),(72,52,4,2,'1997-08-01 18:44:17','2019-12-26 02:12:00'),(73,93,4,6,'1977-07-28 21:56:42','2019-12-26 02:12:00'),(74,50,4,2,'1982-06-28 05:00:13','2019-12-26 02:47:59'),(75,58,3,5,'2002-11-26 03:41:54','2019-12-26 02:12:00'),(76,35,4,5,'1978-12-07 12:01:42','2019-12-26 02:41:21'),(77,14,1,3,'1980-10-22 03:32:59','2019-12-26 02:42:55'),(78,15,1,5,'2018-02-23 14:15:13','2019-12-26 02:12:00'),(79,88,4,1,'2000-08-27 02:09:33','2019-12-26 02:12:00'),(80,87,4,5,'1993-09-26 07:43:26','2019-12-26 02:12:00'),(81,51,1,5,'1982-12-16 12:35:44','2019-12-26 02:12:00'),(82,42,4,4,'1989-03-13 18:38:49','2019-12-26 02:12:00'),(83,81,2,5,'1988-07-25 11:09:05','2019-12-26 02:12:00'),(84,47,1,5,'1985-11-18 19:51:27','2019-12-26 02:12:00'),(85,3,1,6,'1991-09-02 03:35:40','2019-12-26 02:41:21'),(86,25,4,2,'1977-04-11 23:29:27','2019-12-26 02:41:21'),(87,36,1,1,'1988-06-24 05:59:08','2019-12-26 02:12:00'),(88,98,2,2,'1998-04-16 06:29:25','2019-12-26 02:12:00'),(89,16,4,1,'1999-10-12 10:38:47','2019-12-26 02:41:21'),(90,16,3,5,'1984-04-09 20:27:08','2019-12-26 02:41:21'),(91,94,4,2,'1985-01-01 23:26:31','2019-12-26 02:43:40'),(92,73,4,2,'1990-05-19 04:57:49','2019-12-26 02:12:00'),(93,81,1,2,'1971-08-31 16:59:13','2019-12-26 02:12:00'),(94,80,2,6,'1993-02-09 01:16:50','2019-12-26 02:12:00'),(95,12,3,4,'2005-04-13 22:14:45','2019-12-26 02:12:00'),(96,33,4,6,'2015-06-19 05:18:37','2019-12-26 02:12:00'),(97,99,2,5,'1974-09-11 10:02:57','2019-12-26 02:12:00'),(98,2,3,1,'2003-01-08 05:08:47','2019-12-26 02:12:00'),(99,56,3,6,'1975-07-24 19:45:38','2019-12-26 02:12:00'),(100,94,2,5,'1974-12-29 11:28:01','2019-12-26 02:43:40');
/*!40000 ALTER TABLE `user_privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Trey','Baumbach','fyost@example.com','1-350-335-8419x7185','1997-04-11 17:13:36','2013-05-21 13:53:26'),(2,'Jolie','Waelchi','kaitlyn77@example.org','414.505.9463x59325','1975-04-10 17:33:12','1982-04-30 12:46:51'),(3,'Maverick','Koch','davonte.kunde@example.com','218-894-3387x2176','1980-04-29 20:22:16','2013-12-26 21:33:03'),(4,'Triston','Marquardt','pkautzer@example.org','1-184-814-8606x965','1988-03-21 18:59:52','2002-09-16 17:59:22'),(5,'Zora','Bartoletti','uziemann@example.org','226-392-3607x872','1991-12-30 02:40:45','2010-05-13 08:36:28'),(6,'Nikki','Wintheiser','nya.hodkiewicz@example.org','09219467103','1973-11-09 11:57:10','2004-09-28 23:05:36'),(7,'Lyda','Osinski','yoshiko33@example.net','01036956865','1997-05-06 20:36:49','2012-03-03 11:29:31'),(8,'Adrien','Stokes','nmarvin@example.net','939-626-7007','2007-10-25 01:52:17','2017-01-19 16:53:23'),(9,'Elena','Erdman','evert82@example.net','(150)855-3422x800','2007-08-09 13:52:50','2007-08-20 01:04:13'),(10,'Juvenal','Beahan','runte.wendell@example.com','221-919-7124x7168','2002-10-19 06:47:11','2011-06-02 13:12:20'),(11,'Misael','Gaylord','keebler.myrna@example.org','+36(6)2235221346','1980-10-05 01:51:07','2001-05-29 08:11:16'),(12,'Buck','O\'Reilly','rex.abbott@example.org','1-841-673-0425','2006-02-07 11:58:16','2018-07-22 19:58:13'),(13,'Kelli','Heathcote','ipagac@example.com','(912)718-5159x225','1999-06-07 13:05:22','2012-06-08 08:25:28'),(14,'Penelope','O\'Hara','deonte.boyle@example.org','632-275-9545x085','1981-03-22 05:17:30','2018-09-23 08:49:40'),(15,'Cristal','Windler','zauer@example.net','(581)368-5697x2267','1980-01-15 05:01:28','2019-03-03 19:48:22'),(16,'Cheyanne','Green','cmurazik@example.net','(392)942-7765','1975-07-28 02:37:11','2014-12-17 06:08:00'),(17,'Jillian','Metz','erdman.robin@example.org','363.364.2887','2005-03-24 19:59:10','2018-05-09 16:06:27'),(18,'Jacques','McClure','mfeeney@example.com','1-278-434-0823','1986-04-15 03:13:29','2002-08-07 18:28:58'),(19,'Charlie','Beier','madilyn25@example.com','006.597.6438','1999-10-01 01:15:01','2012-03-17 19:54:20'),(20,'Yesenia','Schiller','wendell21@example.net','889-250-1082','2004-03-03 09:17:23','2016-07-08 23:39:33'),(21,'Herminia','Stroman','izabella.lesch@example.net','+68(7)5249430420','1994-07-18 11:38:48','2011-09-14 15:19:19'),(22,'Donny','Sauer','weimann.marquis@example.com','885.448.8488x8111','1973-07-22 09:53:59','1997-03-04 03:38:22'),(23,'Dominique','Sauer','sim84@example.org','04499732723','1977-04-17 13:41:20','2009-03-21 12:32:15'),(24,'Charlie','McLaughlin','konopelski.abel@example.com','(793)947-0121x17735','1999-02-07 19:52:27','2012-04-04 10:03:18'),(25,'Ada','Ernser','langworth.jonathan@example.com','363-662-9837x73294','1971-01-09 02:45:25','2001-08-08 03:32:55'),(26,'Hipolito','Barton','marisol.barton@example.com','(181)599-1239x284','1975-02-13 16:47:13','1984-04-17 22:13:11'),(27,'Sarai','Schulist','marina.schoen@example.com','843.504.8962x7899','1988-07-13 12:40:58','1994-11-06 14:25:53'),(28,'Miles','Bruen','adell.brekke@example.org','03083711690','1972-07-06 13:14:44','1983-05-02 16:37:35'),(29,'Araceli','Walter','amiya.walker@example.net','+03(5)6739410589','1993-05-17 10:12:38','2007-08-13 08:26:15'),(30,'Cathrine','Jenkins','tre.baumbach@example.org','829.733.6748x52897','1990-12-03 15:28:15','1993-01-13 02:55:42'),(31,'Bo','Oberbrunner','conrad.hessel@example.net','(830)493-1254','1970-12-05 08:08:51','1974-03-23 08:13:01'),(32,'Lucius','McKenzie','lexie42@example.com','04145062317','1996-08-09 05:41:50','2008-11-23 09:47:37'),(33,'Anthony','West','esmeralda.hilll@example.com','1-045-059-5555x6511','1975-04-07 07:53:05','2005-08-28 17:04:53'),(34,'Jean','Spinka','blanca28@example.com','+60(6)6596754427','1991-05-31 23:07:25','1993-10-08 04:37:43'),(35,'Rebeca','Adams','murphy09@example.net','1-060-640-6853x21197','1985-08-18 18:14:54','2003-03-07 06:20:19'),(36,'Melany','Dare','trevor.rowe@example.org','519.329.9248','1971-01-02 01:14:51','1988-04-29 05:23:21'),(37,'Edward','Kilback','vmorissette@example.org','1-456-704-1470x0010','2000-01-16 17:41:31','2019-05-17 04:25:02'),(38,'Edyth','Marquardt','pacocha.silas@example.org','+98(4)0825570249','1987-12-26 18:39:29','2001-06-25 10:55:55'),(39,'Alessandra','Ebert','johnson.nathaniel@example.org','1-822-223-4560x145','1970-11-06 22:32:38','2012-05-12 14:49:42'),(40,'Alanna','Bosco','stiedemann.evert@example.com','(219)969-4721x9783','1989-09-06 06:50:01','2013-06-23 02:19:37'),(41,'Hal','Lakin','elisabeth.gleason@example.com','1-644-589-7643x0384','1977-05-06 17:24:29','1978-09-03 08:14:58'),(42,'Aida','Howell','quigley.iva@example.net','1-951-076-7133x5301','1988-06-19 11:10:08','2010-11-15 20:16:01'),(43,'Madeline','Dickens','btremblay@example.org','135.056.9592','1997-04-22 12:43:42','2017-08-18 00:03:05'),(44,'Gennaro','Gerlach','emil.ferry@example.net','+45(9)6234489786','1977-04-19 08:09:52','1981-01-29 20:06:38'),(45,'Karlie','Lind','elody.kessler@example.net','(453)276-4365x758','1996-01-29 17:48:57','2014-10-03 00:51:04'),(46,'Elissa','Greenfelder','eulah89@example.org','1-559-523-6035x8688','1989-05-01 03:14:35','1995-11-09 04:10:07'),(47,'Johann','Quitzon','angelica20@example.org','564-493-1624','2005-07-10 07:30:24','2019-11-28 03:16:15'),(48,'Nathanial','Will','christ80@example.com','(003)829-9251x372','1970-10-09 15:09:23','1981-03-09 07:11:46'),(49,'Giuseppe','Williamson','larue.hills@example.com','488.486.3818x559','1981-01-03 01:49:47','2014-02-15 00:36:54'),(50,'Larissa','Reilly','betsy23@example.org','(781)921-8712x72729','1972-09-30 04:49:21','1981-07-15 09:21:37'),(51,'Anastasia','Morar','bertrand70@example.com','(149)452-2097','1970-03-11 08:07:41','2004-10-19 19:20:44'),(52,'Dina','Ferry','lcollins@example.net','04106467510','1983-02-08 11:15:17','2002-08-15 01:39:41'),(53,'Garrison','Raynor','halvorson.jaylin@example.net','072.697.4624','1970-09-06 05:48:40','1975-01-28 22:34:10'),(54,'Oma','Nolan','marie.raynor@example.net','+27(0)5280056243','1985-04-03 22:19:16','1996-05-21 19:09:10'),(55,'Aileen','Auer','fannie.crooks@example.org','+32(0)6000928785','1973-07-25 19:40:44','2003-06-03 11:42:19'),(56,'Bella','Gusikowski','aliya90@example.com','068-754-0547x317','1977-05-13 21:04:38','2019-12-04 08:58:29'),(57,'Amely','Leuschke','marisol31@example.com','103-562-9660x72546','2008-08-21 16:52:56','2011-10-26 08:08:37'),(58,'Anya','Mueller','dominique61@example.com','154-761-8509x883','1974-11-26 04:31:24','2016-02-22 10:50:02'),(59,'Dock','Funk','greg.veum@example.org','+75(4)0650950939','1970-10-17 09:56:54','1987-07-11 23:11:12'),(60,'Hank','Sawayn','dparisian@example.com','(444)760-4496','2011-10-02 13:27:31','2013-03-02 19:46:41'),(61,'Royce','Rogahn','ledner.micah@example.com','257.977.6073','1987-06-23 18:25:37','2002-05-20 14:17:41'),(62,'Micah','Ledner','nblick@example.com','(885)363-8938','2006-02-25 19:39:30','2009-11-05 20:13:48'),(63,'Marilou','Mann','grimes.edgar@example.net','(162)644-7669x82548','1987-04-15 23:38:53','2019-03-19 22:38:22'),(64,'Imogene','Dooley','jacobson.maud@example.com','(725)438-4468x472','2001-05-06 13:56:11','2010-10-21 23:51:14'),(65,'Jessica','Fritsch','otis.bernhard@example.com','917.165.3403x564','1997-03-17 21:01:21','1999-03-24 11:47:36'),(66,'Alvera','Hessel','yhowe@example.net','847-512-6633x69271','1979-12-25 19:35:41','1982-02-11 00:05:23'),(67,'Aubree','Stamm','eugenia37@example.net','1-562-333-0362x2220','2007-11-02 10:23:30','2012-03-14 19:40:11'),(68,'Reginald','Ryan','mkulas@example.com','1-188-283-1752','1975-07-05 17:38:09','1994-12-01 15:43:56'),(69,'Casey','Hudson','wisozk.ernie@example.org','01320224536','1993-06-04 11:10:06','2000-06-14 05:47:42'),(70,'Loma','Rosenbaum','freeda63@example.org','(822)465-2295','1996-03-16 13:18:37','2014-01-13 17:02:43'),(71,'Isobel','Bechtelar','jlubowitz@example.com','959-698-5066','1977-07-31 06:49:38','2013-08-04 05:18:42'),(72,'Stephany','Bednar','cathrine.hagenes@example.com','1-731-716-5739x42699','1973-07-24 00:12:08','1988-11-23 18:20:20'),(73,'Deon','Moen','gturcotte@example.org','(778)381-7772','1982-09-14 02:16:10','2007-05-03 19:52:04'),(74,'Tomasa','Haley','adrien.durgan@example.net','(143)502-5433x9924','2009-09-08 10:56:46','2010-02-20 11:05:37'),(75,'Foster','Mayer','christopher.bechtelar@example.org','755.233.7575x16918','2007-07-01 04:53:00','2014-04-23 01:24:13'),(76,'Karli','Towne','ignatius.ankunding@example.com','06856549968','1974-03-18 20:48:54','2007-02-17 04:49:21'),(77,'Rickie','Gutmann','ewell07@example.org','(953)427-5289x1621','1983-09-03 00:27:53','1999-01-12 05:04:38'),(78,'Jakob','Altenwerth','williamson.janessa@example.org','360.906.0969','2011-11-23 07:10:26','2015-03-30 20:16:29'),(79,'Domenica','Berge','francis.block@example.net','(285)349-5196x6549','1981-12-20 12:41:56','1994-10-12 05:29:03'),(80,'Priscilla','Schoen','chyna59@example.com','832.218.8644x34812','1980-08-24 09:38:14','2009-03-14 02:22:02'),(81,'Alayna','Lubowitz','sankunding@example.org','737-225-2938','1992-03-19 05:40:00','2013-11-08 12:39:29'),(82,'Triston','Johnson','olaf.leuschke@example.net','006.698.2863x250','2000-05-31 01:17:38','2003-02-12 06:59:35'),(83,'Triston','Wiegand','maeve93@example.com','1-403-633-9727x7035','1972-09-13 15:24:27','1996-06-07 20:09:20'),(84,'Vivianne','Gerhold','ismael89@example.com','906-131-9497','1994-01-27 18:42:42','1999-10-24 07:21:23'),(85,'Antwon','Brown','gottlieb.blair@example.com','192-207-5271x357','1975-03-11 01:58:45','2002-07-13 01:37:37'),(86,'Martine','Keebler','gideon31@example.org','531.649.7045x7976','1975-11-23 05:00:24','2013-01-15 01:55:11'),(87,'Aaliyah','Hahn','arianna.ledner@example.net','1-294-737-5727x50704','1973-11-24 04:40:08','2015-01-10 09:10:46'),(88,'Josh','Bogan','oscar86@example.org','160-387-5474x548','1982-05-14 05:31:26','2009-02-18 21:49:12'),(89,'Ila','Becker','keegan.kuvalis@example.org','(575)848-8964x91284','1988-05-20 22:36:48','2011-02-15 18:30:00'),(90,'Gwen','Carroll','raphaelle10@example.org','457-662-3293','1986-10-20 15:37:09','1988-11-10 09:54:25'),(91,'Jordon','Kuvalis','keanu.bode@example.com','(794)973-6364x9131','1979-02-20 05:48:31','2005-03-17 07:01:35'),(92,'Derek','Hansen','opal.murphy@example.org','(446)484-9816x422','2000-06-21 01:19:29','2011-02-04 13:20:26'),(93,'Enrique','Miller','xadams@example.com','246.726.5370x9649','1973-03-08 18:13:15','1973-04-04 08:36:02'),(94,'Eliza','Willms','brown.lance@example.net','1-194-341-4641','2003-08-06 16:01:41','2012-05-02 16:27:54'),(95,'Constantin','Spencer','eheaney@example.net','482-816-4653x7602','1974-01-30 10:07:23','2006-11-27 03:41:09'),(96,'Wilson','Kris','senger.katlyn@example.com','160-192-6958x466','1972-12-23 19:34:59','2003-01-15 13:49:14'),(97,'Joyce','Lesch','hnitzsche@example.com','1-171-523-3638x935','1996-02-04 13:39:57','2019-08-16 15:37:50'),(98,'Della','Kassulke','delpha.mcclure@example.net','01181885435','1994-02-13 23:52:42','2010-07-20 08:19:01'),(99,'Walker','Kovacek','phyatt@example.org','(264)578-4854x8009','1975-10-09 20:21:22','1980-08-14 01:25:04'),(100,'Myron','Metz','isabella34@example.com','02088397719','1979-03-20 12:00:32','1984-07-12 12:57:38');
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

-- Dump completed on 2019-12-26  3:29:54
