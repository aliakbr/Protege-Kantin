-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ontop
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

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
-- Table structure for table `kantin`
--

DROP TABLE IF EXISTS `kantin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kantin` (
  `idkantin` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `posisi` varchar(45) NOT NULL,
  PRIMARY KEY (`idkantin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kantin`
--

LOCK TABLES `kantin` WRITE;
/*!40000 ALTER TABLE `kantin` DISABLE KEYS */;
INSERT INTO `kantin` VALUES (1,'East Corner','Utara'),(2,'Kantin Salman','Selatan');
/*!40000 ALTER TABLE `kantin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kantin_has_makanan`
--

DROP TABLE IF EXISTS `kantin_has_makanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kantin_has_makanan` (
  `kantin_idkantin` int(11) NOT NULL,
  `makanan_idmakanan` int(11) NOT NULL,
  PRIMARY KEY (`kantin_idkantin`,`makanan_idmakanan`),
  KEY `fk_kantin_has_makanan_makanan1_idx` (`makanan_idmakanan`),
  KEY `fk_kantin_has_makanan_kantin_idx` (`kantin_idkantin`),
  CONSTRAINT `fk_kantin_has_makanan_kantin` FOREIGN KEY (`kantin_idkantin`) REFERENCES `kantin` (`idkantin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kantin_has_makanan_makanan1` FOREIGN KEY (`makanan_idmakanan`) REFERENCES `makanan` (`idmakanan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kantin_has_makanan`
--

LOCK TABLES `kantin_has_makanan` WRITE;
/*!40000 ALTER TABLE `kantin_has_makanan` DISABLE KEYS */;
INSERT INTO `kantin_has_makanan` VALUES (1,2),(2,1);
/*!40000 ALTER TABLE `kantin_has_makanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kantin_has_minuman`
--

DROP TABLE IF EXISTS `kantin_has_minuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kantin_has_minuman` (
  `kantin_idkantin` int(11) NOT NULL,
  `minuman_idminuman` int(11) NOT NULL,
  PRIMARY KEY (`kantin_idkantin`,`minuman_idminuman`),
  KEY `fk_kantin_has_minuman_minuman1_idx` (`minuman_idminuman`),
  KEY `fk_kantin_has_minuman_kantin1_idx` (`kantin_idkantin`),
  CONSTRAINT `fk_kantin_has_minuman_kantin1` FOREIGN KEY (`kantin_idkantin`) REFERENCES `kantin` (`idkantin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kantin_has_minuman_minuman1` FOREIGN KEY (`minuman_idminuman`) REFERENCES `minuman` (`idminuman`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kantin_has_minuman`
--

LOCK TABLES `kantin_has_minuman` WRITE;
/*!40000 ALTER TABLE `kantin_has_minuman` DISABLE KEYS */;
INSERT INTO `kantin_has_minuman` VALUES (1,1);
/*!40000 ALTER TABLE `kantin_has_minuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makanan`
--

DROP TABLE IF EXISTS `makanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makanan` (
  `idmakanan` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kalori` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`idmakanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makanan`
--

LOCK TABLES `makanan` WRITE;
/*!40000 ALTER TABLE `makanan` DISABLE KEYS */;
INSERT INTO `makanan` VALUES (1,'Nasi Goreng',1000,15000),(2,'Mie Jakarta',1200,14000);
/*!40000 ALTER TABLE `makanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minuman`
--

DROP TABLE IF EXISTS `minuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minuman` (
  `idminuman` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kalori` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`idminuman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minuman`
--

LOCK TABLES `minuman` WRITE;
/*!40000 ALTER TABLE `minuman` DISABLE KEYS */;
INSERT INTO `minuman` VALUES (1,'Es Krin',600,6000);
/*!40000 ALTER TABLE `minuman` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-06 16:12:23
