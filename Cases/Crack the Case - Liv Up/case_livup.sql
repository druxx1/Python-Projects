-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: case_livup
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `carrinho_medio`
--

DROP TABLE IF EXISTS `carrinho_medio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho_medio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(512) DEFAULT NULL,
  `Publico Aderente` varchar(512) DEFAULT NULL,
  `Peso Médio [g]` double DEFAULT NULL,
  `Preço Médio` double DEFAULT NULL,
  `Share de Vendas Todas as Praças` double DEFAULT NULL,
  `Unidades Médias por Pedido` double DEFAULT NULL,
  `TM por Cat` double DEFAULT NULL,
  `Custo produção/ UND` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho_medio`
--

LOCK TABLES `carrinho_medio` WRITE;
/*!40000 ALTER TABLE `carrinho_medio` DISABLE KEYS */;
INSERT INTO `carrinho_medio` VALUES (1,'Arroz e Feijão','E D C2',300,11,0.4,8,88,2.5),(2,'Fitness','D C',350,15,0.4,8,120,7),(3,'Especiais','B2 B1 A',300,22,0.2,4,88,12);
/*!40000 ALTER TABLE `carrinho_medio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade_x_categoria`
--

DROP TABLE IF EXISTS `cidade_x_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade_x_categoria` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Municipio` varchar(512) DEFAULT NULL,
  `Categoria` varchar(512) DEFAULT NULL,
  `Clientes` int DEFAULT NULL,
  `Receita_por_cliente` double DEFAULT NULL,
  `Custo_total_por_venda` double DEFAULT NULL,
  `Lucro_por_cliente` double DEFAULT NULL,
  `Receita_total` varchar(512) DEFAULT NULL,
  `Lucro_total` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade_x_categoria`
--

LOCK TABLES `cidade_x_categoria` WRITE;
/*!40000 ALTER TABLE `cidade_x_categoria` DISABLE KEYS */;
INSERT INTO `cidade_x_categoria` VALUES (1,'Cidade Z','Arroz e Feijão',9389,88,80,8,'826,232.00','75,112.00'),(2,'Cidade Z','Fitness',17834,120,116,4,'2,140,080.00','71,336.00'),(3,'Cidade Z','Especiais',5186,88,108,-20,'456,368.00','-103,720.00'),(4,'Cidade X','Arroz e Feijão',9856,88,62,26,'867,328.00','256,256.00'),(5,'Cidade X','Fitness',16209,120,98,22,'1,945,080.00','356,598.00'),(6,'Cidade X','Especiais',5631,88,90,-2,'495,528.00','-11,262.00'),(7,'Cidade Y','Arroz e Feijão',10774,88,75,13,'948,112.00','140,062.00'),(8,'Cidade Y','Fitness',18801,120,111,9,'2,256,120.00','169,209.00'),(9,'Cidade Y','Especiais',7412,88,103,-15,'652,256.00','-111,180.00'),(10,'Cidade W','Arroz e Feijão',11453,88,77.5,10.5,'1,007,864.00','120,256.50'),(11,'Cidade W','Fitness',21485,120,113.5,6.5,'2,578,200.00','139,652.50'),(12,'Cidade W','Especiais',8813,88,105.5,-17.5,'775,544.00','-154,227.50'),(13,'Cidade G','Arroz e Feijão',16401,88,80,8,'1,443,288.00','131,208.00'),(14,'Cidade G','Fitness',27463,120,116,4,'3,295,560.00','109,852.00'),(15,'Cidade G','Especiais',9539,88,108,-20,'839,432.00','-190,780.00'),(16,'Cidade F','Arroz e Feijão',14986,88,95,-7,'1,318,768.00','-104,902.00'),(17,'Cidade F','Fitness',22430,120,131,-11,'2,691,600.00','-246,730.00'),(18,'Cidade F','Especiais',7937,88,123,-35,'698,456.00','-277,795.00');
/*!40000 ALTER TABLE `cidade_x_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demografia_cidades`
--

DROP TABLE IF EXISTS `demografia_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demografia_cidades` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Município` varchar(512) DEFAULT NULL,
  `E` int DEFAULT NULL,
  `D` int DEFAULT NULL,
  `C2` int DEFAULT NULL,
  `C1` int DEFAULT NULL,
  `B2` int DEFAULT NULL,
  `B1` int DEFAULT NULL,
  `A` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `Custo de Entrega - Por venda` double DEFAULT NULL,
  `Custo de Marketing - Por Venda` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demografia_cidades`
--

LOCK TABLES `demografia_cidades` WRITE;
/*!40000 ALTER TABLE `demografia_cidades` DISABLE KEYS */;
INSERT INTO `demografia_cidades` VALUES (1,'Cidade Z',11202,49283,118458,95088,28795,9930,4466,317222,10,50),(2,'Cidade X',20993,91078,111801,72920,28937,12333,5036,343098,7,35),(3,'Cidade Y',24914,87807,125282,91960,38711,14935,6997,390606,15,40),(4,'Cidade W',19558,70687,140643,113634,43999,18353,8848,415722,7.5,50),(5,'Cidade G',36051,123909,193769,126914,50140,19027,8971,558781,40,20),(6,'Cidade F',74372,185084,150608,90971,38836,16487,8307,564665,25,50);
/*!40000 ALTER TABLE `demografia_cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demografia_percentual`
--

DROP TABLE IF EXISTS `demografia_percentual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demografia_percentual` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Município` varchar(512) DEFAULT NULL,
  `E (%)` double DEFAULT NULL,
  `D (%)` double DEFAULT NULL,
  `C2 (%)` double DEFAULT NULL,
  `C1 (%)` double DEFAULT NULL,
  `B2 (%)` double DEFAULT NULL,
  `B1 (%)` double DEFAULT NULL,
  `A (%)` double DEFAULT NULL,
  `Total` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demografia_percentual`
--

LOCK TABLES `demografia_percentual` WRITE;
/*!40000 ALTER TABLE `demografia_percentual` DISABLE KEYS */;
INSERT INTO `demografia_percentual` VALUES (1,'Cidade Z',3.53,15.54,37.34,29.98,9.08,3.13,1.41,317222),(2,'Cidade X',6.12,26.55,32.59,21.25,8.43,3.59,1.47,343098),(3,'Cidade Y',6.38,22.48,32.07,23.54,9.91,3.82,1.79,390606),(4,'Cidade W',4.7,17,33.83,27.33,10.58,4.41,2.13,415722),(5,'Cidade G',6.45,22.17,34.68,22.71,8.97,3.41,1.61,558781),(6,'Cidade F',13.17,32.78,26.67,16.11,6.88,2.92,1.47,564665);
/*!40000 ALTER TABLE `demografia_percentual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insercao_media_por_classe`
--

DROP TABLE IF EXISTS `insercao_media_por_classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insercao_media_por_classe` (
  `ID` varchar(512) DEFAULT NULL,
  `Inserção %` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insercao_media_por_classe`
--

LOCK TABLES `insercao_media_por_classe` WRITE;
/*!40000 ALTER TABLE `insercao_media_por_classe` DISABLE KEYS */;
INSERT INTO `insercao_media_por_classe` VALUES ('E',0.01),('D',0.02),('C2',0.07),('C1',0.09),('B2',0.1),('B1',0.12),('A',0.25);
/*!40000 ALTER TABLE `insercao_media_por_classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potenciais_clientes`
--

DROP TABLE IF EXISTS `potenciais_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potenciais_clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Município` varchar(512) DEFAULT NULL,
  `E` int DEFAULT NULL,
  `D` int DEFAULT NULL,
  `C2` int DEFAULT NULL,
  `C1` int DEFAULT NULL,
  `B2` int DEFAULT NULL,
  `B1` int DEFAULT NULL,
  `A` int DEFAULT NULL,
  `Total Potencial` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `Custo de Entrega - Por venda` double DEFAULT NULL,
  `Custo de Marketing - Por Venda` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potenciais_clientes`
--

LOCK TABLES `potenciais_clientes` WRITE;
/*!40000 ALTER TABLE `potenciais_clientes` DISABLE KEYS */;
INSERT INTO `potenciais_clientes` VALUES (1,'Cidade Z',112,985,8292,8557,2879,1191,1116,23132,317222,10,50),(2,'Cidade X',209,1821,7826,6562,2893,1479,1259,22049,343098,7,35),(3,'Cidade Y',249,1756,8769,8276,3871,1792,1749,26462,390606,15,40),(4,'Cidade W',195,1413,9845,10227,4399,2202,2212,30493,415722,7.5,50),(5,'Cidade G',360,2478,13563,11422,5014,2283,2242,37362,558781,40,20),(6,'Cidade F',743,3701,10542,8187,3883,1978,2076,31110,564665,25,50);
/*!40000 ALTER TABLE `potenciais_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projecao_lucro`
--

DROP TABLE IF EXISTS `projecao_lucro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projecao_lucro` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Municipio` varchar(512) DEFAULT NULL,
  `Categoria` varchar(512) DEFAULT NULL,
  `Mes` int DEFAULT NULL,
  `Clientes_estimados` varchar(512) DEFAULT NULL,
  `Receita_estimado` varchar(512) DEFAULT NULL,
  `Lucro_estimado` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projecao_lucro`
--

LOCK TABLES `projecao_lucro` WRITE;
/*!40000 ALTER TABLE `projecao_lucro` DISABLE KEYS */;
INSERT INTO `projecao_lucro` VALUES (1,'Cidade Z','Arroz e Feijão',1,'445.28','39,184.77','3,562.25'),(2,'Cidade Z','Arroz e Feijão',2,'564.15','49,645.51','4,513.23'),(3,'Cidade Z','Arroz e Feijão',3,'712.23','62,676.46','5,697.86'),(4,'Cidade Z','Arroz e Feijão',4,'895.24','78,780.78','7,161.89'),(5,'Cidade Z','Arroz e Feijão',5,'1,119.20','98,489.27','8,953.57'),(6,'Cidade Z','Arroz e Feijão',6,'1,390.02','122,321.33','11,120.12'),(7,'Cidade Z','Arroz e Feijão',7,'1,712.79','150,725.81','13,702.35'),(8,'Cidade Z','Arroz e Feijão',8,'2,090.93','184,001.98','16,727.45'),(9,'Cidade Z','Arroz e Feijão',9,'2,525.09','222,208.01','20,200.73'),(10,'Cidade Z','Arroz e Feijão',10,'3,012.19','265,072.83','24,097.53'),(11,'Cidade Z','Arroz e Feijão',11,'3,544.73','311,936.18','28,357.83'),(12,'Cidade Z','Arroz e Feijão',12,'4,110.72','361,743.79','32,885.80'),(13,'Cidade Z','Arroz e Feijão',13,'4,694.50','413,116.00','37,556.00'),(14,'Cidade Z','Arroz e Feijão',14,'5,278.28','464,488.21','42,226.20'),(15,'Cidade Z','Arroz e Feijão',15,'5,844.27','514,295.82','46,754.17'),(16,'Cidade Z','Arroz e Feijão',16,'6,376.81','561,159.17','51,014.47'),(17,'Cidade Z','Arroz e Feijão',17,'6,863.91','604,023.99','54,911.27'),(18,'Cidade Z','Arroz e Feijão',18,'7,298.07','642,230.02','58,384.55'),(19,'Cidade Z','Arroz e Feijão',19,'7,676.21','675,506.19','61,409.65'),(20,'Cidade Z','Arroz e Feijão',20,'7,998.98','703,910.67','63,991.88'),(21,'Cidade Z','Arroz e Feijão',21,'8,269.80','727,742.73','66,158.43'),(22,'Cidade Z','Arroz e Feijão',22,'8,493.76','747,451.22','67,950.11'),(23,'Cidade Z','Arroz e Feijão',23,'8,676.77','763,555.54','69,414.14'),(24,'Cidade Z','Arroz e Feijão',24,'8,824.85','776,586.49','70,598.77'),(25,'Cidade Z','Fitness',1,'845.79','101,495.16','3,383.17'),(26,'Cidade Z','Fitness',2,'1,071.59','128,590.24','4,286.34'),(27,'Cidade Z','Fitness',3,'1,352.85','162,342.57','5,411.42'),(28,'Cidade Z','Fitness',4,'1,700.46','204,055.48','6,801.85'),(29,'Cidade Z','Fitness',5,'2,125.86','255,103.79','8,503.46'),(30,'Cidade Z','Fitness',6,'2,640.27','316,832.85','10,561.09'),(31,'Cidade Z','Fitness',7,'3,253.38','390,405.21','13,013.51'),(32,'Cidade Z','Fitness',8,'3,971.63','476,596.11','15,886.54'),(33,'Cidade Z','Fitness',9,'4,796.30','575,556.16','19,185.21'),(34,'Cidade Z','Fitness',10,'5,721.53','686,583.25','22,886.11'),(35,'Cidade Z','Fitness',11,'6,733.06','807,967.23','26,932.24'),(36,'Cidade Z','Fitness',12,'7,808.14','936,977.31','31,232.58'),(37,'Cidade Z','Fitness',13,'8,917.00','1,070,040.00','35,668.00'),(38,'Cidade Z','Fitness',14,'10,025.86','1,203,102.69','40,103.42'),(39,'Cidade Z','Fitness',15,'11,100.94','1,332,112.77','44,403.76'),(40,'Cidade Z','Fitness',16,'12,112.47','1,453,496.75','48,449.89'),(41,'Cidade Z','Fitness',17,'13,037.70','1,564,523.84','52,150.79'),(42,'Cidade Z','Fitness',18,'13,862.37','1,663,483.89','55,449.46'),(43,'Cidade Z','Fitness',19,'14,580.62','1,749,674.79','58,322.49'),(44,'Cidade Z','Fitness',20,'15,193.73','1,823,247.15','60,774.91'),(45,'Cidade Z','Fitness',21,'15,708.14','1,884,976.21','62,832.54'),(46,'Cidade Z','Fitness',22,'16,133.54','1,936,024.52','64,534.15'),(47,'Cidade Z','Fitness',23,'16,481.15','1,977,737.43','65,924.58'),(48,'Cidade Z','Fitness',24,'16,762.41','2,011,489.76','67,049.66'),(49,'Cidade Z','Especiais',1,'245.95','21,643.65','-4,919.01'),(50,'Cidade Z','Especiais',2,'311.61','27,421.62','-6,232.19'),(51,'Cidade Z','Especiais',3,'393.40','34,619.25','-7,868.01'),(52,'Cidade Z','Especiais',4,'494.48','43,514.44','-9,889.65'),(53,'Cidade Z','Especiais',5,'618.19','54,400.40','-12,363.73'),(54,'Cidade Z','Especiais',6,'767.77','67,564.00','-15,355.46'),(55,'Cidade Z','Especiais',7,'946.06','83,253.17','-18,921.18'),(56,'Cidade Z','Especiais',8,'1,154.92','101,633.22','-23,098.46'),(57,'Cidade Z','Especiais',9,'1,394.73','122,736.26','-27,894.60'),(58,'Cidade Z','Especiais',10,'1,663.78','146,412.58','-33,275.59'),(59,'Cidade Z','Especiais',11,'1,957.93','172,297.48','-39,158.52'),(60,'Cidade Z','Especiais',12,'2,270.55','199,808.63','-45,411.05'),(61,'Cidade Z','Especiais',13,'2,593.00','228,184.00','-51,860.00'),(62,'Cidade Z','Especiais',14,'2,915.45','256,559.37','-58,308.95'),(63,'Cidade Z','Especiais',15,'3,228.07','284,070.52','-64,561.48'),(64,'Cidade Z','Especiais',16,'3,522.22','309,955.42','-70,444.41'),(65,'Cidade Z','Especiais',17,'3,791.27','333,631.74','-75,825.40'),(66,'Cidade Z','Especiais',18,'4,031.08','354,734.78','-80,621.54'),(67,'Cidade Z','Especiais',19,'4,239.94','373,114.83','-84,798.82'),(68,'Cidade Z','Especiais',20,'4,418.23','388,804.00','-88,364.54'),(69,'Cidade Z','Especiais',21,'4,567.81','401,967.60','-91,356.27'),(70,'Cidade Z','Especiais',22,'4,691.52','412,853.56','-93,830.35'),(71,'Cidade Z','Especiais',23,'4,792.60','421,748.75','-95,851.99'),(72,'Cidade Z','Especiais',24,'4,874.39','428,946.38','-97,487.81'),(73,'Cidade X','Arroz e Feijão',1,'467.43','41,133.79','12,153.16'),(74,'Cidade X','Arroz e Feijão',2,'592.21','52,114.83','15,397.56'),(75,'Cidade X','Arroz e Feijão',3,'747.66','65,793.92','19,439.11'),(76,'Cidade X','Arroz e Feijão',4,'939.76','82,699.26','24,433.87'),(77,'Cidade X','Arroz e Feijão',5,'1,174.86','103,388.03','30,546.46'),(78,'Cidade X','Arroz e Feijão',6,'1,459.15','128,405.48','37,937.98'),(79,'Cidade X','Arroz e Feijão',7,'1,797.99','158,222.76','46,747.64'),(80,'Cidade X','Arroz e Feijão',8,'2,194.93','193,154.07','57,068.25'),(81,'Cidade X','Arroz e Feijão',9,'2,650.69','233,260.43','68,917.85'),(82,'Cidade X','Arroz e Feijão',10,'3,162.01','278,257.30','82,212.38'),(83,'Cidade X','Arroz e Feijão',11,'3,721.04','327,451.59','96,747.06'),(84,'Cidade X','Arroz e Feijão',12,'4,315.19','379,736.58','112,194.90'),(85,'Cidade X','Arroz e Feijão',13,'4,928.00','433,664.00','128,128.00'),(86,'Cidade X','Arroz e Feijão',14,'5,540.81','487,591.42','144,061.10'),(87,'Cidade X','Arroz e Feijão',15,'6,134.96','539,876.41','159,508.94'),(88,'Cidade X','Arroz e Feijão',16,'6,693.99','589,070.70','174,043.62'),(89,'Cidade X','Arroz e Feijão',17,'7,205.31','634,067.57','187,338.15'),(90,'Cidade X','Arroz e Feijão',18,'7,661.07','674,173.93','199,187.75'),(91,'Cidade X','Arroz e Feijão',19,'8,058.01','709,105.24','209,508.36'),(92,'Cidade X','Arroz e Feijão',20,'8,396.85','738,922.52','218,318.02'),(93,'Cidade X','Arroz e Feijão',21,'8,681.14','763,939.97','225,709.54'),(94,'Cidade X','Arroz e Feijão',22,'8,916.24','784,628.74','231,822.13'),(95,'Cidade X','Arroz e Feijão',23,'9,108.34','801,534.08','236,816.89'),(96,'Cidade X','Arroz e Feijão',24,'9,263.79','815,213.17','240,858.44'),(97,'Cidade X','Fitness',1,'768.73','92,247.12','16,911.97'),(98,'Cidade X','Fitness',2,'973.94','116,873.34','21,426.78'),(99,'Cidade X','Fitness',3,'1,229.59','147,550.23','27,050.88'),(100,'Cidade X','Fitness',4,'1,545.52','185,462.34','34,001.43'),(101,'Cidade X','Fitness',5,'1,932.16','231,859.22','42,507.52'),(102,'Cidade X','Fitness',6,'2,399.70','287,963.64','52,793.33'),(103,'Cidade X','Fitness',7,'2,956.94','354,832.24','65,052.58'),(104,'Cidade X','Fitness',8,'3,609.75','433,169.59','79,414.42'),(105,'Cidade X','Fitness',9,'4,359.27','523,112.58','95,903.97'),(106,'Cidade X','Fitness',10,'5,200.19','624,023.10','114,404.23'),(107,'Cidade X','Fitness',11,'6,119.56','734,346.80','134,630.25'),(108,'Cidade X','Fitness',12,'7,096.68','851,601.73','156,126.98'),(109,'Cidade X','Fitness',13,'8,104.50','972,540.00','178,299.00'),(110,'Cidade X','Fitness',14,'9,112.32','1,093,478.27','200,471.02'),(111,'Cidade X','Fitness',15,'10,089.44','1,210,733.20','221,967.75'),(112,'Cidade X','Fitness',16,'11,008.81','1,321,056.90','242,193.77'),(113,'Cidade X','Fitness',17,'11,849.73','1,421,967.42','260,694.03'),(114,'Cidade X','Fitness',18,'12,599.25','1,511,910.41','277,183.58'),(115,'Cidade X','Fitness',19,'13,252.06','1,590,247.76','291,545.42'),(116,'Cidade X','Fitness',20,'13,809.30','1,657,116.36','303,804.67'),(117,'Cidade X','Fitness',21,'14,276.84','1,713,220.78','314,090.48'),(118,'Cidade X','Fitness',22,'14,663.48','1,759,617.66','322,596.57'),(119,'Cidade X','Fitness',23,'14,979.41','1,797,529.77','329,547.12'),(120,'Cidade X','Fitness',24,'15,235.06','1,828,206.66','335,171.22'),(121,'Cidade X','Especiais',1,'267.06','23,500.85','-534.11'),(122,'Cidade X','Especiais',2,'338.35','29,774.62','-676.70'),(123,'Cidade X','Especiais',3,'427.16','37,589.85','-854.31'),(124,'Cidade X','Especiais',4,'536.91','47,248.33','-1,073.83'),(125,'Cidade X','Especiais',5,'671.23','59,068.39','-1,342.46'),(126,'Cidade X','Especiais',6,'833.65','73,361.53','-1,667.31'),(127,'Cidade X','Especiais',7,'1,027.24','90,396.95','-2,054.48'),(128,'Cidade X','Especiais',8,'1,254.02','110,354.15','-2,508.05'),(129,'Cidade X','Especiais',9,'1,514.41','133,268.00','-3,028.82'),(130,'Cidade X','Especiais',10,'1,806.54','158,975.94','-3,613.09'),(131,'Cidade X','Especiais',11,'2,125.93','187,081.97','-4,251.86'),(132,'Cidade X','Especiais',12,'2,465.38','216,953.80','-4,930.77'),(133,'Cidade X','Especiais',13,'2,815.50','247,764.00','-5,631.00'),(134,'Cidade X','Especiais',14,'3,165.62','278,574.20','-6,331.23'),(135,'Cidade X','Especiais',15,'3,505.07','308,446.03','-7,010.14'),(136,'Cidade X','Especiais',16,'3,824.46','336,552.06','-7,648.91'),(137,'Cidade X','Especiais',17,'4,116.59','362,260.00','-8,233.18'),(138,'Cidade X','Especiais',18,'4,376.98','385,173.85','-8,753.95'),(139,'Cidade X','Especiais',19,'4,603.76','405,131.05','-9,207.52'),(140,'Cidade X','Especiais',20,'4,797.35','422,166.47','-9,594.69'),(141,'Cidade X','Especiais',21,'4,959.77','436,459.61','-9,919.54'),(142,'Cidade X','Especiais',22,'5,094.09','448,279.67','-10,188.17'),(143,'Cidade X','Especiais',23,'5,203.84','457,938.15','-10,407.69'),(144,'Cidade X','Especiais',24,'5,292.65','465,753.38','-10,585.30'),(145,'Cidade Y','Arroz e Feijão',1,'510.97','44,965.04','6,642.56'),(146,'Cidade Y','Arroz e Feijão',2,'647.37','56,968.87','8,415.86'),(147,'Cidade Y','Arroz e Feijão',3,'817.30','71,922.05','10,624.85'),(148,'Cidade Y','Arroz e Feijão',4,'1,027.30','90,401.97','13,354.84'),(149,'Cidade Y','Arroz e Feijão',5,'1,284.29','113,017.72','16,695.80'),(150,'Cidade Y','Arroz e Feijão',6,'1,595.06','140,365.33','20,735.79'),(151,'Cidade Y','Arroz e Feijão',7,'1,965.45','172,959.83','25,550.88'),(152,'Cidade Y','Arroz e Feijão',8,'2,399.37','211,144.67','31,191.83'),(153,'Cidade Y','Arroz e Feijão',9,'2,897.57','254,986.59','37,668.47'),(154,'Cidade Y','Arroz e Feijão',10,'3,456.53','304,174.53','44,934.87'),(155,'Cidade Y','Arroz e Feijão',11,'4,067.62','357,950.84','52,879.10'),(156,'Cidade Y','Arroz e Feijão',12,'4,717.11','415,105.71','61,322.43'),(157,'Cidade Y','Arroz e Feijão',13,'5,387.00','474,056.00','70,031.00'),(158,'Cidade Y','Arroz e Feijão',14,'6,056.89','533,006.29','78,739.57'),(159,'Cidade Y','Arroz e Feijão',15,'6,706.38','590,161.16','87,182.90'),(160,'Cidade Y','Arroz e Feijão',16,'7,317.47','643,937.47','95,127.13'),(161,'Cidade Y','Arroz e Feijão',17,'7,876.43','693,125.41','102,393.53'),(162,'Cidade Y','Arroz e Feijão',18,'8,374.63','736,967.33','108,870.17'),(163,'Cidade Y','Arroz e Feijão',19,'8,808.55','775,152.17','114,511.12'),(164,'Cidade Y','Arroz e Feijão',20,'9,178.94','807,746.67','119,326.21'),(165,'Cidade Y','Arroz e Feijão',21,'9,489.71','835,094.28','123,366.20'),(166,'Cidade Y','Arroz e Feijão',22,'9,746.70','857,710.03','126,707.16'),(167,'Cidade Y','Arroz e Feijão',23,'9,956.70','876,189.95','129,437.15'),(168,'Cidade Y','Arroz e Feijão',24,'10,126.63','891,143.13','131,646.14'),(169,'Cidade Y','Fitness',1,'891.65','106,998.46','8,024.88'),(170,'Cidade Y','Fitness',2,'1,129.69','135,562.69','10,167.20'),(171,'Cidade Y','Fitness',3,'1,426.21','171,145.16','12,835.89'),(172,'Cidade Y','Fitness',4,'1,792.67','215,119.83','16,133.99'),(173,'Cidade Y','Fitness',5,'2,241.13','268,936.10','20,170.21'),(174,'Cidade Y','Fitness',6,'2,783.44','334,012.24','25,050.92'),(175,'Cidade Y','Fitness',7,'3,429.78','411,573.87','30,868.04'),(176,'Cidade Y','Fitness',8,'4,186.99','502,438.24','37,682.87'),(177,'Cidade Y','Fitness',9,'5,056.37','606,764.12','45,507.31'),(178,'Cidade Y','Fitness',10,'6,031.76','723,811.35','54,285.85'),(179,'Cidade Y','Fitness',11,'7,098.14','851,777.05','63,883.28'),(180,'Cidade Y','Fitness',12,'8,231.52','987,782.35','74,083.68'),(181,'Cidade Y','Fitness',13,'9,400.50','1,128,060.00','84,604.50'),(182,'Cidade Y','Fitness',14,'10,569.48','1,268,337.65','95,125.32'),(183,'Cidade Y','Fitness',15,'11,702.86','1,404,342.95','105,325.72'),(184,'Cidade Y','Fitness',16,'12,769.24','1,532,308.65','114,923.15'),(185,'Cidade Y','Fitness',17,'13,744.63','1,649,355.88','123,701.69'),(186,'Cidade Y','Fitness',18,'14,614.01','1,753,681.76','131,526.13'),(187,'Cidade Y','Fitness',19,'15,371.22','1,844,546.13','138,340.96'),(188,'Cidade Y','Fitness',20,'16,017.56','1,922,107.76','144,158.08'),(189,'Cidade Y','Fitness',21,'16,559.87','1,987,183.90','149,038.79'),(190,'Cidade Y','Fitness',22,'17,008.33','2,041,000.17','153,075.01'),(191,'Cidade Y','Fitness',23,'17,374.79','2,084,974.84','156,373.11'),(192,'Cidade Y','Fitness',24,'17,671.31','2,120,557.31','159,041.80'),(193,'Cidade Y','Especiais',1,'351.52','30,933.81','-5,272.81'),(194,'Cidade Y','Especiais',2,'445.36','39,191.88','-6,680.43'),(195,'Cidade Y','Especiais',3,'562.26','49,478.95','-8,433.91'),(196,'Cidade Y','Especiais',4,'706.73','62,192.26','-10,600.95'),(197,'Cidade Y','Especiais',5,'883.53','77,750.82','-13,252.98'),(198,'Cidade Y','Especiais',6,'1,097.33','96,564.67','-16,459.89'),(199,'Cidade Y','Especiais',7,'1,352.14','118,988.14','-20,282.07'),(200,'Cidade Y','Especiais',8,'1,650.65','145,257.50','-24,759.80'),(201,'Cidade Y','Especiais',9,'1,993.39','175,418.66','-29,900.91'),(202,'Cidade Y','Especiais',10,'2,377.93','209,257.62','-35,668.91'),(203,'Cidade Y','Especiais',11,'2,798.33','246,253.17','-41,974.97'),(204,'Cidade Y','Especiais',12,'3,245.15','285,573.00','-48,677.22'),(205,'Cidade Y','Especiais',13,'3,706.00','326,128.00','-55,590.00'),(206,'Cidade Y','Especiais',14,'4,166.85','366,683.00','-62,502.78'),(207,'Cidade Y','Especiais',15,'4,613.67','406,002.83','-69,205.03'),(208,'Cidade Y','Especiais',16,'5,034.07','442,998.38','-75,511.09'),(209,'Cidade Y','Especiais',17,'5,418.61','476,837.34','-81,279.09'),(210,'Cidade Y','Especiais',18,'5,761.35','506,998.50','-86,420.20'),(211,'Cidade Y','Especiais',19,'6,059.86','533,267.86','-90,897.93'),(212,'Cidade Y','Especiais',20,'6,314.67','555,691.33','-94,720.11'),(213,'Cidade Y','Especiais',21,'6,528.47','574,505.18','-97,927.02'),(214,'Cidade Y','Especiais',22,'6,705.27','590,063.74','-100,579.05'),(215,'Cidade Y','Especiais',23,'6,849.74','602,777.05','-102,746.09'),(216,'Cidade Y','Especiais',24,'6,966.64','613,064.12','-104,499.57'),(217,'Cidade W','Arroz e Feijão',1,'543.17','47,798.83','5,703.27'),(218,'Cidade W','Arroz e Feijão',2,'688.17','60,559.17','7,225.81'),(219,'Cidade W','Arroz e Feijão',3,'868.80','76,454.73','9,122.44'),(220,'Cidade W','Arroz e Feijão',4,'1,092.04','96,099.29','11,466.39'),(221,'Cidade W','Arroz e Feijão',5,'1,365.23','120,140.33','14,334.93'),(222,'Cidade W','Arroz e Feijão',6,'1,695.58','149,211.44','17,803.64'),(223,'Cidade W','Arroz e Feijão',7,'2,089.32','183,860.12','21,937.86'),(224,'Cidade W','Arroz e Feijão',8,'2,550.58','224,451.45','26,781.14'),(225,'Cidade W','Arroz e Feijão',9,'3,080.19','271,056.38','32,341.95'),(226,'Cidade W','Arroz e Feijão',10,'3,674.37','323,344.24','38,580.85'),(227,'Cidade W','Arroz e Feijão',11,'4,323.97','380,509.65','45,401.72'),(228,'Cidade W','Arroz e Feijão',12,'5,014.39','441,266.54','52,651.12'),(229,'Cidade W','Arroz e Feijão',13,'5,726.50','503,932.00','60,128.25'),(230,'Cidade W','Arroz e Feijão',14,'6,438.61','566,597.46','67,605.38'),(231,'Cidade W','Arroz e Feijão',15,'7,129.03','627,354.35','74,854.78'),(232,'Cidade W','Arroz e Feijão',16,'7,778.63','684,519.76','81,675.65'),(233,'Cidade W','Arroz e Feijão',17,'8,372.81','736,807.62','87,914.55'),(234,'Cidade W','Arroz e Feijão',18,'8,902.42','783,412.55','93,475.36'),(235,'Cidade W','Arroz e Feijão',19,'9,363.68','824,003.88','98,318.64'),(236,'Cidade W','Arroz e Feijão',20,'9,757.42','858,652.56','102,452.86'),(237,'Cidade W','Arroz e Feijão',21,'10,087.77','887,723.67','105,921.57'),(238,'Cidade W','Arroz e Feijão',22,'10,360.96','911,764.71','108,790.11'),(239,'Cidade W','Arroz e Feijão',23,'10,584.20','931,409.27','111,134.06'),(240,'Cidade W','Arroz e Feijão',24,'10,764.83','947,304.83','113,030.69'),(241,'Cidade W','Fitness',1,'1,018.94','122,273.39','6,623.14'),(242,'Cidade W','Fitness',2,'1,290.96','154,915.40','8,391.25'),(243,'Cidade W','Fitness',3,'1,629.81','195,577.56','10,593.78'),(244,'Cidade W','Fitness',4,'2,048.58','245,829.99','13,315.79'),(245,'Cidade W','Fitness',5,'2,561.07','307,328.97','16,646.99'),(246,'Cidade W','Fitness',6,'3,180.79','381,695.29','20,675.16'),(247,'Cidade W','Fitness',7,'3,919.41','470,329.49','25,476.18'),(248,'Cidade W','Fitness',8,'4,784.71','574,165.50','31,100.63'),(249,'Cidade W','Fitness',9,'5,778.21','693,384.77','37,558.34'),(250,'Cidade W','Fitness',10,'6,892.85','827,141.48','44,803.50'),(251,'Cidade W','Fitness',11,'8,111.46','973,375.35','52,724.50'),(252,'Cidade W','Fitness',12,'9,406.64','1,128,796.55','61,143.15'),(253,'Cidade W','Fitness',13,'10,742.50','1,289,100.00','69,826.25'),(254,'Cidade W','Fitness',14,'12,078.36','1,449,403.45','78,509.35'),(255,'Cidade W','Fitness',15,'13,373.54','1,604,824.65','86,928.00'),(256,'Cidade W','Fitness',16,'14,592.15','1,751,058.52','94,849.00'),(257,'Cidade W','Fitness',17,'15,706.79','1,884,815.23','102,094.16'),(258,'Cidade W','Fitness',18,'16,700.29','2,004,034.50','108,551.87'),(259,'Cidade W','Fitness',19,'17,565.59','2,107,870.51','114,176.32'),(260,'Cidade W','Fitness',20,'18,304.21','2,196,504.71','118,977.34'),(261,'Cidade W','Fitness',21,'18,923.93','2,270,871.03','123,005.51'),(262,'Cidade W','Fitness',22,'19,436.42','2,332,370.01','126,336.71'),(263,'Cidade W','Fitness',23,'19,855.19','2,382,622.44','129,058.72'),(264,'Cidade W','Fitness',24,'20,194.04','2,423,284.60','131,261.25'),(265,'Cidade W','Especiais',1,'417.96','36,780.85','-7,314.37'),(266,'Cidade W','Especiais',2,'529.54','46,599.84','-9,267.01'),(267,'Cidade W','Especiais',3,'668.54','58,831.36','-11,699.42'),(268,'Cidade W','Especiais',4,'840.31','73,947.71','-14,705.51'),(269,'Cidade W','Especiais',5,'1,050.54','92,447.11','-18,384.37'),(270,'Cidade W','Especiais',6,'1,304.74','114,817.12','-22,832.95'),(271,'Cidade W','Especiais',7,'1,607.72','141,479.02','-28,135.03'),(272,'Cidade W','Especiais',8,'1,962.66','172,713.76','-34,346.49'),(273,'Cidade W','Especiais',9,'2,370.18','208,575.91','-41,478.16'),(274,'Cidade W','Especiais',10,'2,827.40','248,811.03','-49,479.47'),(275,'Cidade W','Especiais',11,'3,327.27','292,799.40','-58,227.15'),(276,'Cidade W','Especiais',12,'3,858.54','339,551.39','-67,524.42'),(277,'Cidade W','Especiais',13,'4,406.50','387,772.00','-77,113.75'),(278,'Cidade W','Especiais',14,'4,954.46','435,992.61','-86,703.08'),(279,'Cidade W','Especiais',15,'5,485.73','482,744.60','-96,000.35'),(280,'Cidade W','Especiais',16,'5,985.60','526,732.97','-104,748.03'),(281,'Cidade W','Especiais',17,'6,442.82','566,968.09','-112,749.34'),(282,'Cidade W','Especiais',18,'6,850.34','602,830.24','-119,881.01'),(283,'Cidade W','Especiais',19,'7,205.28','634,064.98','-126,092.47'),(284,'Cidade W','Especiais',20,'7,508.26','660,726.88','-131,394.55'),(285,'Cidade W','Especiais',21,'7,762.46','683,096.89','-135,843.13'),(286,'Cidade W','Especiais',22,'7,972.69','701,596.29','-139,521.99'),(287,'Cidade W','Especiais',23,'8,144.46','716,712.64','-142,528.08'),(288,'Cidade W','Especiais',24,'8,283.46','728,944.16','-144,960.49'),(289,'Cidade G','Arroz e Feijão',1,'777.83','68,449.19','6,222.65'),(290,'Cidade G','Arroz e Feijão',2,'985.48','86,722.34','7,883.85'),(291,'Cidade G','Arroz e Feijão',3,'1,244.15','109,485.20','9,953.20'),(292,'Cidade G','Arroz e Feijão',4,'1,563.83','137,616.74','12,510.61'),(293,'Cidade G','Arroz e Feijão',5,'1,955.05','172,044.15','15,640.38'),(294,'Cidade G','Arroz e Feijão',6,'2,428.12','213,674.74','19,424.98'),(295,'Cidade G','Arroz e Feijão',7,'2,991.96','263,292.57','23,935.69'),(296,'Cidade G','Arroz e Feijão',8,'3,652.50','321,420.44','29,220.04'),(297,'Cidade G','Arroz e Feijão',9,'4,410.91','388,159.93','35,287.27'),(298,'Cidade G','Arroz e Feijão',10,'5,261.79','463,037.53','42,094.32'),(299,'Cidade G','Arroz e Feijão',11,'6,192.04','544,899.92','49,536.36'),(300,'Cidade G','Arroz e Feijão',12,'7,180.74','631,905.40','57,445.95'),(301,'Cidade G','Arroz e Feijão',13,'8,200.50','721,644.00','65,604.00'),(302,'Cidade G','Arroz e Feijão',14,'9,220.26','811,382.60','73,762.05'),(303,'Cidade G','Arroz e Feijão',15,'10,208.96','898,388.08','81,671.64'),(304,'Cidade G','Arroz e Feijão',16,'11,139.21','980,250.47','89,113.68'),(305,'Cidade G','Arroz e Feijão',17,'11,990.09','1,055,128.07','95,920.73'),(306,'Cidade G','Arroz e Feijão',18,'12,748.50','1,121,867.56','101,987.96'),(307,'Cidade G','Arroz e Feijão',19,'13,409.04','1,179,995.43','107,272.31'),(308,'Cidade G','Arroz e Feijão',20,'13,972.88','1,229,613.26','111,783.02'),(309,'Cidade G','Arroz e Feijão',21,'14,445.95','1,271,243.85','115,567.62'),(310,'Cidade G','Arroz e Feijão',22,'14,837.17','1,305,671.26','118,697.39'),(311,'Cidade G','Arroz e Feijão',23,'15,156.85','1,333,802.80','121,254.80'),(312,'Cidade G','Arroz e Feijão',24,'15,415.52','1,356,565.66','123,324.15'),(313,'Cidade G','Fitness',1,'1,302.46','156,294.81','5,209.83'),(314,'Cidade G','Fitness',2,'1,650.16','198,019.16','6,600.64'),(315,'Cidade G','Fitness',3,'2,083.29','249,995.18','8,333.17'),(316,'Cidade G','Fitness',4,'2,618.58','314,229.88','10,474.33'),(317,'Cidade G','Fitness',5,'3,273.67','392,840.38','13,094.68'),(318,'Cidade G','Fitness',6,'4,065.82','487,898.42','16,263.28'),(319,'Cidade G','Fitness',7,'5,009.95','601,194.26','20,039.81'),(320,'Cidade G','Fitness',8,'6,116.01','733,921.67','24,464.06'),(321,'Cidade G','Fitness',9,'7,385.94','886,312.59','29,543.75'),(322,'Cidade G','Fitness',10,'8,810.72','1,057,285.85','35,242.86'),(323,'Cidade G','Fitness',11,'10,368.40','1,244,207.93','41,473.60'),(324,'Cidade G','Fitness',12,'12,023.95','1,442,873.61','48,095.79'),(325,'Cidade G','Fitness',13,'13,731.50','1,647,780.00','54,926.00'),(326,'Cidade G','Fitness',14,'15,439.05','1,852,686.39','61,756.21'),(327,'Cidade G','Fitness',15,'17,094.60','2,051,352.07','68,378.40'),(328,'Cidade G','Fitness',16,'18,652.28','2,238,274.15','74,609.14'),(329,'Cidade G','Fitness',17,'20,077.06','2,409,247.41','80,308.25'),(330,'Cidade G','Fitness',18,'21,346.99','2,561,638.33','85,387.94'),(331,'Cidade G','Fitness',19,'22,453.05','2,694,365.74','89,812.19'),(332,'Cidade G','Fitness',20,'23,397.18','2,807,661.58','93,588.72'),(333,'Cidade G','Fitness',21,'24,189.33','2,902,719.62','96,757.32'),(334,'Cidade G','Fitness',22,'24,844.42','2,981,330.12','99,377.67'),(335,'Cidade G','Fitness',23,'25,379.71','3,045,564.82','101,518.83'),(336,'Cidade G','Fitness',24,'25,812.84','3,097,540.84','103,251.36'),(337,'Cidade G','Especiais',1,'452.40','39,810.80','-9,047.91'),(338,'Cidade G','Especiais',2,'573.17','50,438.66','-11,463.33'),(339,'Cidade G','Especiais',3,'723.61','63,677.78','-14,472.22'),(340,'Cidade G','Especiais',4,'909.54','80,039.39','-18,190.77'),(341,'Cidade G','Especiais',5,'1,137.08','100,062.75','-22,741.53'),(342,'Cidade G','Especiais',6,'1,412.22','124,275.56','-28,244.44'),(343,'Cidade G','Especiais',7,'1,740.16','153,133.82','-34,803.14'),(344,'Cidade G','Especiais',8,'2,124.34','186,941.62','-42,486.73'),(345,'Cidade G','Especiais',9,'2,565.43','225,758.04','-51,308.64'),(346,'Cidade G','Especiais',10,'3,060.31','269,307.67','-61,206.29'),(347,'Cidade G','Especiais',11,'3,601.36','316,919.72','-72,027.21'),(348,'Cidade G','Especiais',12,'4,176.40','367,523.06','-83,527.97'),(349,'Cidade G','Especiais',13,'4,769.50','419,716.00','-95,390.00'),(350,'Cidade G','Especiais',14,'5,362.60','471,908.94','-107,252.03'),(351,'Cidade G','Especiais',15,'5,937.64','522,512.28','-118,752.79'),(352,'Cidade G','Especiais',16,'6,478.69','570,124.33','-129,573.71'),(353,'Cidade G','Especiais',17,'6,973.57','613,673.96','-139,471.36'),(354,'Cidade G','Especiais',18,'7,414.66','652,490.38','-148,293.27'),(355,'Cidade G','Especiais',19,'7,798.84','686,298.18','-155,976.86'),(356,'Cidade G','Especiais',20,'8,126.78','715,156.44','-162,535.56'),(357,'Cidade G','Especiais',21,'8,401.92','739,369.25','-168,038.47'),(358,'Cidade G','Especiais',22,'8,629.46','759,392.61','-172,589.23'),(359,'Cidade G','Especiais',23,'8,815.39','775,754.22','-176,307.78'),(360,'Cidade G','Especiais',24,'8,965.83','788,993.34','-179,316.67'),(361,'Cidade F','Arroz e Feijão',1,'710.72','62,543.72','-4,975.07'),(362,'Cidade F','Arroz e Feijão',2,'900.46','79,240.35','-6,303.21'),(363,'Cidade F','Arroz e Feijão',3,'1,136.81','100,039.34','-7,957.67'),(364,'Cidade F','Arroz e Feijão',4,'1,428.91','125,743.82','-10,002.35'),(365,'Cidade F','Arroz e Feijão',5,'1,786.37','157,201.00','-12,504.62'),(366,'Cidade F','Arroz e Feijão',6,'2,218.64','195,239.91','-15,530.45'),(367,'Cidade F','Arroz e Feijão',7,'2,733.83','240,576.94','-19,136.80'),(368,'Cidade F','Arroz e Feijão',8,'3,337.38','293,689.82','-23,361.69'),(369,'Cidade F','Arroz e Feijão',9,'4,030.36','354,671.34','-28,212.49'),(370,'Cidade F','Arroz e Feijão',10,'4,807.83','423,088.87','-33,654.80'),(371,'Cidade F','Arroz e Feijão',11,'5,657.82','497,888.55','-39,604.77'),(372,'Cidade F','Arroz e Feijão',12,'6,561.22','577,387.62','-45,928.56'),(373,'Cidade F','Arroz e Feijão',13,'7,493.00','659,384.00','-52,451.00'),(374,'Cidade F','Arroz e Feijão',14,'8,424.78','741,380.38','-58,973.44'),(375,'Cidade F','Arroz e Feijão',15,'9,328.18','820,879.45','-65,297.23'),(376,'Cidade F','Arroz e Feijão',16,'10,178.17','895,679.13','-71,247.20'),(377,'Cidade F','Arroz e Feijão',17,'10,955.64','964,096.66','-76,689.51'),(378,'Cidade F','Arroz e Feijão',18,'11,648.62','1,025,078.18','-81,540.31'),(379,'Cidade F','Arroz e Feijão',19,'12,252.17','1,078,191.06','-85,765.20'),(380,'Cidade F','Arroz e Feijão',20,'12,767.36','1,123,528.09','-89,371.55'),(381,'Cidade F','Arroz e Feijão',21,'13,199.63','1,161,567.00','-92,397.38'),(382,'Cidade F','Arroz e Feijão',22,'13,557.09','1,193,024.18','-94,899.65'),(383,'Cidade F','Arroz e Feijão',23,'13,849.19','1,218,728.66','-96,944.33'),(384,'Cidade F','Arroz e Feijão',24,'14,085.54','1,239,527.65','-98,598.79'),(385,'Cidade F','Fitness',1,'1,063.76','127,651.48','-11,701.39'),(386,'Cidade F','Fitness',2,'1,347.74','161,729.23','-14,825.18'),(387,'Cidade F','Fitness',3,'1,701.50','204,179.88','-18,716.49'),(388,'Cidade F','Fitness',4,'2,138.69','256,642.62','-23,525.57'),(389,'Cidade F','Fitness',5,'2,673.72','320,846.58','-29,410.94'),(390,'Cidade F','Fitness',6,'3,320.70','398,483.84','-36,527.69'),(391,'Cidade F','Fitness',7,'4,091.80','491,016.54','-45,009.85'),(392,'Cidade F','Fitness',8,'4,995.16','599,419.69','-54,946.81'),(393,'Cidade F','Fitness',9,'6,032.36','723,882.73','-66,355.92'),(394,'Cidade F','Fitness',10,'7,196.02','863,522.61','-79,156.24'),(395,'Cidade F','Fitness',11,'8,468.24','1,016,188.46','-93,150.61'),(396,'Cidade F','Fitness',12,'9,820.38','1,178,445.73','-108,024.19'),(397,'Cidade F','Fitness',13,'11,215.00','1,345,800.00','-123,365.00'),(398,'Cidade F','Fitness',14,'12,609.62','1,513,154.27','-138,705.81'),(399,'Cidade F','Fitness',15,'13,961.76','1,675,411.54','-153,579.39'),(400,'Cidade F','Fitness',16,'15,233.98','1,828,077.39','-167,573.76'),(401,'Cidade F','Fitness',17,'16,397.64','1,967,717.27','-180,374.08'),(402,'Cidade F','Fitness',18,'17,434.84','2,092,180.31','-191,783.19'),(403,'Cidade F','Fitness',19,'18,338.20','2,200,583.46','-201,720.15'),(404,'Cidade F','Fitness',20,'19,109.30','2,293,116.16','-210,202.31'),(405,'Cidade F','Fitness',21,'19,756.28','2,370,753.42','-217,319.06'),(406,'Cidade F','Fitness',22,'20,291.31','2,434,957.38','-223,204.43'),(407,'Cidade F','Fitness',23,'20,728.50','2,487,420.12','-228,013.51'),(408,'Cidade F','Fitness',24,'21,082.26','2,529,870.77','-231,904.82'),(409,'Cidade F','Especiais',1,'376.42','33,124.89','-13,174.67'),(410,'Cidade F','Especiais',2,'476.91','41,967.88','-16,691.77'),(411,'Cidade F','Especiais',3,'602.09','52,983.60','-21,073.02'),(412,'Cidade F','Especiais',4,'756.79','66,597.41','-26,487.60'),(413,'Cidade F','Especiais',5,'946.11','83,258.00','-33,113.98'),(414,'Cidade F','Especiais',6,'1,175.05','103,404.45','-41,126.77'),(415,'Cidade F','Especiais',7,'1,447.91','127,416.20','-50,676.90'),(416,'Cidade F','Especiais',8,'1,767.57','155,546.25','-61,864.99'),(417,'Cidade F','Especiais',9,'2,134.59','187,843.75','-74,710.58'),(418,'Cidade F','Especiais',10,'2,546.36','224,079.56','-89,122.55'),(419,'Cidade F','Especiais',11,'2,996.54','263,695.55','-104,878.91'),(420,'Cidade F','Especiais',12,'3,475.01','305,800.45','-121,625.18'),(421,'Cidade F','Especiais',13,'3,968.50','349,228.00','-138,897.50'),(422,'Cidade F','Especiais',14,'4,461.99','392,655.55','-156,169.82'),(423,'Cidade F','Especiais',15,'4,940.46','434,760.45','-172,916.09'),(424,'Cidade F','Especiais',16,'5,390.64','474,376.44','-188,672.45'),(425,'Cidade F','Especiais',17,'5,802.41','510,612.25','-203,084.42'),(426,'Cidade F','Especiais',18,'6,169.43','542,909.75','-215,930.01'),(427,'Cidade F','Especiais',19,'6,489.09','571,039.80','-227,118.10'),(428,'Cidade F','Especiais',20,'6,761.95','595,051.55','-236,668.23'),(429,'Cidade F','Especiais',21,'6,990.89','615,198.00','-244,681.02'),(430,'Cidade F','Especiais',22,'7,180.21','631,858.59','-251,307.40'),(431,'Cidade F','Especiais',23,'7,334.91','645,472.40','-256,721.98'),(432,'Cidade F','Especiais',24,'7,460.09','656,488.12','-261,103.23');
/*!40000 ALTER TABLE `projecao_lucro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10 23:36:18
