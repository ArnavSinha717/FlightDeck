-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: airline_reservation_system
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Dumping data for table `aircrafts`
--

LOCK TABLES `aircrafts` WRITE;
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
INSERT INTO `aircrafts` VALUES (1,'Airbus A320',180),(2,'Boeing 737',188),(3,'ATR 72',78);
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES ('AMD','Sardar Vallabhbhai Patel International Airport','Ahmedabad','India'),('ATQ','Sri Guru Ram Dass Jee International Airport','Amritsar','India'),('BBI','Biju Patnaik International Airport','Bhubaneswar','India'),('BHO','Raja Bhoj Airport','Bhopal','India'),('BLR','Kempegowda International Airport','Bengaluru','India'),('BOM','Chhatrapati Shivaji Maharaj International Airport','Mumbai','India'),('CCU','Netaji Subhas Chandra Bose International Airport','Kolkata','India'),('CJB','Coimbatore International Airport','Coimbatore','India'),('COK','Cochin International Airport','Kochi','India'),('DED','Dehradun Airport','Dehradun','India'),('DEL','Indira Gandhi International Airport','Delhi','India'),('GAU','Lokpriya Gopinath Bordoloi International Airport','Guwahati','India'),('GOI','Dabolim Airport','Goa','India'),('HYD','Rajiv Gandhi International Airport','Hyderabad','India'),('IDR','Devi Ahilya Bai Holkar Airport','Indore','India'),('IMF','Imphal International Airport','Imphal','India'),('IXA','Maharaja Bir Bikram Airport','Agartala','India'),('IXB','Bagdogra International Airport','Bagdogra','India'),('IXC','Chandigarh Airport','Chandigarh','India'),('IXE','Mangalore International Airport','Mangalore','India'),('IXL','Kushok Bakula Rimpochee Airport','Leh','India'),('IXR','Birsa Munda Airport','Ranchi','India'),('IXZ','Veer Savarkar International Airport','Port Blair','India'),('JAI','Jaipur International Airport','Jaipur','India'),('JDH','Jodhpur Airport','Jodhpur','India'),('LKO','Chaudhary Charan Singh International Airport','Lucknow','India'),('MAA','Chennai International Airport','Chennai','India'),('NAG','Dr. Babasaheb Ambedkar International Airport','Nagpur','India'),('PAT','Jay Prakash Narayan Airport','Patna','India'),('PNQ','Pune Airport','Pune','India'),('RPR','Swami Vivekananda Airport','Raipur','India'),('SXR','Sheikh ul-Alam International Airport','Srinagar','India'),('TRV','Thiruvananthapuram International Airport','Thiruvananthapuram','India'),('UDR','Maharana Pratap Airport','Udaipur','India'),('VNS','Lal Bahadur Shastri Airport','Varanasi','India'),('VTZ','Visakhapatnam International Airport','Visakhapatnam','India');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2025-08-28 13:30:03',4500.00,'CONFIRMED',1,1),(2,'2025-08-28 17:13:12',4500.00,'CONFIRMED',5,1),(3,'2025-08-28 17:20:54',5200.00,'CONFIRMED',5,2),(4,'2025-08-28 17:22:37',3850.00,'CONFIRMED',3,4),(5,'2025-09-07 12:57:50',4500.00,'CONFIRMED',6,1),(6,'2025-09-15 12:52:12',4500.00,'CONFIRMED',7,1),(7,'2025-09-15 12:52:47',3100.00,'CONFIRMED',7,3),(8,'2025-09-15 13:06:20',4500.00,'CONFIRMED',7,1),(9,'2025-09-16 06:30:29',4500.00,'CONFIRMED',7,1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'6E-204','2025-09-15 06:30:00','2025-09-15 09:15:00',4500.00,'MAA','DEL',1),(2,'AI-550','2025-09-15 11:00:00','2025-09-15 13:05:00',5200.00,'DEL','BOM',2),(3,'SG-334','2025-09-16 18:00:00','2025-09-16 19:00:00',3100.00,'BLR','MAA',3),(4,'6E-531','2025-09-16 08:45:00','2025-09-16 10:20:00',3850.00,'BOM','BLR',1),(5,'6E-221','2025-09-18 07:00:00','2025-09-18 09:05:00',4800.00,'PNQ','DEL',1),(6,'UK-856','2025-09-18 12:30:00','2025-09-18 13:35:00',2900.00,'BOM','GOI',3),(7,'AI-688','2025-09-19 15:00:00','2025-09-19 16:10:00',3250.00,'AMD','BOM',2),(8,'6E-789','2025-09-19 20:15:00','2025-09-19 22:05:00',5500.00,'HYD','CCU',1),(9,'SG-451','2025-09-20 09:00:00','2025-09-20 10:00:00',2500.00,'JAI','DEL',3),(10,'AI-502','2025-09-20 14:00:00','2025-09-20 16:45:00',6100.00,'DEL','BLR',2),(11,'6E-133','2025-09-21 10:20:00','2025-09-21 11:35:00',3400.00,'COK','MAA',3),(12,'UK-991','2025-09-21 21:00:00','2025-09-21 22:25:00',4150.00,'BLR','PNQ',1),(13,'AI-472','2025-10-01 05:45:00','2025-10-01 07:20:00',4200.00,'DEL','PAT',1),(14,'6E-621','2025-10-01 08:00:00','2025-10-01 09:15:00',3100.00,'BOM','IDR',3),(15,'UK-822','2025-10-01 10:30:00','2025-10-01 12:55:00',6500.00,'BLR','LKO',2),(16,'SG-301','2025-10-01 13:00:00','2025-10-01 14:10:00',3800.00,'CCU','GAU',3),(17,'AI-810','2025-10-01 16:20:00','2025-10-01 17:25:00',3500.00,'HYD','VTZ',1),(18,'6E-2024','2025-10-02 07:30:00','2025-10-02 09:00:00',5900.00,'DEL','SXR',1),(19,'UK-971','2025-10-02 09:45:00','2025-10-02 11:25:00',4100.00,'BOM','JAI',2),(20,'SG-488','2025-10-02 11:50:00','2025-10-02 13:00:00',3300.00,'BLR','COK',3),(21,'AI-440','2025-10-02 12:15:00','2025-10-02 14:35:00',7500.00,'CCU','IXZ',1),(22,'6E-632','2025-10-02 18:00:00','2025-10-02 19:10:00',2950.00,'HYD','PNQ',3),(23,'UK-707','2025-10-03 06:00:00','2025-10-03 07:10:00',3800.00,'DEL','ATQ',1),(24,'SG-298','2025-10-03 08:30:00','2025-10-03 09:50:00',3400.00,'BOM','NAG',3),(25,'AI-765','2025-10-03 10:00:00','2025-10-03 11:20:00',4500.00,'BLR','TRV',2),(26,'6E-555','2025-10-03 14:45:00','2025-10-03 15:45:00',2800.00,'CCU','BBI',3),(27,'UK-945','2025-10-03 19:30:00','2025-10-03 21:10:00',5100.00,'HYD','AMD',1),(28,'SG-141','2025-10-04 05:00:00','2025-10-04 06:30:00',8200.00,'DEL','IXL',1),(29,'AI-962','2025-10-04 09:15:00','2025-10-04 10:45:00',3900.00,'BOM','IXE',2),(30,'6E-212','2025-10-04 11:00:00','2025-10-04 13:15:00',6200.00,'BLR','VNS',1),(31,'UK-729','2025-10-04 15:30:00','2025-10-04 16:35:00',3100.00,'CCU','IXA',3),(32,'SG-818','2025-10-04 17:45:00','2025-10-04 19:05:00',4000.00,'HYD','RPR',3),(33,'6E-6371','2025-10-05 08:15:00','2025-10-05 09:35:00',3600.00,'PNQ','NAG',3),(34,'AI-402','2025-10-05 10:45:00','2025-10-05 11:55:00',3200.00,'LKO','DEL',2),(35,'UK-899','2025-10-05 12:30:00','2025-10-05 15:45:00',8500.00,'GAU','BOM',1),(36,'SG-456','2025-10-05 16:00:00','2025-10-05 18:10:00',5800.00,'BBI','BLR',2),(37,'6E-234','2025-10-05 19:50:00','2025-10-05 21:20:00',4300.00,'VTZ','MAA',1),(38,'AI-678','2025-10-06 07:50:00','2025-10-06 10:00:00',5900.00,'TRV','BOM',2),(39,'UK-772','2025-10-06 10:30:00','2025-10-06 11:30:00',2700.00,'IXE','BLR',3),(40,'SG-912','2025-10-06 13:10:00','2025-10-06 14:40:00',4100.00,'CJB','HYD',1),(41,'6E-459','2025-10-06 15:00:00','2025-10-06 17:20:00',6300.00,'ATQ','BOM',2),(42,'AI-812','2025-10-06 18:30:00','2025-10-06 19:30:00',2900.00,'IXC','DEL',3),(43,'UK-631','2025-10-07 11:30:00','2025-10-07 14:15:00',7800.00,'SXR','BOM',1),(44,'SG-123','2025-10-07 10:00:00','2025-10-07 11:35:00',8400.00,'IXL','DEL',1),(45,'6E-781','2025-10-07 14:00:00','2025-10-07 16:40:00',7200.00,'DED','BLR',2),(46,'AI-722','2025-10-07 16:00:00','2025-10-07 17:05:00',3500.00,'IXB','CCU',3),(47,'UK-987','2025-10-07 17:50:00','2025-10-07 20:10:00',7900.00,'IXZ','MAA',1),(48,'6E-501','2025-10-08 09:30:00','2025-10-08 10:55:00',3800.00,'UDR','BOM',3),(49,'AI-478','2025-10-08 11:20:00','2025-10-08 12:40:00',3400.00,'JDH','DEL',2),(50,'SG-567','2025-10-08 14:15:00','2025-10-08 15:30:00',3100.00,'IXR','CCU',3),(51,'UK-730','2025-10-08 16:00:00','2025-10-08 16:55:00',2900.00,'IXA','GAU',3),(52,'6E-888','2025-10-08 18:30:00','2025-10-08 19:35:00',4600.00,'IMF','CCU',1),(53,'AI-665','2025-10-09 10:00:00','2025-10-09 11:30:00',4200.00,'BHO','BOM',2),(54,'UK-821','2025-10-09 13:00:00','2025-10-09 15:25:00',6700.00,'LKO','BLR',1),(55,'SG-432','2025-10-09 16:30:00','2025-10-09 17:50:00',3500.00,'VNS','DEL',3),(56,'6E-911','2025-10-09 19:00:00','2025-10-09 21:20:00',5800.00,'PAT','BOM',2),(57,'AI-801','2025-10-10 08:45:00','2025-10-10 11:35:00',7200.00,'GAU','DEL',1),(58,'UK-789','2025-10-10 11:00:00','2025-10-10 13:10:00',6100.00,'BBI','BOM',2),(59,'SG-512','2025-10-10 14:20:00','2025-10-10 15:40:00',3900.00,'RPR','HYD',3),(60,'6E-345','2025-10-10 17:00:00','2025-10-10 18:25:00',4300.00,'IDR','DEL',1),(61,'AI-551','2025-10-10 19:30:00','2025-10-10 20:55:00',3700.00,'NAG','BOM',2),(62,'UK-878','2025-10-10 21:00:00','2025-10-10 23:35:00',6800.00,'GOI','DEL',1);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'Ravi Kumar','12A',1),(2,'fantestico','21E',2),(3,'fantestico','15C',3),(4,'David Kumar','27B',4),(5,'fantestico','21D',5),(6,'Pranit Shrestha','9F',6),(7,'Pranit Shrestha','7F',7),(8,'Pranit Shrestha','18A',8),(9,'Pranit Shrestha','15E',9);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ravi Kumar','ravi.kumar@example.com','hashed_password_placeholder_1','2025-08-28 13:27:11'),(2,'Priya Sharma','priya.sharma@example.com','hashed_password_placeholder_2','2025-08-28 13:27:11'),(3,'David Kumar','superiorthe349@gmail.com','$2b$12$5hRNsoxeovkXlhkZ/TqUn.gTIa8/JAgNMUX2z5iXez9JrKzdaH7Cm','2025-08-28 16:10:09'),(5,'fantestico','david.kumar@gmail.com','$2b$12$nNt/Y.xyDf4ctP.uDW9rZOx41sFaCtZ7.OR1vHkb36Pq9higwo9yO','2025-08-28 17:05:25'),(6,'fantestico','david.kumar2023@vitstudent.ac.in','$2b$12$FyyXktIr1qLc58/NwJpAYOKVMnNFoCAoXm.sM0pLCJQIFXNvb5Xpe','2025-09-07 12:57:28'),(7,'Pranit Shrestha','pranitshrestha7@gmail.com','$2b$12$Atw8cVSd0SpZ9gSrn0HpwuhVRDEyM4xNWFgElCU0q3V8ryplqvoBK','2025-09-15 12:51:52');
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

-- Dump completed on 2025-09-24  2:39:54
