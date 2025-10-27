/*
SQLyog Ultimate v8.55 
MySQL - 5.1.54-community : Database - cybcercafe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cybcercafe` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cybcercafe`;

/*Table structure for table `computers` */

DROP TABLE IF EXISTS `computers`;

CREATE TABLE `computers` (
  `compname` varchar(30) DEFAULT NULL,
  `comploc` varchar(30) DEFAULT NULL,
  `ipadd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `computers` */

insert  into `computers`(`compname`,`comploc`,`ipadd`) values ('acer','kr','129.0.0.3'),('dell','bhattrahalli','123.6.7.8'),('lenova','beniganahalli','123.8.9.9');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uname` varchar(30) DEFAULT NULL,
  `uaddress` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `comp` varchar(30) DEFAULT NULL,
  `adharnum` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uname`,`uaddress`,`mobile`,`email`,`comp`,`adharnum`) values ('lohith','suashnagar','807362434','lohith@gmail.com','macos','899466466458');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
