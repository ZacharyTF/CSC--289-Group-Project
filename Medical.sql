-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for medical
CREATE DATABASE IF NOT EXISTS `medical` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `medical`;

-- Dumping structure for table medical.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `DoctorID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Last Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `First Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(320) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table medical.employees: ~4 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
REPLACE INTO `employees` (`DoctorID`, `Last Name`, `First Name`, `Email`, `Password`) VALUES
	('12587', 'Hart', 'Isla', 'HartI@Javamedical.org', 'C0d3M@ster'),
	('25886', 'Robotnik', 'Ivo', 'RobotnikI@Javamedical', '3ggMan4^'),
	('54796', 'House', 'Gregory', 'HouseG@Javamedical.org', 'NotLup1s#1'),
	('76467', 'Alford', 'Lilliana', 'LillianaA@Javamedical.org', 'Te@liSnice1@');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table medical.patients
CREATE TABLE IF NOT EXISTS `patients` (
  `PatientID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Patient Number',
  `Last Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Last name',
  `First Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'First name',
  `SSN` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Social',
  `Gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gender/sex',
  `Phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Phone Number',
  `Email` varchar(320) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Email',
  `Password` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Password',
  `Date of Birth` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Birthdate',
  `Doctor ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Doc ID',
  `Doctor First Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Doc First name',
  `Doctor Last Name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Doc Last name',
  `PatientNotes` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Notes for doc (Temp)',
  PRIMARY KEY (`PatientID`),
  KEY `FK_patients_employees` (`Doctor ID`),
  CONSTRAINT `FK_patients_employees` FOREIGN KEY (`Doctor ID`) REFERENCES `employees` (`DoctorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table medical.patients: ~6 rows (approximately)
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
REPLACE INTO `patients` (`PatientID`, `Last Name`, `First Name`, `SSN`, `Gender`, `Phone`, `Email`, `Password`, `Date of Birth`, `Doctor ID`, `Doctor First Name`, `Doctor Last Name`, `PatientNotes`) VALUES
	('13496', 'House', 'Gregory', '321-45-9872', 'Male', '456-687-5164', 'PuzzleDoc@gmail.com', 'Int3rest1ing!', '1959-6-11', '25886', 'Ivo', 'Robotnik', ''),
	('21458', 'Hudson', 'Regina', '123-45-6789', 'Female', '984-568-5246', 'Rhudson@outlook.com', 'R3dC@s3!', '2002-1-28', '76467', 'Lilliana', 'Alford', ''),
	('34167', 'Fair', 'Zack', '435-45-9870', 'Male', '412-549-5485', 'Zfair@Shinra.com', 'Cl0udStr1f#', '1997-1-31', '12587', 'Isla', 'Hart', ''),
	('46238', 'Mario', 'Luigi', '333-45-4518', 'Male', '919-245-6415', 'Lmario@MushroomK.com', 'B3stBr0!', '1983-3-14', '25886', 'Ivo', 'Robotnik', ''),
	('56248', 'Davidson', 'Winston', '111-12-7878', 'Male', '910-547-6416', 'Wdavidson@icloud.com', 'Sherl0ck#2', '1999-5-28', '12587', 'Isla', 'Hart', ''),
	('98423', 'Savage', 'Sky', '246-14-2316', 'Female', '910-546-8756', 'Ssavage@yahoo.com', 'Blu2sky#2', '1990-8-25', '54796', 'Gregory', 'House', '');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
