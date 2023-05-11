-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: bigfoot_test_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
                          `id` int unsigned NOT NULL AUTO_INCREMENT,
                          `artist` varchar(50) NOT NULL,
                          `name` varchar(100) NOT NULL,
                          `release_date` int NOT NULL,
                          `sales` decimal(15,2) NOT NULL,
                          `genre` varchar(50) NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'AC/DC','Back in Black',1980,29.40,'Hard rock'),(2,'Pink Floyd','The Dark Side of the Moon',1973,24.40,'Progressive rock'),(3,'Meat Loaf','Bat Out of Hell',1977,21.70,'Hard rock, Progressive rock'),(4,'Whitney Houston / Various artists','The Bodyguard',1992,28.40,'R&B, Soul, Pop, Soundtrack'),(5,'The Eagles','Their Greatest Hits (1971–1975)',1976,41.20,'Rock, Soft rock, Folk rock'),(6,'Bee Gees / Various artists','Saturday Night Fever',1977,21.60,'Disco'),(7,'Fleetwood Mac','Rumours',1977,27.90,'Soft rock'),(8,'Shania Twain','Come On Over',1997,29.60,'Country, Pop'),(9,'Various artists','Grease: The Original Soundtrack from the Motion Picture',1978,14.40,'Soundtrack'),(10,'Led Zeppelin','Led Zeppelin IV',1971,29.00,'Hard rock, Heavy metal, Folk'),(11,'Michael Jackson','Bad',1987,19.30,'Pop, Funk, Rock'),(12,'Alanis Morissette','Jagged Little Pill',1995,24.40,'Alternative rock'),(13,'Celine Dion','Falling into You',1996,21.20,'Pop, Soft rock'),(14,'The Beatles','Sgt. Pepper\'s Lonely Hearts Club Band',1967,13.10,'Rock'),(15,'The Eagles','Hotel California',1976,31.50,'Rock, Soft rock, Folk rock'),(16,'Various artists','Dirty Dancing',1987,17.90,'Pop, Rock, R&B'),(17,'Adele','21',2011,30.80,'Pop, Soul'),(18,'Celine Dion','Let\'s Talk About Love',1997,19.30,'Pop, Soft rock'),(19,'The Beatles','1',2000,22.60,'Rock'),(20,'Michael Jackson','Dangerous',1991,16.30,'Rock, Funk, Pop'),(21,'Madonna','The Immaculate Collection',1990,19.40,'Pop, Dance'),(22,'The Beatles','Abbey Road',1969,14.40,'Rock'),(23,'ABBA','Gold: Greatest Hits',1992,23.00,'Pop, Disco'),(24,'Bruce Springsteen','Born in the U.S.A.',1984,19.60,'Rock'),(25,'Dire Straits','Brothers in Arms',1985,17.70,'Rock, Pop'),(26,'James Horner','Titanic: Music from the Motion Picture',1997,18.10,'Soundtrack'),(27,'Metallica','Metallica',1991,21.20,'Thrash metal, Heavy metal'),(28,'Nirvana','Nevermind',1991,16.70,'Grunge, Alternative rock'),(29,'Pink Floyd','The Wall',1979,17.60,'Progressive rock'),(30,'Santana','Supernatural',1999,20.50,'Rock'),(31,'Guns N\' Roses','Appetite for Destruction',1987,21.90,'Hard rock'),(32,'Elton John','Goodbye Yellow Brick Road',1973,8.50,'Rock, Pop Rock, Glam Rock');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'William Shakespeare'),(2,'Dr. Dre'),(3,'Nas'),(4,'Biggie Smalls'),(5,'Malcolm X');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(250) NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quotes_author_id_fk` (`author_id`),
  CONSTRAINT `quotes_author_id_fk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (1,'To be, or not to be: that is the question.',1),(2,'All the world\'s a stage, and all the men and women merely players.',1),(3,'It\'s a crazy world, full of sinners and saints. Criminals and cops. Friends and foes.',2),(4,'My crown is in my heart, not on my head; not decked with diamonds and Indian stones, nor to be seen: my crown is called content.',1),(5,'I never sleep, cause sleep is the cousin of death.',3),(6,'The valiant never taste of death but once.',1),(7,'We can\'t change the world until we change ourselves.',4),(8,'Love looks not with the eyes, but with the mind, and therefore is winged Cupid painted blind.',1),(9,'If you don\'t stand for something, you will fall for anything.',5),(10,'What\'s done is done.',1),(11,'Lately I\'ve been hard to reach. I\'ve been too long on my own.',2);
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
                         `id` int unsigned NOT NULL AUTO_INCREMENT,
                         `name` varchar(100) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'commenter'),(2,'admin'),(3,'author'),(4,'reviewer'),(8,'bot');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `username` varchar(35) NOT NULL,
                         `email` varchar(65) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `album_id` int unsigned DEFAULT NULL,
                         `role_id` int unsigned DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `username` (`username`),
                         UNIQUE KEY `email` (`email`),
                         KEY `users_albums_id_fk` (`album_id`),
                         KEY `fk_users_role_id` (`role_id`),
                         CONSTRAINT `fk_users_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
                         CONSTRAINT `users_albums_id_fk` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john_doe','john_doe@example.com','password123',1,1),(2,'jane_smith','jane_smith@example.com','password456',2,NULL),(3,'sam_jones','sam_jones@example.com','password789',3,2),(4,'joe_brown','joe_brown@example.com','password1234',4,NULL),(5,'mary_white','mary_white@example.com','password5678',5,3),(6,'david_kim','david_kim@example.com','password9012',6,NULL),(7,'lisa_green','lisa_green@example.com','password3456',7,4),(8,'steve_taylor','steve_taylor@example.com','password7890',8,NULL),(9,'amy_harris','amy_harris@example.com','password12345',9,1),(10,'jack_smith','jack_smith@example.com','password67890',10,NULL),(11,'katie_lee','katie_lee@example.com','password123456',11,2),(12,'mike_johnson','mike_johnson@example.com','password789012',12,NULL),(13,'sara_davis','sara_davis@example.com','password345678',13,3),(14,'chris_wilson','chris_wilson@example.com','password901234',14,NULL),(15,'jessica_lee','jessica_lee@example.com','password567890',15,4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_albums`
