-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_db_spring
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (5);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `title` varchar(150) NOT NULL,
  `short_description` varchar(250) NOT NULL,
  `content` longtext NOT NULL,
  `publication_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Cristina','Un post largo e interminable','Magna tellus mi montes per semper, facilisis mollis fringilla torquent phasellus quam parturient, maecenas aenean egestas dis nulla porttitor.','Making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.','2021-03-08 21:38:33'),(2,'Carlos','¿Por qué lo usamos?','Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo.','Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).','2021-03-08 21:38:33'),(3,'Cristina','El pasaje estándar Lorem Ipsum, usado desde el año 1500','Auctor tortor volutpat aenean nunc, sapien nulla suscipit ultrices sollicitudin cursus cras leo.','Lorem ipsum dolor sit amet consectetur adipiscing elit nec condimentum, torquent iaculis mattis sed fermentum et varius odio habitasse, mus posuere dictum eu velit hac non cursus. Eleifend libero integer ridiculus sapien maecenas aliquam lacinia per lobortis praesent auctor, laoreet vulputate potenti nisl non senectus ante quis luctus. Sapien tortor tempus faucibus pulvinar platea litora mattis quis, vulputate odio habitant dui cubilia integer orci porttitor, in conubia rhoncus scelerisque himenaeos posuere lacinia. Scelerisque tellus eros non vivamus lacinia netus porta taciti dignissim congue egestas conubia himenaeos, parturient phasellus auctor ultricies proin commodo donec hac vehicula faucibus quam malesuada ut, integer lacus hendrerit consequat magna vulputate quisque dapibus luctus per sollicitudin fermentum.\r\n\r\nProin interdum varius nisi posuere metus massa augue curabitur pretium dis blandit ad ridiculus, ultricies dictum congue viverra ligula morbi hendrerit quisque lacus accumsan facilisi. Enim placerat conubia massa convallis ultrices pellentesque, quisque condimentum lectus scelerisque donec metus mi, phasellus porta quis aenean sed. Netus quisque arcu leo elementum scelerisque cum gravida natoque, curae est imperdiet proin semper non volutpat quis porta, placerat inceptos nulla fusce a sem curabitur. Purus ridiculus nascetur mollis semper mi vehicula maecenas phasellus aliquam facilisis mauris, parturient quisque augue nisi fermentum tempor velit ac pulvinar nullam arcu, rhoncus risus faucibus ut molestie at ante interdum libero lectus.\r\n\r\nPosuere vehicula nulla potenti natoque suspendisse facilisi, cursus arcu etiam consequat lobortis habitant, et ante imperdiet bibendum blandit. Velit mollis mus eleifend platea hac vitae vel torquent tincidunt, orci nullam sociosqu penatibus auctor tortor volutpat aenean nunc, sapien nulla suscipit ultrices sollicitudin cursus cras leo. Mi at euismod non mauris ante taciti nisi praesent placerat, nisl montes congue urna justo potenti vivamus magnis odio mollis, turpis proin dignissim ad leo interdum eros tristique.','2021-03-08 21:40:33'),(4,'Julia','Where can I get some text?','This book is a treatise on the theory of ethics.','Making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.','2021-03-08 21:46:33');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'blog_db_spring'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09  8:11:27
