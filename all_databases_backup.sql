-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`,`Db`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2024-11-11 07:08:21',NULL),('default',0,'memory_block_read_cost',NULL,'2024-11-11 07:08:21',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','FIREWALL_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','AUTHENTICATION_POLICY_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','FIREWALL_EXEMPT','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','FIREWALL_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','ALLOW_NONEXISTENT_DEFINER','Y'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FIREWALL_EXEMPT','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_PRIVILEGES','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_STREAM','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','OPTIMIZE_LOCAL_TABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_ANY_DEFINER','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','TELEMETRY_LOG_ADMIN','Y'),('root','localhost','TRANSACTION_GTID_TAG','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  `gtid_tag` char(32) NOT NULL COMMENT 'GTID Tag.',
  PRIMARY KEY (`source_uuid`,`gtid_tag`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (107,'%'),(263,'&'),(421,'(JSON'),(85,'*'),(83,'+'),(84,'-'),(422,'->'),(424,'->>'),(86,'/'),(74,':='),(57,'<'),(265,'<<'),(56,'<='),(54,'<=>'),(55,'<>'),(53,'='),(59,'>'),(58,'>='),(266,'>>'),(89,'ABS'),(860,'ACCOUNT'),(90,'ACOS'),(661,'ACTION'),(47,'ADD'),(119,'ADDDATE'),(120,'ADDTIME'),(894,'ADMIN'),(269,'AES_DECRYPT'),(270,'AES_ENCRYPT'),(584,'AFTER'),(246,'AGAINST'),(915,'AGGREGATE'),(585,'ALGORITHM'),(697,'ALL'),(48,'ALTER'),(586,'ANALYZE'),(60,'AND'),(530,'ANY_VALUE'),(662,'ARCHIVE'),(253,'ARRAY'),(726,'AS'),(464,'ASC'),(184,'ASCII'),(91,'ASIN'),(788,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(7,'ASYMMETRIC_ENCRYPT'),(8,'ASYMMETRIC_SIGN'),(9,'ASYMMETRIC_VERIFY'),(645,'AT'),(92,'ATAN'),(93,'ATAN2'),(861,'ATTRIBUTE'),(892,'AUTHENTICATION'),(747,'AUTOCOMMIT'),(587,'AUTOEXTEND_SIZE'),(588,'AUTO_INCREMENT'),(458,'AVG'),(589,'AVG_ROW_LENGTH'),(759,'BACKUP'),(773,'BEFORE'),(748,'BEGIN'),(287,'BENCHMARK'),(61,'BETWEEN'),(185,'BIN'),(252,'BINARY'),(566,'BINLOG'),(531,'BIN_TO_UUID'),(460,'BIT_AND'),(268,'BIT_COUNT'),(186,'BIT_LENGTH'),(461,'BIT_OR'),(462,'BIT_XOR'),(15,'BOOL'),(16,'BOOLEAN'),(229,'BOTH'),(649,'BTREE'),(465,'BY'),(40,'BYTE'),(951,'CACHE'),(691,'CALL'),(501,'CAN_ACCESS_COLUMN'),(502,'CAN_ACCESS_DATABASE'),(503,'CAN_ACCESS_TABLE'),(504,'CAN_ACCESS_USER'),(505,'CAN_ACCESS_VIEW'),(663,'CASCADE'),(75,'CASE'),(254,'CAST'),(841,'CATALOG_NAME'),(94,'CEIL'),(95,'CEILING'),(749,'CHAIN'),(862,'CHALLENGE_RESPONSE'),(590,'CHANGE'),(567,'CHANNEL'),(41,'CHAR'),(37,'CHARACTER'),(188,'CHARACTER_LENGTH'),(288,'CHARSET'),(187,'CHAR_LENGTH'),(591,'CHECK'),(592,'CHECKSUM'),(863,'CIPHER'),(842,'CLASS_ORIGIN'),(895,'CLIENT'),(923,'CLONE'),(699,'CLOSE'),(63,'COALESCE'),(944,'CODE'),(289,'COERCIBILITY'),(548,'COLLATE'),(290,'COLLATION'),(593,'COLUMN'),(594,'COLUMNS'),(843,'COLUMN_NAME'),(553,'COMMENT'),(750,'COMMIT'),(762,'COMMITTED'),(664,'COMPACT'),(554,'COMPLETION'),(919,'COMPONENT'),(271,'COMPRESS'),(665,'COMPRESSED'),(595,'COMPRESSION'),(189,'CONCAT'),(190,'CONCAT_WS'),(713,'CONCURRENT'),(838,'CONDITION'),(596,'CONNECTION'),(291,'CONNECTION_ID'),(751,'CONSISTENT'),(597,'CONSTRAINT'),(844,'CONSTRAINT_CATALOG'),(845,'CONSTRAINT_NAME'),(846,'CONSTRAINT_SCHEMA'),(839,'CONTINUE'),(96,'CONV'),(259,'CONVERT'),(121,'CONVERT_TZ'),(97,'COS'),(98,'COT'),(463,'COUNT'),(99,'CRC32'),(49,'CREATE'),(10,'CREATE_ASYMMETRIC_PRIV_KEY'),(11,'CREATE_ASYMMETRIC_PUB_KEY'),(12,'CREATE_DIGEST'),(742,'CROSS'),(666,'CSV'),(482,'CUME_DIST'),(122,'CURDATE'),(864,'CURRENT'),(123,'CURRENT_DATE'),(292,'CURRENT_ROLE'),(124,'CURRENT_TIME'),(125,'CURRENT_TIMESTAMP'),(293,'CURRENT_USER'),(836,'CURSOR'),(847,'CURSOR_NAME'),(126,'CURTIME'),(598,'DATA'),(294,'DATABASE'),(928,'DATABASES'),(639,'DATAFILE'),(34,'DATE'),(127,'DATEDIFF'),(255,'DATETIME'),(128,'DATE_ADD'),(143,'DATE_FORMAT'),(129,'DATE_SUB'),(130,'DAY'),(144,'DAYNAME'),(145,'DAYOFMONTH'),(146,'DAYOFWEEK'),(147,'DAYOFYEAR'),(131,'DAY_HOUR'),(132,'DAY_MINUTE'),(133,'DAY_SECOND'),(827,'DEALLOCATE'),(26,'DEC'),(29,'DECIMAL'),(828,'DECLARE'),(2,'DEFAULT'),(818,'DEFAULT_AUTH'),(555,'DEFINER'),(655,'DEFINITION'),(100,'DEGREES'),(705,'DELAYED'),(599,'DELAY_KEY_WRITE'),(667,'DELETE'),(483,'DENSE_RANK'),(466,'DESC'),(962,'DESCRIBE'),(656,'DESCRIPTION'),(848,'DIAGNOSTICS'),(600,'DIRECTORY'),(556,'DISABLE'),(601,'DISCARD'),(493,'DISTANCE'),(459,'DISTINCT'),(727,'DISTINCTROW'),(87,'DIV'),(557,'DO'),(602,'DROP'),(741,'DUAL'),(728,'DUMPFILE'),(706,'DUPLICATE'),(668,'DYNAMIC'),(76,'ELSE'),(829,'ELSEIF'),(191,'ELT'),(558,'ENABLE'),(714,'ENCLOSED'),(549,'ENCRYPTION'),(77,'END'),(646,'ENDS'),(603,'ENGINE'),(929,'ENGINES'),(568,'ERROR'),(930,'ERRORS'),(238,'ESCAPE'),(715,'ESCAPED'),(559,'EVENT'),(942,'EVENTS'),(647,'EVERY'),(698,'EXCEPT'),(604,'EXCHANGE'),(826,'EXECUTE'),(64,'EXISTS'),(840,'EXIT'),(101,'EXP'),(247,'EXPANSION'),(865,'EXPIRE'),(963,'EXPLAIN'),(952,'EXPORT'),(192,'EXPORT_SET'),(913,'EXTENDED'),(684,'EXTENT_SIZE'),(148,'EXTRACT'),(423,'EXTRACTION)'),(260,'EXTRACTVALUE'),(866,'FACTOR'),(867,'FAILED_LOGIN_ATTEMPTS'),(13,'FALSE'),(911,'FAST'),(669,'FEDERATED'),(837,'FETCH'),(193,'FIELD'),(716,'FIELDS'),(896,'FILE'),(685,'FILE_BLOCK_SIZE'),(779,'FILTER'),(194,'FIND_IN_SET'),(868,'FINISH'),(605,'FIRST'),(484,'FIRST_VALUE'),(27,'FIXED'),(30,'FLOAT4'),(31,'FLOAT8'),(102,'FLOOR'),(953,'FLUSH'),(569,'FOR'),(743,'FORCE'),(606,'FOREIGN'),(195,'FORMAT'),(497,'FORMAT_BYTES'),(498,'FORMAT_PICO_TIME'),(295,'FOUND_ROWS'),(230,'FROM'),(196,'FROM_BASE64'),(149,'FROM_DAYS'),(150,'FROM_UNIXTIME'),(670,'FULL'),(607,'FULLTEXT'),(168,'FUNCTION'),(954,'GENERAL'),(335,'GEOMCOLLECTION'),(336,'GEOMETRYCOLLECTION'),(849,'GET'),(506,'GET_DD_COLUMN_PRIVILEGES'),(507,'GET_DD_CREATE_OPTIONS'),(508,'GET_DD_INDEX_SUB_PART_LENGTH'),(151,'GET_FORMAT'),(282,'GET_LOCK'),(763,'GLOBAL'),(897,'GRANT'),(931,'GRANTS'),(65,'GREATEST'),(579,'GROUP'),(532,'GROUPING'),(467,'GROUP_CONCAT'),(776,'GTIDS'),(453,'GTID_SUBSET'),(454,'GTID_SUBTRACT'),(700,'HANDLER'),(729,'HAVING'),(671,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(197,'HEX'),(707,'HIGH_PRIORITY'),(869,'HISTORY'),(650,'HOST'),(932,'HOSTS'),(134,'HOUR'),(135,'HOUR_MINUTE'),(136,'HOUR_SECOND'),(296,'ICU_VERSION'),(724,'IDENTIFIED'),(80,'IF'),(81,'IFNULL'),(708,'IGNORE'),(789,'IGNORE_SERVER_IDS'),(608,'IMPORT'),(66,'IN'),(50,'INDEX'),(933,'INDEXES'),(535,'INET6_ATON'),(536,'INET6_NTOA'),(533,'INET_ATON'),(534,'INET_NTOA'),(717,'INFILE'),(893,'INITIAL'),(640,'INITIAL_SIZE'),(870,'INITIATE'),(425,'INLINE'),(744,'INNER'),(570,'INNODB'),(198,'INSERT'),(609,'INSERT_METHOD'),(920,'INSTALL'),(571,'INSTANCE'),(199,'INSTR'),(17,'INT1'),(20,'INT2'),(21,'INT3'),(23,'INT4'),(25,'INT8'),(24,'INTEGER'),(509,'INTERNAL_AUTO_INCREMENT'),(510,'INTERNAL_AVG_ROW_LENGTH'),(512,'INTERNAL_CHECKSUM'),(511,'INTERNAL_CHECK_TIME'),(513,'INTERNAL_DATA_FREE'),(514,'INTERNAL_DATA_LENGTH'),(515,'INTERNAL_DD_CHAR_LENGTH'),(516,'INTERNAL_GET_COMMENT_OR_ERROR'),(517,'INTERNAL_GET_ENABLED_ROLE_JSON'),(518,'INTERNAL_GET_HOSTNAME'),(519,'INTERNAL_GET_USERNAME'),(520,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(521,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(522,'INTERNAL_INDEX_LENGTH'),(523,'INTERNAL_IS_ENABLED_ROLE'),(524,'INTERNAL_IS_MANDATORY_ROLE'),(525,'INTERNAL_KEYS_DISABLED'),(526,'INTERNAL_MAX_DATA_LENGTH'),(527,'INTERNAL_TABLE_ROWS'),(528,'INTERNAL_UPDATE_TIME'),(712,'INTERSECT'),(67,'INTERVAL'),(709,'INTO'),(610,'INVISIBLE'),(819,'IO_THREAD'),(68,'IS'),(70,'ISNULL'),(764,'ISOLATION'),(871,'ISSUER'),(283,'IS_FREE_LOCK'),(537,'IS_IPV4'),(538,'IS_IPV4_COMPAT'),(539,'IS_IPV4_MAPPED'),(540,'IS_IPV6'),(284,'IS_USED_LOCK'),(541,'IS_UUID'),(529,'IS_VISIBLE_DD_OBJECT'),(830,'ITERATE'),(730,'JOIN'),(256,'JSON'),(415,'JSON_ARRAY'),(470,'JSON_ARRAYAGG'),(433,'JSON_ARRAY_APPEND'),(434,'JSON_ARRAY_INSERT'),(418,'JSON_CONTAINS'),(419,'JSON_CONTAINS_PATH'),(443,'JSON_DEPTH'),(420,'JSON_EXTRACT'),(435,'JSON_INSERT'),(427,'JSON_KEYS'),(444,'JSON_LENGTH'),(436,'JSON_MERGE'),(437,'JSON_MERGE_PATCH'),(438,'JSON_MERGE_PRESERVE'),(416,'JSON_OBJECT'),(471,'JSON_OBJECTAGG'),(428,'JSON_OVERLAPS'),(450,'JSON_PRETTY'),(417,'JSON_QUOTE'),(439,'JSON_REMOVE'),(440,'JSON_REPLACE'),(448,'JSON_SCHEMA_VALID'),(449,'JSON_SCHEMA_VALIDATION_REPORT'),(429,'JSON_SEARCH'),(441,'JSON_SET'),(451,'JSON_STORAGE_FREE'),(452,'JSON_STORAGE_SIZE'),(447,'JSON_TABLE'),(445,'JSON_TYPE'),(442,'JSON_UNQUOTE'),(446,'JSON_VALID'),(430,'JSON_VALUE'),(51,'KEY'),(572,'KEYRING'),(611,'KEYS'),(612,'KEY_BLOCK_SIZE'),(959,'KILL'),(485,'LAG'),(701,'LAST'),(152,'LAST_DAY'),(297,'LAST_INSERT_ID'),(486,'LAST_VALUE'),(200,'LCASE'),(487,'LEAD'),(231,'LEADING'),(71,'LEAST'),(831,'LEAVE'),(960,'LEAVES'),(201,'LEFT'),(202,'LENGTH'),(765,'LEVEL'),(222,'LIKE'),(692,'LIMIT'),(718,'LINES'),(337,'LINESTRING'),(103,'LN'),(719,'LOAD'),(203,'LOAD_FILE'),(720,'LOCAL'),(153,'LOCALTIME'),(154,'LOCALTIMESTAMP'),(204,'LOCATE'),(613,'LOCK'),(104,'LOG'),(106,'LOG10'),(105,'LOG2'),(580,'LOGFILE'),(774,'LOGS'),(45,'LONG'),(46,'LONGBINARY'),(832,'LOOP'),(205,'LOWER'),(693,'LOW_PRIORITY'),(206,'LPAD'),(207,'LTRIM'),(155,'MAKEDATE'),(156,'MAKETIME'),(208,'MAKE_SET'),(573,'MASTER'),(456,'MASTER_POS_WAIT'),(248,'MATCH'),(472,'MAX'),(872,'MAX_CONNECTIONS_PER_HOUR'),(873,'MAX_QUERIES_PER_HOUR'),(614,'MAX_ROWS'),(686,'MAX_SIZE'),(874,'MAX_UPDATES_PER_HOUR'),(875,'MAX_USER_CONNECTIONS'),(394,'MBRCONTAINS'),(395,'MBRCOVEREDBY'),(396,'MBRCOVERS'),(397,'MBRDISJOINT'),(398,'MBREQUALS'),(399,'MBRINTERSECTS'),(400,'MBROVERLAPS'),(401,'MBRTOUCHES'),(402,'MBRWITHIN'),(272,'MD5'),(912,'MEDIUM'),(431,'MEMBER'),(731,'MEMORY'),(672,'MERGE'),(850,'MESSAGE_TEXT'),(157,'MICROSECOND'),(209,'MID'),(22,'MIDDLEINT'),(473,'MIN'),(137,'MINUTE'),(138,'MINUTE_SECOND'),(615,'MIN_ROWS'),(88,'MOD'),(249,'MODE'),(616,'MODIFY'),(139,'MONTH'),(158,'MONTHNAME'),(673,'MRG_MYISAM'),(338,'MULTILINESTRING'),(339,'MULTIPOINT'),(340,'MULTIPOLYGON'),(934,'MUTEX'),(674,'MYISAM'),(851,'MYSQL_ERRNO'),(657,'NAME'),(927,'NAMES'),(542,'NAME_CONST'),(38,'NATIONAL'),(745,'NATURAL'),(39,'NCHAR'),(675,'NDB'),(676,'NDBCLUSTER'),(790,'NETWORK_NAMESPACE'),(876,'NEVER'),(702,'NEXT'),(574,'NO'),(687,'NODEGROUP'),(877,'NONE'),(62,'NOT'),(159,'NOW'),(910,'NO_WRITE_TO_BINLOG'),(488,'NTH_VALUE'),(489,'NTILE'),(69,'NULL'),(82,'NULLIF'),(852,'NUMBER'),(28,'NUMERIC'),(42,'NVARCHAR'),(210,'OCT'),(211,'OCTET_LENGTH'),(432,'OF'),(732,'OFFSET'),(878,'OLD'),(560,'ON'),(550,'ONLY'),(703,'OPEN'),(617,'OPTIMIZE'),(955,'OPTIMIZER_COSTS'),(898,'OPTION'),(879,'OPTIONAL'),(721,'OPTIONALLY'),(582,'OPTIONS'),(72,'OR'),(212,'ORD'),(468,'ORDER'),(658,'ORGANIZATION'),(746,'OUTER'),(733,'OUTFILE'),(651,'OWNER'),(618,'PACK_KEYS'),(619,'PARSER'),(945,'PARSE_TREE'),(677,'PARTIAL'),(620,'PARTITION'),(621,'PARTITIONING'),(622,'PASSWORD'),(880,'PASSWORD_LOCK_TIME'),(426,'PATH)'),(490,'PERCENT_RANK'),(160,'PERIOD_ADD'),(161,'PERIOD_DIFF'),(924,'PERSIST'),(925,'PERSIST_ONLY'),(108,'PI'),(921,'PLUGIN'),(946,'PLUGINS'),(820,'PLUGIN_DIR'),(341,'POINT'),(342,'POLYGON'),(652,'PORT'),(213,'POSITION'),(109,'POW'),(110,'POWER'),(32,'PRECISION'),(770,'PREPARE'),(561,'PRESERVE'),(704,'PREV'),(623,'PRIMARY'),(899,'PRIVILEGES'),(791,'PRIVILEGE_CHECKS_USER'),(581,'PROCEDURE'),(900,'PROCESS'),(935,'PROCESSLIST'),(947,'PROFILE'),(948,'PROFILES'),(904,'PROXY'),(499,'PS_CURRENT_THREAD_ID'),(500,'PS_THREAD_ID'),(775,'PURGE'),(162,'QUARTER'),(250,'QUERY'),(694,'QUICK'),(214,'QUOTE'),(111,'RADIANS'),(112,'RAND'),(881,'RANDOM'),(273,'RANDOM_BYTES'),(491,'RANK'),(551,'READ'),(33,'REAL'),(624,'REBUILD'),(771,'RECOVER'),(575,'REDO_LOG'),(678,'REDUNDANT'),(659,'REFERENCE'),(679,'REFERENCES'),(240,'REGEXP'),(242,'REGEXP_INSTR'),(243,'REGEXP_LIKE'),(244,'REGEXP_REPLACE'),(245,'REGEXP_SUBSTR'),(882,'REGISTRATION'),(956,'RELAY'),(949,'RELAYLOG'),(792,'RELAY_LOG_FILE'),(793,'RELAY_LOG_POS'),(752,'RELEASE'),(285,'RELEASE_ALL_LOCKS'),(286,'RELEASE_LOCK'),(576,'RELOAD'),(625,'REMOVE'),(562,'RENAME'),(626,'REORGANIZE'),(627,'REPAIR'),(215,'REPEAT'),(766,'REPEATABLE'),(216,'REPLACE'),(563,'REPLICA'),(950,'REPLICAS'),(780,'REPLICATE_DO_DB'),(781,'REPLICATE_DO_TABLE'),(782,'REPLICATE_IGNORE_DB'),(783,'REPLICATE_IGNORE_TABLE'),(784,'REPLICATE_REWRITE_DB'),(785,'REPLICATE_WILD_DO_TABLE'),(786,'REPLICATE_WILD_IGNORE_TABLE'),(787,'REPLICATION'),(883,'REQUIRE'),(777,'RESET'),(857,'RESIGNAL'),(907,'RESOURCE'),(961,'RESTART'),(682,'RESTRICT'),(884,'RETAIN'),(834,'RETURN'),(853,'RETURNED_SQLSTATE'),(916,'RETURNS'),(885,'REUSE'),(217,'REVERSE'),(905,'REVOKE'),(218,'RIGHT'),(241,'RLIKE'),(886,'ROLE'),(298,'ROLES_GRAPHML'),(577,'ROLLBACK'),(113,'ROUND'),(710,'ROW'),(725,'ROWS'),(299,'ROW_COUNT'),(628,'ROW_FORMAT'),(492,'ROW_NUMBER'),(219,'RPAD'),(220,'RTRIM'),(758,'SAVEPOINT'),(564,'SCHEDULE'),(300,'SCHEMA'),(936,'SCHEMAS'),(854,'SCHEMA_NAME'),(140,'SECOND'),(163,'SEC_TO_TIME'),(711,'SELECT'),(469,'SEPARATOR'),(3,'SERIAL'),(767,'SERIALIZABLE'),(583,'SERVER'),(768,'SESSION'),(301,'SESSION_USER'),(552,'SET'),(274,'SHA'),(275,'SHA1'),(276,'SHA2'),(734,'SHARE'),(937,'SHOW'),(901,'SHUTDOWN'),(114,'SIGN'),(859,'SIGNAL'),(257,'SIGNED'),(115,'SIN'),(565,'SLAVE'),(543,'SLEEP'),(957,'SLOW'),(753,'SNAPSHOT'),(653,'SOCKET'),(917,'SONAME'),(221,'SOUNDEX'),(223,'SOUNDS'),(794,'SOURCE'),(795,'SOURCE_AUTO_POSITION'),(796,'SOURCE_BIND'),(797,'SOURCE_COMPRESSION_ALGORITHMS'),(798,'SOURCE_CONNECT_RETRY'),(799,'SOURCE_HEARTBEAT_PERIOD'),(800,'SOURCE_HOST'),(801,'SOURCE_LOG_FILE'),(802,'SOURCE_LOG_POS'),(803,'SOURCE_PASSWORD'),(804,'SOURCE_PORT'),(457,'SOURCE_POS_WAIT'),(805,'SOURCE_RETRY_COUNT'),(806,'SOURCE_SSL'),(807,'SOURCE_SSL_CA'),(808,'SOURCE_SSL_CERT'),(809,'SOURCE_SSL_CIPHER'),(810,'SOURCE_SSL_CRL'),(811,'SOURCE_SSL_CRLPATH'),(812,'SOURCE_SSL_KEY'),(813,'SOURCE_SSL_VERIFY_SERVER_CERT'),(814,'SOURCE_TLS_CIPHERSUITES'),(815,'SOURCE_TLS_VERSION'),(816,'SOURCE_USER'),(817,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(224,'SPACE'),(629,'SPATIAL'),(858,'SQLSTATE'),(821,'SQL_AFTER_GTIDS'),(822,'SQL_AFTER_MTS_GAPS'),(823,'SQL_BEFORE_GTIDS'),(735,'SQL_BIG_RESULT'),(736,'SQL_BUFFER_RESULT'),(737,'SQL_CALC_FOUND_ROWS'),(778,'SQL_LOG_BIN'),(738,'SQL_NO_CACHE'),(739,'SQL_SMALL_RESULT'),(824,'SQL_THREAD'),(116,'SQRT'),(887,'SSL'),(754,'START'),(722,'STARTING'),(648,'STARTS'),(277,'STATEMENT_DIGEST'),(278,'STATEMENT_DIGEST_TEXT'),(630,'STATS_AUTO_RECALC'),(631,'STATS_PERSISTENT'),(632,'STATS_SAMPLE_PAGES'),(938,'STATUS'),(474,'STD'),(475,'STDDEV'),(476,'STDDEV_POP'),(477,'STDDEV_SAMP'),(825,'STOP'),(943,'STORAGE'),(680,'STORED'),(740,'STRAIGHT_JOIN'),(239,'STRCMP'),(918,'STRING'),(494,'STRING_TO_VECTOR'),(164,'STR_TO_DATE'),(364,'ST_AREA'),(343,'ST_ASBINARY'),(407,'ST_ASGEOJSON'),(345,'ST_ASTEXT'),(344,'ST_ASWKB'),(346,'ST_ASWKT'),(372,'ST_BUFFER'),(373,'ST_BUFFER_STRATEGY'),(365,'ST_CENTROID'),(409,'ST_COLLECT'),(383,'ST_CONTAINS'),(374,'ST_CONVEXHULL'),(384,'ST_CROSSES'),(375,'ST_DIFFERENCE'),(348,'ST_DIMENSION'),(385,'ST_DISJOINT'),(386,'ST_DISTANCE'),(410,'ST_DISTANCE_SPHERE'),(358,'ST_ENDPOINT'),(349,'ST_ENVELOPE'),(387,'ST_EQUALS'),(366,'ST_EXTERIORRING'),(388,'ST_FRECHETDISTANCE'),(403,'ST_GEOHASH'),(305,'ST_GEOMCOLLFROMTEXT'),(320,'ST_GEOMCOLLFROMWKB'),(306,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(321,'ST_GEOMETRYCOLLECTIONFROMWKB'),(307,'ST_GEOMETRYFROMTEXT'),(322,'ST_GEOMETRYFROMWKB'),(370,'ST_GEOMETRYN'),(350,'ST_GEOMETRYTYPE'),(408,'ST_GEOMFROMGEOJSON'),(308,'ST_GEOMFROMTEXT'),(323,'ST_GEOMFROMWKB'),(389,'ST_HAUSDORFFDISTANCE'),(367,'ST_INTERIORRINGN'),(376,'ST_INTERSECTION'),(390,'ST_INTERSECTS'),(359,'ST_ISCLOSED'),(351,'ST_ISEMPTY'),(352,'ST_ISSIMPLE'),(411,'ST_ISVALID'),(404,'ST_LATFROMGEOHASH'),(354,'ST_LATITUDE'),(360,'ST_LENGTH'),(309,'ST_LINEFROMTEXT'),(324,'ST_LINEFROMWKB'),(377,'ST_LINEINTERPOLATEPOINT'),(378,'ST_LINEINTERPOLATEPOINTS'),(310,'ST_LINESTRINGFROMTEXT'),(325,'ST_LINESTRINGFROMWKB'),(405,'ST_LONGFROMGEOHASH'),(355,'ST_LONGITUDE'),(412,'ST_MAKEENVELOPE'),(311,'ST_MLINEFROMTEXT'),(326,'ST_MLINEFROMWKB'),(313,'ST_MPOINTFROMTEXT'),(328,'ST_MPOINTFROMWKB'),(315,'ST_MPOLYFROMTEXT'),(330,'ST_MPOLYFROMWKB'),(312,'ST_MULTILINESTRINGFROMTEXT'),(327,'ST_MULTILINESTRINGFROMWKB'),(314,'ST_MULTIPOINTFROMTEXT'),(329,'ST_MULTIPOINTFROMWKB'),(316,'ST_MULTIPOLYGONFROMTEXT'),(331,'ST_MULTIPOLYGONFROMWKB'),(371,'ST_NUMGEOMETRIES'),(368,'ST_NUMINTERIORRING'),(369,'ST_NUMINTERIORRINGS'),(361,'ST_NUMPOINTS'),(391,'ST_OVERLAPS'),(379,'ST_POINTATDISTANCE'),(406,'ST_POINTFROMGEOHASH'),(317,'ST_POINTFROMTEXT'),(332,'ST_POINTFROMWKB'),(362,'ST_POINTN'),(318,'ST_POLYFROMTEXT'),(333,'ST_POLYFROMWKB'),(319,'ST_POLYGONFROMTEXT'),(334,'ST_POLYGONFROMWKB'),(413,'ST_SIMPLIFY'),(353,'ST_SRID'),(363,'ST_STARTPOINT'),(347,'ST_SWAPXY'),(380,'ST_SYMDIFFERENCE'),(392,'ST_TOUCHES'),(381,'ST_TRANSFORM'),(382,'ST_UNION'),(414,'ST_VALIDATE'),(393,'ST_WITHIN'),(356,'ST_X'),(357,'ST_Y'),(855,'SUBCLASS_ORIGIN'),(165,'SUBDATE'),(888,'SUBJECT'),(225,'SUBSTR'),(226,'SUBSTRING'),(227,'SUBSTRING_INDEX'),(166,'SUBTIME'),(478,'SUM'),(902,'SUPER'),(167,'SYSDATE'),(660,'SYSTEM'),(302,'SYSTEM_USER'),(52,'TABLE'),(761,'TABLES'),(633,'TABLESPACE'),(856,'TABLE_NAME'),(117,'TAN'),(690,'TEMPORARY'),(723,'TERMINATED'),(78,'THEN'),(908,'THREAD_PRIORITY'),(36,'TIME'),(169,'TIMEDIFF'),(35,'TIMESTAMP'),(170,'TIMESTAMPADD'),(171,'TIMESTAMPDIFF'),(258,'TIMEZONE'),(172,'TIME_FORMAT'),(173,'TIME_TO_SEC'),(578,'TLS'),(641,'TO'),(228,'TO_BASE64'),(174,'TO_DAYS'),(175,'TO_SECONDS'),(964,'TRADITIONAL'),(232,'TRAILING'),(755,'TRANSACTION'),(965,'TREE'),(689,'TRIGGER'),(939,'TRIGGERS'),(233,'TRIM'),(14,'TRUE'),(118,'TRUNCATE'),(634,'TYPE'),(234,'UCASE'),(889,'UNBOUNDED'),(769,'UNCOMMITTED'),(279,'UNCOMPRESS'),(280,'UNCOMPRESSED_LENGTH'),(642,'UNDO'),(235,'UNHEX'),(922,'UNINSTALL'),(635,'UNION'),(636,'UNIQUE'),(176,'UNIX_TIMESTAMP'),(906,'UNKNOWN'),(760,'UNLOCK'),(890,'UNREGISTER'),(18,'UNSIGNED'),(833,'UNTIL'),(683,'UPDATE'),(261,'UPDATEXML'),(637,'UPGRADE'),(236,'UPPER'),(903,'USAGE'),(688,'USE'),(303,'USER'),(958,'USER_RESOURCES'),(914,'USE_FRM'),(695,'USING'),(177,'UTC_DATE'),(178,'UTC_TIME'),(179,'UTC_TIMESTAMP'),(544,'UUID'),(545,'UUID_SHORT'),(546,'UUID_TO_BIN'),(281,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(547,'VALUES'),(43,'VARCHARACTER'),(926,'VARIABLE'),(940,'VARIABLES'),(481,'VARIANCE'),(44,'VARYING'),(479,'VAR_POP'),(480,'VAR_SAMP'),(909,'VCPU'),(495,'VECTOR_DIM'),(496,'VECTOR_TO_STRING'),(304,'VERSION'),(644,'VIEW'),(681,'VIRTUAL'),(638,'VISIBLE'),(643,'WAIT'),(455,'WAIT_FOR_EXECUTED_GTID_SET'),(941,'WARNINGS'),(180,'WEEK'),(181,'WEEKDAY'),(182,'WEEKOFYEAR'),(237,'WEIGHT_STRING'),(79,'WHEN'),(696,'WHERE'),(835,'WHILE'),(251,'WITH'),(756,'WORK'),(654,'WRAPPER'),(757,'WRITE'),(891,'X509'),(772,'XA'),(73,'XOR'),(141,'YEAR'),(183,'YEARWEEK'),(142,'YEAR_MONTH'),(19,'ZEROFILL'),(264,'^'),(262,'|'),(267,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(489,2),(506,2),(507,2),(514,2),(517,2),(518,2),(526,2),(527,2),(551,2),(558,2),(591,2),(609,2),(611,2),(617,2),(619,2),(2,3),(526,3),(2,4),(551,4),(558,4),(607,4),(608,4),(3,5),(697,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,13),(11,14),(12,14),(14,15),(15,15),(14,16),(241,16),(14,17),(14,18),(18,18),(20,18),(21,18),(23,18),(24,18),(243,18),(14,19),(18,19),(20,19),(21,19),(23,19),(24,19),(16,20),(17,21),(17,22),(18,23),(18,24),(243,24),(629,24),(20,25),(21,26),(21,27),(526,27),(21,28),(22,29),(243,29),(629,29),(23,30),(24,31),(24,32),(24,33),(629,33),(26,34),(130,34),(132,34),(243,34),(28,35),(166,35),(29,36),(164,36),(243,36),(31,37),(33,37),(506,37),(507,37),(514,37),(517,37),(518,37),(526,37),(555,37),(556,37),(559,37),(637,37),(638,37),(640,37),(644,37),(31,38),(33,38),(31,39),(32,40),(32,41),(185,41),(243,41),(33,42),(33,43),(33,44),(42,45),(42,46),(52,47),(514,47),(515,47),(528,47),(609,47),(52,48),(506,48),(507,48),(508,48),(509,48),(510,48),(511,48),(512,48),(513,48),(514,48),(515,48),(516,48),(609,48),(614,48),(620,48),(52,49),(517,49),(518,49),(519,49),(520,49),(521,49),(522,49),(523,49),(524,49),(525,49),(526,49),(528,49),(529,49),(530,49),(610,49),(611,49),(621,49),(629,49),(640,49),(648,49),(649,49),(650,49),(651,49),(652,49),(653,49),(655,49),(52,50),(514,50),(520,50),(526,50),(534,50),(561,50),(640,50),(666,50),(686,50),(689,50),(52,51),(514,51),(526,51),(527,51),(551,51),(52,52),(514,52),(526,52),(539,52),(543,52),(544,52),(550,52),(552,52),(562,52),(624,52),(625,52),(626,52),(627,52),(628,52),(640,52),(653,52),(680,52),(53,53),(80,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(76,60),(578,60),(60,61),(61,61),(61,62),(64,62),(67,62),(70,62),(72,62),(75,62),(233,62),(235,62),(517,62),(518,62),(519,62),(525,62),(610,62),(611,62),(62,63),(514,63),(63,64),(64,64),(517,64),(518,64),(519,64),(525,64),(531,64),(532,64),(533,64),(537,64),(538,64),(539,64),(542,64),(609,64),(610,64),(611,64),(612,64),(613,64),(616,64),(630,64),(691,64),(65,65),(66,66),(67,66),(241,66),(559,66),(643,66),(646,66),(647,66),(666,66),(676,66),(68,67),(132,67),(519,67),(609,67),(611,67),(69,68),(70,68),(71,68),(72,68),(71,69),(72,69),(527,69),(73,70),(74,71),(77,72),(525,72),(78,73),(79,74),(81,75),(592,75),(81,76),(592,76),(81,77),(576,77),(589,77),(592,77),(593,77),(596,77),(597,77),(599,77),(81,78),(592,78),(593,78),(81,79),(592,79),(82,80),(517,80),(518,80),(519,80),(525,80),(531,80),(532,80),(533,80),(537,80),(538,80),(539,80),(542,80),(593,80),(609,80),(610,80),(611,80),(612,80),(613,80),(616,80),(630,80),(691,80),(83,81),(84,82),(85,83),(86,84),(87,84),(88,85),(89,86),(90,87),(91,88),(110,88),(92,89),(93,90),(94,91),(95,92),(96,93),(97,94),(98,95),(99,96),(100,97),(101,98),(102,99),(103,100),(104,101),(105,102),(106,103),(107,104),(641,104),(108,105),(109,106),(110,107),(111,108),(112,109),(113,110),(114,111),(115,112),(116,113),(117,114),(118,115),(119,116),(120,117),(121,118),(514,118),(544,118),(122,119),(123,120),(124,121),(125,122),(126,123),(127,124),(128,125),(129,126),(131,127),(132,128),(132,129),(134,129),(132,130),(135,130),(609,130),(611,130),(132,131),(132,132),(132,133),(132,134),(144,134),(132,135),(132,136),(132,137),(151,137),(132,138),(132,139),(152,139),(132,140),(158,140),(132,141),(180,141),(243,141),(132,142),(133,143),(136,144),(137,145),(138,146),(139,147),(140,148),(141,149),(142,150),(143,151),(145,152),(146,153),(147,154),(148,155),(149,156),(150,157),(153,158),(154,159),(155,160),(156,161),(157,162),(159,163),(160,164),(161,165),(162,166),(163,167),(164,168),(166,168),(215,168),(509,168),(522,168),(523,168),(535,168),(536,168),(629,168),(630,168),(640,168),(651,168),(663,168),(664,168),(165,169),(167,170),(168,171),(169,172),(170,173),(171,174),(172,175),(173,176),(174,177),(175,178),(176,179),(177,180),(178,181),(179,182),(181,183),(182,184),(183,185),(184,186),(186,187),(187,188),(188,189),(189,190),(190,191),(191,192),(192,193),(193,194),(194,195),(694,195),(695,195),(696,195),(195,196),(196,197),(197,198),(551,198),(552,198),(553,198),(198,199),(199,200),(200,201),(561,201),(201,202),(202,203),(203,204),(204,205),(205,206),(206,207),(207,208),(208,209),(209,210),(210,211),(211,212),(212,213),(213,214),(214,215),(597,215),(215,216),(525,216),(555,216),(556,216),(558,216),(609,216),(618,216),(216,217),(217,218),(561,218),(218,219),(219,220),(220,221),(221,222),(233,222),(640,222),(646,222),(647,222),(221,223),(222,224),(223,225),(224,226),(225,227),(226,228),(227,229),(227,230),(546,230),(550,230),(559,230),(640,230),(643,230),(646,230),(647,230),(666,230),(676,230),(227,231),(227,232),(227,233),(228,234),(229,235),(230,236),(231,237),(232,238),(234,239),(235,240),(236,241),(237,242),(238,243),(239,244),(240,245),(241,246),(241,247),(241,248),(241,249),(559,249),(241,250),(688,250),(241,251),(514,251),(520,251),(526,251),(609,251),(611,251),(614,251),(687,251),(242,252),(243,252),(577,252),(578,252),(641,252),(642,252),(687,252),(690,252),(243,253),(243,254),(243,255),(243,256),(694,256),(695,256),(696,256),(243,257),(243,258),(244,259),(245,260),(246,261),(247,262),(248,263),(249,264),(250,265),(251,266),(252,267),(253,268),(254,269),(255,270),(256,271),(257,272),(258,273),(259,274),(259,275),(260,276),(261,277),(262,278),(263,279),(264,280),(265,281),(266,282),(267,283),(268,284),(269,285),(270,286),(271,287),(272,288),(637,288),(638,288),(273,289),(274,290),(640,290),(645,290),(275,291),(276,292),(277,293),(508,293),(519,293),(278,294),(506,294),(507,294),(517,294),(518,294),(524,294),(531,294),(532,294),(640,294),(648,294),(649,294),(279,295),(280,296),(281,297),(282,298),(283,299),(606,299),(284,300),(506,300),(507,300),(517,300),(518,300),(531,300),(532,300),(640,300),(648,300),(649,300),(694,300),(695,300),(696,300),(285,301),(286,302),(287,303),(524,303),(583,303),(609,303),(611,303),(613,303),(615,303),(616,303),(621,303),(655,303),(288,304),(289,305),(289,306),(290,307),(290,308),(291,309),(291,310),(292,311),(292,312),(293,313),(293,314),(294,315),(294,316),(295,317),(296,318),(296,319),(297,320),(297,321),(298,322),(298,323),(299,324),(299,325),(300,326),(300,327),(301,328),(301,329),(302,330),(302,331),(303,332),(304,333),(304,334),(305,335),(306,336),(307,337),(308,338),(309,339),(310,340),(311,341),(312,342),(313,343),(313,344),(314,345),(314,346),(315,347),(316,348),(317,349),(318,350),(319,351),(320,352),(321,353),(322,354),(323,355),(324,356),(325,357),(326,358),(327,359),(328,360),(329,361),(330,362),(331,363),(332,364),(333,365),(334,366),(335,367),(336,368),(336,369),(337,370),(338,371),(339,372),(340,373),(341,374),(342,375),(343,376),(344,377),(345,378),(346,379),(347,380),(348,381),(349,382),(350,383),(351,384),(352,385),(353,386),(354,387),(355,388),(356,389),(357,390),(358,391),(359,392),(360,393),(361,394),(362,395),(363,396),(364,397),(365,398),(366,399),(367,400),(368,401),(369,402),(370,403),(371,404),(372,405),(373,406),(374,407),(375,408),(376,409),(377,410),(378,411),(379,412),(380,413),(381,414),(382,415),(383,416),(384,417),(385,418),(386,419),(387,420),(388,421),(389,421),(388,422),(388,423),(389,424),(389,425),(389,426),(390,427),(391,428),(392,429),(393,430),(394,431),(394,432),(395,433),(396,434),(397,435),(398,436),(399,437),(400,438),(401,439),(402,440),(403,441),(404,442),(405,443),(406,444),(407,445),(408,446),(409,447),(410,448),(411,449),(412,450),(413,451),(414,452),(415,453),(416,454),(417,455),(418,456),(419,457),(420,458),(420,459),(425,459),(426,459),(429,459),(430,459),(435,459),(548,459),(554,459),(559,459),(564,459),(421,460),(422,461),(423,462),(424,463),(425,463),(661,463),(684,463),(426,464),(559,464),(426,465),(514,465),(526,465),(546,465),(555,465),(556,465),(557,465),(559,465),(563,465),(609,465),(611,465),(426,466),(559,466),(694,466),(695,466),(696,466),(426,467),(426,468),(514,468),(546,468),(557,468),(559,468),(562,468),(563,468),(565,468),(426,469),(427,470),(428,471),(429,472),(430,473),(431,474),(432,475),(433,476),(434,477),(435,478),(436,479),(437,480),(438,481),(439,482),(440,483),(441,484),(442,485),(443,486),(444,487),(445,488),(446,489),(447,490),(448,491),(449,492),(450,493),(451,494),(452,495),(453,496),(454,497),(455,498),(456,499),(457,500),(458,501),(459,502),(460,503),(461,504),(462,505),(463,506),(464,507),(465,508),(466,509),(467,510),(468,511),(469,512),(470,513),(471,514),(472,515),(473,516),(474,517),(475,518),(476,519),(477,520),(478,521),(479,522),(480,523),(481,524),(482,525),(483,526),(484,527),(485,528),(486,529),(487,530),(488,531),(490,532),(491,533),(492,534),(493,535),(494,536),(495,537),(496,538),(497,539),(498,540),(499,541),(500,542),(501,543),(502,544),(503,545),(504,546),(505,547),(551,547),(558,547),(565,547),(506,548),(507,548),(514,548),(517,548),(518,548),(526,548),(506,549),(507,549),(514,549),(517,549),(518,549),(526,549),(506,550),(507,550),(566,550),(567,550),(568,550),(569,550),(575,550),(576,550),(506,551),(507,551),(549,551),(566,551),(567,551),(568,551),(569,551),(574,551),(575,551),(576,551),(687,551),(506,552),(507,552),(514,552),(517,552),(518,552),(526,552),(527,552),(551,552),(555,552),(556,552),(558,552),(559,552),(563,552),(566,552),(567,552),(568,552),(569,552),(579,552),(607,552),(608,552),(609,552),(617,552),(618,552),(619,552),(623,552),(636,552),(637,552),(638,552),(639,552),(640,552),(644,552),(508,553),(514,553),(519,553),(520,553),(526,553),(528,553),(609,553),(611,553),(508,554),(519,554),(508,555),(519,555),(508,556),(514,556),(519,556),(620,556),(621,556),(508,557),(519,557),(547,557),(599,557),(508,558),(514,558),(519,558),(620,558),(621,558),(508,559),(519,559),(533,559),(650,559),(508,560),(510,560),(519,560),(527,560),(561,560),(508,561),(519,561),(508,562),(514,562),(515,562),(543,562),(615,562),(508,563),(519,563),(582,563),(583,563),(584,563),(677,563),(690,563),(508,564),(519,564),(508,565),(519,565),(510,566),(643,566),(685,566),(510,567),(581,567),(582,567),(583,567),(584,567),(676,567),(677,567),(687,567),(510,568),(687,568),(510,569),(559,569),(581,569),(582,569),(583,569),(584,569),(601,569),(604,569),(605,569),(618,569),(623,569),(640,569),(676,569),(677,569),(687,569),(694,569),(695,569),(696,569),(510,570),(526,570),(640,570),(510,571),(573,571),(510,572),(510,573),(510,574),(526,574),(527,574),(510,575),(510,576),(614,576),(510,577),(566,577),(567,577),(568,577),(569,577),(570,577),(571,577),(572,577),(576,577),(510,578),(511,579),(521,579),(528,579),(559,579),(620,579),(621,579),(622,579),(623,579),(511,580),(521,580),(528,580),(512,581),(522,581),(523,581),(535,581),(536,581),(640,581),(652,581),(671,581),(672,581),(513,582),(524,582),(513,583),(524,583),(537,583),(514,584),(514,585),(514,586),(624,586),(694,586),(695,586),(696,586),(514,587),(515,587),(526,587),(528,587),(514,588),(514,589),(526,589),(514,590),(580,590),(581,590),(514,591),(526,591),(625,591),(514,592),(526,592),(626,592),(514,593),(514,594),(526,594),(555,594),(640,594),(646,594),(647,594),(514,595),(526,595),(514,596),(526,596),(688,596),(694,596),(695,596),(696,596),(514,597),(526,597),(514,598),(524,598),(526,598),(555,598),(514,599),(526,599),(514,600),(526,600),(514,601),(609,601),(514,602),(515,602),(531,602),(532,602),(533,602),(534,602),(535,602),(536,602),(537,602),(538,602),(539,602),(540,602),(541,602),(542,602),(587,602),(588,602),(609,602),(612,602),(613,602),(622,602),(630,602),(514,603),(515,603),(526,603),(528,603),(640,603),(659,603),(687,603),(514,604),(514,605),(526,605),(549,605),(514,606),(524,606),(526,606),(527,606),(514,607),(520,607),(526,607),(514,608),(550,608),(555,608),(514,609),(526,609),(514,610),(520,610),(526,610),(514,611),(640,611),(666,611),(514,612),(526,612),(514,613),(559,613),(573,613),(574,613),(609,613),(611,613),(687,613),(514,614),(526,614),(514,615),(526,615),(514,616),(609,616),(514,617),(627,617),(514,618),(526,618),(514,619),(520,619),(526,619),(514,620),(526,620),(546,620),(551,620),(555,620),(558,620),(559,620),(561,620),(686,620),(689,620),(514,621),(514,622),(524,622),(583,622),(609,622),(611,622),(618,622),(514,623),(514,624),(514,625),(514,626),(514,627),(628,627),(514,628),(526,628),(514,629),(520,629),(525,629),(538,629),(514,630),(526,630),(514,631),(526,631),(514,632),(526,632),(514,633),(515,633),(528,633),(540,633),(514,634),(621,634),(514,635),(557,635),(564,635),(514,636),(514,637),(625,637),(514,638),(520,638),(526,638),(515,639),(528,639),(515,640),(528,640),(515,641),(570,641),(571,641),(572,641),(577,641),(581,641),(618,641),(515,642),(528,642),(540,642),(605,642),(515,643),(528,643),(516,644),(530,644),(542,644),(519,645),(519,646),(519,647),(519,648),(520,649),(524,650),(524,651),(524,652),(524,653),(524,654),(525,655),(525,656),(525,657),(525,658),(525,659),(538,659),(525,660),(538,660),(621,660),(526,661),(527,661),(526,662),(526,663),(527,663),(539,663),(542,663),(526,664),(526,665),(526,666),(555,666),(526,667),(527,667),(546,667),(526,668),(526,669),(526,670),(640,670),(646,670),(647,670),(673,670),(681,670),(526,671),(526,672),(526,673),(526,674),(526,675),(526,676),(526,677),(526,678),(526,679),(527,679),(614,679),(526,680),(526,681),(527,682),(539,682),(542,682),(527,683),(551,683),(559,683),(563,683),(528,684),(528,685),(528,686),(528,687),(528,688),(561,688),(698,688),(529,689),(541,689),(640,689),(539,690),(545,691),(546,692),(549,692),(557,692),(559,692),(562,692),(563,692),(565,692),(643,692),(676,692),(546,693),(551,693),(555,693),(556,693),(558,693),(563,693),(546,694),(625,694),(628,694),(546,695),(561,695),(586,695),(665,695),(546,696),(549,696),(563,696),(646,696),(647,696),(666,696),(548,697),(554,697),(559,697),(564,697),(582,697),(609,697),(614,697),(616,697),(617,697),(619,697),(686,697),(689,697),(548,698),(557,698),(619,698),(549,699),(600,699),(549,700),(605,700),(549,701),(549,702),(549,703),(603,703),(640,703),(667,703),(549,704),(551,705),(553,705),(558,705),(551,706),(551,707),(559,707),(551,708),(555,708),(556,708),(559,708),(561,708),(563,708),(616,708),(689,708),(551,709),(557,709),(558,709),(559,709),(689,709),(694,709),(695,709),(696,709),(551,710),(565,710),(551,711),(552,711),(557,711),(558,711),(559,711),(694,711),(695,711),(696,711),(554,712),(557,712),(555,713),(556,713),(555,714),(555,715),(555,716),(640,716),(646,716),(647,716),(555,717),(556,717),(555,718),(556,718),(555,719),(689,719),(555,720),(556,720),(574,720),(624,720),(627,720),(628,720),(687,720),(555,721),(555,722),(555,723),(556,724),(609,724),(611,724),(556,725),(559,726),(561,726),(574,726),(609,726),(611,726),(614,726),(559,727),(559,728),(559,729),(559,730),(561,730),(559,731),(559,732),(559,733),(559,734),(559,735),(559,736),(559,737),(559,738),(559,739),(559,740),(561,740),(560,741),(561,742),(561,743),(620,743),(622,743),(561,744),(561,745),(561,746),(566,747),(567,747),(568,747),(569,747),(566,748),(567,748),(568,748),(569,748),(576,748),(589,748),(566,749),(567,749),(568,749),(569,749),(566,750),(567,750),(568,750),(569,750),(576,750),(566,751),(567,751),(568,751),(569,751),(576,751),(566,752),(567,752),(568,752),(569,752),(570,752),(571,752),(572,752),(576,752),(566,753),(567,753),(568,753),(569,753),(576,753),(566,754),(567,754),(568,754),(569,754),(576,754),(583,754),(566,755),(567,755),(568,755),(569,755),(575,755),(566,756),(567,756),(568,756),(569,756),(566,757),(567,757),(568,757),(569,757),(574,757),(575,757),(576,757),(570,758),(571,758),(572,758),(573,759),(573,760),(574,760),(609,760),(611,760),(574,761),(640,761),(667,761),(681,761),(687,761),(575,762),(575,763),(636,763),(679,763),(683,763),(575,764),(575,765),(575,766),(575,767),(575,768),(636,768),(679,768),(683,768),(575,769),(576,770),(585,770),(587,770),(588,770),(576,771),(576,772),(577,773),(577,774),(578,774),(640,774),(642,774),(687,774),(690,774),(577,775),(578,776),(690,776),(578,777),(582,777),(690,777),(691,777),(579,778),(580,779),(580,780),(580,781),(580,782),(580,783),(580,784),(580,785),(580,786),(580,787),(581,787),(614,787),(581,788),(581,789),(581,790),(581,791),(581,792),(581,793),(581,794),(581,795),(581,796),(581,797),(581,798),(581,799),(581,800),(581,801),(581,802),(581,803),(581,804),(581,805),(581,806),(581,807),(581,808),(581,809),(581,810),(581,811),(581,812),(581,813),(581,814),(581,815),(581,816),(581,817),(583,818),(583,819),(584,819),(583,820),(583,821),(583,822),(583,823),(583,824),(584,824),(584,825),(586,826),(614,826),(587,827),(588,827),(591,828),(601,828),(604,828),(605,828),(593,829),(594,830),(595,831),(596,832),(597,833),(598,834),(599,835),(601,836),(602,837),(604,838),(605,839),(605,840),(606,841),(607,841),(608,841),(606,842),(607,842),(608,842),(606,843),(607,843),(608,843),(606,844),(607,844),(608,844),(606,845),(607,845),(608,845),(606,846),(607,846),(608,846),(606,847),(607,847),(608,847),(606,848),(606,849),(606,850),(607,850),(608,850),(606,851),(607,851),(608,851),(606,852),(606,853),(606,854),(607,854),(608,854),(606,855),(607,855),(608,855),(606,856),(607,856),(608,856),(607,857),(607,858),(608,858),(608,859),(609,860),(611,860),(609,861),(611,861),(609,862),(609,863),(611,863),(609,864),(611,864),(618,864),(609,865),(611,865),(609,866),(609,867),(611,867),(609,868),(609,869),(611,869),(609,870),(609,871),(611,871),(609,872),(611,872),(609,873),(611,873),(609,874),(611,874),(609,875),(611,875),(609,876),(611,876),(609,877),(614,877),(617,877),(619,877),(609,878),(609,879),(611,879),(609,880),(611,880),(609,881),(611,881),(618,881),(609,882),(609,883),(611,883),(609,884),(618,884),(609,885),(611,885),(609,886),(610,886),(611,886),(612,886),(614,886),(617,886),(619,886),(609,887),(611,887),(609,888),(611,888),(609,889),(611,889),(609,890),(609,891),(611,891),(611,892),(611,893),(614,894),(614,895),(614,896),(614,897),(616,897),(614,898),(616,898),(614,899),(616,899),(670,899),(687,899),(614,900),(614,901),(693,901),(614,902),(614,903),(616,904),(616,905),(616,906),(620,907),(621,907),(622,907),(623,907),(620,908),(621,908),(620,909),(621,909),(624,910),(627,910),(628,910),(687,910),(625,911),(625,912),(628,913),(646,913),(647,913),(666,913),(681,913),(628,914),(629,915),(629,916),(629,917),(629,918),(631,919),(633,919),(631,920),(632,920),(632,921),(634,921),(640,921),(633,922),(634,922),(635,923),(636,924),(691,924),(636,925),(636,926),(639,927),(640,928),(657,928),(658,928),(640,929),(660,929),(640,930),(661,930),(640,931),(665,931),(640,932),(640,933),(640,934),(659,934),(640,935),(673,935),(640,936),(657,936),(658,936),(640,937),(641,937),(642,937),(643,937),(644,937),(645,937),(646,937),(647,937),(648,937),(649,937),(650,937),(651,937),(652,937),(653,937),(655,937),(657,937),(658,937),(659,937),(660,937),(661,937),(662,937),(663,937),(664,937),(665,937),(666,937),(667,937),(668,937),(669,937),(670,937),(671,937),(672,937),(673,937),(674,937),(675,937),(676,937),(677,937),(678,937),(679,937),(680,937),(681,937),(682,937),(683,937),(684,937),(640,938),(641,938),(659,938),(664,938),(672,938),(677,938),(679,938),(680,938),(687,938),(640,939),(682,939),(640,940),(683,940),(640,941),(684,941),(643,942),(662,942),(676,942),(660,943),(663,944),(671,944),(668,945),(669,946),(674,947),(675,948),(676,949),(678,950),(686,951),(689,951),(687,952),(687,953),(687,954),(687,955),(687,956),(687,957),(687,958),(688,959),(689,960),(692,961),(694,962),(695,962),(696,962),(694,963),(695,963),(696,963),(694,964),(695,964),(696,964),(694,965),(695,965),(696,965);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (665,'SHOW GRANTS',3,'Syntax:\nSHOW GRANTS\n    [FOR user_or_role\n        [USING role [, role] ...]]\n\nuser_or_role: {\n    user (see )\n  | role (see .\n}\n\nThis statement displays the privileges and roles that are assigned to a\nMySQL user account or role, in the form of GRANT statements that must\nbe executed to duplicate the privilege and role assignments.\n\n*Note*:\n\nTo display nonprivilege information for MySQL accounts, use the SHOW\nCREATE USER statement. See [HELP SHOW CREATE USER].\n\nSHOW GRANTS requires the SELECT privilege for the mysql system schema,\nexcept to display privileges and roles for the current user.\n\nTo name the account or role for SHOW GRANTS, use the same format as for\nthe GRANT statement (for example, \'jeffrey\'@\'localhost\'):\n\nmysql> SHOW GRANTS FOR \'jeffrey\'@\'localhost\';\n+------------------------------------------------------------------+\n| Grants for jeffrey@localhost                                     |\n+------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `jeffrey`@`localhost`                      |\n| GRANT SELECT, INSERT, UPDATE ON `db1`.* TO `jeffrey`@`localhost` |\n+------------------------------------------------------------------+\n\nThe host part, if omitted, defaults to \'%\'. For additional information\nabout specifying account and role names, see\nhttps://dev.mysql.com/doc/refman/9.1/en/account-names.html, and\nhttps://dev.mysql.com/doc/refman/9.1/en/role-names.html.\n\nTo display the privileges granted to the current user (the account you\nare using to connect to the server), you can use any of the following\nstatements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any equivalent syntax) is used in\ndefiner context, such as within a stored procedure that executes with\ndefiner rather than invoker privileges, the grants displayed are those\nof the definer and not the invoker.\n\nIn MySQL 9.1 compared to previous series, SHOW GRANTS no longer\ndisplays ALL PRIVILEGES in its global-privileges output because the\nmeaning of ALL PRIVILEGES at the global level varies depending on which\ndynamic privileges are defined. Instead, SHOW GRANTS explicitly lists\neach granted global privilege:\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD,         |\n| SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES,  |\n| SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION   |\n| SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE,  |\n| ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE,      |\n| CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT      |\n| OPTION                                                              |\n| GRANT PROXY ON \'\'@\'\' TO `root`@`localhost` WITH GRANT OPTION        |\n+---------------------------------------------------------------------+\n\nApplications that process SHOW GRANTS output should be adjusted\naccordingly.\n\nAt the global level, GRANT OPTION applies to all granted static global\nprivileges if granted for any of them, but applies individually to\ngranted dynamic privileges. SHOW GRANTS displays global privileges this\nway:\n\no One line listing all granted static privileges, if there are any,\n  including WITH GRANT OPTION if appropriate.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is granted, if there are any, including WITH GRANT OPTION.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is not granted, if there are any, without WITH GRANT OPTION.\n\nWith the optional USING clause, SHOW GRANTS enables you to examine the\nprivileges associated with roles for the user. Each role named in the\nUSING clause must be granted to the user.\n\nSuppose that user u1 is assigned roles r1 and r2, as follows:\n\nCREATE ROLE \'r1\', \'r2\';\nGRANT SELECT ON db1.* TO \'r1\';\nGRANT INSERT, UPDATE, DELETE ON db1.* TO \'r2\';\nCREATE USER \'u1\'@\'localhost\' IDENTIFIED BY \'u1pass\';\nGRANT \'r1\', \'r2\' TO \'u1\'@\'localhost\';\n\nSHOW GRANTS without USING shows the granted roles:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\n\nAdding a USING clause causes the statement to also display the\nprivileges associated with each role named in the clause:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT SELECT ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r2\';\n+-------------------------------------------------------------+\n| Grants for u1@localhost                                     |\n+-------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                      |\n| GRANT INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                 |\n+-------------------------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\', \'r2\';\n+---------------------------------------------------------------------+\n| Grants for u1@localhost                                             |\n+---------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                              |\n| GRANT SELECT, INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                         |\n+---------------------------------------------------------------------+\n\n*Note*:\n\nA privilege granted to an account is always in effect, but a role is\nnot. The active roles for an account can differ across and within\nsessions, depending on the value of the activate_all_roles_on_login\nsystem variable, the account default roles, and whether SET ROLE has\nbeen executed within a session.\n\nMySQL supports partial revocation of global privileges, such that a\nglobal privilege can be restricted from applying to particular schemas\n(see https://dev.mysql.com/doc/refman/9.1/en/partial-revokes.html). To\nindicate which global schema privileges have been revoked for\nparticular schemas, SHOW GRANTS output includes REVOKE statements:\n\nmysql> SET PERSIST partial_revokes = ON;\nmysql> CREATE USER u1;\nmysql> GRANT SELECT, INSERT, DELETE ON *.* TO u1;\nmysql> REVOKE SELECT, INSERT ON mysql.* FROM u1;\nmysql> REVOKE DELETE ON world.* FROM u1;\nmysql> SHOW GRANTS FOR u1;\n+--------------------------------------------------+\n| Grants for u1@%                                  |\n+--------------------------------------------------+\n| GRANT SELECT, INSERT, DELETE ON *.* TO `u1`@`%`  |\n| REVOKE SELECT, INSERT ON `mysql`.* FROM `u1`@`%` |\n| REVOKE DELETE ON `world`.* FROM `u1`@`%`         |\n+--------------------------------------------------+\n\nSHOW GRANTS does not display privileges that are available to the named\naccount but are granted to a different account. For example, if an\nanonymous account exists, the named account might be able to use its\nprivileges, but SHOW GRANTS does not display them.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-grants.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-grants.html'),(666,'SHOW INDEX',3,'Syntax:\nSHOW [EXTENDED] {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\n\nmysql> SHOW INDEX FROM City\\G\n*************************** 1. row ***************************\n        Table: city\n   Non_unique: 0\n     Key_name: PRIMARY\n Seq_in_index: 1\n  Column_name: ID\n    Collation: A\n  Cardinality: 4188\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n*************************** 2. row ***************************\n        Table: city\n   Non_unique: 1\n     Key_name: CountryCode\n Seq_in_index: 1\n  Column_name: CountryCode\n    Collation: A\n  Cardinality: 232\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden indexes that MySQL uses internally and are not accessible\nby users.\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nSHOW INDEX returns the following fields:\n\no Table\n\n  The name of the table.\n\no Non_unique\n\n  0 if the index cannot contain duplicates, 1 if it can.\n\no Key_name\n\n  The name of the index. If the index is the primary key, the name is\n  always PRIMARY.\n\no Seq_in_index\n\n  The column sequence number in the index, starting with 1.\n\no Column_name\n\n  The column name. See also the description for the Expression column.\n\no Collation\n\n  How the column is sorted in the index. This can have values A\n  (ascending), D (descending), or NULL (not sorted).\n\no Cardinality\n\n  An estimate of the number of unique values in the index. To update\n  this number, run ANALYZE TABLE or (for MyISAM tables) myisamchk -a.\n\n  Cardinality is counted based on statistics stored as integers, so the\n  value is not necessarily exact even for small tables. The higher the\n  cardinality, the greater the chance that MySQL uses the index when\n  doing joins.\n\no Sub_part\n\n  The index prefix. That is, the number of indexed characters if the\n  column is only partly indexed, NULL if the entire column is indexed.\n\n  *Note*:\n\n  Prefix limits are measured in bytes. However, prefix lengths for\n  index specifications in CREATE TABLE, ALTER TABLE, and CREATE INDEX\n  statements are interpreted as number of characters for nonbinary\n  string types (CHAR, VARCHAR, TEXT) and number of bytes for binary\n  string types (BINARY, VARBINARY, BLOB). Take this into account when\n  specifying a prefix length for a nonbinary string column that uses a\n  multibyte character set.\n\n  For additional information about index prefixes, see\n  https://dev.mysql.com/doc/refman/9.1/en/column-indexes.html, and\n  [HELP CREATE INDEX].\n\no Packed\n\n  Indicates how the key is packed. NULL if it is not.\n\no Null\n\n  Contains YES if the column may contain NULL values and \'\' if not.\n\no Index_type\n\n  The index method used (BTREE, FULLTEXT, HASH, RTREE).\n\no Comment\n\n  Information about the index not described in its own column, such as\n  disabled if the index is disabled.\n\no Index_comment\n\n  Any comment provided for the index with a COMMENT attribute when the\n  index was created.\n\no Visible\n\n  Whether the index is visible to the optimizer. See\n  https://dev.mysql.com/doc/refman/9.1/en/invisible-indexes.html.\n\no Expression\n\n  MySQL supports functional key parts (see\n  https://dev.mysql.com/doc/refman/9.1/en/create-index.html#create-inde\n  x-functional-key-parts); this affects both the Column_name and\n  Expression columns:\n\n  o For a nonfunctional key part, Column_name indicates the column\n    indexed by the key part and Expression is NULL.\n\n  o For a functional key part, Column_name column is NULL and\n    Expression indicates the expression for the key part.\n\nInformation about table indexes is also available from the\nINFORMATION_SCHEMA STATISTICS table. See\nhttps://dev.mysql.com/doc/refman/9.1/en/information-schema-statistics-t\nable.html. The extended information about hidden indexes is available\nonly using SHOW EXTENDED INDEX; it cannot be obtained from the\nSTATISTICS table.\n\nYou can list a table\'s indexes with the mysqlshow -k db_name tbl_name\ncommand.\n\nSHOW INDEX includes the table\'s generated invisible key, if it has one,\nby default. You can cause this information to be suppressed in the\nstatement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/9.1/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-index.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-index.html'),(667,'SHOW OPEN TABLES',3,'Syntax:\nSHOW OPEN TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttps://dev.mysql.com/doc/refman/9.1/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-open-tables.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-open-tables.html'),(668,'SHOW PARSE_TREE',3,'Syntax:\nSHOW PARSE_TREE select_statement\n\nSHOW PARSE_TREE displays a representation of the parse tree for the\ninput SELECT statement, in JSON format.\n\n*Note*:\n\nThis statement is available only in debug builds, or if the MySQL\nserver was built using -DWITH_SHOW_PARSE_TREE. It is intended for use\nin testing and development only, and not in production.\n\nExample:\n\nmysql> SHOW PARSE_TREE SELECT * FROM t3 WHERE o_id > 2\\G\n*************************** 1. row ***************************\nShow_parse_tree: {\n  \"text\": \"SELECT * FROM t3 WHERE o_id > 2\",\n  \"type\": \"PT_select_stmt\",\n  \"components\": [\n    {\n      \"text\": \"SELECT * FROM t3 WHERE o_id > 2\",\n      \"type\": \"PT_query_expression\",\n      \"components\": [\n        {\n          \"text\": \"SELECT * FROM t3 WHERE o_id > 2\",\n          \"type\": \"PT_query_specification\",\n          \"components\": [\n            {\n              \"text\": \"*\",\n              \"type\": \"PT_select_item_list\",\n              \"components\": [\n                {\n                  \"text\": \"*\",\n                  \"type\": \"Item_asterisk\"\n                }\n              ]\n            },\n            {\n              \"text\": \"t3\",\n              \"type\": \"PT_table_factor_table_ident\",\n              \"table_ident\": \"`t3`\"\n            },\n            {\n              \"text\": \"o_id > 2\",\n              \"type\": \"PTI_where\",\n              \"components\": [\n                {\n                  \"text\": \"o_id > 2\",\n                  \"type\": \"PTI_comp_op\",\n                  \"operator\": \">\",\n                  \"components\": [\n                    {\n                      \"text\": \"o_id\",\n                      \"type\": \"PTI_simple_ident_ident\"\n                    },\n                    {\n                      \"text\": \"2\",\n                      \"type\": \"Item_int\"\n                    }\n                  ]\n                }\n              ]\n            }\n          ]\n        }\n      ]\n    }\n  ]\n}\n1 row in set (0.01 sec)\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-parse-tree.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-parse-tree.html'),(669,'SHOW PLUGINS',3,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-plugins.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-plugins.html'),(670,'SHOW PRIVILEGES',3,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The privileges displayed include all static\nprivileges, and all currently registered dynamic privileges.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-privileges.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-privileges.html'),(671,'SHOW PROCEDURE CODE',3,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, or have the SELECT privilege\nat the global level.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n       BEGIN\n         DECLARE fanta INT DEFAULT 55;\n         DROP TABLE t2;\n         LOOP\n           INSERT INTO t3 VALUES (fanta);\n           END LOOP;\n         END//\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n\nmysql> CREATE FUNCTION test.hello (s CHAR(20))\n       RETURNS CHAR(50) DETERMINISTIC\n       RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW FUNCTION CODE test.hello;\n+-----+---------------------------------------+\n| Pos | Instruction                           |\n+-----+---------------------------------------+\n|   0 | freturn 254 concat(\'Hello, \',s@0,\'!\') |\n+-----+---------------------------------------+\n1 row in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/9.1/en/show-procedure-code.html'),(672,'SHOW PROCEDURE STATUS',3,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine.\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2018-08-08 13:54:11\n             Created: 2018-08-08 13:54:11\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2020-03-10 11:10:03\n             Created: 2020-03-10 11:10:03\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/9.1/en/show-procedure-status.html'),(673,'SHOW PROCESSLIST',3,'Syntax:\nSHOW [FULL] PROCESSLIST\n\n*Important*:\n\nThe INFORMATION SCHEMA implementation of SHOW PROCESSLIST is deprecated\nand subject to removal in a future MySQL release. It is recommended to\nuse the Performance Schema implementation of SHOW PROCESSLIST instead.\n\nThe MySQL process list indicates the operations currently being\nperformed by the set of threads executing within the server. The SHOW\nPROCESSLIST statement is one source of process information. For a\ncomparison of this statement with other sources, see\nhttps://dev.mysql.com/doc/refman/9.1/en/processlist-access.html#process\nlist-sources.\n\n*Note*:\n\nAn alternative implementation for SHOW PROCESSLIST is available based\non the Performance Schema processlist table, which, unlike the default\nSHOW PROCESSLIST implementation, does not require a mutex and has\nbetter performance characteristics. For details, see\nhttps://dev.mysql.com/doc/refman/9.1/en/performance-schema-processlist-\ntable.html.\n\nIf you have the PROCESS privilege, you can see all threads, even those\nbelonging to other users. Otherwise (without the PROCESS privilege),\nnonanonymous users have access to information about their own threads\nbut not threads for other users, and anonymous users have no access to\nthread information.\n\nWithout the FULL keyword, SHOW PROCESSLIST displays only the first 100\ncharacters of each statement in the Info field.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-processlist.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-processlist.html'),(674,'SHOW PROFILE',3,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype: {\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n}\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect\nthem to be removed in a future MySQL release. Use the Performance\nSchema instead; see\nhttps://dev.mysql.com/doc/refman/9.1/en/performance-schema-query-profil\ning.html.\n\nTo control profiling, use the profiling session variable, which has a\ndefault value of 0 (OFF). Enable profiling by setting profiling to 1 or\nON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nneither of those statements appears in the profile list. Malformed\nstatements are profiled. For example, SHOW PROFILING is an illegal\nstatement, and a syntax error occurs if you try to execute it, but it\nshows up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretation for\nthe two statements for some status values (see\nhttps://dev.mysql.com/doc/refman/9.1/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/9.1/en/show-profile.html'),(675,'SHOW PROFILES',3,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect it\nto be removed in a future MySQL release. Use the Performance Schema\ninstead; see\nhttps://dev.mysql.com/doc/refman/9.1/en/performance-schema-query-profil\ning.html.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-profiles.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-profiles.html'),(676,'SHOW RELAYLOG EVENTS',3,'Syntax:\nSHOW RELAYLOG EVENTS\n    [IN \'log_name\']\n    [FROM pos]\n    [LIMIT [offset,] row_count]\n    [channel_option]\n\nchannel_option:\n    FOR CHANNEL channel\n\nShows the events in the relay log of a replica. If you do not specify\n\'log_name\', the first relay log is displayed. This statement has no\neffect on the source. SHOW RELAYLOG EVENTS requires the REPLICATION\nSLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-relaylog-events.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-relaylog-events.html'),(677,'SHOW REPLICA STATUS',3,'Syntax:\nSHOW REPLICA STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. The statement requires the REPLICATION CLIENT\nprivilege (or the deprecated SUPER privilege).\n\nSHOW REPLICA STATUS is nonblocking. When run concurrently with STOP\nREPLICA, SHOW REPLICA STATUS returns without waiting for STOP REPLICA\nto finish shutting down the replication SQL (applier) thread or\nreplication I/O (receiver) thread (or both). This permits use in\nmonitoring and other applications where getting an immediate response\nfrom SHOW REPLICA STATUS is more important than ensuring that it\nreturned the latest data.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW REPLICA STATUS\\G\n*************************** 1. row ***************************\n             Replica_IO_State: Waiting for source to send event\n                  Source_Host: 127.0.0.1\n                  Source_User: root\n                  Source_Port: 13000\n                Connect_Retry: 1\n              Source_Log_File: master-bin.000001\n          Read_Source_Log_Pos: 927\n               Relay_Log_File: slave-relay-bin.000002\n                Relay_Log_Pos: 1145\n        Relay_Source_Log_File: master-bin.000001\n           Replica_IO_Running: Yes\n          Replica_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Source_Log_Pos: 927\n              Relay_Log_Space: 1355\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Source_SSL_Allowed: No\n           Source_SSL_CA_File:\n           Source_SSL_CA_Path:\n              Source_SSL_Cert:\n            Source_SSL_Cipher:\n               Source_SSL_Key:\n        Seconds_Behind_Source: 0\nSource_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Source_Server_Id: 1\n                  Source_UUID: 73f86016-978b-11ee-ade5-8d2a2a562feb\n             Source_Info_File: mysql.slave_master_info\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n    Replica_SQL_Running_State: Replica has read all relay log; waiting for more updates\n           Source_Retry_Count: 10\n                  Source_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Source_SSL_Crl:\n           Source_SSL_Crlpath:\n           Retrieved_Gtid_Set: 73f86016-978b-11ee-ade5-8d2a2a562feb:1-3\n            Executed_Gtid_Set: 73f86016-978b-11ee-ade5-8d2a2a562feb:1-3\n                Auto_Position: 1\n         Replicate_Rewrite_DB:\n                 Channel_Name:\n           Source_TLS_Version:\n       Source_public_key_path:\n        Get_Source_public_key: 0\n            Network_Namespace:\n\nThe Performance Schema provides tables that expose replication\ninformation. This is similar to the information available from the SHOW\nREPLICA STATUS statement, but represented in table form. For details,\nsee\nhttps://dev.mysql.com/doc/refman/9.1/en/performance-schema-replication-\ntables.html.\n\nYou can set the GTID_ONLY option for the CHANGE REPLICATION SOURCE TO\nstatement to stop a replication channel from persisting file names and\nfile positions in the replication metadata repositories. With this\nsetting, file positions for the source binary log file and the relay\nlog file are tracked in memory. The SHOW REPLICA STATUS statement still\ndisplays file positions in normal use. However, because the file\npositions are not being regularly updated in the connection metadata\nrepository and the applier metadata repository except in a few\nsituations, they are likely to be out of date if the server is\nrestarted.\n\nFor a replication channel with the GTID_ONLY setting after a server\nstart, the read and applied file positions for the source binary log\nfile (Read_Source_Log_Pos and Exec_Source_Log_Pos) are set to zero, and\nthe file names (Source_Log_File and Relay_Source_Log_File) are set to\nINVALID. The relay log file name (Relay_Log_File) is set according to\nthe relay_log_recovery setting, either a new file that was created at\nserver start or the first relay log file present. The file position\n(Relay_Log_Pos) is set to position 4, and GTID auto-skip is used to\nskip any transactions in the file that were already applied.\n\nWhen the receiver thread contacts the source and gets valid position\ninformation, the read position (Read_Source_Log_Pos) and file name\n(Source_Log_File) are updated with the correct data and become valid.\nWhen the applier thread applies a transaction from the source, or skips\nan already executed transaction, the executed position\n(Exec_Source_Log_Pos) and file name (Relay_Source_Log_File) are updated\nwith the correct data and become valid. The relay log file position\n(Relay_Log_Pos) is also updated at that time.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-replica-status.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-replica-status.html'),(678,'SHOW REPLICAS',3,'Syntax:\nSHOW REPLICAS\n\nDisplays a list of replicas currently registered with the source. SHOW\nREPLICAS requires the REPLICATION SLAVE privilege.\n\nSHOW REPLICAS should be executed on a server that acts as a replication\nsource. The statement displays information about servers that are or\nhave been connected as replicas, with each row of the result\ncorresponding to one replica server, as shown here:\n\nmysql> SHOW REPLICAS;\n+------------+-----------+------+-----------+--------------------------------------+\n| Server_id  | Host      | Port | Source_id | Replica_UUID                         |\n+------------+-----------+------+-----------+--------------------------------------+\n|         10 | iconnect2 | 3306 |         3 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n|         21 | athena    | 3306 |         3 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the replica server, as configured\n  in the replica server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the replica server, as specified on the\n  replica with the --report-host option. This can differ from the\n  machine name as configured in the operating system.\n\no User: The replica server user name, as specified on the replica with\n  the --report-user option. Statement output includes this column only\n  if the source server is started with the --show-replica-auth-info\n  option.\n\no Password: The replica server password, as specified on the replica\n  with the --report-password option. Statement output includes this\n  column only if the source server is started with the\n  --show-replica-auth-info option.\n\no Port: The port on the source to which the replica server is\n  listening, as specified on the replica with the --report-port option.\n\n  A zero in this column means that the replica port (--report-port) was\n  not set.\n\no Source_id: The unique server ID of the source server that the replica\n  server is replicating from. This is the server ID of the server on\n  which SHOW REPLICAS is executed, so this same value is listed for\n  each row in the result.\n\no Replica_UUID: The globally unique ID of this replica, as generated on\n  the replica and found in the replica\'s auto.cnf file.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-replicas.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-replicas.html'),(679,'SHOW STATUS',3,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information (see\nhttps://dev.mysql.com/doc/refman/9.1/en/server-status-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nStatus variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/9.1/en/performance-schema-status-var\n  iable-tables.html.\n\no The mysqladmin extended-status command. See\n  https://dev.mysql.com/doc/refman/9.1/en/mysqladmin.html.\n\nFor SHOW STATUS, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nSHOW STATUS accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays the global status\n  values. A global status variable may represent status for some aspect\n  of the server itself (for example, Aborted_connects), or the\n  aggregated status over all connections to MySQL (for example,\n  Bytes_received and Bytes_sent). If a variable has no global value,\n  the session value is displayed.\n\no With a SESSION modifier, the statement displays the status variable\n  values for the current connection. If a variable has no session\n  value, the global value is displayed. LOCAL is a synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each status variable is listed at\nhttps://dev.mysql.com/doc/refman/9.1/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-status.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-status.html'),(680,'SHOW TABLE STATUS',3,'Syntax:\nSHOW TABLE STATUS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works like SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-table-status.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-table-status.html'),(681,'SHOW TABLES',3,'Syntax:\nSHOW [EXTENDED] [FULL] TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThe optional EXTENDED modifier causes SHOW TABLES to list hidden tables\ncreated by failed ALTER TABLE statements. These temporary tables have\nnames beginning with #sql and can be dropped using DROP TABLE.\n\nThis statement also lists any views in the database. The optional FULL\nmodifier causes SHOW TABLES to display a second output column with\nvalues of BASE TABLE for a table, VIEW for a view, or SYSTEM VIEW for\nan INFORMATION_SCHEMA table.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-tables.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-tables.html'),(682,'SHOW TRIGGERS',3,'Syntax:\nSHOW TRIGGERS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names (not trigger names) to match and causes the statement\nto display triggers for those tables. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nFor the ins_sum trigger defined in\nhttps://dev.mysql.com/doc/refman/9.1/en/triggers.html, the output of\nSHOW TRIGGERS is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: 2018-08-08 10:10:12.61\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n             Definer: me@localhost\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-triggers.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-triggers.html'),(683,'SHOW VARIABLES',3,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables (see\nhttps://dev.mysql.com/doc/refman/9.1/en/server-system-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nSystem variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/9.1/en/performance-schema-system-var\n  iable-tables.html.\n\no The mysqladmin variables command. See\n  https://dev.mysql.com/doc/refman/9.1/en/mysqladmin.html.\n\nFor SHOW VARIABLES, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/9.1/en/extended-show.html.\n\nSHOW VARIABLES accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays global system variable\n  values. These are the values used to initialize the corresponding\n  session variables for new connections to MySQL. If a variable has no\n  global value, no value is displayed.\n\no With a SESSION modifier, the statement displays the system variable\n  values that are in effect for the current connection. If a variable\n  has no session value, the global value is displayed. LOCAL is a\n  synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each system variable is listed at\nhttps://dev.mysql.com/doc/refman/9.1/en/server-system-variables.html.\n\nSHOW VARIABLES is subject to a version-dependent display-width limit.\nFor variables with very long values that are not completely displayed,\nuse SELECT as a workaround. For example:\n\nSELECT @@GLOBAL.innodb_data_file_path;\n\nMost system variables can be set at server startup (read-only variables\nsuch as version_comment are exceptions). Many can be changed at runtime\nwith the SET statement. See\nhttps://dev.mysql.com/doc/refman/9.1/en/using-system-variables.html,\nand [HELP SET].\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the %\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because _ is a wildcard that matches any\nsingle character, you should escape it as \\_ to match it literally. In\npractice, this is rarely necessary.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-variables.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-variables.html'),(684,'SHOW WARNINGS',3,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS is a diagnostic statement that displays information about\nthe conditions (errors, warnings, and notes) resulting from executing a\nstatement in the current session. Warnings are generated for DML\nstatements such as INSERT, UPDATE, and LOAD DATA as well as DDL\nstatements such as CREATE TABLE and ALTER TABLE.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/9.1/en/select.html.\n\nSHOW WARNINGS is also used following EXPLAIN, to display the extended\ninformation generated by EXPLAIN. See\nhttps://dev.mysql.com/doc/refman/9.1/en/explain-extended.html.\n\nSHOW WARNINGS displays information about the conditions resulting from\nexecution of the most recent nondiagnostic statement in the current\nsession. If the most recent statement resulted in an error during\nparsing, SHOW WARNINGS shows the resulting conditions, regardless of\nstatement type (diagnostic or nondiagnostic).\n\nThe SHOW COUNT(*) WARNINGS diagnostic statement displays the total\nnumber of errors, warnings, and notes. You can also retrieve this\nnumber from the warning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nA difference in these statements is that the first is a diagnostic\nstatement that does not clear the message list. The second, because it\nis a SELECT statement is considered nondiagnostic and does clear the\nmessage list.\n\nA related diagnostic statement, SHOW ERRORS, shows only error\nconditions (it excludes warnings and notes), and SHOW COUNT(*) ERRORS\nstatement displays the total number of errors. See [HELP SHOW ERRORS].\nGET DIAGNOSTICS can be used to examine information for individual\nconditions. See [HELP GET DIAGNOSTICS].\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/show-warnings.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/show-warnings.html'),(685,'BINLOG',3,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See https://dev.mysql.com/doc/refman/9.1/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event.\n\nTo execute BINLOG statements when applying mysqlbinlog output, a user\naccount requires the BINLOG_ADMIN privilege (or the deprecated SUPER\nprivilege), or the REPLICATION_APPLIER privilege plus the appropriate\nprivileges to execute each log event.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/binlog.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/binlog.html'),(686,'CACHE INDEX',3,'Syntax:\nCACHE INDEX {\n      tbl_index_list [, tbl_index_list] ...\n    | tbl_name PARTITION (partition_list)\n  }\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [{INDEX|KEY} (index_name[, index_name] ...)]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It applies only to MyISAM tables, including partitioned MyISAM\ntables. After the indexes have been assigned, they can be preloaded\ninto the cache if desired with LOAD INDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/cache-index.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/cache-index.html'),(687,'FLUSH',3,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL] {\n    flush_option [, flush_option] ...\n  | tables_option\n}\n\nflush_option: {\n    BINARY LOGS\n  | ENGINE LOGS\n  | ERROR LOGS\n  | GENERAL LOGS\n  | LOGS\n  | PRIVILEGES\n  | OPTIMIZER_COSTS\n  | RELAY LOGS [FOR CHANNEL channel]\n  | SLOW LOGS\n  | STATUS\n  | USER_RESOURCES\n}\n\ntables_option: {\n    table_synonym\n  | table_synonym tbl_name [, tbl_name] ...\n  | table_synonym WITH READ LOCK\n  | table_synonym tbl_name [, tbl_name] ... WITH READ LOCK\n  | table_synonym tbl_name [, tbl_name] ... FOR EXPORT\n}\n\ntable_synonym: {\n    TABLE\n  | TABLES\n}\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. Each FLUSH\noperation requires the privileges indicated in its description.\n\n*Note*:\n\nIt is not possible to issue FLUSH statements within stored functions or\ntriggers. However, you may use FLUSH in stored procedures, so long as\nthese are not called from stored functions or triggers. See\nhttps://dev.mysql.com/doc/refman/9.1/en/stored-program-restrictions.html\n.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replicas. To suppress logging, specify the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*:\n\nFLUSH LOGS, FLUSH BINARY LOGS, FLUSH TABLES WITH READ LOCK (with or\nwithout a table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not\nwritten to the binary log in any case because they would cause problems\nif replicated to a replica.\n\nThe FLUSH statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/9.1/en/implicit-commit.html.\n\nThe mysqladmin utility provides a command-line interface to some flush\noperations, using commands such as flush-logs, flush-privileges,\nflush-status, and flush-tables. See\nhttps://dev.mysql.com/doc/refman/9.1/en/mysqladmin.html.\n\nSending a SIGHUP or SIGUSR1 signal to the server causes several flush\noperations to occur that are similar to various forms of the FLUSH\nstatement. Signals can be sent by the root system account or the system\naccount that owns the server process. This enables the flush operations\nto be performed without having to connect to the server, which requires\na MySQL account that has privileges sufficient for those operations.\nSee https://dev.mysql.com/doc/refman/9.1/en/unix-signal-response.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using RESET with replication.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/flush.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/flush.html'),(688,'KILL',3,'Syntax:\nKILL [CONNECTION | QUERY] processlist_id\n\nEach connection to mysqld runs in a separate thread. You can kill a\nthread with the KILL processlist_id statement.\n\nThread processlist identifiers can be determined from the ID column of\nthe INFORMATION_SCHEMA PROCESSLIST table, the Id column of SHOW\nPROCESSLIST output, and the PROCESSLIST_ID column of the Performance\nSchema threads table. The value for the current thread is returned by\nthe CONNECTION_ID() function.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given processlist_id, after\n  terminating any statement the connection is executing.\n\no KILL QUERY terminates the statement the connection is currently\n  executing, but leaves the connection itself intact.\n\nThe ability to see which threads are available to be killed depends on\nthe PROCESS privilege:\n\no Without PROCESS, you can see only your own threads.\n\no With PROCESS, you can see all threads.\n\nThe ability to kill threads and statements depends on the\nCONNECTION_ADMIN privilege and the deprecated SUPER privilege:\n\no Without CONNECTION_ADMIN or SUPER, you can kill only your own threads\n  and statements.\n\no With CONNECTION_ADMIN or SUPER, you can kill all threads and\n  statements, except that to affect a thread or statement that is\n  executing with the SYSTEM_USER privilege, your own session must\n  additionally have the SYSTEM_USER privilege.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/kill.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/kill.html'),(689,'LOAD INDEX',3,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list)]\n    [{INDEX|KEY} (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE applies only to MyISAM tables, including\npartitioned MyISAM tables. In addition, indexes on partitioned tables\ncan be preloaded for one, several, or all partitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/load-index.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/load-index.html'),(690,'RESET',3,'Syntax:\nRESET reset_option [, reset_option] ...\n\nreset_option: {\n    BINARY LOGS AND GTIDS\n  | REPLICA\n}\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nFor information about the RESET PERSIST statement that removes\npersisted global system variables, see [HELP RESET PERSIST].\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/9.1/en/implicit-commit.html.\n\nThe following list describes the permitted RESET statement reset_option\nvalues:\n\no RESET BINARY LOGS AND GTIDS\n\n  Deletes all binary logs listed in the index file, resets the binary\n  log index file to be empty, and creates a new binary log file.\n\no RESET REPLICA\n\n  Makes the replica forget its replication position in the source\n  binary logs. Also resets the relay log by deleting any existing relay\n  log files and beginning a new one.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/reset.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/reset.html'),(691,'RESET PERSIST',3,'Syntax:\nRESET PERSIST [[IF EXISTS] system_var_name]\n\nRESET PERSIST removes persisted global system variable settings from\nthe mysqld-auto.cnf option file in the data directory. Removing a\npersisted system variable causes the variable no longer to be\ninitialized from mysqld-auto.cnf at server startup. For more\ninformation about persisting system variables and the mysqld-auto.cnf\nfile, see\nhttps://dev.mysql.com/doc/refman/9.1/en/persisted-system-variables.html\n.\n\nThe privileges required for RESET PERSIST depend on the type of system\nvariable to be removed:\n\no For dynamic system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN privilege (or the deprecated SUPER privilege).\n\no For read-only system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN and PERSIST_RO_VARIABLES_ADMIN privileges.\n\nSee\nhttps://dev.mysql.com/doc/refman/9.1/en/system-variable-privileges.html\n.\n\nDepending on whether the variable name and IF EXISTS clauses are\npresent, the RESET PERSIST statement has these forms:\n\no To remove all persisted variables from mysqld-auto.cnf, use RESET\n  PERSIST without naming any system variable:\n\nRESET PERSIST;\n\n  You must have privileges for removing both dynamic and read-only\n  system variables if mysqld-auto.cnf contains both kinds of variables.\n\no To remove a specific persisted variable from mysqld-auto.cnf, name it\n  in the statement:\n\nRESET PERSIST system_var_name;\n\n  This includes plugin system variables, even if the plugin is not\n  currently installed. If the variable is not present in the file, an\n  error occurs.\n\no To remove a specific persisted variable from mysqld-auto.cnf, but\n  produce a warning rather than an error if the variable is not present\n  in the file, add an IF EXISTS clause to the previous syntax:\n\nRESET PERSIST IF EXISTS system_var_name;\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/reset-persist.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/reset-persist.html'),(692,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/restart.html'),(693,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command. A successful SHUTDOWN\nsequence consists of checking the privileges, validating the arguments,\nand sending an OK packet to the client. Then the server is shut down.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/shutdown.html'),(694,'EXPLAIN',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] [INTO variable]\n    {[schema_spec] explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] [schema_spec] select_statement\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE FORMAT = JSON INTO variable [schema_spec] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nschema_spec:\nFOR {SCHEMA | DATABASE} schema_name\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/explain.html'),(695,'DESCRIBE',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] [INTO variable]\n    {[schema_spec] explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] [schema_spec] select_statement\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE FORMAT = JSON INTO variable [schema_spec] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nschema_spec:\nFOR {SCHEMA | DATABASE} schema_name\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/explain.html'),(696,'DESC',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type] [INTO variable]\n    {[schema_spec] explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] [schema_spec] select_statement\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE FORMAT = JSON INTO variable [schema_spec] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nschema_spec:\nFOR {SCHEMA | DATABASE} schema_name\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/explain.html'),(697,'HELP STATEMENT',51,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/9.1/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nThe HELP statement does not require a terminator such as ; or \\G.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/help.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/help.html'),(698,'USE',51,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/use.html\n\n','','https://dev.mysql.com/doc/refman/9.1/en/use.html'),(699,'MERGE',52,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/9.1/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/9.1/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/9.1/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('django','#sql-27d0_18a','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 02:55:57','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 02:55:57','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 02:55:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 02:55:57','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 02:55:57','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 02:55:57','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 02:55:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_18a','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 02:55:57','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_18a','PRIMARY','2024-11-12 02:55:57','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_18a','PRIMARY','2024-11-12 02:55:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_18a','PRIMARY','2024-11-12 02:55:57','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_256','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:03:24','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_256','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:03:24','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_256','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:03:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_256','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:03:24','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_256','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:03:24','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_256','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:03:24','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_256','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:03:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_256','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:03:24','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_256','PRIMARY','2024-11-12 04:03:24','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_256','PRIMARY','2024-11-12 04:03:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_256','PRIMARY','2024-11-12 04:03:24','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:04:13','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:04:13','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:04:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:04:13','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:04:13','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:04:13','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:04:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_25c','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:04:13','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_25c','PRIMARY','2024-11-12 04:04:13','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_25c','PRIMARY','2024-11-12 04:04:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_25c','PRIMARY','2024-11-12 04:04:13','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_269','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:03','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_269','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:03','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_269','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_269','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:03','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_269','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:03','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_269','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:03','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_269','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_269','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:03','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_269','PRIMARY','2024-11-12 04:10:03','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_269','PRIMARY','2024-11-12 04:10:03','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_269','PRIMARY','2024-11-12 04:10:03','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_272','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:27','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_272','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:27','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_272','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_272','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:10:27','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_272','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:27','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_272','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:27','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_272','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_272','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:10:27','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_272','PRIMARY','2024-11-12 04:10:27','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_272','PRIMARY','2024-11-12 04:10:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_272','PRIMARY','2024-11-12 04:10:27','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_289','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:11:54','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_289','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:11:54','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_289','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:11:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_289','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:11:54','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_289','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:11:54','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_289','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:11:54','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_289','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:11:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_289','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:11:54','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_289','PRIMARY','2024-11-12 04:11:54','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_289','PRIMARY','2024-11-12 04:11:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_289','PRIMARY','2024-11-12 04:11:54','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_290','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:12:56','n_diff_pfx01',2,1,'user_id'),('django','#sql-27d0_290','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:12:56','n_diff_pfx02',2,1,'user_id,id'),('django','#sql-27d0_290','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:12:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_290','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-12 04:12:56','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_290','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:12:56','n_diff_pfx01',1,1,'user_info_id'),('django','#sql-27d0_290','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:12:56','n_diff_pfx02',2,1,'user_info_id,user_id'),('django','#sql-27d0_290','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:12:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_290','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-12 04:12:56','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_290','PRIMARY','2024-11-12 04:12:56','n_diff_pfx01',2,1,'id'),('django','#sql-27d0_290','PRIMARY','2024-11-12 04:12:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_290','PRIMARY','2024-11-12 04:12:56','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_fb','PRIMARY','2024-11-12 02:14:38','n_diff_pfx01',1,1,'id'),('django','#sql-27d0_fb','PRIMARY','2024-11-12 02:14:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_fb','PRIMARY','2024-11-12 02:14:38','size',1,NULL,'Number of pages in the index'),('django','#sql-27d0_fb','user_id','2024-11-12 02:14:38','n_diff_pfx01',1,1,'user_id'),('django','#sql-27d0_fb','user_id','2024-11-12 02:14:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('django','#sql-27d0_fb','user_id','2024-11-12 02:14:38','size',1,NULL,'Number of pages in the index'),('messenger','auth_group','PRIMARY','2024-11-12 07:45:56','n_diff_pfx01',0,1,'id'),('messenger','auth_group','PRIMARY','2024-11-12 07:45:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_group','PRIMARY','2024-11-12 07:45:56','size',1,NULL,'Number of pages in the index'),('messenger','auth_group','name','2024-11-12 07:45:56','n_diff_pfx01',0,1,'name'),('messenger','auth_group','name','2024-11-12 07:45:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_group','name','2024-11-12 07:45:56','size',1,NULL,'Number of pages in the index'),('messenger','auth_group_permissions','PRIMARY','2024-11-12 07:45:56','n_diff_pfx01',0,1,'id'),('messenger','auth_group_permissions','PRIMARY','2024-11-12 07:45:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_group_permissions','PRIMARY','2024-11-12 07:45:56','size',1,NULL,'Number of pages in the index'),('messenger','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2024-11-12 07:45:56','n_diff_pfx01',0,1,'permission_id'),('messenger','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2024-11-12 07:45:56','n_diff_pfx02',0,1,'permission_id,id'),('messenger','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2024-11-12 07:45:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_group_permissions','auth_group_permissio_permission_id_84c5c92e_fk_auth_perm','2024-11-12 07:45:56','size',1,NULL,'Number of pages in the index'),('messenger','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2024-11-12 07:45:56','n_diff_pfx01',0,1,'group_id'),('messenger','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2024-11-12 07:45:56','n_diff_pfx02',0,1,'group_id,permission_id'),('messenger','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2024-11-12 07:45:56','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_group_permissions','auth_group_permissions_group_id_permission_id_0cd325b0_uniq','2024-11-12 07:45:56','size',1,NULL,'Number of pages in the index'),('messenger','auth_permission','PRIMARY','2024-11-12 07:46:31','n_diff_pfx01',44,1,'id'),('messenger','auth_permission','PRIMARY','2024-11-12 07:46:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_permission','PRIMARY','2024-11-12 07:46:31','size',1,NULL,'Number of pages in the index'),('messenger','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-11-12 07:46:31','n_diff_pfx01',11,1,'content_type_id'),('messenger','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-11-12 07:46:31','n_diff_pfx02',44,1,'content_type_id,codename'),('messenger','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-11-12 07:46:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_permission','auth_permission_content_type_id_codename_01ab375a_uniq','2024-11-12 07:46:31','size',1,NULL,'Number of pages in the index'),('messenger','auth_user','PRIMARY','2024-11-16 03:28:32','n_diff_pfx01',3,1,'id'),('messenger','auth_user','PRIMARY','2024-11-16 03:28:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user','PRIMARY','2024-11-16 03:28:32','size',1,NULL,'Number of pages in the index'),('messenger','auth_user','username','2024-11-16 03:28:32','n_diff_pfx01',3,1,'username'),('messenger','auth_user','username','2024-11-16 03:28:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user','username','2024-11-16 03:28:32','size',1,NULL,'Number of pages in the index'),('messenger','auth_user_groups','PRIMARY','2024-11-12 07:45:57','n_diff_pfx01',0,1,'id'),('messenger','auth_user_groups','PRIMARY','2024-11-12 07:45:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user_groups','PRIMARY','2024-11-12 07:45:57','size',1,NULL,'Number of pages in the index'),('messenger','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2024-11-12 07:45:57','n_diff_pfx01',0,1,'group_id'),('messenger','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2024-11-12 07:45:57','n_diff_pfx02',0,1,'group_id,id'),('messenger','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2024-11-12 07:45:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user_groups','auth_user_groups_group_id_97559544_fk_auth_group_id','2024-11-12 07:45:57','size',1,NULL,'Number of pages in the index'),('messenger','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2024-11-12 07:45:57','n_diff_pfx01',0,1,'user_id'),('messenger','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2024-11-12 07:45:57','n_diff_pfx02',0,1,'user_id,group_id'),('messenger','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2024-11-12 07:45:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user_groups','auth_user_groups_user_id_group_id_94350c0c_uniq','2024-11-12 07:45:57','size',1,NULL,'Number of pages in the index'),('messenger','auth_user_user_permissions','PRIMARY','2024-11-12 07:45:57','n_diff_pfx01',0,1,'id'),('messenger','auth_user_user_permissions','PRIMARY','2024-11-12 07:45:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user_user_permissions','PRIMARY','2024-11-12 07:45:57','size',1,NULL,'Number of pages in the index'),('messenger','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2024-11-12 07:45:57','n_diff_pfx01',0,1,'permission_id'),('messenger','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2024-11-12 07:45:57','n_diff_pfx02',0,1,'permission_id,id'),('messenger','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2024-11-12 07:45:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user_user_permissions','auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm','2024-11-12 07:45:57','size',1,NULL,'Number of pages in the index'),('messenger','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2024-11-12 07:45:57','n_diff_pfx01',0,1,'user_id'),('messenger','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2024-11-12 07:45:57','n_diff_pfx02',0,1,'user_id,permission_id'),('messenger','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2024-11-12 07:45:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','auth_user_user_permissions','auth_user_user_permissions_user_id_permission_id_14a6b632_uniq','2024-11-12 07:45:57','size',1,NULL,'Number of pages in the index'),('messenger','django_admin_log','PRIMARY','2024-11-16 03:33:33','n_diff_pfx01',69,1,'id'),('messenger','django_admin_log','PRIMARY','2024-11-16 03:33:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_admin_log','PRIMARY','2024-11-16 03:33:33','size',1,NULL,'Number of pages in the index'),('messenger','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-11-16 03:33:33','n_diff_pfx01',4,1,'content_type_id'),('messenger','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-11-16 03:33:33','n_diff_pfx02',69,1,'content_type_id,id'),('messenger','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-11-16 03:33:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_admin_log','django_admin_log_content_type_id_c4bce8eb_fk_django_co','2024-11-16 03:33:33','size',1,NULL,'Number of pages in the index'),('messenger','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-11-16 03:33:33','n_diff_pfx01',1,1,'user_id'),('messenger','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-11-16 03:33:33','n_diff_pfx02',69,1,'user_id,id'),('messenger','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-11-16 03:33:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_admin_log','django_admin_log_user_id_c564eba6_fk_auth_user_id','2024-11-16 03:33:33','size',1,NULL,'Number of pages in the index'),('messenger','django_content_type','PRIMARY','2024-11-12 07:46:21','n_diff_pfx01',11,1,'id'),('messenger','django_content_type','PRIMARY','2024-11-12 07:46:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_content_type','PRIMARY','2024-11-12 07:46:21','size',1,NULL,'Number of pages in the index'),('messenger','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-11-12 07:46:21','n_diff_pfx01',5,1,'app_label'),('messenger','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-11-12 07:46:21','n_diff_pfx02',11,1,'app_label,model'),('messenger','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-11-12 07:46:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_content_type','django_content_type_app_label_model_76bd3d3b_uniq','2024-11-12 07:46:21','size',1,NULL,'Number of pages in the index'),('messenger','django_migrations','PRIMARY','2024-11-12 07:46:11','n_diff_pfx01',19,1,'id'),('messenger','django_migrations','PRIMARY','2024-11-12 07:46:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_migrations','PRIMARY','2024-11-12 07:46:11','size',1,NULL,'Number of pages in the index'),('messenger','django_session','PRIMARY','2024-11-16 03:33:23','n_diff_pfx01',3,1,'session_key'),('messenger','django_session','PRIMARY','2024-11-16 03:33:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_session','PRIMARY','2024-11-16 03:33:23','size',1,NULL,'Number of pages in the index'),('messenger','django_session','django_session_expire_date_a5c62663','2024-11-16 03:33:23','n_diff_pfx01',3,1,'expire_date'),('messenger','django_session','django_session_expire_date_a5c62663','2024-11-16 03:33:23','n_diff_pfx02',3,1,'expire_date,session_key'),('messenger','django_session','django_session_expire_date_a5c62663','2024-11-16 03:33:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','django_session','django_session_expire_date_a5c62663','2024-11-16 03:33:23','size',1,NULL,'Number of pages in the index'),('messenger','messenger_messages','Messenger_messages_room_id_381e1067_fk_Messenger_rooms_id','2024-11-15 00:43:57','n_diff_pfx01',0,1,'room_id'),('messenger','messenger_messages','Messenger_messages_room_id_381e1067_fk_Messenger_rooms_id','2024-11-15 00:43:57','n_diff_pfx02',0,1,'room_id,id'),('messenger','messenger_messages','Messenger_messages_room_id_381e1067_fk_Messenger_rooms_id','2024-11-15 00:43:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_messages','Messenger_messages_room_id_381e1067_fk_Messenger_rooms_id','2024-11-15 00:43:57','size',1,NULL,'Number of pages in the index'),('messenger','messenger_messages','Messenger_messages_user_id_ecf148a8_fk_auth_user_id','2024-11-15 00:43:57','n_diff_pfx01',0,1,'user_id'),('messenger','messenger_messages','Messenger_messages_user_id_ecf148a8_fk_auth_user_id','2024-11-15 00:43:57','n_diff_pfx02',0,1,'user_id,id'),('messenger','messenger_messages','Messenger_messages_user_id_ecf148a8_fk_auth_user_id','2024-11-15 00:43:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_messages','Messenger_messages_user_id_ecf148a8_fk_auth_user_id','2024-11-15 00:43:57','size',1,NULL,'Number of pages in the index'),('messenger','messenger_messages','PRIMARY','2024-11-15 00:43:57','n_diff_pfx01',0,1,'id'),('messenger','messenger_messages','PRIMARY','2024-11-15 00:43:57','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_messages','PRIMARY','2024-11-15 00:43:57','size',1,NULL,'Number of pages in the index'),('messenger','messenger_private_messages','Messenger_private_me_room_id_34e457e1_fk_Messenger','2024-11-16 03:33:33','n_diff_pfx01',0,1,'room_id'),('messenger','messenger_private_messages','Messenger_private_me_room_id_34e457e1_fk_Messenger','2024-11-16 03:33:33','n_diff_pfx02',0,1,'room_id,id'),('messenger','messenger_private_messages','Messenger_private_me_room_id_34e457e1_fk_Messenger','2024-11-16 03:33:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_private_messages','Messenger_private_me_room_id_34e457e1_fk_Messenger','2024-11-16 03:33:33','size',1,NULL,'Number of pages in the index'),('messenger','messenger_private_messages','Messenger_private_messages_user_id_62281d03_fk_auth_user_id','2024-11-16 03:33:33','n_diff_pfx01',0,1,'user_id'),('messenger','messenger_private_messages','Messenger_private_messages_user_id_62281d03_fk_auth_user_id','2024-11-16 03:33:33','n_diff_pfx02',0,1,'user_id,id'),('messenger','messenger_private_messages','Messenger_private_messages_user_id_62281d03_fk_auth_user_id','2024-11-16 03:33:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_private_messages','Messenger_private_messages_user_id_62281d03_fk_auth_user_id','2024-11-16 03:33:33','size',1,NULL,'Number of pages in the index'),('messenger','messenger_private_messages','PRIMARY','2024-11-16 03:33:33','n_diff_pfx01',0,1,'id'),('messenger','messenger_private_messages','PRIMARY','2024-11-16 03:33:33','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_private_messages','PRIMARY','2024-11-16 03:33:33','size',1,NULL,'Number of pages in the index'),('messenger','messenger_private_rooms','Messenger_private_rooms_friend_id_c62a6765_fk_auth_user_id','2024-11-15 03:38:15','n_diff_pfx01',2,1,'friend_id'),('messenger','messenger_private_rooms','Messenger_private_rooms_friend_id_c62a6765_fk_auth_user_id','2024-11-15 03:38:15','n_diff_pfx02',3,1,'friend_id,id'),('messenger','messenger_private_rooms','Messenger_private_rooms_friend_id_c62a6765_fk_auth_user_id','2024-11-15 03:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_private_rooms','Messenger_private_rooms_friend_id_c62a6765_fk_auth_user_id','2024-11-15 03:38:15','size',1,NULL,'Number of pages in the index'),('messenger','messenger_private_rooms','PRIMARY','2024-11-15 03:38:15','n_diff_pfx01',3,1,'id'),('messenger','messenger_private_rooms','PRIMARY','2024-11-15 03:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_private_rooms','PRIMARY','2024-11-15 03:38:15','size',1,NULL,'Number of pages in the index'),('messenger','messenger_private_rooms','unique_room_between_users','2024-11-15 03:38:15','n_diff_pfx01',2,1,'user_id'),('messenger','messenger_private_rooms','unique_room_between_users','2024-11-15 03:38:15','n_diff_pfx02',3,1,'user_id,friend_id'),('messenger','messenger_private_rooms','unique_room_between_users','2024-11-15 03:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_private_rooms','unique_room_between_users','2024-11-15 03:38:15','size',1,NULL,'Number of pages in the index'),('messenger','messenger_rooms','Messenger_rooms_user_id_651d08d0_fk_auth_user_id','2024-11-12 07:45:58','n_diff_pfx01',0,1,'user_id'),('messenger','messenger_rooms','Messenger_rooms_user_id_651d08d0_fk_auth_user_id','2024-11-12 07:45:58','n_diff_pfx02',0,1,'user_id,id'),('messenger','messenger_rooms','Messenger_rooms_user_id_651d08d0_fk_auth_user_id','2024-11-12 07:45:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_rooms','Messenger_rooms_user_id_651d08d0_fk_auth_user_id','2024-11-12 07:45:58','size',1,NULL,'Number of pages in the index'),('messenger','messenger_rooms','PRIMARY','2024-11-12 07:45:58','n_diff_pfx01',0,1,'id'),('messenger','messenger_rooms','PRIMARY','2024-11-12 07:45:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_rooms','PRIMARY','2024-11-12 07:45:58','size',1,NULL,'Number of pages in the index'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_rooms_id_user_id_098ac84a_uniq','2024-11-12 07:45:58','n_diff_pfx01',0,1,'rooms_id'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_rooms_id_user_id_098ac84a_uniq','2024-11-12 07:45:58','n_diff_pfx02',0,1,'rooms_id,user_id'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_rooms_id_user_id_098ac84a_uniq','2024-11-12 07:45:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_rooms_id_user_id_098ac84a_uniq','2024-11-12 07:45:58','size',1,NULL,'Number of pages in the index'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_user_id_1b65b0e1_fk_auth_user_id','2024-11-12 07:45:58','n_diff_pfx01',0,1,'user_id'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_user_id_1b65b0e1_fk_auth_user_id','2024-11-12 07:45:58','n_diff_pfx02',0,1,'user_id,id'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_user_id_1b65b0e1_fk_auth_user_id','2024-11-12 07:45:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_rooms_participants','Messenger_rooms_participants_user_id_1b65b0e1_fk_auth_user_id','2024-11-12 07:45:58','size',1,NULL,'Number of pages in the index'),('messenger','messenger_rooms_participants','PRIMARY','2024-11-12 07:45:58','n_diff_pfx01',0,1,'id'),('messenger','messenger_rooms_participants','PRIMARY','2024-11-12 07:45:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_rooms_participants','PRIMARY','2024-11-12 07:45:58','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info','PRIMARY','2024-11-15 03:36:37','n_diff_pfx01',3,1,'id'),('messenger','messenger_user_info','PRIMARY','2024-11-15 03:36:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info','PRIMARY','2024-11-15 03:36:37','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info','user_id','2024-11-15 03:36:37','n_diff_pfx01',3,1,'user_id'),('messenger','messenger_user_info','user_id','2024-11-15 03:36:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info','user_id','2024-11-15 03:36:37','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-15 03:38:07','n_diff_pfx01',3,1,'user_id'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-15 03:38:07','n_diff_pfx02',6,1,'user_id,id'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-15 03:38:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id','2024-11-15 03:38:07','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-15 03:38:07','n_diff_pfx01',3,1,'user_info_id'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-15 03:38:07','n_diff_pfx02',6,1,'user_info_id,user_id'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-15 03:38:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info_friends','Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq','2024-11-15 03:38:07','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info_friends','PRIMARY','2024-11-15 03:38:07','n_diff_pfx01',6,1,'id'),('messenger','messenger_user_info_friends','PRIMARY','2024-11-15 03:38:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info_friends','PRIMARY','2024-11-15 03:38:07','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info_request_friend','Messenger_user_info__user_id_56484a3a_fk_auth_user','2024-11-15 03:36:55','n_diff_pfx01',1,1,'user_id'),('messenger','messenger_user_info_request_friend','Messenger_user_info__user_id_56484a3a_fk_auth_user','2024-11-15 03:36:55','n_diff_pfx02',1,1,'user_id,id'),('messenger','messenger_user_info_request_friend','Messenger_user_info__user_id_56484a3a_fk_auth_user','2024-11-15 03:36:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info_request_friend','Messenger_user_info__user_id_56484a3a_fk_auth_user','2024-11-15 03:36:55','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info_request_friend','Messenger_user_info_requ_user_info_id_user_id_e5b3da27_uniq','2024-11-15 03:36:55','n_diff_pfx01',1,1,'user_info_id'),('messenger','messenger_user_info_request_friend','Messenger_user_info_requ_user_info_id_user_id_e5b3da27_uniq','2024-11-15 03:36:55','n_diff_pfx02',1,1,'user_info_id,user_id'),('messenger','messenger_user_info_request_friend','Messenger_user_info_requ_user_info_id_user_id_e5b3da27_uniq','2024-11-15 03:36:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info_request_friend','Messenger_user_info_requ_user_info_id_user_id_e5b3da27_uniq','2024-11-15 03:36:55','size',1,NULL,'Number of pages in the index'),('messenger','messenger_user_info_request_friend','PRIMARY','2024-11-15 03:36:55','n_diff_pfx01',1,1,'id'),('messenger','messenger_user_info_request_friend','PRIMARY','2024-11-15 03:36:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('messenger','messenger_user_info_request_friend','PRIMARY','2024-11-15 03:36:55','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2024-11-11 07:08:21','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2024-11-11 07:08:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2024-11-11 07:08:21','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2024-11-11 07:08:22','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2024-11-11 07:08:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2024-11-11 07:08:22','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('django','#sql-27d0_18a','2024-11-12 02:55:57',2,1,2),('django','#sql-27d0_256','2024-11-12 04:03:24',2,1,2),('django','#sql-27d0_25c','2024-11-12 04:04:13',2,1,2),('django','#sql-27d0_269','2024-11-12 04:10:03',2,1,2),('django','#sql-27d0_272','2024-11-12 04:10:27',2,1,2),('django','#sql-27d0_289','2024-11-12 04:11:54',2,1,2),('django','#sql-27d0_290','2024-11-12 04:12:56',2,1,2),('django','#sql-27d0_fb','2024-11-12 02:14:38',1,1,1),('messenger','auth_group','2024-11-12 07:45:56',0,1,1),('messenger','auth_group_permissions','2024-11-12 07:45:56',0,1,2),('messenger','auth_permission','2024-11-12 07:46:31',44,1,1),('messenger','auth_user','2024-11-16 03:28:32',3,1,1),('messenger','auth_user_groups','2024-11-12 07:45:57',0,1,2),('messenger','auth_user_user_permissions','2024-11-12 07:45:57',0,1,2),('messenger','django_admin_log','2024-11-16 03:33:33',69,1,2),('messenger','django_content_type','2024-11-12 07:46:21',11,1,1),('messenger','django_migrations','2024-11-12 07:46:11',19,1,0),('messenger','django_session','2024-11-16 03:33:23',3,1,1),('messenger','messenger_messages','2024-11-15 00:43:57',0,1,2),('messenger','messenger_private_messages','2024-11-16 03:33:33',0,1,2),('messenger','messenger_private_rooms','2024-11-15 03:38:15',3,1,2),('messenger','messenger_rooms','2024-11-12 07:45:58',0,1,1),('messenger','messenger_rooms_participants','2024-11-12 07:45:58',0,1,2),('messenger','messenger_user_info','2024-11-15 03:36:37',3,1,1),('messenger','messenger_user_info_friends','2024-11-15 03:38:07',6,1,2),('messenger','messenger_user_info_request_friend','2024-11-15 03:36:55',1,1,2),('mysql','component','2024-11-11 07:08:21',0,1,0),('sys','sys_config','2024-11-11 07:08:22',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint unsigned NOT NULL,
  `inserts` int unsigned NOT NULL,
  `updates` int unsigned NOT NULL,
  `deletes` int unsigned NOT NULL,
  `schemaops` int unsigned NOT NULL,
  `orig_server_id` int unsigned NOT NULL,
  `orig_epoch` bigint unsigned NOT NULL,
  `gci` int unsigned NOT NULL,
  `next_position` bigint unsigned NOT NULL,
  `next_file` varchar(255) NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=latin1 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8mb3_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Db`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','2024-11-11 07:08:21');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_configuration_version`
