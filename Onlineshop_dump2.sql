-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineshop
-- ------------------------------------------------------
-- Server version	8.0.35

create schema Onlineshop;
use Onlineshop;

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
-- Temporary view structure for view `batman`
--

DROP TABLE IF EXISTS `batman`;
/*!50001 DROP VIEW IF EXISTS `batman`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `batman` AS SELECT 
 1 AS `customer_id`,
 1 AS `username`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone_number`,
 1 AS `review_id`,
 1 AS `product_id`,
 1 AS `rating`,
 1 AS `comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `supercategory_id` int DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Electronics',NULL),(2,'Computers',1),(3,'Mobile Phones',1),(4,'Home Appliances',NULL),(5,'Kitchen',4),(6,'Garden',NULL),(7,'Furniture',6),(8,'Gaming',2),(9,'TV & Audio',1),(10,'Cameras',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!50001 DROP VIEW IF EXISTS `customer_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_order` AS SELECT 
 1 AS `customer_id`,
 1 AS `username`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(320) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'jdoe','John','Doe','1234567890','jdoe@example.com'),(2,'asmith','Alice','Smith','0987654321','asmith@example.com'),(3,'bwayne','Bruce','Wayne','9876543210','bwayne@example.com'),(4,'ckent','Clark','Kent','8765432109','ckent@example.com'),(5,'dprince','Diana','Prince','7654321098','dprince@example.com'),(6,'pparker','Peter','Parker','6543210987','pparker@example.com'),(7,'tstark','Tony','Stark','5432109876','tstark@example.com'),(8,'ssmith','Steve','Smith','4321098765','ssmith@example.com'),(9,'nhawke','Natasha','Hawke','3210987654','nhawke@example.com'),(10,'brichards','Bruce','Richards','2109876543','brichards@example.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `debit`
--

DROP TABLE IF EXISTS `debit`;
/*!50001 DROP VIEW IF EXISTS `debit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `debit` AS SELECT 
 1 AS `customer_id`,
 1 AS `username`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone_number`,
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `quantity`,
 1 AS `card_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!50001 DROP VIEW IF EXISTS `earnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `earnings` AS SELECT 
 1 AS `customer_id`,
 1 AS `username`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone_number`,
 1 AS `total_money_spent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `Image` tinytext NOT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id` (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'image_data_1'),(2,2,'image_data_2'),(3,3,'image_data_3'),(4,4,'image_data_4'),(5,5,'image_data_5'),(6,6,'image_data_6'),(7,7,'image_data_7'),(8,8,'image_data_8'),(9,9,'image_data_9'),(10,10,'image_data_10');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_item_id`),
  UNIQUE KEY `order_item_id` (`order_item_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,1,2),(2,1,2,1),(3,2,3,4),(4,2,4,1),(5,3,5,3),(6,3,6,2),(7,4,7,1),(8,4,8,1),(9,5,9,5),(10,5,10,2);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_raneg`
--

DROP TABLE IF EXISTS `order_raneg`;
/*!50001 DROP VIEW IF EXISTS `order_raneg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_raneg` AS SELECT 
 1 AS `customer_id`,
 1 AS `username`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `time_of_purchase` datetime NOT NULL,
  `status` varchar(15) NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `to_address` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `status` CHECK (`status` IN ("pending","on_the_way","cancelled", "arrived"))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-12-15 14:30:00','arrived',199.99,'123 Elm Street'),(2,2,'2024-12-16 10:00:00','pending',99.99,'456 Oak Avenue'),(3,3,'2024-12-17 15:00:00','arrived',499.49,'789 Pine Road'),(4,4,'2024-12-18 09:00:00','on_the_way',59.99,'987 Birch Lane'),(5,5,'2024-12-19 12:45:00','cancelled',349.99,'456 Cedar Drive'),(6,6,'2024-12-20 17:00:00','arrived',29.99,'123 Spruce Street'),(7,7,'2024-12-21 13:30:00','pending',129.99,'678 Maple Ave'),(8,8,'2024-12-22 11:00:00','arrived',149.99,'789 Aspen Blvd'),(9,9,'2024-12-23 08:15:00','on_the_way',89.99,'321 Palm Road'),(10,10,'2024-12-24 14:45:00','pending',199.99,'654 Oak Circle');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_information`
--

DROP TABLE IF EXISTS `payment_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_information` (
  `payment_info_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `card_type` varchar(10) NOT NULL,
  `payment_network` varchar(50) NOT NULL,
  `card_number` varchar(19) NOT NULL,
  `expiration_date` varchar(5) NOT NULL,
  `cvc` varchar(4) NOT NULL,
  PRIMARY KEY (`payment_info_id`),
  UNIQUE KEY `payment_info_id` (`payment_info_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payment_information_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_information`
--

LOCK TABLES `payment_information` WRITE;
/*!40000 ALTER TABLE `payment_information` DISABLE KEYS */;
INSERT INTO `payment_information` VALUES (1,1,'John',' Doe','q','Visa','1','4111111111111111','12/25','123'),(2,2,'Alice',' Smith','a','Debit','1','4222222222222222','11/26','234'),(3,3,'Bruce',' Wayne','g','Debit','1','4333333333333333','10/27','345'),(4,4,'Clark',' Kent','a','Visa','32','4444444444444444','09/28','456'),(5,5,'Diana',' Prince','v','Debit','1','4555555555555555','08/29','567'),(6,6,'Peter',' Parker','a','Debit','6','4666666666666666','07/30','678'),(7,7,'Tony',' Stark','v','Visa','1','4777777777777777','06/31','789'),(8,8,'Steve',' Smith','a','Debit','3','4888888888888888','05/32','890'),(9,9,'Natasha',' Hawke','a','Debit','1','4999999999999999','04/33','901'),(10,10,'Bruce',' Richards','v','Visa','2','4000000000000000','03/34','123');
/*!40000 ALTER TABLE `payment_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(15,2) DEFAULT NULL,
  `avaliable_stock` int NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Smartphone','Latest model smartphone with high resolution camera.',699.99,50),(2,'Laptop','Powerful laptop with long battery life.',999.99,30),(3,'Tablet','Portable tablet for work and entertainment.',399.99,100),(4,'Blender','High-speed blender for smoothies.',59.99,200),(5,'Microwave Oven','Compact microwave with multiple modes.',149.99,70),(6,'Garden Hose','Durable garden hose for all seasons.',29.99,150),(7,'Office Chair','Ergonomic chair for office use.',129.99,80),(8,'Gaming Console','Next-gen gaming console.',499.99,40),(9,'Smart TV','4K Ultra HD Smart TV.',899.99,25),(10,'Digital Camera','High-performance digital camera.',749.99,60);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_categories`
--

DROP TABLE IF EXISTS `products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_categories` (
  `product_category_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_category_id`),
  UNIQUE KEY `product_category_id` (`product_category_id`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_categories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `products_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_categories`
--

LOCK TABLES `products_categories` WRITE;
/*!40000 ALTER TABLE `products_categories` DISABLE KEYS */;
INSERT INTO `products_categories` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `comment` text,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `review_id` (`review_id`),
  KEY `product_id` (`product_id`),
  KEY `reviewer_id` (`reviewer_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `ratingCheck` CHECK(`rating` => 1 and `rating` <= 5)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,5.0,'Excellent product!'),(2,2,2,4.0,'Works well but a bit pricey.'),(3,3,3,3.0,'Average quality.'),(4,4,4,5.0,'Highly recommend this blender!'),(5,5,5,4.0,'Good for the price.'),(6,6,6,5.0,'Perfect for gardening.'),(7,7,7,4.0,'Very comfortable chair.'),(8,8,8,5.0,'Amazing gaming console!'),(9,9,9,4.0,'Good picture quality.'),(10,10,10,5.0,'Love this camera!');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `payment_info_id` int NOT NULL,
  `order_id` int NOT NULL,
  `transaction_price` decimal(15,2) NOT NULL,
  `status_of payment` varchar(20) NOT NULL,
  `time_of_payment` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `order_id` (`order_id`),
  KEY `payment_info_id` (`payment_info_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`payment_info_id`) REFERENCES `payment_information` (`payment_info_id`),
  CONSTRAINT `status_of payment` CHECK (`status_of payment` IN ("pending","cancelled", "finished"))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1,199.99,'finished','2024-12-15 14:35:00'),(2,2,2,99.99,'pending','2024-12-16 10:05:00'),(3,3,3,499.49,'finished','2024-12-17 15:10:00'),(4,4,4,59.99,'finished','2024-12-18 09:10:00'),(5,5,5,349.99,'cancelled','2024-12-19 12:50:00'),(6,6,6,29.99,'finished','2024-12-20 17:05:00'),(7,7,7,129.99,'pending','2024-12-21 13:35:00'),(8,8,8,149.99,'finished','2024-12-22 11:05:00'),(9,9,9,89.99,'finished','2024-12-23 08:20:00'),(10,10,10,199.99,'pending','2024-12-24 14:50:00');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `batman`
