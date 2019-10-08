-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2019 at 09:53 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecure`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

DROP TABLE IF EXISTS `tbl_about`;
CREATE TABLE IF NOT EXISTS `tbl_about` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `About_title` varchar(40) NOT NULL,
  `About_description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`ID`, `About_title`, `About_description`) VALUES
(1, 'Your new all in one home system', 'Meet the ThermoSecure by HouseCom. It is a fully digital, hardwired, and wireless enabled home personal and secure environment control system. Purchase comfort for your home today.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

DROP TABLE IF EXISTS `tbl_features`;
CREATE TABLE IF NOT EXISTS `tbl_features` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Features_title` varchar(20) NOT NULL,
  `Features_description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`ID`, `Features_title`, `Features_description`) VALUES
(1, 'Weather', 'Before you head out the door, ask the system what the forecast is for the day.'),
(2, 'Temperature', 'Too hot or cold? Adjust your home to the perfect heat or cool settings.'),
(3, 'Entertainment', 'Connect to all your favourite listening platforms. Play all hands free.'),
(4, 'Security', 'Keep your family safe with features such as lock door, carbon detector and more.'),
(5, 'Convenience', 'ThermoSecure can be controlled at home or through your iOS or Android device.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promo`
--

DROP TABLE IF EXISTS `tbl_promo`;
CREATE TABLE IF NOT EXISTS `tbl_promo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tagline` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_promo`
--

INSERT INTO `tbl_promo` (`ID`, `Tagline`) VALUES
(1, 'Comfort at Your Convenience');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

DROP TABLE IF EXISTS `tbl_review`;
CREATE TABLE IF NOT EXISTS `tbl_review` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Quote` text NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Location` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
