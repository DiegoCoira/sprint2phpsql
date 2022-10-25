-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tCanciones`
--

DROP TABLE IF EXISTS `tCanciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tCanciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `género` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tCanciones`
--

LOCK TABLES `tCanciones` WRITE;
/*!40000 ALTER TABLE `tCanciones` DISABLE KEYS */;
INSERT INTO `tCanciones` VALUES (1,'GlimmerOfHope','http://acortar.link/sle7R2','Tevvez','Hardstyle'),(2,'Only Girl(Remix)','http://acortar.link/OSKtTi','DIONYSUS','Hardstyle'),(3,'Frozen in Time','http://acortar.link/pHUCDc','Tevvez','Hardstyle'),(4,'MTG','http://acortar.link/RExDAT','Cupid Ruszo','Phonk'),(5,'All the things she said(TEABOY Remix)','http://acortar.link/1uMkVl','TEABOY','Techno');
/*!40000 ALTER TABLE `tCanciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2000) DEFAULT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cancion_id` (`cancion_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `tComentarios_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `tCanciones` (`id`),
  CONSTRAINT `tComentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES (1,'Mejor tema de Tevvez desde mi punto de vista.',1,3,'0000-00-00'),(2,'Temón',1,4,'0000-00-00'),(3,'Me encanta el género del phonk.',4,5,'0000-00-00'),(4,'PUM PUM PUM.',5,1,'0000-00-00'),(5,'Este remix es mejor que la canción original.',2,2,'0000-00-00');
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuario`
--

DROP TABLE IF EXISTS `tUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contraseña` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuario`
--

LOCK TABLES `tUsuario` WRITE;
/*!40000 ALTER TABLE `tUsuario` DISABLE KEYS */;
INSERT INTO `tUsuario` VALUES (1,'Fran','Rodrigez','FrRodr@gmail.com','NIIDEA10'),(2,'María','Gómez','MariaaGomez@gmail.com','MARTES04'),(3,'Mario','Albacete','Osasunanuncaserinde@gmail.com','VivaElBetis'),(4,'Carlota','Farmaco','Farmaceitica@gmail.com','LaFarmaceutica'),(5,'Alba','Formentera','Albaformentera@gmail.com','Formen12tera');
/*!40000 ALTER TABLE `tUsuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-25 12:29:32
