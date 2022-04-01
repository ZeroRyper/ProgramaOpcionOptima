-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bdmo
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes` (
  `Destino` varchar(45) NOT NULL,
  `Precio` int NOT NULL,
  `Tiempo` decimal(45,0) NOT NULL,
  `Solucion` tinyint NOT NULL,
  `NT` tinyint NOT NULL,
  `Matricula` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES ('Tec-Zac Cont',7,5,0,0,1),('Zac Cont-El Ori',4,9,0,1,2),('El Ori-Zac Cent',4,9,0,0,3),('Zac Cont-El Ori',11,7,0,1,4),('El Ori-Zac Cent',11,7,0,0,5),('Tec-Zac Bou',7,4,0,0,6),('Zac Bou-El Carm',6,7,0,0,7),('El Carm-Gua Cent',4,4,0,0,8),('Gua Cent-Sauce',8,15,0,1,9),('Gua Cent-Rin Col',3,4,1,0,10),('Gua Cent-San Ram',10,13,0,1,11),('Zac Bou-Col Ind',6,4,0,0,12),('Col Inde-Gua Cent',2,5,0,0,13),('Zac Bou-Rin Col',35,10,1,0,14),('Zac Bou-Sta Ri',8,7,0,1,15),('Zac Bou-Arbo',4,5,0,1,16),('Tec-Zac Pres',5,3,0,0,17),('Zac Pres-Guad',5,8,0,0,18),('Tec-Guad',7,3,0,0,19);
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-01 12:59:17
