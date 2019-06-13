CREATE DATABASE  IF NOT EXISTS `flipkart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `flipkart`;

-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: flipkart
-- ------------------------------------------------------
-- Server version	5.5.45

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
-- Table structure for `user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `user` (
	`USER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`REGISTER_TYPE` varchar(4) DEFAULT NULL,
	`PROFILE_TYPE` varchar(32) DEFAULT NULL,
	`REGISTRATION_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`LAST_SESSION` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
	`PASSWORD_EXPIRED` smallint(6) DEFAULT '-1',
	`FIELD1` smallint(5) DEFAULT NULL,
	`FIELD2` int(11) DEFAULT NULL,
	`FIELD3` bigint(20) DEFAULT NULL,
	`FIELD4` varchar(256) DEFAULT NULL,
	`FIELD5` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00', 
	PRIMARY KEY(`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` VALUES (1000, 'USER', 'USER', '2019-04-16 06:19:10', '2019-04-16 06:19:10', '-1', NULL, NULL, NULL, NULL, '2019-04-16 06:19:10');
INSERT INTO `user` VALUES (1001, 'USER', 'USER', '2019-04-16 06:19:10', '2019-04-16 06:19:10', '-1', NULL, NULL, NULL, NULL, '2019-04-16 06:19:10');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for `user_registration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `user_registration`(
	`USER_ID` bigint(20) NOT NULL,
	`USERNAME` varchar(128) NOT NULL,
	`PASSWORD` varchar(128) NOT NULL,
	`PASSWORD_INVALID` smallint(6) DEFAULT '-1',
	`RESET_PASSWORD_CODE` varchar(128) DEFAULT NULL,
	`TIMEOUT` smallint(6) DEFAULT '-1',
	`PASSWORD_CREATION_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	`RESET_PASSWORD_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
	`FIELD1` smallint(6) DEFAULT NULL,
	`FIELD2` int(11) DEFAULT NULL,
	`FIELD3` varchar(256) DEFAULT NULL,
	`FIELD4` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
	PRIMARY KEY (`USER_ID`),
	CONSTRAINT `username` UNIQUE (`USERNAME`),
	CONSTRAINT `userreg_user_key1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;

INSERT INTO `user_registration` VALUES ('1000', 'abc@gmail.com',  'abc@123', '-1', 'RESETPASS', '-1', '2019-04-17 07:37:10', '2019-04-17 07:37:10', NULL, NULL, NULL, '2019-04-17 07:37:10');
INSERT INTO `user_registration` VALUES ('1001', 'abcd@gmail.com','abcd@123', '-1', 'RESETPASS', '-1', '2019-04-17 07:37:10', '2019-04-17 07:37:10', NULL, NULL, NULL, '2019-04-17 07:37:10');

/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for `role`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `role`(
	`ROLE_ID` bigint(20) NOT NULL,
	`USER_ROLE` varchar(128) DEFAULT NULL,
	PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;

INSERT INTO `role` VALUES (2000, 'USER');
INSERT INTO `role` VALUES (2001, 'PREMIUM_MEMBER');
INSERT INTO `role` VALUES (2002, 'ADMIN');

/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for `user_role`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `user_role`(
	`USER_ID` bigint(20) NOT NULL,
	`ROLE_ID` bigint(20) NOT NULL,
	CONSTRAINT `user_role_key1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE,
	CONSTRAINT `user_role_key2` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;

INSERT INTO `user_role` VALUES (1000, 2000);
INSERT INTO `user_role` VALUES (1001, 2000);
INSERT INTO `user_role` VALUES (1001, 2002);

/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `L1_category`(
	`L1_CATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`L1_CATEGORY_NAME` varchar(256),
	PRIMARY KEY (`L1_CATEGORY_ID`)
)ENGINE=InnoDB AUTO_INCREMENT=6001 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `L1_category`
--

LOCK TABLES `L1_category` WRITE;
/*!40000 ALTER TABLE `L1_category` DISABLE KEYS */;

INSERT INTO `L1_category` VALUES (6001, 'Electronics');
INSERT INTO `L1_category` VALUES (6002, 'TVs & Appliances');
INSERT INTO `L1_category` VALUES (6003, 'Men');
INSERT INTO `L1_category` VALUES (6004, 'Women');
INSERT INTO `L1_category` VALUES (6005, 'Baby & Kids');
INSERT INTO `L1_category` VALUES (6006, 'Home & Furniture');
INSERT INTO `L1_category` VALUES (6007, 'Sports, Books & More');
INSERT INTO `L1_category` VALUES (6008, 'Offer Zone');

/*!40000 ALTER TABLE `L1_category` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `L2_category`(
	`L2_CATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`L1_CATEGORY_ID` bigint(20) NOT NULL,
	`L2_CATEGORY_NAME` varchar(256) NOT NULL,
	PRIMARY KEY (`L2_CATEGORY_ID`),
	CONSTRAINT `L1_L2_category_key` FOREIGN KEY (`L1_CATEGORY_ID`) REFERENCES `L1_category` (`L1_CATEGORY_ID`) ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=7001 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `L2_category`
--

LOCK TABLES `L2_category` WRITE;
/*!40000 ALTER TABLE `L2_category` DISABLE KEYS */;

INSERT INTO `L2_category` VALUES (7001, 6001, 'Mobiles');
INSERT INTO `L2_category` VALUES (7002, 6001, 'Mobile Accessories');
INSERT INTO `L2_category` VALUES (7003, 6001, 'Smart Wearable Tech');
INSERT INTO `L2_category` VALUES (7004, 6001, 'Health Care Appliances');
INSERT INTO `L2_category` VALUES (7005, 6001, 'Laptops');
INSERT INTO `L2_category` VALUES (7006, 6001, 'Computer Accessories');
INSERT INTO `L2_category` VALUES (7007, 6001, 'Tablets');
INSERT INTO `L2_category` VALUES (7008, 6001, 'Speakers');
INSERT INTO `L2_category` VALUES (7009, 6001, 'Camera');
INSERT INTO `L2_category` VALUES (7010, 6001, 'Featured');

INSERT INTO `L2_category` VALUES (7011, 6002, 'Top Brands');
INSERT INTO `L2_category` VALUES (7012, 6002, 'Air Conditioners');
INSERT INTO `L2_category` VALUES (7013, 6002, 'Shop By Brand');
INSERT INTO `L2_category` VALUES (7014, 6002, 'Refrigerators');
INSERT INTO `L2_category` VALUES (7015, 6002, 'Washing Machine');
INSERT INTO `L2_category` VALUES (7016, 6002, 'Kitchen Appliances');
INSERT INTO `L2_category` VALUES (7017, 6002, 'Small Home Appliances');
INSERT INTO `L2_category` VALUES (7018, 6002, 'New Launches');

INSERT INTO `L2_category` VALUES (7019, 6003, 'Footwear');
INSERT INTO `L2_category` VALUES (7020, 6003, 'Top wear');
INSERT INTO `L2_category` VALUES (7021, 6003, 'Bottom wear');
INSERT INTO `L2_category` VALUES (7022, 6003, 'Winter wear');
INSERT INTO `L2_category` VALUES (7023, 6003, 'Sports wear');
INSERT INTO `L2_category` VALUES (7024, 6003, 'Innerwear & Sleepwear');
INSERT INTO `L2_category` VALUES (7025, 6003, 'Watches');
INSERT INTO `L2_category` VALUES (7026, 6003, 'Accessories');
INSERT INTO `L2_category` VALUES (7027, 6003, 'Personal Care Appliances');
INSERT INTO `L2_category` VALUES (7028, 6003, 'Featured');

INSERT INTO `L2_category` VALUES (7029, 6004, 'Western Wear');
INSERT INTO `L2_category` VALUES (7030, 6004, 'Ethnic Wear');
INSERT INTO `L2_category` VALUES (7031, 6004, 'Sandals');
INSERT INTO `L2_category` VALUES (7032, 6004, 'Shoes');
INSERT INTO `L2_category` VALUES (7033, 6004, 'Personal Care Appliances');
INSERT INTO `L2_category` VALUES (7034, 6004, 'Beauty & Grooming');
INSERT INTO `L2_category` VALUES (7035, 6004, 'Jewellery');
INSERT INTO `L2_category` VALUES (7036, 6004, 'Accessories');
INSERT INTO `L2_category` VALUES (7037, 6004, 'Featured');

/*!40000 ALTER TABLE `L2_category` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `L3_category`(
	`L3_CATEGORY_ID` bigint(20) NOT NULL,
	`L2_CATEGORY_ID` bigint(20) NOT NULL,
	`L3_CATEGORY_NAME` varchar(256) NOT NULL,
	PRIMARY KEY (`L3_CATEGORY_ID`),
	CONSTRAINT `L2_L3_category_key` FOREIGN KEY (`L2_CATEGORY_ID`) REFERENCES `L2_category` (`L2_CATEGORY_ID`) ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=8001 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `L3_category`
--

LOCK TABLES `L3_category` WRITE;
/*!40000 ALTER TABLE `L3_category` DISABLE KEYS */;

INSERT INTO `L3_category` VALUES (8001, 7001, 'Mi');
INSERT INTO `L3_category` VALUES (8002, 7001, 'Realme');
INSERT INTO `L3_category` VALUES (8003, 7001, 'Samsung');
INSERT INTO `L3_category` VALUES (8004, 7001, 'OPPO');
INSERT INTO `L3_category` VALUES (8005, 7001, 'Vivo');

INSERT INTO `L3_category` VALUES (8006, 7002, 'Mobile Cases');
INSERT INTO `L3_category` VALUES (8007, 7002, 'Headphones & Headsets');
INSERT INTO `L3_category` VALUES (8008, 7002, 'Screenguards');
INSERT INTO `L3_category` VALUES (8009, 7002, 'Memory Cards');

INSERT INTO `L3_category` VALUES (8010, 7003, 'Smart Watches');
INSERT INTO `L3_category` VALUES (8011, 7003, 'Smart Glasses (VR)');
INSERT INTO `L3_category` VALUES (8012, 7003, 'Smart Bands');

INSERT INTO `L3_category` VALUES (8013, 7011, 'Mi');
INSERT INTO `L3_category` VALUES (8014, 7011, 'Vu');
INSERT INTO `L3_category` VALUES (8015, 7011, 'Thomson');
INSERT INTO `L3_category` VALUES (8016, 7011, 'LG');
INSERT INTO `L3_category` VALUES (8017, 7011, 'Micromax');
INSERT INTO `L3_category` VALUES (8018, 7011, 'Kodak');

INSERT INTO `L3_category` VALUES (8019, 7012, 'Inverter AC');
INSERT INTO `L3_category` VALUES (8020, 7012, 'Split ACs');
INSERT INTO `L3_category` VALUES (8021, 7012, 'Window ACs');

INSERT INTO `L3_category` VALUES (8022, 7014, 'Single Door');
INSERT INTO `L3_category` VALUES (8023, 7014, 'Double Door');
INSERT INTO `L3_category` VALUES (8024, 7014, 'Triple Door');
INSERT INTO `L3_category` VALUES (8025, 7014, 'Side by Side');

INSERT INTO `L3_category` VALUES (8026, 7019, 'Sports Shoes');
INSERT INTO `L3_category` VALUES (8027, 7019, 'Casual Shoes');
INSERT INTO `L3_category` VALUES (8028, 7019, 'Formal Shoes');
INSERT INTO `L3_category` VALUES (8029, 7019, 'Sandals & Floaters');
INSERT INTO `L3_category` VALUES (8030, 7019, 'Flip- Flops');

INSERT INTO `L3_category` VALUES (8031, 7020, 'T-Shirts');
INSERT INTO `L3_category` VALUES (8032, 7020, 'Shirts');
INSERT INTO `L3_category` VALUES (8033, 7020, 'Kurtas');
INSERT INTO `L3_category` VALUES (8034, 7020, 'Suits & Blazers');

INSERT INTO `L3_category` VALUES (8035, 7025, 'Fastrack');
INSERT INTO `L3_category` VALUES (8036, 7025, 'Casio');
INSERT INTO `L3_category` VALUES (8037, 7025, 'Titan');


/*!40000 ALTER TABLE `L3_category` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE `products`(
	`PRODUCT_ID` bigint(20) NOT NULL,
	`L3_category_ID` bigint(20) NOT NULL,
	`PRODUCT_NAME` varchar(512) NOT NULL,
	`PRODUCT_SKU` varchar(512) NOT NULL,
	`PRODUCT_PRICE` float NOT NULL,
	`PRODUCT_WEIGHT` float NOT NULL,
	`PRODUCT_DESCRIPTION` varchar(1024) DEFAULT NULL,
	`PRODUCT_IMAGE_URL` varchar(512) DEFAULT NULL,
	PRIMARY KEY (`PRODUCT_ID`),
	CONSTRAINT `products_L3_category_key` FOREIGN KEY (`L3_category_ID`) REFERENCES `L3_category` (`L3_category_ID`) ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=9001 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data in table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` VALUES (9001, )

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


