-- MySQL dump 10.13  Distrib 5.1.40, for Win64 (unknown)
--
-- Host: localhost    Database: petclinic
-- ------------------------------------------------------
-- Server version	5.1.40-community

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
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'George','Franklin','110 W. Liberty St.','Madison','6085551023'),(2,'Betty','Davis','638 Cardinal Ave.','Sun Prairie','6085551749'),(3,'Eduardo','Rodriquez','2693 Commerce St.','McFarland','6085558763'),(4,'Harold','Davis','563 Friendly St.','Windsor','6085553198'),(5,'Peter','McTavish','2387 S. Fair Way','Madison','6085552765'),(6,'Jean','Coleman','105 N. Lake St.','Monona','6085552654'),(7,'Jeff','Black','1450 Oak Blvd.','Monona','6085555387'),(8,'Maria','Escobito','345 Maple St.','Madison','6085557683'),(9,'David','Schroeder','2749 Blackhawk Trail','Madison','6085559435'),(10,'Carlos','Estaban','2335 Independence La.','Waunakee','6085555487');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birth_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6teg4kcjcnjhduguft56wcfoa` (`owner_id`),
  KEY `FKtmmh1tq8pah5vxf8kuqqplo4p` (`type_id`),
  CONSTRAINT `FKtmmh1tq8pah5vxf8kuqqplo4p` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  CONSTRAINT `FK6teg4kcjcnjhduguft56wcfoa` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'2000-09-07','Leo',1,1),(2,'2002-08-06','Basil',6,2),(3,'2001-04-17','Rosy',2,3),(4,'2000-03-07','Jewel',2,3),(5,'2000-11-30','Iggy',3,4),(6,'2000-01-20','George',4,5),(7,'1995-09-04','Samantha',1,6),(8,'1995-09-04','Max',1,6),(9,'1999-08-06','Lucky',5,5),(10,'1997-02-24','Mulligan',2,4),(11,'2000-03-09','Freddy',5,3),(12,'2000-06-24','Lucky',2,2),(13,'2002-06-08','Sly',1,1);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialties`
--

LOCK TABLES `specialties` WRITE;
/*!40000 ALTER TABLE `specialties` DISABLE KEYS */;
INSERT INTO `specialties` VALUES (1,'radiology'),(2,'surgery'),(3,'dentistry');
/*!40000 ALTER TABLE `specialties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'cat'),(2,'dog'),(3,'lizard'),(4,'snake'),(5,'bird'),(6,'hamster');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vet_specialties`
--

DROP TABLE IF EXISTS `vet_specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vet_specialties` (
  `vet_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  PRIMARY KEY (`vet_id`,`specialty_id`),
  KEY `FK35uiboyrpfn1bndrr5jorcj0m` (`specialty_id`),
  CONSTRAINT `FKby1c0fbaa0byaifi63vt18sx9` FOREIGN KEY (`vet_id`) REFERENCES `vets` (`id`),
  CONSTRAINT `FK35uiboyrpfn1bndrr5jorcj0m` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vet_specialties`
--

LOCK TABLES `vet_specialties` WRITE;
/*!40000 ALTER TABLE `vet_specialties` DISABLE KEYS */;
INSERT INTO `vet_specialties` VALUES (2,1),(5,1),(3,2),(4,2),(3,3);
/*!40000 ALTER TABLE `vet_specialties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vets`
--

DROP TABLE IF EXISTS `vets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vets`
--

LOCK TABLES `vets` WRITE;
/*!40000 ALTER TABLE `vets` DISABLE KEYS */;
INSERT INTO `vets` VALUES (1,'James','Carter'),(2,'Helen','Leary'),(3,'Linda','Douglas'),(4,'Rafael','Ortega'),(5,'Henry','Stevens'),(6,'Sharon','Jenkins');
/*!40000 ALTER TABLE `vets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_date` datetime DEFAULT NULL,
  `description` longtext,
  `pet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,'2010-03-04 00:00:00','rabies shot',7),(2,'2011-03-04 00:00:00','rabies shot',8),(3,'2009-06-04 00:00:00','neutered',8),(4,'2008-09-04 00:00:00','spayed',7);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-01 19:35:27
