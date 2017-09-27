-- MySQL dump 10.13  Distrib 5.7.19, for osx10.12 (x86_64)
--
-- Host: localhost    Database: dbname
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `paassword` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
INSERT INTO `example` VALUES (1,'aaa','123'),(2,'bbb','123'),(3,'ccc','123');
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logevents`
--

DROP TABLE IF EXISTS `logevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logevents` (
  `username` varchar(20) DEFAULT NULL,
  `event_name` varchar(20) DEFAULT NULL,
  `event_type` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logevents`
--

LOCK TABLES `logevents` WRITE;
/*!40000 ALTER TABLE `logevents` DISABLE KEYS */;
INSERT INTO `logevents` VALUES ('aaa','js-gps-track','click','2017-09-04 09:35:26'),('aaa','question-hyperlink','click','2017-09-04 10:03:52'),('aaa','undefined','click','2017-09-04 10:03:56'),('aaa','undefined','click','2017-09-04 10:22:54'),('aaa','undefined','click','2017-09-04 10:23:22'),('aaa','undefined','click','2017-09-04 10:23:36'),('aaa','atv','click','2017-09-04 10:23:39'),('aaa','snippet-code','click','2017-09-04 10:23:40'),('aaa','undefined','click','2017-09-04 10:24:54'),('ccc','suggest-edit-post','click','2017-09-04 10:50:42'),('ccc','cancel-edit','click','2017-09-04 10:50:47'),('ccc','suggest-edit-post','click','2017-09-04 10:52:42'),('aaa','vote','click','2017-09-04 11:02:40'),('aaa','star-off','click','2017-09-04 11:02:41'),('aaa','f-input','click','2017-09-07 01:25:59'),('aaa','svg-icon','click','2017-09-07 01:26:11'),('aaa','f-input','click','2017-09-07 01:27:59'),('bbb','f-input','click','2017-09-07 01:30:00'),('bbb','svg-icon','click','2017-09-07 01:30:03'),('bbb','-link','click','2017-09-07 01:30:06'),('bbb','-link','click','2017-09-07 01:30:08'),('bbb','-link','click','2017-09-07 01:30:10'),('bbb','-link','click','2017-09-07 01:30:19'),('ccc','undefined','click','2017-09-07 01:32:11'),('ccc','-link','click','2017-09-07 01:32:36'),('ccc','-link','click','2017-09-07 01:32:38'),('ccc','undefined','click','2017-09-07 01:34:12'),('aaa','undefined','click','2017-09-07 05:15:15'),('aaa','undefined','click','2017-09-07 05:17:15'),('aaa','post-tag','click','2017-09-07 05:18:22'),('aaa','post-tag','click','2017-09-07 05:18:32'),('aaa','undefined','click','2017-09-07 05:18:36'),('aaa','status','click','2017-09-07 05:18:46'),('aaa','status','click','2017-09-07 05:19:04'),('aaa','post-tag','click','2017-09-07 05:20:22'),('aaa','post-tag','click','2017-09-07 05:21:34'),('aaa','undefined','click','2017-09-07 05:26:40'),('aaa','-link','click','2017-09-07 05:41:37');
/*!40000 ALTER TABLE `logevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_history` (
  `username` varchar(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
INSERT INTO `login_history` VALUES ('aaa','2017-09-04 04:26:48'),(' aaa ','2017-09-04 04:35:42'),(' aaa ','2017-09-04 04:37:48'),('aaa','2017-09-04 04:38:38'),('aaa','2017-09-04 05:02:11'),('aaa','2017-09-04 05:10:00'),('aaa','2017-09-04 05:33:20'),('aaa','2017-09-04 05:37:13'),('aaa','2017-09-04 05:40:17'),('aaa','2017-09-04 05:45:48'),('aaa','2017-09-04 05:47:31'),('aaa','2017-09-04 05:50:37'),('aaa','2017-09-04 05:52:04'),('aaa','2017-09-04 05:53:02'),('aaa','2017-09-04 06:27:27'),('aaa','2017-09-04 06:31:45'),('aaa','2017-09-04 06:35:12'),('aaa','2017-09-04 06:37:40'),('aaa','2017-09-04 06:39:48'),('aaa','2017-09-04 06:49:12'),('aaa','2017-09-04 08:25:20'),('aaa','2017-09-04 08:26:18'),('aaa','2017-09-04 08:28:21'),('aaa','2017-09-04 08:47:19'),('aaa','2017-09-04 08:51:53'),('bbb','2017-09-04 08:52:55'),('aaa','2017-09-04 08:56:22'),('ccc','2017-09-04 08:58:26'),('aaa','2017-09-04 09:21:35'),('aaa','2017-09-04 09:31:23'),('aaa','2017-09-04 09:33:30'),('aaa','2017-09-04 09:34:18'),('aaa','2017-09-04 09:35:21'),('ccc','2017-09-04 10:50:33'),('aaa','2017-09-04 11:02:30'),('aaa','2017-09-04 11:03:38'),('bbb','2017-09-04 11:10:40'),('aaa','2017-09-07 01:25:39'),('bbb','2017-09-07 01:29:33'),('ccc','2017-09-07 01:32:04'),('undefined','2017-09-07 01:35:03'),('aaa','2017-09-07 01:39:48'),('aaa','2017-09-07 01:59:45'),('aaa','2017-09-07 02:14:47'),('aaa','2017-09-07 04:31:44'),('aaa','2017-09-07 04:32:57'),('aaa','2017-09-07 04:35:39'),('aaa','2017-09-07 04:36:03'),('aaa','2017-09-07 04:37:59'),('aaa','2017-09-07 04:39:18'),('aaa','2017-09-07 04:40:06'),('aaa','2017-09-07 04:41:08'),('aaa','2017-09-07 04:42:51'),('bbb','2017-09-07 04:43:08'),('aaa','2017-09-07 04:46:20'),('aaa','2017-09-07 04:51:00'),('aaa','2017-09-07 04:51:19'),('aaa','2017-09-07 04:56:16'),('aaa','2017-09-07 04:56:56'),('aaa','2017-09-07 04:59:00'),('aaa','2017-09-07 04:59:16'),('aaa','2017-09-07 05:02:38'),('aaa','2017-09-07 05:04:20'),('aaa','2017-09-07 05:14:37'),('aaa','2017-09-07 05:18:09'),('aaa','2017-09-07 06:31:09'),('aaa','2017-09-07 06:50:34'),('bbb','2017-09-07 06:54:28'),('bbb','2017-09-07 07:15:19'),('aaa','2017-09-07 07:19:20'),('aaa','2017-09-07 07:58:58'),('bbb','2017-09-07 08:01:12'),('undefined','2017-09-07 17:32:22'),('aaa','2017-09-07 17:32:36'),('aaa','2017-09-07 17:40:07'),('aaa','2017-09-07 17:47:14'),('aaa','2017-09-07 18:05:21'),('aaa','2017-09-07 18:05:56'),('aaa','2017-09-07 18:06:01'),('aaa','2017-09-07 18:10:45'),('undefined','2017-09-07 18:15:02'),('undefined','2017-09-07 18:15:07'),('undefined','2017-09-07 18:15:12'),('undefined','2017-09-07 18:15:12'),('undefined','2017-09-07 18:15:13'),('undefined','2017-09-07 18:18:03'),('undefined','2017-09-07 18:18:57'),('aaa','2017-09-07 18:19:08'),('undefined','2017-09-07 18:22:25'),('aaa','2017-09-07 18:39:05'),('aaa','2017-09-07 18:41:18'),('aaa','2017-09-07 18:42:45'),('aaa','2017-09-07 18:43:42'),('aaa','2017-09-07 18:47:29'),('aaa','2017-09-07 18:48:48'),('aaa','2017-09-07 18:50:50'),('aaa','2017-09-07 18:59:04'),('aaa','2017-09-07 19:17:13'),('aaa','2017-09-07 19:18:26'),('aaa','2017-09-07 19:28:44'),('aaa','2017-09-07 19:29:40'),('aaa','2017-09-07 19:33:41'),('aaa','2017-09-07 19:35:27'),('aaa','2017-09-07 19:43:56'),('aaa','2017-09-07 19:47:20'),('aaa','2017-09-07 19:48:06'),('aaa','2017-09-07 19:49:14'),('aaa','2017-09-07 20:01:13'),('aaa','2017-09-07 20:02:43'),('aaa','2017-09-07 20:03:25'),('aaa','2017-09-07 20:05:21'),('aaa','2017-09-07 20:06:58'),('aaa','2017-09-07 20:07:56'),('aaa','2017-09-07 20:08:26'),('aaa','2017-09-07 20:10:00'),('aaa','2017-09-07 20:10:54'),('aaa','2017-09-07 20:11:50'),('aaa','2017-09-07 20:20:30'),('aaa','2017-09-07 20:23:19'),('aaa','2017-09-07 20:29:32'),('aaa','2017-09-07 20:34:25'),('aaa','2017-09-07 20:36:50'),('ccc','2017-09-07 20:37:22'),('bbb','2017-09-07 20:38:00'),('bbb','2017-09-07 20:39:00'),('bbb','2017-09-07 20:45:04'),('bbb','2017-09-07 20:50:07'),('bbb','2017-09-07 20:51:40'),('bbb','2017-09-07 20:54:09'),('ccc','2017-09-07 20:54:23'),('bbb','2017-09-07 20:58:34');
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `name` varchar(50) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventType` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `html` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES ('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','java','2017-09-07 19:49:18'),('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java','equality','2017-09-07 19:49:35'),('aaa','js-gps-track','click','https://stackoverflow.com/questions/tagged/equality','\n                    Should I always ask a dog owner before I pet their dog?\n                ','2017-09-07 19:49:43'),('aaa','question-hyperlink','click','https://stackoverflow.com/questions/tagged/equality','Which equals operator (== vs ===) should be used in JavaScript comparisons?','2017-09-07 19:50:00'),('aaa','vote-up-off','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','up vote','2017-09-07 19:50:03'),('aaa','undefined','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','×','2017-09-07 19:50:06'),('aaa','vote-down-off','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','down vote','2017-09-07 19:51:18'),('aaa','undefined','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','×','2017-09-07 19:51:35'),('aaa','star-off','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','favorite','2017-09-07 19:51:43'),('aaa','message-close','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','×','2017-09-07 19:52:00'),('aaa','star-off','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','favorite','2017-09-07 19:52:03'),('aaa','message-close','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','×','2017-09-07 19:52:06'),('aaa','vote-down-off','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','down vote','2017-09-07 19:53:18'),('aaa','undefined','click','https://stackoverflow.com/questions/359494/which-equals-operator-vs-should-be-used-in-javascript-comparisons','×','2017-09-07 19:53:35'),('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','java','2017-09-07 19:53:43'),('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','java','2017-09-07 20:07:36'),('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','nullpointerexception','2017-09-07 20:08:12'),('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','json','2017-09-07 20:08:38'),('aaa','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','java','2017-09-07 20:09:37'),('ccc','js-gps-track','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','\n                    Is my interpretation of the second bullet in Warcaster correct?\n               ','2017-09-07 20:37:37'),('bbb','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','java','2017-09-07 20:38:13'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:45:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:45:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:45:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:45:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:45:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:45:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:47:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:47:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:47:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:47:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:47:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:47:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:49:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:49:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:49:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:49:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:49:09'),('bbb','','scroll','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','','2017-09-07 20:49:09'),('bbb','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','nullpointerexception','2017-09-07 20:51:52'),('ccc','post-tag','click','https://stackoverflow.com/questions/tagged/java?sort=frequent&pageSize=15','nullpointerexception','2017-09-07 20:54:31'),('ccc','post-tag','click','https://stackoverflow.com/questions/tagged/nullpointerexception','spring','2017-09-07 20:54:33'),('ccc','','scroll','https://stackoverflow.com/questions/tagged/spring','','2017-09-07 20:54:34'),('ccc','','scroll','https://stackoverflow.com/questions/tagged/spring','','2017-09-07 20:54:34'),('ccc','','scroll','https://stackoverflow.com/questions/tagged/spring','','2017-09-07 20:54:34'),('ccc','','scroll','https://stackoverflow.com/questions/tagged/spring','','2017-09-07 20:54:34'),('ccc','','scroll','https://stackoverflow.com/questions/tagged/spring','','2017-09-07 20:56:31'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:56:34'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:56:35'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:56:35'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:56:35'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:56:35'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:56:35'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:58:34'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:58:34'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:58:34'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:58:34'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:58:34'),('ccc','','scroll','https://stackoverflow.com/questions/42198050/what-causes-java-lang-illegalstateexception-neither-bindingresult-nor-plain-ta','','2017-09-07 20:58:35');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `email` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('aaa','aaa','123'),('bbb','bbb','123'),('ccc','ccc','123');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userevents`
--

DROP TABLE IF EXISTS `userevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userevents` (
  `UserName` varchar(50) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventType` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `html` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userevents`
--

LOCK TABLES `userevents` WRITE;
/*!40000 ALTER TABLE `userevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `userevents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-07 14:01:30
