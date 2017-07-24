-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: cfa
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies',2006,'english',86,'2016-09-02 10:23:01'),(2,'ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China',2006,'english',48,'2016-09-02 10:26:59'),(3,'ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory',2006,'english',50,'2016-09-02 10:27:06'),(4,'AFFAIR PREJUDICE','A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank',2006,'english',117,'2016-09-02 10:27:06'),(5,'AFRICAN EGG','A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in ',2006,'english',130,'2016-09-02 10:34:55'),(6,'AGENT TRUMAN','A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China',2006,'english',169,'2016-09-02 10:35:19'),(7,'AIRPLANE SIERRA','A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat',2006,'english',62,'2016-09-02 10:35:21'),(8,'AIRPORT POLLOCK','A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India',2006,'english',54,'2016-09-02 10:35:34'),(9,'ALABAMA DEVIL','A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scienti',2006,'english',114,'2016-09-02 10:37:08'),(10,'ALADDIN CALENDAR','A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China',2006,'english',63,'2016-09-02 10:37:08'),(11,'ALAMO VIDEOTAPE','A Boring Epistle of a Butler And a Cat who must Fight a Pastry Chef in A MySQL Convention',2006,'english',126,'2016-09-02 10:37:08'),(12,'ALASKA PHANTOM','A Fanciful Saga of a Hunter And a Pastry Chef who must Vanquish a Boy in Australia',2006,'english',136,'2016-09-02 10:37:08'),(13,'ALI FOREVER','A Action-Packed Drama of a Dentist And a Crocodile who must Battle a Feminist in The Canadian Rocki',2006,'english',150,'2016-09-02 10:37:08'),(14,'ALICE FANTASIA','A Emotional Drama of a A Shark And a Database Administrator who must Vanquish a Pioneer in Soviet G',2006,'english',94,'2016-09-02 10:37:08'),(15,'ALIEN CENTER','A Brilliant Drama of a Cat And a Mad Scientist who must Battle a Feminist in A MySQL Convention',2006,'english',46,'2016-09-02 10:37:08'),(16,'ALLEY EVOLUTION','A Fast-Paced Drama of a Robot And a Composer who must Battle a Astronaut in New Orleans',2006,'english',180,'2016-09-02 10:37:08'),(17,'ALONE TRIP','A Fast-Paced Character Study of a Composer And a Dog who must Outgun a Boat in An Abandoned Fun Hou',2006,'english',82,'2016-09-02 10:37:08'),(18,'ALTER VICTORY','A Thoughtful Drama of a Composer And a Feminist who must Meet a Secret Agent in The Canadian Rockie',2006,'english',57,'2016-09-02 10:37:08'),(19,'AMADEUS HOLY','A Emotional Display of a Pioneer And a Technical Writer who must Battle a Man in A Baloon',2006,'english',113,'2016-09-02 10:37:08'),(20,'AMELIE HELLFIGHTERS','A Boring Drama of a Woman And a Squirrel who must Conquer a Student in A Baloon',2006,'english',79,'2016-09-02 10:37:08'),(21,'AMERICAN CIRCUS','A Insightful Drama of a Girl And a Astronaut who must Face a Database Administrator in A Shark Tank',2006,'english',129,'2016-09-02 10:37:08'),(22,'AMISTAD MIDSUMMER','A Emotional Character Study of a Dentist And a Crocodile who must Meet a Sumo Wrestler in Californi',2006,'english',85,'2016-09-02 10:37:08'),(23,'ANACONDA CONFESSIONS','A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia',2006,'english',92,'2016-09-02 10:37:08'),(24,'ANALYZE HOOSIERS','A Thoughtful Display of a Explorer And a Pastry Chef who must Overcome a Feminist in The Sahara Des',2006,'english',181,'2016-09-02 10:37:08'),(25,'ANGELS LIFE','A Thoughtful Display of a Woman And a Astronaut who must Battle a Robot in Berlin',2006,'english',74,'2016-09-02 10:37:08'),(26,'ANNIE IDENTITY','A Amazing Panorama of a Pastry Chef And a Boat who must Escape a Woman in An Abandoned Amusement Pa',2006,'english',86,'2016-09-02 10:37:08'),(27,'ANONYMOUS HUMAN','A Amazing Reflection of a Database Administrator And a Astronaut who must Outrace a Database Admini',2006,'english',179,'2016-09-02 10:37:08'),(28,'ANTHEM LUKE','A Touching Panorama of a Waitress And a Woman who must Outrace a Dog in An Abandoned Amusement Park',2006,'english',91,'2016-09-02 10:37:08'),(29,'ANTITRUST TOMATOES','A Fateful Yarn of a Womanizer And a Feminist who must Succumb a Database Administrator in Ancient I',2006,'english',168,'2016-09-02 10:37:08'),(30,'ANYTHING SAVANNAH','A Epic Story of a Pastry Chef And a Woman who must Chase a Feminist in An Abandoned Fun House',2006,'english',82,'2016-09-02 10:37:08'),(31,'APACHE DIVINE','A Awe-Inspiring Reflection of a Pastry Chef And a Teacher who must Overcome a Sumo Wrestler in A U-',2006,'english',92,'2016-09-02 10:37:08'),(32,'APOCALYPSE FLAMINGOS','A Astounding Story of a Dog And a Squirrel who must Defeat a Woman in An Abandoned Amusement Park',2006,'english',119,'2016-09-02 10:37:08'),(33,'APOLLO TEEN','A Action-Packed Reflection of a Crocodile And a Explorer who must Find a Sumo Wrestler in An Abando',2006,'english',153,'2016-09-02 10:37:08'),(34,'ARABIA DOGMA','A Touching Epistle of a Madman And a Mad Cow who must Defeat a Student in Nigeria',2006,'english',62,'2016-09-02 10:37:08'),(35,'ARACHNOPHOBIA ROLLERCOASTER','A Action-Packed Reflection of a Pastry Chef And a Composer who must Discover a Mad Scientist in The',2006,'english',147,'2016-09-02 10:37:08'),(36,'ARGONAUTS TOWN','A Emotional Epistle of a Forensic Psychologist And a Butler who must Challenge a Waitress in An Aba',2006,'english',127,'2016-09-02 10:37:08'),(37,'ARIZONA BANG','A Brilliant Panorama of a Mad Scientist And a Mad Cow who must Meet a Pioneer in A Monastery',2006,'english',121,'2016-09-02 10:37:08'),(38,'ARK RIDGEMONT','A Beautiful Yarn of a Pioneer And a Monkey who must Pursue a Explorer in The Sahara Desert',2006,'english',68,'2016-09-02 10:37:08'),(39,'ARMAGEDDON LOST','A Fast-Paced Tale of a Boat And a Teacher who must Succumb a Composer in An Abandoned Mine Shaft',2006,'english',99,'2016-09-02 10:37:08'),(40,'ARMY FLINTSTONES','A Boring Saga of a Database Administrator And a Womanizer who must Battle a Waitress in Nigeria',2006,'english',148,'2016-09-02 10:37:08'),(41,'ARSENIC INDEPENDENCE','A Fanciful Documentary of a Mad Cow And a Womanizer who must Find a Dentist in Berlin',2006,'english',137,'2016-09-02 10:37:08'),(42,'ARTIST COLDBLOODED','A Stunning Reflection of a Robot And a Moose who must Challenge a Woman in California',2006,'english',170,'2016-09-02 10:37:08'),(43,'ATLANTIS CAUSE','A Thrilling Yarn of a Feminist And a Hunter who must Fight a Technical Writer in A Shark Tank',2006,'english',170,'2016-09-02 10:37:08'),(44,'ATTACKS HATE','A Fast-Paced Panorama of a Technical Writer And a Mad Scientist who must Find a Feminist in An Aban',2006,'english',113,'2016-09-02 10:37:08'),(45,'ATTRACTION NEWTON','A Astounding Panorama of a Composer And a Frisbee who must Reach a Husband in Ancient Japan',2006,'english',83,'2016-09-02 10:37:08'),(46,'AUTUMN CROW','A Beautiful Tale of a Dentist And a Mad Cow who must Battle a Moose in The Sahara Desert',2006,'english',108,'2016-09-02 10:37:08'),(47,'BABY HALL','A Boring Character Study of a A Shark And a Girl who must Outrace a Feminist in An Abandoned Mine S',2006,'english',153,'2016-09-02 10:37:08'),(48,'BACKLASH UNDEFEATED','A Stunning Character Study of a Mad Scientist And a Mad Cow who must Kill a Car in A Monastery',2006,'english',118,'2016-09-02 10:37:08'),(49,'BADMAN DAWN','A Emotional Panorama of a Pioneer And a Composer who must Escape a Mad Scientist in A Jet Boat',2006,'english',162,'2016-09-02 10:34:18');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `mobileNo` int(11) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Harish','harish@gmail.com',1233432232,23),(2,'Ganesh','Ganesh@gmail.com',1233432232,24),(3,'Mahesh','Mahesh@gmail.com',1233432232,25),(4,'vaneesh','vaneesh@gmail.com',1233432232,23),(5,'Pradeep','Pradeep@gmail.com',1233432232,24);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_movie`
--

DROP TABLE IF EXISTS `user_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_movie` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `user_movie_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_movie`
--

LOCK TABLES `user_movie` WRITE;
/*!40000 ALTER TABLE `user_movie` DISABLE KEYS */;
INSERT INTO `user_movie` VALUES (1,1,1,7),(2,1,2,8),(3,1,3,6),(4,2,1,8);
/*!40000 ALTER TABLE `user_movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-06 22:42:38