--

/*!50001 DROP VIEW IF EXISTS `batman`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `batman` AS select `c`.`customer_id` AS `customer_id`,`c`.`username` AS `username`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`email` AS `email`,`c`.`phone_number` AS `phone_number`,`r`.`review_id` AS `review_id`,`r`.`product_id` AS `product_id`,`r`.`rating` AS `rating`,`r`.`comment` AS `comment` from (`reviews` `r` join `customers` `c` on((`r`.`reviewer_id` = `c`.`customer_id`))) where (`r`.`rating` <= 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_order`
--

/*!50001 DROP VIEW IF EXISTS `customer_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_order` AS select distinct `c`.`customer_id` AS `customer_id`,`c`.`username` AS `username`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`email` AS `email`,`c`.`phone_number` AS `phone_number` from ((((`customers` `c` join `orders` `o` on((`c`.`customer_id` = `o`.`customer_id`))) join `order_item` `oi` on((`o`.`order_id` = `oi`.`order_id`))) join `products` `p` on((`oi`.`product_id` = `p`.`product_id`))) join `images` `i` on((`p`.`product_id` = `i`.`product_id`))) where (`i`.`image_id` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `debit`
--

/*!50001 DROP VIEW IF EXISTS `debit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `debit` AS select `c`.`customer_id` AS `customer_id`,`c`.`username` AS `username`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`email` AS `email`,`c`.`phone_number` AS `phone_number`,`p`.`product_id` AS `product_id`,`p`.`product_name` AS `product_name`,`oi`.`quantity` AS `quantity`,`pi`.`card_type` AS `card_type` from (((((`transactions` `t` join `payment_information` `pi` on((`t`.`payment_info_id` = `pi`.`payment_info_id`))) join `orders` `o` on((`t`.`order_id` = `o`.`order_id`))) join `order_item` `oi` on((`o`.`order_id` = `oi`.`order_id`))) join `products` `p` on((`oi`.`product_id` = `p`.`product_id`))) join `customers` `c` on((`o`.`customer_id` = `c`.`customer_id`))) where (`pi`.`card_type` = 'Debit') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `earnings`
--

/*!50001 DROP VIEW IF EXISTS `earnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `earnings` AS select `c`.`customer_id` AS `customer_id`,`c`.`username` AS `username`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`email` AS `email`,`c`.`phone_number` AS `phone_number`,sum((`p`.`price` * `oi`.`quantity`)) AS `total_money_spent` from (((`customers` `c` join `orders` `o` on((`c`.`customer_id` = `o`.`customer_id`))) join `order_item` `oi` on((`o`.`order_id` = `oi`.`order_id`))) join `products` `p` on((`oi`.`product_id` = `p`.`product_id`))) group by `c`.`customer_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_raneg`
--

/*!50001 DROP VIEW IF EXISTS `order_raneg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_raneg` AS select distinct `c`.`customer_id` AS `customer_id`,`c`.`username` AS `username`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`email` AS `email`,`c`.`phone_number` AS `phone_number` from (((`customers` `c` join `orders` `o` on((`c`.`customer_id` = `o`.`customer_id`))) join `order_item` `oi` on((`o`.`order_id` = `oi`.`order_id`))) join `products` `p` on((`oi`.`product_id` = `p`.`product_id`))) where (`p`.`price` between 20 and 70) */;
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

-- Dump completed on 2024-12-17 17:16:08