--

DROP TABLE IF EXISTS `replication_group_configuration_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_configuration_version` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The configuration name.',
  `version` bigint unsigned NOT NULL COMMENT 'The version of the configuration name.',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The group configuration version.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_configuration_version`
--

LOCK TABLES `replication_group_configuration_version` WRITE;
/*!40000 ALTER TABLE `replication_group_configuration_version` DISABLE KEYS */;
INSERT INTO `replication_group_configuration_version` VALUES ('replication_group_member_actions',1);
/*!40000 ALTER TABLE `replication_group_configuration_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_member_actions`
--

DROP TABLE IF EXISTS `replication_group_member_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_member_actions` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action name.',
  `event` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The event that will trigger the action.',
  `enabled` tinyint(1) NOT NULL COMMENT 'Whether the action is enabled.',
  `type` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action type.',
  `priority` tinyint unsigned NOT NULL COMMENT 'The order on which the action will be run, value between 1 and 100, lower values first.',
  `error_handling` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'On errors during the action will be handled: IGNORE, CRITICAL.',
  PRIMARY KEY (`name`,`event`),
  KEY `event` (`event`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The member actions configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_member_actions`
--

LOCK TABLES `replication_group_member_actions` WRITE;
/*!40000 ALTER TABLE `replication_group_member_actions` DISABLE KEYS */;
INSERT INTO `replication_group_member_actions` VALUES ('mysql_disable_super_read_only_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',1,'IGNORE'),('mysql_start_failover_channels_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',10,'CRITICAL');
/*!40000 ALTER TABLE `replication_group_member_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2024-11-11 07:08:21',NULL),('disk_temptable_row_cost',NULL,'2024-11-11 07:08:21',NULL),('key_compare_cost',NULL,'2024-11-11 07:08:21',NULL),('memory_temptable_create_cost',NULL,'2024-11-11 07:08:21',NULL),('memory_temptable_row_cost',NULL,'2024-11-11 07:08:21',NULL),('row_evaluate_cost',NULL,'2024-11-11 07:08:21',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the source.',
  `User_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between source and replica.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  `Gtid_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates if this channel only uses GTIDs and does not persist positions.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF','GENERATE') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables without primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','2024-11-11 07:08:22','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2024-11-11 07:08:22','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8mb3_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','Minkhant','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005${lu/Y RA/cWSFA32)oPrJLTG8iJyR/84diXP6wMiP.ff55Ts17eWdbE5rnd9','N','2024-11-11 07:08:27',NULL,'N','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2024-11-11 07:08:22',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2024-11-11 07:08:22',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2024-11-11 07:08:22',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$+Aa\"\ZQqEtvHs_rfna.kjy60nx6NHzJIFeES6GTGuWAqtJ0jvQhg0/kfqxr53','N','2024-11-11 07:08:27',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `messenger`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `messenger` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `messenger`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add private_rooms',7,'add_private_rooms'),(26,'Can change private_rooms',7,'change_private_rooms'),(27,'Can delete private_rooms',7,'delete_private_rooms'),(28,'Can view private_rooms',7,'view_private_rooms'),(29,'Can add private_messages',8,'add_private_messages'),(30,'Can change private_messages',8,'change_private_messages'),(31,'Can delete private_messages',8,'delete_private_messages'),(32,'Can view private_messages',8,'view_private_messages'),(33,'Can add rooms',9,'add_rooms'),(34,'Can change rooms',9,'change_rooms'),(35,'Can delete rooms',9,'delete_rooms'),(36,'Can view rooms',9,'view_rooms'),(37,'Can add messages',10,'add_messages'),(38,'Can change messages',10,'change_messages'),(39,'Can delete messages',10,'delete_messages'),(40,'Can view messages',10,'view_messages'),(41,'Can add user_ info',11,'add_user_info'),(42,'Can change user_ info',11,'change_user_info'),(43,'Can delete user_ info',11,'delete_user_info'),(44,'Can view user_ info',11,'view_user_info');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$870000$gymubbcUhttAi42Jp9quUn$HpnOufPY//SireXX+TalchxlUXtO1mX6Qo6SfZwdzxY=','2024-11-16 03:33:23.795687',1,'khaingzaw','Khaing','Zaw','khaingzaw@gmail.com',1,1,'2024-11-13 01:58:31.000000'),(8,'pbkdf2_sha256$870000$7vvyi8UFwVOgmq5kdngqjD$lmzlHSP962bA7zhJb2047xmodz2kJZKYKHl7DOGwZS4=','2024-11-15 09:25:21.919786',0,'minkhant','MIn Khant','Thaw','mkt293822@gmail.com',0,1,'2024-11-14 10:38:30.393628'),(9,'pbkdf2_sha256$870000$EmokSbqcvSi4cFFeamimaT$v9z1vqxF1L1auVzoh8outtQK6Z1Ix136T3nY0CWVPTU=','2024-11-16 03:28:32.712705',0,'pyae123','Pyae','Pyae','pyae@gmail.com',0,1,'2024-11-15 03:36:36.714794');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (7,'2024-11-13 09:06:50.853375','95b04f1d-ef7e-415a-b765-0f77b85a0e2b','95b04f1d-ef7e-415a-b765-0f77b85a0e2b',2,'[]',7,3),(8,'2024-11-13 09:07:09.219270','9','hh',1,'[{\"added\": {}}]',8,3),(9,'2024-11-13 09:36:47.948221','12','what',1,'[{\"added\": {}}]',8,3),(10,'2024-11-14 02:31:36.118808','5','Pyae',2,'[]',11,3),(11,'2024-11-14 02:32:46.880960','3','khaingzaw',2,'[]',11,3),(12,'2024-11-14 02:33:53.520254','5','Pyae',2,'[]',11,3),(13,'2024-11-14 02:34:10.807937','5','Pyae',2,'[{\"changed\": {\"fields\": [\"Request friend\"]}}]',11,3),(14,'2024-11-14 02:34:15.949804','3','khaingzaw',2,'[]',11,3),(15,'2024-11-14 03:24:40.993929','3','khaingzaw',2,'[{\"changed\": {\"fields\": [\"Friends\"]}}]',11,3),(16,'2024-11-14 03:25:10.455143','3','khaingzaw',2,'[]',11,3),(17,'2024-11-14 03:30:56.301084','3','khaingzaw',2,'[{\"changed\": {\"fields\": [\"Friends\"]}}]',11,3),(18,'2024-11-14 07:34:36.494189','5','Pyae',3,'',4,3),(19,'2024-11-14 07:34:36.494228','4','suhtet',3,'',4,3),(20,'2024-11-14 10:27:12.368056','6','minkhant',3,'',4,3),(21,'2024-11-14 10:30:20.469521','7','Pyae',3,'',4,3),(22,'2024-11-14 10:39:23.789429','8','minkhant',2,'[]',11,3),(23,'2024-11-14 11:29:10.043177','3','khaingzaw',2,'[{\"changed\": {\"fields\": [\"Friends\"]}}]',11,3),(24,'2024-11-15 03:10:13.310599','28','\n   <svg width=\"1.5pc\" height=\"1.5pc\" fill=\"#2050c',3,'',8,3),(25,'2024-11-15 03:10:13.310640','29','\n   <svg width=\"1.5pc\" height=\"1.5pc\" fill=\"#2050c',3,'',8,3),(26,'2024-11-15 03:31:04.389671','30','\n   <svg width=\"1.5pc\" height=\"1.5pc\" fill=\"#2050c',3,'',8,3),(27,'2024-11-15 03:31:04.389715','31','\n   <svg width=\"1.8pc\" height=\"1.8pc\" fill=\"#2050c',3,'',8,3),(28,'2024-11-15 03:32:06.614749','32','\n   <svg width=\"2pc\" height=\"2pc\" fill=\"#2050ca\" v',3,'',8,3),(29,'2024-11-15 03:32:06.614782','33','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(30,'2024-11-15 05:17:36.181313','41','<img src=\"[object File]\" />',3,'',8,3),(31,'2024-11-15 05:25:07.236955','42','[object File]',3,'',8,3),(32,'2024-11-15 05:26:15.783622','43','',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,3),(33,'2024-11-15 05:35:25.966287','43','',3,'',8,3),(34,'2024-11-15 05:35:25.966332','44','',3,'',8,3),(35,'2024-11-15 05:38:40.898777','45','',3,'',8,3),(36,'2024-11-15 05:39:22.347774','46','',3,'',8,3),(37,'2024-11-15 05:41:03.647973','47','',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,3),(38,'2024-11-15 05:41:25.515948','47','',3,'',8,3),(39,'2024-11-15 05:51:44.404411','48','',3,'',8,3),(40,'2024-11-15 09:26:55.581089','26','hello',3,'',8,3),(41,'2024-11-15 09:26:55.581153','27','What are you doing?',3,'',8,3),(42,'2024-11-15 09:26:55.581189','34','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(43,'2024-11-15 09:26:55.581219','35','hi',3,'',8,3),(44,'2024-11-15 09:26:55.581263','36','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(45,'2024-11-15 09:26:55.581296','37','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(46,'2024-11-15 09:26:55.581326','38','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(47,'2024-11-15 09:26:55.581355','39','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(48,'2024-11-15 09:26:55.581384','40','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(49,'2024-11-15 09:26:55.581414','49','',3,'',8,3),(50,'2024-11-15 09:26:55.581443','50','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(51,'2024-11-15 09:26:55.581489','51','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(52,'2024-11-15 09:26:55.581519','52','',3,'',8,3),(53,'2024-11-16 01:00:06.125918','53','',3,'',8,3),(54,'2024-11-16 01:07:12.236681','54','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3),(55,'2024-11-16 01:38:50.331136','55','',3,'',8,3),(56,'2024-11-16 01:38:50.331178','56','',3,'',8,3),(57,'2024-11-16 01:38:50.331196','57','',3,'',8,3),(58,'2024-11-16 01:38:50.331211','58','',3,'',8,3),(59,'2024-11-16 01:39:57.738469','59','',3,'',8,3),(60,'2024-11-16 01:45:25.075657','60','',3,'',8,3),(61,'2024-11-16 01:48:14.280605','61','',3,'',8,3),(62,'2024-11-16 01:53:04.209507','63','',3,'',8,3),(63,'2024-11-16 01:53:09.146295','62','',3,'',8,3),(64,'2024-11-16 01:56:37.016160','64','',3,'',8,3),(65,'2024-11-16 01:59:23.002687','65','',3,'',8,3),(66,'2024-11-16 01:59:23.002718','66','',3,'',8,3),(67,'2024-11-16 02:06:42.530652','67','',3,'',8,3),(68,'2024-11-16 02:06:42.530681','68','',3,'',8,3),(69,'2024-11-16 02:06:42.530697','69','',3,'',8,3),(70,'2024-11-16 03:13:08.217578','70','',2,'[]',8,3),(71,'2024-11-16 03:14:36.963647','70','',3,'',8,3),(72,'2024-11-16 03:21:16.738461','71','',3,'',8,3),(73,'2024-11-16 03:24:11.772779','72','',3,'',8,3),(74,'2024-11-16 03:33:33.483379','73','',3,'',8,3),(75,'2024-11-16 03:33:33.483410','74','\n   <svg width=\"3pc\" height=\"3pc\" fill=\"#2050ca\" v',3,'',8,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'Messenger','messages'),(8,'Messenger','private_messages'),(7,'Messenger','private_rooms'),(9,'Messenger','rooms'),(11,'Messenger','user_info'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-12 07:45:56.450271'),(2,'auth','0001_initial','2024-11-12 07:45:57.463817'),(3,'Messenger','0001_initial','2024-11-12 07:45:59.380066'),(4,'admin','0001_initial','2024-11-12 07:45:59.755029'),(5,'admin','0002_logentry_remove_auto_add','2024-11-12 07:45:59.817073'),(6,'admin','0003_logentry_add_action_flag_choices','2024-11-12 07:45:59.886240'),(7,'contenttypes','0002_remove_content_type_name','2024-11-12 07:46:00.015031'),(8,'auth','0002_alter_permission_name_max_length','2024-11-12 07:46:00.149954'),(9,'auth','0003_alter_user_email_max_length','2024-11-12 07:46:00.324056'),(10,'auth','0004_alter_user_username_opts','2024-11-12 07:46:00.384564'),(11,'auth','0005_alter_user_last_login_null','2024-11-12 07:46:00.691291'),(12,'auth','0006_require_contenttypes_0002','2024-11-12 07:46:00.693835'),(13,'auth','0007_alter_validators_add_error_messages','2024-11-12 07:46:00.718759'),(14,'auth','0008_alter_user_username_max_length','2024-11-12 07:46:00.915023'),(15,'auth','0009_alter_user_last_name_max_length','2024-11-12 07:46:01.195541'),(16,'auth','0010_alter_group_name_max_length','2024-11-12 07:46:01.282767'),(17,'auth','0011_update_proxy_permissions','2024-11-12 07:46:01.333220'),(18,'auth','0012_alter_user_first_name_max_length','2024-11-12 07:46:01.634993'),(19,'sessions','0001_initial','2024-11-12 07:46:01.739848'),(20,'Messenger','0002_alter_user_info_friends','2024-11-12 12:18:19.871118'),(21,'Messenger','0003_user_info_request_friend','2024-11-14 02:21:15.272800'),(22,'Messenger','0004_messages_image_messages_video_private_messages_image_and_more','2024-11-15 00:43:57.336392'),(23,'Messenger','0005_alter_messages_image_alter_messages_video_and_more','2024-11-16 03:14:22.239462'),(24,'Messenger','0006_alter_messages_video','2024-11-16 03:14:22.251531');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('39tzofccbot05utwfrm3qddaquo4u7b9','.eJxVjEEOwiAQRe_C2hCFMqBL9z0DmYEZqRpISrsy3l2bdKHb_977LxVxXUpcO89xyuqiQB1-N8L04LqBfMd6azq1uswT6U3RO-16bJmf1939OyjYy7cmOYIjBi_eMFjxYoJjEQ9EKQQcTsZmYD4TWHTJimPPQzbkHBsMXr0_BeQ4tQ:1tBURn:9aJH3UF1BXno4ns1EEkKYFwyUVtFspuCudYhGVuy1Rs','2024-11-28 07:39:23.445241'),('k2ba1yatbyh64cbd96bbk6g8rko9nv4v','.eJxVjMsOgjAQRf-la9MwQIfWpXu-oZmXghpIKKyM_64kLHR7zzn35TJt65C3Ykse1Z0duNPvxiQPm3agd5pus5d5WpeR_a74gxbfz2rPy-H-HQxUhm_dYa1QgUQOHVaxDVBDV0tqYmuCDI0kFKGUDNFCpBCvrCpGwsBI4N4fvr84Aw:1tAlcM:HYCWdPhu1lTSIOMxkqifV6bWCSJJyXF8AqcGVOkCvLc','2024-11-26 07:47:18.105050'),('stc5b05m2kuvrh2zthu8fwa46h7a10fm','.eJxVjDkOwjAUBe_iGlk2xkso6TlD9DfjALKlOKkQd4dIKaB9M_NeaoR1KePaZR4nVmfl1OF3Q6CH1A3wHeqtaWp1mSfUm6J32vW1sTwvu_t3UKCXbx1dCI5OTmIGcJICe48DJ_BJrBlsZkhgESllMkdkDMZ4Eow2WRODV-8P8lw4Lg:1tC9Yp:9w31URWRIoP45-ZQKZWm5u_03rV0L2o_fHY5g6RMyPA','2024-11-30 03:33:23.800131'),('znpey1c512tkmyrrevn7n21zbm385mzf','.eJxVjMsOgjAQRf-la9MwQIfWpXu-oZmXghpIKKyM_64kLHR7zzn35TJt65C3Ykse1Z0duNPvxiQPm3agd5pus5d5WpeR_a74gxbfz2rPy-H-HQxUhm_dYa1QgUQOHVaxDVBDV0tqYmuCDI0kFKGUDNFCpBCvrCpGwsBI4N4fvr84Aw:1tApCJ:Hmv8kcIE-odl_HTuB6HFk0X4UDf4pRa4j7mHe34JKjs','2024-11-26 11:36:39.676326');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `room_id` char(32) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Messenger_messages_user_id_ecf148a8_fk_auth_user_id` (`user_id`),
  KEY `Messenger_messages_room_id_381e1067_fk_Messenger_rooms_id` (`room_id`),
  CONSTRAINT `Messenger_messages_room_id_381e1067_fk_Messenger_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `messenger_rooms` (`id`),
  CONSTRAINT `Messenger_messages_user_id_ecf148a8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_private_messages`
--

DROP TABLE IF EXISTS `messenger_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_private_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `room_id` char(32) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Messenger_private_messages_user_id_62281d03_fk_auth_user_id` (`user_id`),
  KEY `Messenger_private_me_room_id_34e457e1_fk_Messenger` (`room_id`),
  CONSTRAINT `Messenger_private_me_room_id_34e457e1_fk_Messenger` FOREIGN KEY (`room_id`) REFERENCES `messenger_private_rooms` (`id`),
  CONSTRAINT `Messenger_private_messages_user_id_62281d03_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_private_messages`
--

LOCK TABLES `messenger_private_messages` WRITE;
/*!40000 ALTER TABLE `messenger_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_private_rooms`
--

DROP TABLE IF EXISTS `messenger_private_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_private_rooms` (
  `id` char(32) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `friend_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_room_between_users` (`user_id`,`friend_id`),
  KEY `Messenger_private_rooms_friend_id_c62a6765_fk_auth_user_id` (`friend_id`),
  CONSTRAINT `Messenger_private_rooms_friend_id_c62a6765_fk_auth_user_id` FOREIGN KEY (`friend_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `Messenger_private_rooms_user_id_2f84f3b7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_private_rooms`
--

LOCK TABLES `messenger_private_rooms` WRITE;
/*!40000 ALTER TABLE `messenger_private_rooms` DISABLE KEYS */;
INSERT INTO `messenger_private_rooms` VALUES ('11b7f5c1eb524b8899d0678957f1b8a1','2024-11-15 03:38:07.544456','2024-11-15 03:38:07.544475',9,8),('2ce895f49baf4a6e9ba9c77e2c636271','2024-11-15 03:36:56.785017','2024-11-15 03:36:56.785035',9,3),('4cf8678774e247c6a2ac330e3f8d7f14','2024-11-14 11:40:42.803725','2024-11-14 11:40:42.803744',8,3);
/*!40000 ALTER TABLE `messenger_private_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_rooms`
--

DROP TABLE IF EXISTS `messenger_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_rooms` (
  `id` char(32) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Messenger_rooms_user_id_651d08d0_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Messenger_rooms_user_id_651d08d0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_rooms`
--

LOCK TABLES `messenger_rooms` WRITE;
/*!40000 ALTER TABLE `messenger_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_rooms_participants`
--

DROP TABLE IF EXISTS `messenger_rooms_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_rooms_participants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rooms_id` char(32) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Messenger_rooms_participants_rooms_id_user_id_098ac84a_uniq` (`rooms_id`,`user_id`),
  KEY `Messenger_rooms_participants_user_id_1b65b0e1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Messenger_rooms_part_rooms_id_796a22c6_fk_Messenger` FOREIGN KEY (`rooms_id`) REFERENCES `messenger_rooms` (`id`),
  CONSTRAINT `Messenger_rooms_participants_user_id_1b65b0e1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_rooms_participants`
--

LOCK TABLES `messenger_rooms_participants` WRITE;
/*!40000 ALTER TABLE `messenger_rooms_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_rooms_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_user_info`
--

DROP TABLE IF EXISTS `messenger_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_user_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `Messenger_user_info_user_id_5eb88485_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_user_info`
--

LOCK TABLES `messenger_user_info` WRITE;
/*!40000 ALTER TABLE `messenger_user_info` DISABLE KEYS */;
INSERT INTO `messenger_user_info` VALUES (3,'avatar.svg',3),(8,'avatar.svg',8),(9,'avatar.svg',9);
/*!40000 ALTER TABLE `messenger_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_user_info_friends`
--

DROP TABLE IF EXISTS `messenger_user_info_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_user_info_friends` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_info_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Messenger_user_info_friends_user_info_id_user_id_d7021350_uniq` (`user_info_id`,`user_id`),
  KEY `Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Messenger_user_info__user_info_id_4d25a244_fk_Messenger` FOREIGN KEY (`user_info_id`) REFERENCES `messenger_user_info` (`id`),
  CONSTRAINT `Messenger_user_info_friends_user_id_bf6376e5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_user_info_friends`
--

LOCK TABLES `messenger_user_info_friends` WRITE;
/*!40000 ALTER TABLE `messenger_user_info_friends` DISABLE KEYS */;
INSERT INTO `messenger_user_info_friends` VALUES (20,3,8),(21,3,9),(19,8,3),(23,8,9),(22,9,3),(24,9,8);
/*!40000 ALTER TABLE `messenger_user_info_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_user_info_request_friend`
--

DROP TABLE IF EXISTS `messenger_user_info_request_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_user_info_request_friend` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_info_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Messenger_user_info_requ_user_info_id_user_id_e5b3da27_uniq` (`user_info_id`,`user_id`),
  KEY `Messenger_user_info__user_id_56484a3a_fk_auth_user` (`user_id`),
  CONSTRAINT `Messenger_user_info__user_id_56484a3a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `Messenger_user_info__user_info_id_d2a4c8ad_fk_Messenger` FOREIGN KEY (`user_info_id`) REFERENCES `messenger_user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_user_info_request_friend`
--

LOCK TABLES `messenger_user_info_request_friend` WRITE;
/*!40000 ALTER TABLE `messenger_user_info_request_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_user_info_request_friend` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 16:48:30