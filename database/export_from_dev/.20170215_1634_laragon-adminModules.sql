-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- tables related to 3rd party admin modules
--

--
-- Table structure for table `virgin_admintools_acl`
--

DROP TABLE IF EXISTS `virgin_admintools_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_acl` (
  `user_id` bigint(20) unsigned NOT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_acl`
--

LOCK TABLES `virgin_admintools_acl` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_adminiplist`
--

DROP TABLE IF EXISTS `virgin_admintools_adminiplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_adminiplist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_adminiplist`
--

LOCK TABLES `virgin_admintools_adminiplist` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_adminiplist` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_adminiplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_badwords`
--

DROP TABLE IF EXISTS `virgin_admintools_badwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_badwords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_badwords`
--

LOCK TABLES `virgin_admintools_badwords` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_badwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_badwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_cookies`
--

DROP TABLE IF EXISTS `virgin_admintools_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_cookies` (
  `series` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`series`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_cookies`
--

LOCK TABLES `virgin_admintools_cookies` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_customperms`
--

DROP TABLE IF EXISTS `virgin_admintools_customperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_customperms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perms` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '0644',
  UNIQUE KEY `id` (`id`),
  KEY `virgin_admintools_customperms_path` (`path`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_customperms`
--

LOCK TABLES `virgin_admintools_customperms` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_customperms` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_customperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_filescache`
--

DROP TABLE IF EXISTS `virgin_admintools_filescache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_filescache` (
  `admintools_filescache_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filedate` int(11) NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `data` blob,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`admintools_filescache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_filescache`
--

LOCK TABLES `virgin_admintools_filescache` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_filescache` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_filescache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_ipautoban`
--

DROP TABLE IF EXISTS `virgin_admintools_ipautoban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_ipautoban` (
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `until` datetime DEFAULT NULL,
  UNIQUE KEY `virgin_admintools_ipautoban_ip` (`ip`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_ipautoban`
--

LOCK TABLES `virgin_admintools_ipautoban` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_ipautoban` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_ipautoban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_ipautobanhistory`
--

DROP TABLE IF EXISTS `virgin_admintools_ipautobanhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_ipautobanhistory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_ipautobanhistory`
--

LOCK TABLES `virgin_admintools_ipautobanhistory` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_ipautobanhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_ipautobanhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_ipblock`
--

DROP TABLE IF EXISTS `virgin_admintools_ipblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_ipblock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_ipblock`
--

LOCK TABLES `virgin_admintools_ipblock` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_ipblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_ipblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_log`
--

DROP TABLE IF EXISTS `virgin_admintools_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logdate` datetime NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` enum('other','adminpw','ipwl','ipbl','sqlishield','antispam','wafblacklist','tpone','tmpl','template','muashield','csrfshield','badbehaviour','geoblocking','rfishield','dfishield','uploadshield','xssshield','httpbl','loginfailure','securitycode','external','awayschedule','admindir','sessionshield','nonewadmin','nonewfrontendadmin','configmonitor','phpshield') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extradata` longtext COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `id` (`id`),
  KEY `virgin_admintools_log_logdate_reason` (`logdate`,`reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_log`
--

LOCK TABLES `virgin_admintools_log` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_profiles`
--

DROP TABLE IF EXISTS `virgin_admintools_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_profiles`
--

LOCK TABLES `virgin_admintools_profiles` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_profiles` DISABLE KEYS */;
INSERT INTO `virgin_admintools_profiles` VALUES (1,'Default PHP Change Scanner Profile','','');
/*!40000 ALTER TABLE `virgin_admintools_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_redirects`
--

DROP TABLE IF EXISTS `virgin_admintools_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_redirects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` bigint(20) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `keepurlparams` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_redirects`
--

LOCK TABLES `virgin_admintools_redirects` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_redirects` DISABLE KEYS */;
INSERT INTO `virgin_admintools_redirects` VALUES (1,'https://starlink.ua/contacts','menu-infrastructure-audit',0,1,1),(2,'https://starlink.ua/contacts','menu-it-service-strategy',0,1,1),(3,'https://starlink.ua/contacts','menu-server-audit',0,1,1),(4,'https://starlink.ua/contacts','menu-software-audit',0,1,1),(5,'https://starlink.ua/contacts','services/datacenter/hardware-leasing-saas',0,1,1),(6,'https://starlink.ua/contacts','services/datacenter/data-channels ',0,1,1),(7,'https://starlink.ua/contacts','services/integration/sales',0,1,1),(8,'https://starlink.ua/contacts','services/integration/network',0,1,1),(9,'https://starlink.ua/solutions/dataprotection-kerio-control','services/security',0,1,1);
/*!40000 ALTER TABLE `virgin_admintools_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_scanalerts`
--

DROP TABLE IF EXISTS `virgin_admintools_scanalerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_scanalerts` (
  `admintools_scanalert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scan_id` bigint(20) NOT NULL DEFAULT '0',
  `diff` longtext COLLATE utf8mb4_unicode_ci,
  `threat_score` int(11) NOT NULL DEFAULT '0',
  `acknowledged` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admintools_scanalert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_scanalerts`
--

LOCK TABLES `virgin_admintools_scanalerts` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_scanalerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_scanalerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_scans`
--

DROP TABLE IF EXISTS `virgin_admintools_scans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_scans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'run',
  `origin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext COLLATE utf8mb4_unicode_ci,
  `absolute_path` longtext COLLATE utf8mb4_unicode_ci,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_scans`
--

LOCK TABLES `virgin_admintools_scans` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_scans` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_scans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_storage`
--

DROP TABLE IF EXISTS `virgin_admintools_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_storage` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_storage`
--

LOCK TABLES `virgin_admintools_storage` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_storage` DISABLE KEYS */;
INSERT INTO `virgin_admintools_storage` VALUES ('cparams','{\"quickstart\":1,\"dirperms\":\"0775\",\"fileperms\":\"0664\",\"perms_show_hidden\":0}');
/*!40000 ALTER TABLE `virgin_admintools_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_wafblacklists`
--

DROP TABLE IF EXISTS `virgin_admintools_wafblacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_wafblacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_wafblacklists`
--

LOCK TABLES `virgin_admintools_wafblacklists` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_wafblacklists` DISABLE KEYS */;
INSERT INTO `virgin_admintools_wafblacklists` VALUES (1,'','','','list[select]','E','!#^[\\p{L}\\d,\\s]+$#iu','',1),(2,'com_users','','','user[groups]','P','','',1);
/*!40000 ALTER TABLE `virgin_admintools_wafblacklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_wafexceptions`
--

DROP TABLE IF EXISTS `virgin_admintools_wafexceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_wafexceptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_wafexceptions`
--

LOCK TABLES `virgin_admintools_wafexceptions` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_wafexceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_admintools_wafexceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_admintools_waftemplates`
--

DROP TABLE IF EXISTS `virgin_admintools_waftemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_admintools_waftemplates` (
  `admintools_waftemplate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `email_num` tinyint(3) unsigned NOT NULL,
  `email_numfreq` tinyint(3) unsigned NOT NULL,
  `email_freq` enum('','second','minute','hour','day') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admintools_waftemplate_id`),
  UNIQUE KEY `virgin_admintools_waftemplate_keylang` (`reason`(100),`language`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_admintools_waftemplates`
--

LOCK TABLES `virgin_admintools_waftemplates` WRITE;
/*!40000 ALTER TABLE `virgin_admintools_waftemplates` DISABLE KEYS */;
INSERT INTO `virgin_admintools_waftemplates` VALUES (1,'all','*','Security exception on [SITENAME]','<div style=\"background-color: #e0e0e0; padding: 10px 20px;\">\r\n<div style=\"background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;\">\r\n<p>Hello,</p>\r\n<p>We would like to notify you that a security exception was detected on your site, [SITENAME], with the following details:</p>\r\n<p>IP Address: [IP] (IP Lookup: [LOOKUP])<br />Reason: [REASON]</p>\r\n<p>If this kind of security exception repeats itself, please log in to your site\'s back-end and add this IP address to your Admin Tools\'s Web Application Firewall feature in order to completely block the misbehaving user.</p>\r\n<p>Best regards,</p>\r\n<p>The [SITENAME] team</p>\r\n</div>\r\n<p style=\"font-size: x-small; color: #667;\">You are receiving this automatic email message because you are an administrator in <em>[SITENAME]</em>. <span style=\"line-height: 1.3em;\">Do not reply to this email, it\'s sent from an unmonitored email address.</span></p>\r\n</div>',1,5,1,'hour','2014-04-14 14:36:34',800,'2014-04-14 14:42:38',800),(2,'user-reactivate','*','User deactivated on [SITENAME]','<div style=\"background-color: #e0e0e0; padding: 10px 20px;\">\r\n<div style=\"background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;\">\r\n<p>Hello,</p>\r\n<p>on [DATE] the user account [USER] was de-activated because too many failed logins were detected coming from IP address: [IP].</p>\r\n<p>Please click on the following link to activate the user account again:<br />[ACTIVATE]</p>\r\n<p>Best regards,</p>\r\n<p>The [SITENAME] team</p>\r\n</div>\r\n<p style=\"font-size: x-small; color: #667;\">You are receiving this automatic email message because you are an administrator in <em>[SITENAME]</em>. <span style=\"line-height: 1.3em;\">Do not reply to this email, it\'s sent from an unmonitored email address.</span></p>\r\n</div>',1,0,0,'','2014-04-24 14:44:49',800,'0000-00-00 00:00:00',0),(3,'adminloginfail','*','Failed administrator login for user [USER] on [SITENAME]','<div style=\"background-color: #e0e0e0; padding: 10px 20px;\">\r\n<div style=\"background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;\">\r\n<p>Hello,</p>\r\n<p>We would like to notify you that user <strong>[USER]</strong> did <strong>not</strong> log in successfully to the administrator back-end area of your site, [SITENAME]. <span style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">Further information:</span></p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">Username: [USER]<br />IP address: [IP] ([LOOKUP])<br />Country*: [COUNTRY]<br />Continent*: [CONTINENT]<br />Browser User Agent string: [UA]</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">* Country and continent information availability and accuracy depend on the GeoIP database installed on your site.</p>\r\n<p>If this expected you need to do nothing about it. If you suspect a hacking attempt, please log in to your site\'s back-end immediately and activate Admin Tools\' Emergency Off-Line mode at once.</p>\r\n<p>Best regards,</p>\r\n<p>The [SITENAME] team</p>\r\n</div>\r\n<p style=\"font-size: x-small; color: #667;\">You are receiving this automatic email message because you are an administrator in <em>[SITENAME]</em>. <span style=\"line-height: 1.3em;\">Do not reply to this email, it\'s sent from an unmonitored email address.</span></p>',1,5,1,'hour','2015-07-27 13:52:45',800,'2015-07-27 13:58:31',800),(4,'adminloginsuccess','*','User [USER] logged in on [SITENAME] administrator area','<div style=\"background-color: #e0e0e0; padding: 10px 20px;\">\r\n<div style=\"background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;\">\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">Hello,</p>\r\n<p>We would like to notify you that user [USER] has just logged in to the administrator back-end area of your site, [SITENAME]. Further information:</p>\r\n<p>Username: [USER]<br />IP address: [IP] ([LOOKUP])<br />Country*: [COUNTRY]<br />Continent*: [CONTINENT]<br />Browser User Agent string: [UA]</p>\r\n<p>* Country and continent information availability and accuracy depend on the GeoIP database installed on your site.</p>\r\n<p>If this expected you need to do nothing about it. If you suspect a hacking attempt, please log in to your site\'s back-end immediately and activate Admin Tools\' Emergency Off-Line mode at once.</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">Best regards,</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">The [SITENAME] team</p>\r\n</div>\r\n<p style=\"font-size: x-small; color: #667;\">You are receiving this automatic email message because you are an administrator in <em>[SITENAME]</em>. <span style=\"line-height: 1.3em;\">Do not reply to this email, it\'s sent from an unmonitored email address.</span></p>',1,5,1,'hour','2015-07-27 13:58:08',800,'0000-00-00 00:00:00',0),(5,'ipautoban','*','Automatic IP blocking notification for [IP] on [SITENAME]','<div style=\"background-color: #e0e0e0; padding: 10px 20px;\">\r\n<div style=\"background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;\">\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">Hello,</p>\r\n<p>We would like to notify you that the IP address [IP] is now blocked from accessing your site, [SITENAME]<span style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">, with the following details:</span></p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">IP Address: [IP] (IP Lookup: [LOOKUP])<br />Reason: [REASON]<br />Banned until: [UNTIL]</p>\r\n<p>If this is your own IP address and you can no longer access your site please <a href=\"http://akee.ba/lockedout\">follow our instructions</a> to temporarily disable Admin Tools\' Web Application Firewall and clear the automatic IP ban.</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">Best regards,</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">The [SITENAME] team</p>\r\n</div>\r\n<p style=\"font-size: x-small; color: #667;\">You are receiving this automatic email message because you are an administrator in <em>[SITENAME]</em>. <span style=\"line-height: 1.3em;\">Do not reply to this email, it\'s sent from an unmonitored email address.</span></p>',1,5,1,'hour','2015-07-27 14:20:00',800,'0000-00-00 00:00:00',0),(6,'configmonitor','*','Configuration options for [AREA] modified on [SITENAME]','<div style=\"background-color: #e0e0e0; padding: 10px 20px;\">\n<div style=\"background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;\">\n<p>Hello,</p>\n<p>We would like to notify you that the configuration options for [AREA] on your site, [SITENAME], have been modified by user [USER]. More details about the origin of this change as follows:</p>\n<p>IP Address: [IP] (IP Lookup: [LOOKUP])<br />User Agent: [UA]</p>\n<p>If this change was not made by you or an administrator user you trust please review your site immediately as this would be an indication of hacking activity.</p>\n<p>Best regards,</p>\n<p>The [SITENAME] team</p>\n</div>\n<p style=\"font-size: x-small; color: #667;\">You are receiving this automatic email message because you have a subscription in <em>[SITENAME]</em>. <span style=\"line-height: 1.3em;\">Do not reply to this email, it\'s sent from an unmonitored email address.</span></p>\n</div>',1,0,0,'','2016-12-15 10:46:00',800,'2016-12-15 10:46:00',800);
/*!40000 ALTER TABLE `virgin_admintools_waftemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_advancedmodules`
--

DROP TABLE IF EXISTS `virgin_advancedmodules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_advancedmodules` (
  `moduleid` int(11) unsigned NOT NULL DEFAULT '0',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mirror_id` int(10) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_advancedmodules`
--

LOCK TABLES `virgin_advancedmodules` WRITE;
/*!40000 ALTER TABLE `virgin_advancedmodules` DISABLE KEYS */;
INSERT INTO `virgin_advancedmodules` VALUES (87,54,0,'{\"color\":\"#999999\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"type.hidden\",\"125\",\"127\",\"129\",\"131\",\"132\",\"128\",\"type.mainmenu\",\"101\",\"111\",\"114\",\"119\",\"120\",\"126\",\"112\",\"105\",\"106\",\"107\",\"108\",\"134\",\"135\",\"136\",\"137\",\"138\",\"109\",\"110\",\"113\",\"121\",\"122\",\"123\",\"124\",\"118\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(88,56,0,'{\"color\":\"#c3325f\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(89,58,0,'{\"color\":\"#049cdb\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(90,59,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"111\",\"112\",\"106\",\"121\",\"122\",\"123\",\"124\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(94,64,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(95,65,0,'{\"color\":\"#9d261d\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(96,66,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(97,67,0,'{\"color\":\"#999999\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"type.hidden\",\"125\",\"127\",\"129\",\"131\",\"132\",\"128\",\"type.mainmenu\",\"101\",\"111\",\"114\",\"119\",\"120\",\"126\",\"112\",\"105\",\"106\",\"107\",\"108\",\"134\",\"135\",\"136\",\"137\",\"138\",\"109\",\"110\",\"113\",\"121\",\"122\",\"123\",\"124\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(99,69,0,'{\"color\":\"#999999\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"type.hidden\",\"125\",\"127\",\"129\",\"131\",\"132\",\"128\",\"type.mainmenu\",\"101\",\"111\",\"114\",\"119\",\"120\",\"126\",\"112\",\"105\",\"106\",\"107\",\"108\",\"134\",\"135\",\"136\",\"137\",\"138\",\"109\",\"110\",\"113\",\"121\",\"122\",\"123\",\"124\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(100,71,0,'{\"color\":\"#9d261d\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"126\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(101,73,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"111\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(102,90,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"112\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(103,91,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"112\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(104,93,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(105,94,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(106,95,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(113,102,0,'{\"color\":\"#049cdb\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(114,103,0,'{\"color\":\"#999999\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"125\",\"127\",\"129\",\"131\",\"132\",\"128\",\"101\",\"111\",\"114\",\"119\",\"120\",\"126\",\"112\",\"105\",\"106\",\"107\",\"108\",\"134\",\"135\",\"136\",\"137\",\"138\",\"109\",\"110\",\"113\",\"121\",\"122\",\"123\",\"124\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(115,104,0,'{\"color\":\"#9d261d\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(117,112,0,'{\"color\":\"#7a43b6\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"121\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(118,113,0,'{\"assignto_menuitems_selection\":[\"121\"],\"assignto_menuitems\":1,\"color\":\"#7a43b6\"}'),(119,114,0,'{\"assignto_menuitems_selection\":[\"121\"],\"assignto_menuitems\":1,\"color\":\"#7a43b6\"}'),(120,115,0,'{\"assignto_menuitems_selection\":[\"121\"],\"assignto_menuitems\":1,\"color\":\"#7a43b6\"}'),(121,116,0,'{\"assignto_menuitems_selection\":[\"121\"],\"assignto_menuitems\":1,\"color\":\"#7a43b6\"}'),(122,117,0,'{\"assignto_menuitems_selection\":[\"121\"],\"assignto_menuitems\":1,\"color\":\"#7a43b6\"}'),(123,118,0,'{\"assignto_menuitems_selection\":[\"124\"],\"assignto_menuitems\":1}'),(124,119,0,'{\"assignto_menuitems_selection\":[\"124\"],\"assignto_menuitems\":1}'),(125,120,0,'{\"assignto_menuitems_selection\":[\"124\"],\"assignto_menuitems\":1}'),(126,121,0,'{\"assignto_menuitems_selection\":[\"124\"],\"assignto_menuitems\":1}'),(127,122,0,'{\"assignto_menuitems_selection\":[\"124\"],\"assignto_menuitems\":1}'),(128,123,0,'{\"assignto_menuitems_selection\":[\"124\"],\"assignto_menuitems\":1}'),(129,124,0,'{\"assignto_menuitems_selection\":[\"122\"],\"assignto_menuitems\":1}'),(130,125,0,'{\"assignto_menuitems_selection\":[\"122\"],\"assignto_menuitems\":1}'),(131,126,0,'{\"assignto_menuitems_selection\":[\"122\"],\"assignto_menuitems\":1}'),(132,127,0,'{\"assignto_menuitems_selection\":[\"122\"],\"assignto_menuitems\":1}'),(133,128,0,'{\"assignto_menuitems_selection\":[\"122\"],\"assignto_menuitems\":1}'),(134,129,0,'{\"assignto_menuitems_selection\":[\"122\"],\"assignto_menuitems\":1}'),(135,138,0,'{\"color\":\"#7a43b6\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"165\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(141,145,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"105\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(143,147,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"105\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(144,148,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"105\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(145,159,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"107\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(146,160,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"107\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(148,162,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"107\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(149,163,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"108\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(151,165,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"108\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(152,166,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"108\",\"134\",\"135\",\"136\",\"137\",\"138\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(153,167,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"109\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(158,172,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"109\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(160,174,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"110\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(161,175,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"105\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(162,178,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"107\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(163,179,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"108\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(164,180,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"109\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(165,181,0,'{\"color\":\"#f89406\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"110\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(174,211,0,'{\"color\":\"#049cdb\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"111\",\"114\",\"105\",\"107\",\"108\",\"109\",\"110\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(176,213,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"1\",\"assignto_date_publish_up\":\"2016-10-31 13:35:00\",\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(177,214,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"126\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(178,215,0,'{\"color\":\"none\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"type.hidden\",\"125\",\"127\",\"129\",\"131\",\"132\",\"128\",\"type.mainmenu\",\"101\",\"111\",\"114\",\"119\",\"120\",\"126\",\"112\",\"105\",\"106\",\"107\",\"108\",\"134\",\"135\",\"136\",\"137\",\"138\",\"109\",\"110\",\"113\",\"121\",\"122\",\"123\",\"124\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"1\",\"assignto_date_publish_up\":\"2016-11-30 22:36:00\",\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(179,236,0,'{\"color\":\"#7a43b6\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"165\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"1\",\"assignto_date_publish_up\":\"2016-11-30 03:16:00\",\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(180,237,0,'{\"color\":\"#7a43b6\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"165\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"1\",\"assignto_date_publish_up\":\"2016-11-30 03:16:00\",\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(183,240,0,'{\"color\":\"#c3325f\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(184,254,0,'{\"color\":\"#049cdb\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"111\",\"114\",\"105\",\"107\",\"108\",\"109\",\"110\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"0\",\"assignto_date_publish_up\":0,\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(185,242,0,'{\"color\":\"#049cdb\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"178\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"111\",\"114\",\"105\",\"107\",\"108\",\"109\",\"110\",\"115\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"1\",\"assignto_date_publish_up\":\"2017-01-26 11:53:00\",\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}'),(186,243,0,'{\"color\":\"#049cdb\",\"hideempty\":\"0\",\"mirror_module\":\"0\",\"mirror_moduleid\":\"186\",\"match_method\":\"and\",\"show_assignments\":\"1\",\"assignto_menuitems\":\"1\",\"assignto_menuitems_selection\":[\"101\",\"106\"],\"assignto_menuitems_inc_children\":\"0\",\"assignto_menuitems_inc_noitemid\":\"0\",\"assignto_homepage\":\"0\",\"assignto_date\":\"1\",\"assignto_date_publish_up\":\"2017-01-26 12:03:00\",\"assignto_date_publish_down\":0,\"assignto_date_recurring\":\"0\",\"assignto_usergrouplevels\":\"0\",\"assignto_usergrouplevels_inc_children\":\"0\",\"assignto_languages\":\"0\",\"assignto_templates\":\"0\",\"assignto_urls\":\"0\",\"assignto_urls_selection\":\"\",\"assignto_urls_regex\":\"0\",\"assignto_devices\":\"0\",\"assignto_os\":\"0\",\"assignto_browsers\":\"0\",\"assignto_components\":\"0\",\"assignto_tags\":\"0\",\"assignto_tags_inc_children\":\"0\",\"assignto_contentpagetypes\":\"0\",\"assignto_cats\":\"0\",\"assignto_cats_inc_children\":\"0\",\"assignto_cats_inc\":[\"inc_cats\",\"inc_arts\",\"x\"],\"assignto_articles\":\"0\",\"assignto_articles_content_keywords\":\"\",\"assignto_articles_keywords\":\"\"}');
/*!40000 ALTER TABLE `virgin_advancedmodules` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `virgin_ak_profiles`
--

DROP TABLE IF EXISTS `virgin_ak_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  `quickicon` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_ak_profiles`
--

LOCK TABLES `virgin_ak_profiles` WRITE;
/*!40000 ALTER TABLE `virgin_ak_profiles` DISABLE KEYS */;
INSERT INTO `virgin_ak_profiles` VALUES (1,'Default Backup Profile','###AES128###F1G5v/n8IHsmc/EemmH5Ebhi9Qrob4h/iAlH6kAx2EZeVL1yjgaCkR4hsvGkhyZltArugBjgKVZ1K5MH7RlfCJ8b0ct1r3gOmOAzCSADyYH6DTXEf+9noGOUZ4cbK1Ik06otOSqeTcLx+tRhMqtX7yIFhkMsrIyyL2qdLkZjjS0QMNCZQVuLysPi6F2bDtaelmOskX4nJHaSXQt3SSF6wu1nvdMF9h+jBM1OG67OTYzhNVLfpr9Q7nR5Qvtx+/awSjzqcC3M86uG9Fq39bFAQ2qKQ1Bb/tK6k1WhdXmPKHjm59FwId7ua1QlWQesJG76ygWf7I1HAM5kc/jv0yKctTRWPrHAuOyfkAX/Ro7eEap/IoAA9iWRk3fN250Is2NwNjce9ycLV+Q3B7r1OrPt4AhRDEFSJKtCPbIGz5+/6jEg0pfWU1QY+mH8d0LWg8YfdZDnhUhl2jaUM1/EjhXGWQXc9/4CF8iS/bFf6Tg4wIHSb+/+81tEmviSx0pfKrkPC+2/WJFt9eaU9SVoi8RDtruHd3k06cmWzL1zVTLwDMYBINKtg7hvEPx+LdleF14d6SlOyI4Am8iqR6cOE1vZTXo5oRttVuMJ4AeZ4fmK7No0tpSSX/U+oZcPFVY3QlIzzK23ZKrz65RDgPHrhCbXWHAdXIzFaZGei1DMnv4VPgnezuc8zySfzWaW6Oli8Au60ALi2yXcdZYOWaXHZw4QGL1CipZb/G6vpm5ipNTwuXq/sY//c/ydNm/zHZrw9T9QF4T29mEDChj0i04et4GRgck9FTbmiEWxe2a4gg9jTHnAfmjSKKcofO9+/qWhCxdQkX7zVUhbp+84r2EJ+w+0QnGwPofGUX2w9ftY0qkr2DDZOwDhX0e3fsLjhI4LBG7+8Z1r1Vw2ZlZErE2Ovr7qbjocVR9fnm1nTCHRq/OacOs0Bp1q325HxqLUNSJICiXj1NEL/UqSV5dEZIuBN1JJxMUuJVhcexKQ6vc0eFiBURL05juj+URdZOwbDld5/iplgqejGIiNQugHxdjgThlj/9w1d9vydsrwIxUXNSRfibFIy6Xj5SwHpHQB7XYlSAl+61JtEAQwI93gjQFjQYhzonJJwSaV+wDP6DRaSxBoKSlWX43obC4y5rRFaLSQYFpiVMyYDu+j7sIVKqtdCbS3wGvyjHdQPw3TVyJE0aNteVLIarhrKAqJNajRTjglO+bCxUchw91LdqfMCgkp/8C3RCNYqXqDhQx9GcVpE1azkmmT8AyX/0/V7G1j88uIDrElWrrJlN6psRK1FfcrrfWc2afRyppHVP1RPC2JVEnolW5ZFEEwfO5C8vAzx0J2uR1ZE6nr5vaAG4RoqkeG2UzIjLL0wnxW2g0NTZKlhKEcmPxlvKczOZCLpBAZC2T7+JYu9X07gucyUegNey/82TorilOguSsyKmSJT3bGfmisfgeeOVVd7DzPZ8Lah4eh1JO8ZfH9fkQRmQNgeWrPbbSwRagIATcBrUZOt4jpAULu/sg301PVSOjAruc4KP6ilDnC1BRio3ZZRTf/TxeMuLwA8il05Y9haLAYvgDlAi+ivDapU07OZrwm/qoQDrjWgUyBx73r5iiPHvJlnseNaCF2KRO2rVwX/qgrnkSaVN3Lpsra1//gX9mUjEIYz2whL8CPNzeYl9FSRRAKNOYrEECTvTLRKEsrV9JkKTG1kp88Iqp2N7yuFaB3kxj5pX0eZ6XaQD+sbd8D92X3ExREaB5+kx9ppJ44E5TdDCKct5etcsSPiGojDu6mKjFuoPsPCd8W0QAMxg9BIn3dMUT/ApA2hZ3l9BG1HynzCoP8vNqZO588mEvmg9ZtNJgHM5w9eMQXrsKYV1KI/Ev24tDXQ2BqONFLSTEKRGUVr8q/N4S78c5Yx9fSGDeeJNv8wjAzvREFKq099qWnEuoafeiTtmcvd3a7LqYDMrE5uMKGHD+ADmL2ew1+SWWZYinx9ViSutO8h89Y2PnwgxfAgmBC5AQ0Jgw0bdG25jUjBtgUOKIK2Cr2bV1PFcqkeFTXalGUweSlfbWYTCiPJYyoukicSoxYCYfWvq9ljj53ML2wu4nDmFdjZGBR1LvtJqGoxV1Zj7Rfjn9jAwtLpxRdfnn2Ar/4b1JBv2Td3Mhgar/KWD3vLU2pY9Y5BLS7Ol4b/5xrmnqNcyU5hggo8CrztNf+CrqtuQWxku+BIYJQsMMUA9N6yCJgm3UDj9F7JAd8DAPGBhp71coGLkQayP7MyGWrw/eeecCoR8NpfKhTaOpgsRakTSJW0Vz2ZC3VHs1vxrtSXTfWWN485HZcSfZRXTxg2YOSLYPWrZHd7Y24jOsX8UiRMcLutGlC1Z59lFGK+e8HwR/FNfVU9glk52lq1TbRG6+uP+JSRBA1j8Ahg5AHL4Ah6TT/6obGQa01r1U5lzrj/0d8ejCBThfWwkYwcroemjeVZUpQSVYxe9L7Gpaua/w+0dmHHpTxJQcAAA==','',1);
/*!40000 ALTER TABLE `virgin_ak_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_ak_stats`
--

DROP TABLE IF EXISTS `virgin_ak_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'run',
  `origin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext COLLATE utf8mb4_unicode_ci,
  `absolute_path` longtext COLLATE utf8mb4_unicode_ci,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_ak_stats`
--

LOCK TABLES `virgin_ak_stats` WRITE;
/*!40000 ALTER TABLE `virgin_ak_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_ak_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_ak_storage`
--

DROP TABLE IF EXISTS `virgin_ak_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_ak_storage` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tag`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_ak_storage`
--

LOCK TABLES `virgin_ak_storage` WRITE;
/*!40000 ALTER TABLE `virgin_ak_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_ak_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_akeeba_common`
--

DROP TABLE IF EXISTS `virgin_akeeba_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_akeeba_common` (
  `key` varchar(192) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_akeeba_common`
--

LOCK TABLES `virgin_akeeba_common` WRITE;
/*!40000 ALTER TABLE `virgin_akeeba_common` DISABLE KEYS */;
INSERT INTO `virgin_akeeba_common` VALUES ('fof30','[\"com_admintools\",\"com_akeeba\"]'),('stats_lastrun','1487166040'),('stats_siteid','a312e8f426332b8d462580c1e995425f1c08f6ca'),('stats_siteurl','aa059f5196d73aeaa84475316ad7647b');
/*!40000 ALTER TABLE `virgin_akeeba_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_j2xml_usergroups`
--

DROP TABLE IF EXISTS `virgin_j2xml_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_j2xml_usergroups` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_j2xml_usergroups`
--

LOCK TABLES `virgin_j2xml_usergroups` WRITE;
/*!40000 ALTER TABLE `virgin_j2xml_usergroups` DISABLE KEYS */;
INSERT INTO `virgin_j2xml_usergroups` VALUES (1,0,'[\"Public\"]'),(9,0,'[\"Public\",\"Guest\"]'),(6,0,'[\"Public\",\"Manager\"]'),(2,0,'[\"Public\",\"Registered\"]'),(8,0,'[\"Public\",\"Super Users\"]'),(3,0,'[\"Public\",\"Registered\",\"Author\"]'),(4,0,'[\"Public\",\"Registered\",\"Author\",\"Editor\"]'),(5,0,'[\"Public\",\"Registered\",\"Author\",\"Editor\",\"Publisher\"]'),(7,0,'[\"Public\",\"Manager\",\"Administrator\"]'),(1,0,'Public'),(9,1,'Guest'),(6,1,'Manager'),(2,1,'Registered'),(8,1,'Super Users'),(3,2,'Author'),(4,3,'Editor'),(5,4,'Publisher'),(7,6,'Administrator');
/*!40000 ALTER TABLE `virgin_j2xml_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgin_j2xml_websites`
--

DROP TABLE IF EXISTS `virgin_j2xml_websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_j2xml_websites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `remote_url` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_j2xml_websites`
--

LOCK TABLES `virgin_j2xml_websites` WRITE;
/*!40000 ALTER TABLE `virgin_j2xml_websites` DISABLE KEYS */;
/*!40000 ALTER TABLE `virgin_j2xml_websites` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `virgin_wf_profiles`
--

DROP TABLE IF EXISTS `virgin_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virgin_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgin_wf_profiles`
--

LOCK TABLES `virgin_wf_profiles` WRITE;
/*!40000 ALTER TABLE `virgin_wf_profiles` DISABLE KEYS */;
INSERT INTO `virgin_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,imgmanager_ext,mediamanager,filemanager,templatemanager,caption,microdata,spellchecker,article','formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,imgmanager_ext,mediamanager,filemanager,templatemanager,caption,microdata,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source,textpattern',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}'),(5,'Markdown','Sample Markdown Profile','','6,7,3,4,5,8','',0,'desktop,tablet,phone','fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect','fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern',0,5,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\"}}');
/*!40000 ALTER TABLE `virgin_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;

