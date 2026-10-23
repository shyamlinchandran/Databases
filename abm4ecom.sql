-- --------------------------------------------------------
-- Host:                         65.20.69.111
-- Server version:               10.6.22-MariaDB-0ubuntu0.22.04.1 - Ubuntu 22.04
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table abm4ecom.Brands
CREATE TABLE IF NOT EXISTS `Brands` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `Description` longtext DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `TallyID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Brands_TallyID` (`TallyID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Brands: ~6 rows (approximately)
INSERT INTO `Brands` (`Id`, `Name`, `Description`, `CreatedDate`, `UpdatedDate`, `TallyID`) VALUES
	(1, 'E-COMMERCE', NULL, '2023-03-29 00:00:00.000000', '2023-05-28 00:00:00.000000', '1'),
	(2, 'Stock Group 2', NULL, '2023-03-29 00:00:00.000000', '2023-03-29 00:00:00.000000', '2'),
	(3, 'Stk Grp 3', NULL, '2023-03-29 00:00:00.000000', '2023-03-29 00:00:00.000000', '3'),
	(8, 'E Com Grp1', NULL, '2023-03-29 00:00:00.000000', '2023-03-29 00:00:00.000000', '4'),
	(9, 'E Com Grp 2', NULL, '2023-03-29 00:00:00.000000', '2023-03-29 00:00:00.000000', '5'),
	(10, 'E-COMMERCE', NULL, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '0');

-- Dumping structure for table abm4ecom.Categories
CREATE TABLE IF NOT EXISTS `Categories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Image` longtext DEFAULT NULL,
  `Code` longtext NOT NULL,
  `IsHome` tinyint(1) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `TallyID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Categories_TallyID` (`TallyID`),
  KEY `IX_Categories_CategoryId` (`CategoryId`),
  CONSTRAINT `FK_Categories_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Categories: ~75 rows (approximately)
INSERT INTO `Categories` (`Id`, `Name`, `CategoryId`, `Image`, `Code`, `IsHome`, `CreatedDate`, `UpdatedDate`, `TallyID`) VALUES
	(1, 'C3', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-03-29 00:00:00.000000', '0'),
	(13, '3M PRODUCTS', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-05-27 00:00:00.000000', '1'),
	(14, 'ABM4 DISPOSABLES', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-05-27 00:00:00.000000', '2'),
	(15, 'ADENTA', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-05-27 00:00:00.000000', '3'),
	(16, 'AIDITE', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-05-27 00:00:00.000000', '4'),
	(24, 'ARCHWIRES', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-05-27 00:00:00.000000', '5'),
	(25, 'BIOHORIZON IMPLANT', NULL, NULL, '', 0, '2023-03-29 00:00:00.000000', '2023-05-27 00:00:00.000000', '6'),
	(26, 'Bio Meterials Korea', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '7'),
	(27, 'BURS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '8'),
	(28, 'CERKAMED', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '9'),
	(29, 'CORICAMA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '10'),
	(30, 'DENDIA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '11'),
	(31, 'DENTAL EQUPMENTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '12'),
	(32, 'Dental Product', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '13'),
	(33, 'DENTSPLY', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '14'),
	(34, 'DIGIMED', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '15'),
	(35, 'Disposable', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '16'),
	(36, 'DMP PRODUCTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '17'),
	(37, 'Eco Touch', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '18'),
	(38, 'E DENTAL', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '19'),
	(39, 'EURONDA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '20'),
	(40, 'F&A', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '21'),
	(41, 'FURNITURES', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '22'),
	(42, 'GALBIATI DENTAL CHAIR', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '23'),
	(43, 'GARRISON', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '24'),
	(44, 'GDC', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '25'),
	(45, 'GENERAL', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '26'),
	(46, 'GENTILIN', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '27'),
	(47, 'G&H', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '28'),
	(48, 'GRANITES', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '29'),
	(49, 'GUTTA PERCHA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '30'),
	(50, 'HEADQUARTERS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '31'),
	(51, 'HERO FILES', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '32'),
	(52, 'IMPLA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '33'),
	(53, 'INDIAN PRODUCTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '34'),
	(54, 'KEROX ZIRCONIA BLANKS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '35'),
	(55, 'K FILES', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '36'),
	(56, 'KIDS-E-DENTAL', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '37'),
	(57, 'LAB PRODUCT', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '38'),
	(58, 'LAMBDA SPA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '39'),
	(59, 'LAMINATED SHEET', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '40'),
	(60, 'MANI PRODUCTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '41'),
	(61, 'MCTBIO STARJECT', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '42'),
	(62, 'MDK', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '43'),
	(63, 'MEDEX DENTAL INSTRUMENTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '44'),
	(64, 'MEDICAL CONSUMABLES', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '45'),
	(65, 'MEDICAL EQUPMENTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '46'),
	(66, 'Medical Infusion', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '47'),
	(67, 'MEDICAL LAB EQUIPMENTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '48'),
	(68, 'Medical  Product', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '49'),
	(69, 'MEDICLUS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '50'),
	(70, 'MEDISANA GERMANY', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '51'),
	(71, 'MEDIT KOREA', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '52'),
	(72, 'MEDPARK', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '53'),
	(73, 'METABIOMED', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '54'),
	(74, 'NARANG', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '55'),
	(75, 'OPTHELMIC SURGICAL INSTRUMENTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '56'),
	(76, 'ORION', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '57'),
	(77, 'PAPER POINTS', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '58'),
	(78, 'PEARL DENT', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '59'),
	(79, 'PIRO ZIRC', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '60'),
	(80, 'PRECISION DENTAL INSTRUMENT', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '61'),
	(81, 'R&S', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '62'),
	(82, 'SAESHIN', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '63'),
	(83, 'SAREMCO', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '64'),
	(84, 'SHINE TECH', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '65'),
	(85, 'STATIONARY', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '66'),
	(86, 'TEHNODENT', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '67'),
	(87, 'TILES', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '68'),
	(88, 'TOR VM', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '69'),
	(89, 'TURKISH', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '70'),
	(90, 'VICTOR', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '71'),
	(91, 'VIJAI DENTAL', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '72'),
	(92, 'VINJOH', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '73'),
	(93, 'YIPAK', NULL, NULL, '', 0, '2023-05-27 00:00:00.000000', '2023-05-27 00:00:00.000000', '74');

-- Dumping structure for table abm4ecom.CategoryImages
CREATE TABLE IF NOT EXISTS `CategoryImages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` longtext NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_CategoryImages_CategoryId` (`CategoryId`),
  CONSTRAINT `FK_CategoryImages_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.CategoryImages: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Contacts
CREATE TABLE IF NOT EXISTS `Contacts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Contacts: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Country
CREATE TABLE IF NOT EXISTS `Country` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Country: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Coupon
CREATE TABLE IF NOT EXISTS `Coupon` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext DEFAULT NULL,
  `Code` longtext DEFAULT NULL,
  `IsPercentage` tinyint(1) DEFAULT NULL,
  `Amount` float NOT NULL,
  `MinAmount` float NOT NULL,
  `Description` longtext DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Coupon: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.CustomerAddress
CREATE TABLE IF NOT EXISTS `CustomerAddress` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Street` longtext NOT NULL,
  `Street2` longtext DEFAULT NULL,
  `BuildingNumber` varchar(100) DEFAULT NULL,
  `FlatNumber` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `ConatctPerson` longtext NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `ZoneId` int(11) NOT NULL DEFAULT 0,
  `CountyId` int(11) NOT NULL DEFAULT 0,
  `CustomerId` int(11) NOT NULL DEFAULT 0,
  `Email` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_CustomerAddress_ZoneId` (`ZoneId`),
  KEY `IX_CustomerAddress_CountyId` (`CountyId`),
  KEY `IX_CustomerAddress_CustomerId` (`CustomerId`),
  CONSTRAINT `FK_CustomerAddress_Country_CountyId` FOREIGN KEY (`CountyId`) REFERENCES `Country` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CustomerAddress_Customers_CustomerId` FOREIGN KEY (`CustomerId`) REFERENCES `Customers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CustomerAddress_Zone_ZoneId` FOREIGN KEY (`ZoneId`) REFERENCES `Zone` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.CustomerAddress: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Customers
CREATE TABLE IF NOT EXISTS `Customers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `Email` longtext NOT NULL,
  `Salt` longblob DEFAULT NULL,
  `Password` longtext NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Customers: ~2 rows (approximately)
INSERT INTO `Customers` (`Id`, `Name`, `Email`, `Salt`, `Password`, `Phone`, `CreatedDate`, `UpdatedDate`) VALUES
	(1, 'Test', 'test@gmail.com', NULL, '', '1234567890', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
	(2, 'ABC', 'abc@gmail.com', NULL, '', '222211111', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
	(3, 'jijodileep', 'jijodileep@gmail.com', _binary 0x86a041411035978650630671fb76688f, 'VRJ4Km9JC/+jQe0/K9vG1j8uqyJZEb45Cs4D1pA/x4c=', NULL, '2023-05-16 11:49:34.845313', '2023-05-16 11:49:34.845313');

-- Dumping structure for table abm4ecom.Features
CREATE TABLE IF NOT EXISTS `Features` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `FeatureId` int(11) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Features_FeatureId` (`FeatureId`),
  CONSTRAINT `FK_Features_Features_FeatureId` FOREIGN KEY (`FeatureId`) REFERENCES `Features` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Features: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.OrderItems
CREATE TABLE IF NOT EXISTS `OrderItems` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) NOT NULL,
  `Tax` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Discount` float NOT NULL,
  `Total` float NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `ProductId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`),
  KEY `IX_OrderItems_OrderId` (`OrderId`),
  KEY `IX_OrderItems_ProductId` (`ProductId`),
  CONSTRAINT `FK_OrderItems_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `Orders` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_OrderItems_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.OrderItems: ~2 rows (approximately)
INSERT INTO `OrderItems` (`Id`, `OrderId`, `Tax`, `Quantity`, `Price`, `Discount`, `Total`, `CreatedDate`, `UpdatedDate`, `ProductId`) VALUES
	(1, 2, 0, 2, 1200, 0, 2400, '2023-05-16 11:54:03.360313', '2023-05-16 11:54:03.360313', 33),
	(2, 3, 0, 2, 1200, 0, 2400, '2023-05-16 11:54:03.360313', '2023-05-16 11:54:03.360313', 45);

-- Dumping structure for table abm4ecom.Orders
CREATE TABLE IF NOT EXISTS `Orders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Tax` float NOT NULL,
  `DeliveryMasterCharge` float NOT NULL,
  `SubTotal` float NOT NULL,
  `GrantTotal` float NOT NULL,
  `DeliveryAddressId` int(11) DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `IsInCart` tinyint(1) NOT NULL DEFAULT 0,
  `BillingAddressId` int(11) DEFAULT NULL,
  `DeliveryCharge` float NOT NULL DEFAULT 0,
  `IsPercentageDelivery` tinyint(1) NOT NULL DEFAULT 0,
  `OrderdDate` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00.000000',
  `InvoiceNumber` varchar(50) DEFAULT NULL,
  `TalyStatus` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`),
  KEY `IX_Orders_CustomerId` (`CustomerId`),
  KEY `IX_Orders_Status` (`Status`),
  KEY `IX_Orders_DeliveryAddressId` (`DeliveryAddressId`),
  KEY `IX_Orders_BillingAddressId` (`BillingAddressId`),
  CONSTRAINT `FK_Orders_CustomerAddress_BillingAddressId` FOREIGN KEY (`BillingAddressId`) REFERENCES `CustomerAddress` (`Id`),
  CONSTRAINT `FK_Orders_CustomerAddress_DeliveryAddressId` FOREIGN KEY (`DeliveryAddressId`) REFERENCES `CustomerAddress` (`Id`),
  CONSTRAINT `FK_Orders_Customers_CustomerId` FOREIGN KEY (`CustomerId`) REFERENCES `Customers` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Orders_OrderStatuses_Status` FOREIGN KEY (`Status`) REFERENCES `OrderStatuses` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Orders: ~2 rows (approximately)
INSERT INTO `Orders` (`Id`, `CustomerId`, `Status`, `Tax`, `DeliveryMasterCharge`, `SubTotal`, `GrantTotal`, `DeliveryAddressId`, `CreatedDate`, `UpdatedDate`, `IsInCart`, `BillingAddressId`, `DeliveryCharge`, `IsPercentageDelivery`, `OrderdDate`, `InvoiceNumber`, `TalyStatus`) VALUES
	(2, 3, 1, 0, 0, 0, 2500, NULL, '2023-05-16 11:54:03.360307', '2023-05-16 11:54:03.360308', 1, NULL, 100, 0, '2023-05-16 11:54:03.360295', '100', 1),
	(3, 3, 1, 0, 0, 0, 2500, NULL, '2023-05-16 11:54:03.360307', '2023-05-16 11:54:03.360308', 1, NULL, 100, 0, '2023-05-16 11:54:03.360295', '101', 1);

-- Dumping structure for table abm4ecom.OrderStatuses
CREATE TABLE IF NOT EXISTS `OrderStatuses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `IsHidden` tinyint(1) DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.OrderStatuses: ~0 rows (approximately)
INSERT INTO `OrderStatuses` (`Id`, `Name`, `Description`, `IsHidden`, `CreatedDate`, `UpdatedDate`) VALUES
	(1, 'Orderd', NULL, 0, '2023-03-16 11:17:30.000000', '2023-03-16 11:17:30.000000');

-- Dumping structure for table abm4ecom.ProductFeatures
CREATE TABLE IF NOT EXISTS `ProductFeatures` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NOT NULL,
  `FeatureId` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductFeatures_FeatureId` (`FeatureId`),
  KEY `IX_ProductFeatures_ProductId` (`ProductId`),
  CONSTRAINT `FK_ProductFeatures_Features_FeatureId` FOREIGN KEY (`FeatureId`) REFERENCES `Features` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ProductFeatures_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.ProductFeatures: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.ProductImage
CREATE TABLE IF NOT EXISTS `ProductImage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` longtext NOT NULL,
  `ProductId` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductImage_ProductId` (`ProductId`),
  CONSTRAINT `FK_ProductImage_Products_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.ProductImage: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Products
CREATE TABLE IF NOT EXISTS `Products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `Price` float NOT NULL DEFAULT 0,
  `MRP` float NOT NULL DEFAULT 0,
  `Tax` int(11) NOT NULL DEFAULT 0,
  `Description` longtext DEFAULT NULL,
  `SKU` longtext DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `BrandId` int(11) NOT NULL DEFAULT 0,
  `CategoryId` int(11) NOT NULL DEFAULT 0,
  `Code` longtext NOT NULL,
  `IsHome` tinyint(1) NOT NULL DEFAULT 0,
  `SubCategoryId` int(11) DEFAULT NULL,
  `Image` longtext DEFAULT NULL,
  `IsImageFromCategory` tinyint(1) DEFAULT NULL,
  `TallyID` varchar(255) DEFAULT NULL,
  `ClossingStock` int(11) DEFAULT NULL,
  `OrderedStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Products_TallyID` (`TallyID`),
  KEY `IX_Products_BrandId` (`BrandId`),
  KEY `IX_Products_CategoryId` (`CategoryId`),
  KEY `IX_Products_SubCategoryId` (`SubCategoryId`),
  CONSTRAINT `FK_Products_Brands_BrandId` FOREIGN KEY (`BrandId`) REFERENCES `Brands` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Products_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Products_Categories_SubCategoryId` FOREIGN KEY (`SubCategoryId`) REFERENCES `Categories` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Products: ~10 rows (approximately)
INSERT INTO `Products` (`Id`, `Name`, `Price`, `MRP`, `Tax`, `Description`, `SKU`, `CreatedDate`, `UpdatedDate`, `BrandId`, `CategoryId`, `Code`, `IsHome`, `SubCategoryId`, `Image`, `IsImageFromCategory`, `TallyID`, `ClossingStock`, `OrderedStock`) VALUES
	(15, 'BONASIL A+ Putty 400g Reguler Set', 0, 0, 0, 'BONASIL A+ Putty 400g Reguler Set', 'NOS', '2023-03-29 00:00:00.000000', '2023-05-28 00:00:00.000000', 1, 36, '', 0, NULL, NULL, NULL, '1', 0, 0),
	(29, 'STK2', 0, 0, 5, 'STK2', 'Nos', '2023-03-29 00:00:00.000000', '2023-05-22 00:00:00.000000', 3, 15, '', 0, NULL, NULL, NULL, '2', 0, 0),
	(32, 'E Com Item 1', 0, 0, 5, 'E Com Item 1', 'Nos', '2023-03-29 00:00:00.000000', '2023-05-22 00:00:00.000000', 8, 24, '', 0, NULL, NULL, NULL, '3', 0, 0),
	(33, 'E Com Item 2', 0, 0, 5, 'E Com Item 2', 'Nos', '2023-03-29 00:00:00.000000', '2023-05-22 00:00:00.000000', 9, 25, '', 0, NULL, NULL, NULL, '4', 0, 0),
	(34, 'Pen', 120, 0, 5, 'Pen', 'Nos', '2023-05-22 00:00:00.000000', '2023-05-22 00:00:00.000000', 2, 1, '', 0, NULL, NULL, NULL, '5', NULL, NULL),
	(36, 'KeyBoard', 300, 0, 5, 'KeyBoard', 'Nos', '2023-05-22 00:00:00.000000', '2023-05-22 00:00:00.000000', 9, 1, '', 0, NULL, NULL, NULL, '6', NULL, NULL),
	(39, 'Mouse', 250, 0, 5, 'Mouse', 'Nos', '2023-05-22 00:00:00.000000', '2023-05-22 00:00:00.000000', 3, 1, '', 0, NULL, NULL, NULL, '7', NULL, NULL),
	(45, 'Pendrive', 1200, 0, 5, 'Pendrive', 'Nos', '2023-05-22 00:00:00.000000', '2023-05-22 00:00:00.000000', 9, 1, '', 0, NULL, NULL, NULL, '8', NULL, NULL),
	(48, 'Watch', 0, 0, 0, 'Watch', 'Nos', '2023-05-22 00:00:00.000000', '2023-05-22 00:00:00.000000', 2, 1, '', 0, NULL, NULL, NULL, '9', NULL, NULL),
	(56, 'Bonasyil', 0, 0, 0, 'Bonasyil', 'Nos', '2023-05-29 00:00:00.000000', '2023-05-29 00:00:00.000000', 10, 1, '', 0, NULL, NULL, NULL, '10', NULL, NULL),
	(57, 'TEsss', 0, 0, 0, 'TEsss', 'Nos', '2023-05-29 00:00:00.000000', '2023-05-29 00:00:00.000000', 10, 1, 'Tetet', 0, NULL, NULL, NULL, '11', NULL, NULL);

-- Dumping structure for table abm4ecom.QuestionAnswer
CREATE TABLE IF NOT EXISTS `QuestionAnswer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(1000) NOT NULL,
  `Answer` longtext NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  `Order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.QuestionAnswer: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Quote
CREATE TABLE IF NOT EXISTS `Quote` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Quote: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Setting
CREATE TABLE IF NOT EXISTS `Setting` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Key` varchar(10) NOT NULL,
  `Value` longtext NOT NULL,
  `IsFile` tinyint(1) NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Setting: ~12 rows (approximately)
INSERT INTO `Setting` (`Id`, `Name`, `Key`, `Value`, `IsFile`, `Published`, `CreatedDate`, `UpdatedDate`) VALUES
	(1, 'Contact', 'ABM4', '<span style="color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center;">Building No.14, Office No. 27, Barwa Village, Doha, Qatar</span> ', 0, 1, '0001-01-01 00:00:00.000000', '2023-03-27 11:54:51.870305'),
	(2, 'contact', 'Contact', '<p><span style="color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center;">Phone: +974 3111 0712,</span><br style="transition-duration: 0.4s; color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center;"><span style="color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center;">+974 4436 5531</span><br></p>', 0, 0, '2023-03-27 11:54:18.237136', '2023-03-27 11:54:18.237136'),
	(3, 'Contact', 'E-MAIL', '<p><a href="mailto:info@abm4trades.qa" class="text-sky-blue-hover" style="color: rgb(35, 55, 70); background-color: rgb(255, 255, 255); transition: all 0.4s ease-in-out 0s; font-family: Montserrat, sans-serif; font-size: 15px; text-align: center;">info@abm4trades.qa</a><br></p>', 0, 0, '2023-03-27 11:55:24.179368', '2023-03-27 11:55:24.179368'),
	(4, 'Contact', 'OFFICEHR', '<p><span style="color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center;">Saturday - Thursday: 9AM - 6PM</span><br></p>', 0, 0, '2023-03-27 11:56:06.761661', '2023-03-27 11:56:06.761661'),
	(5, 'Aboutus', 'Head', '<h5 class="alt-font font-weight-600 text-extra-dark-gray w-90" style="margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: 3rem; font-size: 2.3rem; padding: 0px; letter-spacing: -0.5px; font-family: Montserrat, sans-serif; color: rgb(35, 55, 70); width: 675px; font-weight: 600 !important;">ABM4 company always focuses to provide Dental as well as Medical equipments of the highest quality</h5>', 0, 0, '2023-03-27 12:54:14.636103', '2023-03-27 12:54:14.636103'),
	(6, 'Aboutus', 'MSG', '<p class="w-100 lg-w-90" style="margin-right: 0px; margin-bottom: 25px; margin-left: 0px; width: 750px; color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px;">ABM4 has witnessed a meteoric rise in recent past and has garnished a brand name as an expeditious growing company that specializes in medical equipment\'s especially dental supplies, and that of as the number one manufacturer importer cum distributor in and around the state of Qatar for the same. Our company has turned out to be one of the biggest contributors to the health sector in Qatar and have delivered core technological support to profoundly change the trajectory of health for the human race via blending heart, science, and ingenuity.</p><p class="w-100 lg-w-90" style="margin-right: 0px; margin-bottom: 25px; margin-left: 0px; width: 750px; color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px;">In a radically changing environment, our creative R&amp;D team strives towards creating a concoction of science and technology and present-day greater visions of people combined with our own expertise in various medical departments like surgery, orthopedics, vision, dental, etc. This, in turn, has helped us design, develop and take a step forward in the field of technology to introduce implantable mechanical devices, biologic delivery devices, and powered and advanced energy surgical instruments. Our deliverables are a physician and patient-centric products and solutions that in turn continually elevates the standard of care, helping patients recover faster and live more vibrantly. It is necessary to mention here our products are all assisted via various universities and large medical centers which allows us to unceasingly conduct research to keep the title of the most state-of-the-art company in the medical industry.</p><p class="w-100 lg-w-90" style="margin-right: 0px; margin-bottom: 25px; margin-left: 0px; width: 750px; color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px;">It is noteworthy to mention that ABM4 holds supreme standing in the International Dental market as a brand name when it comes to the distribution of state-of-the-art and affordable dental equipment\'s partially also owning to our core team which comprises of mainly dental surgeons.</p><p class="w-100 lg-w-90" style="margin-right: 0px; margin-bottom: 25px; margin-left: 0px; width: 750px; color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px;">All our products undergo a detailed quality control check that makes our company unique in the highly competitive modern-day arena. We never fail to assemble the highest standards when it comes to the production and distribution of within your means medical materials and products needed for any kind of medical procedure.</p>', 0, 0, '2023-03-27 12:54:36.049212', '2023-03-27 12:54:36.049212'),
	(7, 'Aboutus', 'Vision', '<p><span style="color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center; background-color: rgb(247, 247, 247);">WE CERTIFY CLIENT FULFILLMENT WITH HIGH-QUALITY PRODUCTS, UNFAILING SERVICE, AND AUTHENTIC TRADE. We stand as a role model in this industry by offering quality care and service to our customers, in the medical fraternity, parallelly leaving no stones unturned in our research of elixir to restore health and extend life.</span><br></p>', 0, 0, '2023-03-27 12:55:21.945613', '2023-03-27 12:55:21.945613'),
	(8, 'Aboutus', 'Mission', '<p><span style="color: rgb(130, 130, 130); font-family: Montserrat, sans-serif; font-size: 15px; text-align: center; background-color: rgb(247, 247, 247);">Our mission is to strive without reserve for paramount reliability and quality in our products. To have set an unsurpassed standard of comparison and to be truly be recognized as the company that holds true to its core value of HONESTY, VERACITY, DEDICATION, INTEGRITY, AND SERVICE.</span><br></p>', 0, 0, '2023-03-27 12:56:03.253922', '2023-03-27 12:56:03.253922'),
	(9, 'Aboutus', 'AboutImage', '133243756295343050_settings_about-us.jpg', 1, 0, '0001-01-01 00:00:00.000000', '2023-03-27 12:57:09.537368'),
	(10, 'Home', 'AboutHead', 'We provide Dental as well as Medical equipments of the&nbsp;<span class="text-red text-decoration-line-bottom-thick font-weight-600" style="color: rgb(226, 33, 28); position: relative; white-space: nowrap; font-weight: 600 !important;">highest quality</span>', 0, 0, '0001-01-01 00:00:00.000000', '2023-03-27 13:19:13.840457'),
	(11, 'Home', 'About', 'ABM4 has witnessed a meteoric rise in recent past and has garnished a brand name as an expeditious growing company that specializes in medical equipment\'s especially dental supplies, and that of as the number one manufacturer importer cum distributor in and around the state of Qatar for the same. Our company has turned out to be one of the biggest contributors to the health sector in Qatar and have delivered core technological support to profoundly change the trajectory of health for the human race via blending heart, science, and ingenuity.', 0, 0, '2023-03-27 13:03:07.974857', '2023-03-27 13:03:07.974857'),
	(12, 'Home', 'AboutImage', '133243760231163483_settings_about.jpg', 1, 0, '2023-03-27 13:03:43.118609', '2023-03-27 13:03:43.118609');

-- Dumping structure for table abm4ecom.Sliders
CREATE TABLE IF NOT EXISTS `Sliders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Image` varchar(100) NOT NULL,
  `Order` int(11) NOT NULL,
  `Published` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Sliders: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Users
CREATE TABLE IF NOT EXISTS `Users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `Password` longtext NOT NULL,
  `Email` longtext NOT NULL,
  `UserTypeId` int(11) NOT NULL,
  `Address` longtext NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `JoinDate` datetime(6) DEFAULT NULL,
  `LastLoggedIn` datetime(6) DEFAULT NULL,
  `LoginAttempt` datetime(6) DEFAULT NULL,
  `NoLoginAttempt` int(11) NOT NULL,
  `IsLocked` int(11) NOT NULL,
  `Salt` longblob DEFAULT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Users_UserTypeId` (`UserTypeId`),
  CONSTRAINT `FK_Users_UserTypes_UserTypeId` FOREIGN KEY (`UserTypeId`) REFERENCES `UserTypes` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Users: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.UserTypes
CREATE TABLE IF NOT EXISTS `UserTypes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `IsHidden` int(11) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.UserTypes: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.Zone
CREATE TABLE IF NOT EXISTS `Zone` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext NOT NULL,
  `DeliveryMinAmount` int(11) NOT NULL,
  `DeliveryCharge` int(11) NOT NULL,
  `IsPercentage` tinyint(1) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  `UpdatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.Zone: ~0 rows (approximately)

-- Dumping structure for table abm4ecom.__EFMigrationsHistory
CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table abm4ecom.__EFMigrationsHistory: ~22 rows (approximately)
INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
	('20230219181455_First', '7.0.3'),
	('20230223100246_seconds', '7.0.3'),
	('20230226053542_UserType', '7.0.3'),
	('20230226075359_UserTyper', '7.0.3'),
	('20230227114219_update', '7.0.3'),
	('20230305100451_Images', '7.0.3'),
	('20230306032246_Pimg', '7.0.3'),
	('20230309075802_Brand', '7.0.3'),
	('20230315135953_isInCart', '7.0.4'),
	('20230316054936_ProductId', '7.0.4'),
	('20230316055328_floCh', '7.0.4'),
	('20230317095259_Zones', '7.0.4'),
	('20230317102207_ZonesId', '7.0.4'),
	('20230323065726_Country', '7.0.4'),
	('20230323110800_Countdf', '7.0.4'),
	('20230323173350_dateall', '7.0.4'),
	('20230324123542_Quote', '7.0.4'),
	('20230325070748_TallyID', '7.0.4'),
	('20230419105207_Updatetally', '7.0.4'),
	('20230419105514_UpdateStock', '7.0.4'),
	('20230419105636_UpdateStockType', '7.0.4'),
	('20230420050820_OrderdStock', '7.0.4');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