--

DROP TABLE IF EXISTS `users_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_albums` (
                                `user_id` int NOT NULL,
                                `album_id` int unsigned NOT NULL,
                                KEY `users_albums_user_id_fk` (`user_id`),
                                KEY `users_albums_album_id_fk` (`album_id`),
                                CONSTRAINT `users_albums_album_id_fk` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
                                CONSTRAINT `users_albums_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_albums`
--

LOCK TABLES `users_albums` WRITE;
/*!40000 ALTER TABLE `users_albums` DISABLE KEYS */;
INSERT INTO `users_albums` VALUES (13,2),(8,2),(13,3),(11,3),(6,3),(14,5),(10,5),(6,5),(3,6),(2,6),(1,7),(12,8),(8,8),(6,8),(1,8),(15,9),(5,9),(3,9),(15,10),(7,10),(15,11),(14,11),(12,11),(10,11),(9,11),(7,11),(15,12),(5,13),(15,14),(14,14),(13,14),(12,14),(9,14),(14,15),(11,15),(10,15),(5,15),(2,15),(1,15),(10,17),(3,17),(6,18),(1,18),(14,19),(12,19),(8,19),(5,19),(4,20),(3,20),(15,22),(13,22),(10,22),(7,22),(3,22),(12,23),(8,23),(6,23),(13,24),(5,24),(13,25),(10,25),(8,25),(15,26),(13,26),(2,26),(11,27),(10,27),(10,28),(2,28),(1,28),(14,29),(13,29),(5,29),(4,29),(13,30),(11,30),(8,30),(1,30),(11,31),(10,31),(7,31),(3,31),(2,31),(15,32),(13,32),(5,32),(7,21);
/*!40000 ALTER TABLE `users_albums` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 14:45:19
