-- MySQL dump 10.13  Distrib 5.5.29, for osx10.6 (i386)
--
-- Host: localhost    Database: conn_o_matic
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `edition` enum('Peer Reviewer','Editorial Board','Editorial Advisory Board') NOT NULL,
  `quarter` enum('Winter','Spring','Summer','Fall') NOT NULL,
  `year` year(4) NOT NULL,
  `headline` text NOT NULL,
  `main_body` text NOT NULL,
  `lead_in` text NOT NULL,
  `kicker` text,
  `poll_q` text,
  `poll_link` text,
  `peer_name` varchar(256) NOT NULL,
  `peer_occ` varchar(256) DEFAULT NULL,
  `peer_school` varchar(256) DEFAULT NULL,
  `peer_inv` text,
  `peer_rev` text,
  `resources` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (1,'Peer Reviewer','Summer',2013,'','','Here\'s the lead-in for id #1 the first one!','','ONLINE POLL QUESTION GOES HERE','#','PEER NAME GOES HERE','PEER OCCUPATION GOES HERE','PEER SCHOOL/CLASS GOES HERE','PEER I\'M INVOLVED BECAUSE ... GOES HERE','PEER WHEN REVIEWING ... GOES HERE',NULL),(2,'Peer Reviewer','Winter',2013,'HEADLINE GOES HERE','<p>Did you know the JAOA is interested in basic science articles? Here\'s what you can do to help increase such submissions:</p>\r\n\r\n<p>Explain to students and researchers outside of the osteopathic profession how their research may build on the evidence base of the osteopathic tenets.</p>\r\n\r\n<p>Encourage these investigators to submit their basic science research articles to the JAOA. Researchers who prefer to publish their studies in basic science journals should be encouraged to submit derivative articles, in which they explain how their original work connects to and supports the tenets.</p>\r\n\r\n<p>Send the JAOA\'s Information for Authors [http://www.jaoa.org/site/misc/ifora.xhtml] to those interested in submitting basic science research or derivative articles with appropriate clinical applications. Also consider sharing the AOA\'s Tenets of Osteopathic Medicine [http://www.osteopathic.org/inside-aoa/about/leadership/Pages/tenets-of-osteopathic-medicine.aspx] page.</p> \r\n\r\n<p>Share the JAOA\'s most recently published basic science research article from the November 2013 issue. Paul R. Standley, PhD, and his colleagues\' article, \"In Vitro Biomechanical Strain Regulation of Fibroblast Wound Healing,\" [http://www.jaoa.org/content/113/11/806.abstract] is an excellent example of how basic science research can serve as an evidence base for the osteopathic tenets.</p> ','We\'re on Twitter! Follow The Journal of the American Osteopathic Association (JAOA) on Twitter at <a href=\'https://twitter.com/TheJAOA\'>@TheJAOA</a> for updates, highlights, and conversations about the JAOA and osteopathic medical research.','SCOPUS <a href=\'http://www.scimagojr.com/compare.php?j1=Journal+of+the+American+Osteopathic+Association%2C+The&j2=American+Family+Physician&j3=Physical+Medicine+and+Rehabilitation+Clinics+of+North+America&j4=International+Journal+of+Osteopathic+Medicine&un=journals&inj=0\'>has released</a> its SCImage journal rankings for 2012. JAOA rankings have gone up for the second year in a row. Check out the JAOA\'s SCImago Journal & Country ranking. Hiya hiya hiya.','\"I would like more information and guidance about how to promote the JAOA to my colleagues and institution.\"','http://www.do-online.org/JAOA/connections/poll/vote-form.php?poll=11','Michael A. Seffinger, DO','Professor and chair of the Department of NMM/OMM at the Western University of Health Sciences College of Osteopathic Medicine in the Pacific and the Pacific Northwest, and JAOA associate editor.','Michigan State University College of Osteopathic Medicine, Class of 1988','I want to contribute to this vital communication link that keeps the osteopathic profession alive and viable. I want to facilitate open and productive scientific, peer-reviewed discourse among osteopathic physicians and our students in particular, as well as anyone else interested in osteopathic medicine. I want to promote the JAOA as a professional scientific journal that is interactive, evidence based, and up to date with state-of-the-art concepts about health and disease from an osteopathic perspective.  ','Whether it is meaningful to our profession, makes a significant contribution to the scientific literature, describes valid and appropriate methodology, reviews pertinent literature, clearly and accurately reports and interprets the data, and states the conclusions based only on the data obtained. The manuscript should make sense, state its limitations and strengths, and make recommendations for further study. ','<ul>\r\n  <li>\r\n    <a href=\'http://www.jaoa.org/site/misc/ifora.xhtml\'>\r\n      Information for Authors\r\n    </a>\r\n  </li>\r\n  <li>\r\n    <a href=\'http://www.osteopathic.org/inside-aoa/about/leadership/Pages/tenets-of-osteopathic-medicine.aspx\'>\r\n      Tenets of Osteopathic Medicine\r\n    </a>\r\n  </li>\r\n  <li>\r\n    <a href=\'http://www.osteopathic.org/committees/JAOA-editorial-advisory-board/Pages/default.aspx\'>\r\n      JAOA Editorial Advisory Board online workspace\r\n    </a>\r\n  </li>\r\n</ul>'),(3,'Peer Reviewer','Winter',2013,'HEADLINE GOES HERE','<p>MAIN BODY TEXT GOES HERE<p>','And, like, like, like, here\'s the third new lead-in for id=3.','Here\'s the new, new, new lead-in kicker. And now it has a <a href=\"http://www.osteopathic.org\" title=\"AOA home page\">link</a>.','ONLINE POLL QUESTION GOES HERE','#','PEER NAME GOES HERE','PEER OCCUPATION GOES HERE','PEER SCHOOL/CLASS GOES HERE','PEER I\'M INVOLVED BECAUSE ... GOES HERE','PEER WHEN REVIEWING ... GOES HERE',NULL),(4,'Peer Reviewer','Spring',2013,'Here\'s the headline','<p>Did you know the JAOA is interested in basic science articles? Here\'s what you can do to help increase such submissions:</p>\r\n\r\n<p>Explain to students and researchers outside of the osteopathic profession how their research may build on the evidence base of the osteopathic tenets.</p>\r\n\r\n<p>Encourage these investigators to submit their basic science research articles to the JAOA. Researchers who prefer to publish their studies in basic science journals should be encouraged to submit derivative articles, in which they explain how their original work connects to and supports the tenets.</p>\r\n','We\'re on Twitter! Follow The Journal of the American Osteopathic Association (JAOA) on Twitter at <a href=\"https://twitter.com/TheJAOA\">@TheJAOA</a> for updates, highlights, and conversations about the JAOA and osteopathic medical research. Hiya.','SCOPUS <a href=\"http://www.scimagojr.com/compare.php?j1=Journal+of+the+American+Osteopathic+Association%2C+The&amp;j2=American+Family+Physician&amp;j3=Physical+Medicine+and+Rehabilitation+Clinics+of+North+America&amp;j4=International+Journal+of+Osteopathic+Medicine&amp;un=journals&amp;inj=0\">has released</a> its SCImage journal rankings for 2012. JAOA rankings have gone up for the second year in a row. Check out the JAOA\'s SCImago Journal &amp; Country ranking. Hiya hiya.','\"I would like more information and guidance about how to promote the JAOA to my colleagues and institution.\"','http://www.do-online.org/JAOA/connections/poll/vote-form.php?poll=11','Michael A. Seffinger, DO','Professor and chair of the Department of NMM/OMM at the Western University of Health Sciences College of Osteopathic Medicine in the Pacific and the Pacific Northwest, and JAOA associate editor','Michigan State University College of Osteopathic Medicine, Class of 1988','I want to contribute to this vital communication link that keeps the osteopathic profession alive and viable. I want to facilitate open and productive scientific, peer-reviewed discourse among osteopathic physicians and our students in particular, as well as anyone else interested in osteopathic medicine. I want to promote the JAOA as a professional scientific journal that is interactive, evidence based, and up to date with state-of-the-art concepts about health and disease from an osteopathic perspective.','Whether it is meaningful to our profession, makes a significant contribution to the scientific literature, describes valid and appropriate methodology, reviews pertinent literature, clearly and accurately reports and interprets the data, and states the conclusions based only on the data obtained. The manuscript should make sense, state its limitations and strengths, and make recommendations for further study.','<p><a href=\'#\' title=\'\'>Resource #1</a></p><p><a href=\'#\' title=\'\'>Resource #2</a></p><p><a href=\'#\' title=\'\'>Resource #3</a></p><p><a href=\'#\' title=\'\'>Resource #4</a></p><p><a href=\'#\' title=\'\'>Resource #5</a></p>'),(5,'Editorial Board','Summer',2013,'HEADLINE GOES HERE','<p>MAIN BODY TEXT GOES HERE<p>','LEAD-IN GOES HERE','LEAD-IN KICKER GOES HERE','ONLINE POLL QUESTION GOES HERE','#','PEER NAME GOES HERE','PEER OCCUPATION GOES HERE','PEER SCHOOL/CLASS GOES HERE','PEER I\'M INVOLVED BECAUSE ... GOES HERE','PEER WHEN REVIEWING ... GOES HERE','<p><a href=\'#\' title=\'\'>Resource #1</a></p><p><a href=\'#\' title=\'\'>Resource #2</a></p><p><a href=\'#\' title=\'\'>Resource #3</a></p><p><a href=\'#\' title=\'\'>Resource #4</a></p><p><a href=\'#\' title=\'\'>Resource #5</a></p>');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `res` text,
  `res_link` text,
  `conn_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conn_id` (`conn_id`),
  CONSTRAINT `resource_ibfk_1` FOREIGN KEY (`conn_id`) REFERENCES `issue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-13  8:33:19
