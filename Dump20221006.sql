CREATE DATABASE  IF NOT EXISTS `gamersparadise` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gamersparadise`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: gamersparadise
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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(65) DEFAULT NULL COMMENT 'Holds product id (PK in the products table) \nOne to many relation',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Razer'),(2,'Steelseries'),(3,'DXRacer'),(4,'Deltaco Gaming'),(5,'Cooler Master'),(6,'Logitech'),(7,'Trust'),(8,'Microsoft'),(9,'Sony'),(10,'SanDisk');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL COMMENT 'Holds category name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Computer accessaries'),(2,'Gaming computer'),(3,'Console'),(4,'Gaming chair'),(5,'Mobile accessaries'),(6,'Home & hobby'),(7,'Sale');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_products`
--

DROP TABLE IF EXISTS `categories_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_products`
--

LOCK TABLES `categories_products` WRITE;
/*!40000 ALTER TABLE `categories_products` DISABLE KEYS */;
INSERT INTO `categories_products` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,4,7),(8,4,8),(9,4,9),(10,4,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,3,17),(18,3,18),(19,7,11),(20,7,12),(21,7,13),(22,7,17),(23,7,18);
/*!40000 ALTER TABLE `categories_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Holds customer name',
  `adress` varchar(255) DEFAULT NULL COMMENT 'Holds customer adress',
  `email` varchar(255) DEFAULT NULL COMMENT 'Holds customer email',
  `phone` char(24) DEFAULT NULL COMMENT 'Holds customer phone number',
  PRIMARY KEY (`id`),
  KEY `customer_info` (`email`,`phone`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Mudkip','701, chemin de Reynaud','celina00@example.com','+33 6 38 65 98 51'),(2,'Blastoise','19, rue de Boyer PerrierBourg','ribeiro.nicolas@dijoux.com','+33 7 34 25 17 74'),(3,'Luxray','chemin Rossi Delattre-sur-Mary','patrick.sauvage@maillot.com','+33 7 58 72 40 32'),(4,'Torterra','229, rue Léon Guyon VerdierVille','acharpentier@hubert.com','+33 6 86 07 60 51'),(5,'Snorlax','394, boulevard de Voisin','faubert@yahoo.fr','+33 7 00 78 77 40'),(6,'Infernape','3, chemin Delannoy','blanc.jeannine@yahoo.fr','+33 6 98 87 24 84'),(7,'Ninetales','9, avenue de Labbe','ines54@orange.fr','+33 7 00 30 52 00'),(8,'Flygon','2, chemin Luc Gallet','adrienne.bonnin@voisin.com','+33 6 34 47 74 67'),(9,'Squirtle','53, rue Tristan Barre','gjacob@blin.fr','+33 7 47 70 01 89'),(10,'Typhlosion','place Nath Mary','nboyer@noos.fr','+33 7 00 02 77 28'),(11,'Absol','476, avenue Laine','auguste99@free.fr','+33 6 98 27 63 54'),(12,'Eevee','84, impasse Berthelot','alexandre.guibert@noos.fr','+33 7 45 63 92 77');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_rows`
--

DROP TABLE IF EXISTS `order_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_rows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL COMMENT 'Holds order id from the orders table',
  `product_id` int DEFAULT NULL COMMENT 'Holds item info (item id) from products table ',
  `quantity` int DEFAULT NULL COMMENT 'Holds item quantity',
  PRIMARY KEY (`id`),
  KEY `fk_order_rows_order_id_idx` (`order_id`),
  CONSTRAINT `fk_order_rows_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Holds info on order items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_rows`
--

LOCK TABLES `order_rows` WRITE;
/*!40000 ALTER TABLE `order_rows` DISABLE KEYS */;
INSERT INTO `order_rows` VALUES (1,1,7,2),(2,1,7,1),(3,2,2,1),(4,2,2,1),(5,3,5,3),(6,4,7,1),(7,5,4,1),(8,5,10,5),(9,6,1,1),(10,7,4,1);
/*!40000 ALTER TABLE `order_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `customer_id` int DEFAULT NULL COMMENT 'Holds customer id from the customers table',
  `purchase_date` date DEFAULT NULL COMMENT 'Holds the date the order was issued',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,12,'2022-09-15'),(2,5,'2022-09-16'),(3,7,'2022-09-16'),(4,3,'2022-09-17'),(5,4,'2022-09-17'),(6,10,'2022-09-17'),(7,7,'2022-09-19'),(8,3,'2022-09-19'),(9,3,'2022-09-25'),(10,1,'2022-09-26');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orders_with_total_price`
--

DROP TABLE IF EXISTS `orders_with_total_price`;
/*!50001 DROP VIEW IF EXISTS `orders_with_total_price`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_with_total_price` AS SELECT 
 1 AS `order_id`,
 1 AS `SUM(quantity*price)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_with_totalquantity`
--

DROP TABLE IF EXISTS `orders_with_totalquantity`;
/*!50001 DROP VIEW IF EXISTS `orders_with_totalquantity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_with_totalquantity` AS SELECT 
 1 AS `order_id`,
 1 AS `SUM(quantity)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_brand_id_idx` (`brand_id`),
  CONSTRAINT `fk_products_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'STEELSERIES Arctis Nova 3 Multi-System Gaming Headset - Svart','<!DOCTYPE html>',1190.00),(2,2,'STEELSERIES Arctis Nova 7 Wireless Gaming Headset - Svart',NULL,2190.00),(3,1,'RAZER DeathAdder V3 Pro Lightweight Trådlös Gamingmus - Vit',NULL,1689.00),(4,1,'RAZER DeathAdder V3 Pro Lightweight Trådlös Gamingmus - Svart',NULL,1689.00),(5,2,'STEELSERIES Arctis Nova 1 Gaming Headset - Svart',NULL,699.00),(6,2,'STEELSERIES Arctis Nova 1P Gaming Headset - Svart',NULL,699.00),(7,3,'DXRACER FORMULA F08-N',NULL,2990.00),(8,3,'DXRACER FORMULA F08-NP',NULL,2990.00),(9,3,'DXRACER AIR R1S-GPG',NULL,4490.00),(10,3,'DXRACER GLADIATOR G001-NW',NULL,3790.00),(11,4,'DELTACO GAMING Compact RGB Mekaniskt Tangentbord White Line','rea',389.00),(12,4,'DELTACO GAMING Compact RGB Mekaniskt Tangentbord ','rea',389.00),(13,5,'COOLER MASTER MK730 RGB TKL Tangentbord','rea',649.00),(14,6,'LOGITECH POP Keys Trådlöst Tangentbord - Rosa',NULL,999.00),(15,6,'LOGITECH POP Keys Trådlöst Tangentbord - Gul',NULL,999.00),(16,6,'LOGITECH G715 Trådlöst Gaming Tangentbord RGB TKL [GX Brown] - Off White',NULL,2099.00),(17,8,'MICROSOFT Xbox Series Trådlös Xbox Kontroll Carbon Black','rea',599.00),(18,9,'SONY Playstation 5 DualSense Trådlös PS5 Kontroll - Midnight Black','rea',749.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `orders_with_total_price`
--

/*!50001 DROP VIEW IF EXISTS `orders_with_total_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_with_total_price` AS with `order_rows_products` as (select `order_rows`.`order_id` AS `order_id`,`order_rows`.`product_id` AS `product_id`,`order_rows`.`quantity` AS `quantity`,`products`.`id` AS `id`,`products`.`name` AS `name`,`products`.`price` AS `price` from (`order_rows` left join `products` on((`order_rows`.`product_id` = `products`.`id`)))) select `order_rows_products`.`order_id` AS `order_id`,sum((`order_rows_products`.`quantity` * `order_rows_products`.`price`)) AS `SUM(quantity*price)` from `order_rows_products` group by `order_rows_products`.`order_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_with_totalquantity`
--

/*!50001 DROP VIEW IF EXISTS `orders_with_totalquantity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_with_totalquantity` AS select `order_rows`.`order_id` AS `order_id`,sum(`order_rows`.`quantity`) AS `SUM(quantity)` from `order_rows` group by `order_rows`.`order_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-07  8:52:26
