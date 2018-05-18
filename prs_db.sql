CREATE DATABASE  IF NOT EXISTS `prs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prs`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: prs
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VendorID` int(11) NOT NULL,
  `PartNumber` varchar(50) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Unit` varchar(255) DEFAULT NULL,
  `PhotoPath` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedByUser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `vendor_part` (`VendorID`,`PartNumber`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'ME280LL','iPad Mini 2',296.99,NULL,'https://store.storeimages.cdn-apple.com/4976/as-images.apple.com/is/image/AppleInc/aos/published/images/i/pa/ipad/pro/ipad-pro-select-scene2-201706-i1?wid=474&amp;hei=385&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1505500524375',1,'2018-04-12 15:27:13','2018-05-10 19:43:00',1),(3,3,'105810','Hammermill Paper, Premium Multi-Purpose Paper Poly Wrap',8.99,'1 Ream / 500 Sheets','https://images-na.ssl-images-amazon.com/images/I/61gq1J4rXhL._SY355_.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:43:05',1),(4,4,'122374','HammerMill® Copy Plus Copy Paper, 8 1/2\" x 11\", Case',29.99,'1 Case, 10 Reams, 500 Sheets per ream','https://smedia.webcollage.net/rwvfp/wc/cp/24791405/module/internationalpaper//_cp/products/1442343686169/tab-c4fcdb17-5fe7-4661-8aa9-c33e8107f4da/9a7c6a79-5187-41c0-95f4-7e1881da0624.jpg.w960.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:45:44',1),(5,4,'784551','Logitech M325 Wireless Optical Mouse, Ambidextrous, Black ',14.99,NULL,'https://www.staples-3p.com/s7/is/image/Staples/s0485188_sc7?wid=512&hei=512',1,'2018-04-12 15:27:14','2018-05-11 20:46:55',1),(6,4,'382955','Staples Mouse Pad, Black',2.99,NULL,'http://www.wms.co.uk/sharedimages/Large/Staples/ST-3045152.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:47:59',1),(7,4,'2122178','AOC 24-Inch Class LED Monitor',99.99,NULL,'https://www.staples-3p.com/s7/is/image/Staples/s1022276_sc7?wid=512&hei=512',1,'2018-04-12 15:27:14','2018-05-11 20:48:58',1),(8,4,'2460649','Laptop HP Notebook 15-AY163NR',529.99,NULL,'http://techmall.com.ng/image/cache/data/Laptop/HP/HP%20Notebook%2015-ay192nr-700x550.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:49:51',1),(9,4,'2256788','Laptop Dell i3552-3240BLK 15.6\"',239.99,NULL,'https://images-na.ssl-images-amazon.com/images/I/714f0YtWmRL._SL1500_.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:51:03',1),(10,4,'IM12M9520','Laptop Acer Acer™ Aspire One Cloudbook 14\"',224.99,NULL,'https://i5.walmartimages.com/asr/2e0fa3a7-3edf-4b31-b9a5-df9567bd2dcd_1.5e88b55ffd88378d901b89ce856d3e6d.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF',1,'2018-04-12 15:27:14','2018-05-11 20:51:54',1),(11,4,'940600','Canon imageCLASS Copier (D530)',99.99,NULL,'https://i.pinimg.com/originals/d2/57/7c/d2577c3541c2aafaf1f59ea0e7b568b3.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:52:54',1),(12,5,'228148','Acer Aspire ATC-780A-UR12 Desktop Computer',399.99,'','https://images10.newegg.com/NeweggImage/ProductImage/83-101-528-Z01.jpg',1,'2018-04-12 15:27:14','2018-05-11 20:54:17',1),(13,5,'279364','Lenovo IdeaCentre All-In-One Desktop',349.99,'','https://www3.lenovo.com/medias/lenovo-ideacentre-aio-520s-hero.png?context=bWFzdGVyfGltYWdlc3w0NjcxNnxpbWFnZS9wbmd8aW1hZ2VzL2hlNy9oNzIvOTQwNzI1NTQ3ODMwMi5wbmd8Mjk4MGJmYzk5ZjMwNDMxZDVlMmYxNTg0NWM3OThhYzU5OTc0OTNiZGE5YTM5YTQzNTZhMzdiMmM4NTI2N2YyMw',1,'2018-04-12 15:27:14','2018-05-11 20:55:40',1),(14,4,'NH1001','New Hire Office Supply Bundle',49.99,'',NULL,1,'2018-05-16 05:37:56','2018-05-16 05:37:56',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaserequest`
--

DROP TABLE IF EXISTS `purchaserequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaserequest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Justification` varchar(255) NOT NULL,
  `DateNeeded` date NOT NULL,
  `DeliveryMode` varchar(25) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'New',
  `Total` decimal(10,2) NOT NULL,
  `SubmittedDate` datetime NOT NULL,
  `ReasonForRejection` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedByUser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `purchaserequest_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaserequest`
--

LOCK TABLES `purchaserequest` WRITE;
/*!40000 ALTER TABLE `purchaserequest` DISABLE KEYS */;
INSERT INTO `purchaserequest` VALUES (8,13,'copy paper','we\'ve been out of copy paper for two days','2018-05-15','Pickup','Approved',149.95,'2018-05-16 06:47:33','',1,'2018-05-16 06:47:07','2018-05-16 06:50:31',1),(12,14,'need more monitors','increase my productivity','2018-05-08','Pickup','Rejected',1999.80,'2018-05-17 14:51:17','bro you dont need 20 of those',1,'2018-05-16 12:47:05','2018-05-17 16:39:21',1),(13,13,'Copy Paper','We\'re out of copy paper again!','2018-05-14','FedEx','Review',449.85,'2018-05-16 12:50:15','',1,'2018-05-16 12:48:38','2018-05-16 12:50:15',1),(18,11,'supplies','need office supplies for empty office','2018-05-16','Pickup','Approved',49.99,'2018-05-17 16:35:58','',1,'2018-05-17 16:35:39','2018-05-17 16:35:57',1),(19,11,'computer','need a computer to do tech stuff','2018-05-16','UPS','Approved',499.98,'2018-05-17 16:38:21','you need a moniter dude',1,'2018-05-17 16:36:48','2018-05-17 16:38:40',1);
/*!40000 ALTER TABLE `purchaserequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaserequestlineitem`
--

DROP TABLE IF EXISTS `purchaserequestlineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaserequestlineitem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaserequestid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedByUser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `req_pdt` (`purchaserequestid`,`productid`),
  KEY `productid` (`productid`),
  CONSTRAINT `purchaserequestlineitem_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`ID`),
  CONSTRAINT `purchaserequestlineitem_ibfk_2` FOREIGN KEY (`purchaserequestid`) REFERENCES `purchaserequest` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaserequestlineitem`
--

LOCK TABLES `purchaserequestlineitem` WRITE;
/*!40000 ALTER TABLE `purchaserequestlineitem` DISABLE KEYS */;
INSERT INTO `purchaserequestlineitem` VALUES (12,8,4,5,1,'2018-05-16 06:47:27','2018-05-16 06:47:27',1),(18,13,4,15,1,'2018-05-16 12:48:46','2018-05-16 12:48:46',1),(26,12,7,20,1,'2018-05-17 14:51:13','2018-05-17 14:51:13',1),(27,18,14,1,1,'2018-05-17 16:35:53','2018-05-17 16:35:53',1),(28,19,12,1,1,'2018-05-17 16:37:00','2018-05-17 16:37:00',1),(29,19,7,1,1,'2018-05-17 16:38:17','2018-05-17 16:38:17',1);
/*!40000 ALTER TABLE `purchaserequestlineitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `PhoneNumber` varchar(12) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `IsReviewer` tinyint(1) NOT NULL,
  `IsAdmin` tinyint(1) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedByUser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uname` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'SYSTEM','xxxxx','System','System','XXX-XXX-XXXX','system@test.com',1,1,1,'2018-04-12 15:27:13','2018-05-10 16:08:37',1),(4,'darthNater007','a','Nate','Perkins','513-262-6710','nsperk@gmail.com',1,1,1,'2018-05-02 14:48:35','2018-05-16 12:46:13',1),(9,'BobBob','Bob','Bob','Bobson','123-456-7891','bob@bob.bob',0,0,1,'2018-05-07 17:02:57','2018-05-07 17:02:57',1),(11,'jbostic','b','Jake','Bostic','513-515-4805','jbostic@gmail',0,0,1,'2018-05-11 09:12:30','2018-05-16 12:45:45',1),(12,'employer','employer','Employers','GiveUsJobs','888-888-8888','employers@weneedjobs.com',0,0,1,'2018-05-14 14:51:06','2018-05-14 14:51:06',1),(13,'cLoughry','craig','Craig','Loughry','222-222-2222','cLoughry@gmail.com',0,0,1,'2018-05-16 06:44:43','2018-05-16 06:44:43',1),(14,'mBurk','matthew','Matthew','Burkard','111-111-1111','mb@gmail.com',0,0,1,'2018-05-16 06:45:49','2018-05-17 13:28:44',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zip` varchar(5) NOT NULL,
  `PhoneNumber` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `IsPreapproved` tinyint(1) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedByUser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `vcode` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'BB-1001','Best Buy','100 Best Buy Street','Louisville','KY','40207','502-111-9099','geeksquad@bestbuy.com',0,1,'2018-04-12 15:27:13','2018-04-12 15:27:13',1),(2,'AP-1001','Apple Inc','1 Infinite Loop','Cupertino','CA','95014','800-123-4567','genius@apple.com',0,1,'2018-04-12 15:27:13','2018-04-12 15:27:13',1),(3,'AM-1001','Amazon','410 Terry Ave. North','Seattle','WA','98109','206-266-1000','amazon@amazon.com',1,1,'2018-04-12 15:27:13','2018-04-12 15:27:13',1),(4,'ST-1001','Staples','9550 Mason Montgomery Rd','Mason','OH','45040','513-754-0235','support@orders.staples.com',1,1,'2018-04-12 15:27:13','2018-04-12 15:27:13',1),(5,'MC-1001','Micro Center','11755 Mosteller Rd','Sharonville','OH','45241','513-782-8500','support@microcenter.com',1,1,'2018-04-12 15:27:13','2018-04-12 15:27:13',1),(6,'RSHK','RadioShack','123 Vine St.','Cincinnati','OH','45202','513-700-2476','gerald@radioshack.com',0,1,'2018-05-02 21:20:15','2018-05-03 09:17:32',1);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-18 10:53:23
