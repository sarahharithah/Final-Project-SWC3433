-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2024 at 11:47 AM
-- Server version: 8.0.40
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin Sarah', 'admin', 60149993312, 'sarahharithah852@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-01 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `AptNumber` int DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext,
  `BookingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(12, 3, 934489252, '2024-11-18', '17:53:00', 'Booking for all facial makeover', '2024-11-18 15:49:42', 'Received', 'Selected', '2024-11-19 06:51:34'),
(14, 6, 692307908, '2024-11-19', '14:10:00', 'Booking for deluxe manicure and pedicure', '2024-11-19 06:10:10', 'Please come during the time promised!', 'Selected', '2024-11-19 21:06:46'),
(15, 12, 870263322, '2024-11-20', '18:15:00', 'Booking for a fruit facial and scrub spa', '2024-11-19 19:16:47', 'Selected', 'Selected', '2024-11-21 06:30:44'),
(16, 13, 428171723, '2024-11-21', '17:30:00', 'Book for makeup appointment', '2024-11-21 06:28:15', NULL, NULL, NULL),
(17, 2, 966382322, '2024-11-22', '17:15:00', 'Spa purposes', '2024-11-22 09:14:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int NOT NULL,
  `FirstName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LastName` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Phone` bigint DEFAULT NULL,
  `Email` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Message` mediumtext COLLATE utf8mb4_general_ci,
  `EnquiryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Nur Aina', 'Binti Zuriami', 116568325, 'ainazuriamii@gmail.com', 'Can I request to have a booking schedules before the shop open?', '2024-11-18 18:55:04', 1),
(2, 'Puteri Nur Athirah Farzana', 'Binti Kamaruzaman', 114272756, 'athirahhensem@gmail.com', 'Can you makeup me for my upcoming convo?', '2024-11-19 07:26:34', 1),
(3, 'Wan Nur Khairina', 'Wan Muda', 129986765, 'khairinaawan@gmail.com', 'For my upcoming appointment, will I receive a discount?', '2024-11-19 21:28:17', NULL),
(4, 'Nooradilah', 'Sofia', 124563789, 'adilahsofia@gmail.com', 'Can I book for makeup appointment?', '2024-11-21 06:27:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int NOT NULL,
  `Userid` int DEFAULT NULL,
  `ServiceId` int DEFAULT NULL,
  `BillingId` int DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 1, 1, 193862954, '2024-09-05 09:34:08'),
(2, 1, 6, 193862954, '2024-09-05 09:34:08'),
(3, 3, 1, 410641562, '2024-11-18 15:52:38'),
(4, 3, 2, 410641562, '2024-11-18 15:52:38'),
(5, 3, 3, 410641562, '2024-11-18 15:52:38'),
(6, 2, 10, 279346167, '2024-11-18 15:52:58'),
(7, 6, 3, 619441949, '2024-11-19 21:41:05'),
(8, 6, 4, 619441949, '2024-11-19 21:41:05'),
(9, 6, 7, 619441949, '2024-11-19 21:41:05'),
(10, 6, 10, 619441949, '2024-11-19 21:41:05'),
(11, 6, 12, 619441949, '2024-11-19 21:41:05'),
(12, 6, 16, 619441949, '2024-11-19 21:41:05'),
(13, 8, 2, 221823557, '2024-11-21 06:31:54'),
(14, 8, 4, 221823557, '2024-11-21 06:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Salvadora Skin\'s main priority is on cleanliness and quality. Our Parlour is fully equipped with cutting-edge technology and offers high-quality services. Our staff is highly qualified and skilled, providing innovative skin, hair, and body shaping procedures that guarantee to make you completely at ease and stress-free. Aside from normal bleachings and facials, the salon offers a wide range of haircuts, bridal and film make-up, and various sorts of facials and fashion hair colorings.\r\n\r\n', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '                        46-56, Jalan 5/101C, Cheras Business Centre, 56100 Cheras, Wilayah Persekutuan Kuala Lumpur', 'salvadoraskin@gmail.com', 6039993312, NULL, '1:00 pm to 9:00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext,
  `Cost` int DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'Beauty Green Tea Sets', 'Fresh Green Tea Water 2.0 is essentially regenerated using a double squeeze procedure. The nutritious components of refreshing elegance green tea leaves are extracted to create Fresh Green Tea Water 2.0. It is 3.5 times greater loaded over the initial green tea water and offers superior skin-moisturizing properties.', 115, 'treatmentkit.png\r\n', '2024-05-09 22:37:38'),
(2, 'Fruit Facial', 'Fruit acids such as glycolic acid, alpha hydroxide acid, citric acid, phenolic acid, as well as minerals and vitamin nutrients, are present in fruit facials. These acids assist your skin exfoliate, detoxify it thoroughly, eliminate all toxins, and nourish your face. They additionally act as anti-blemish and anti-wrinkle.', 150, 'fruitfacial.jpg', '2024-05-09 22:37:38'),
(3, 'Charcoal Facial', 'Bone char, coconut shells, peat, coal, petroleum coke, olive pits, bamboo, or sawdust can all be used to make activated charcoal. In order to improve absorbability, this is done to change the way it functions within and expand the area of its surface. After going through that procedure, the charcoal you receive is extremely porous.\r\n', 180, 'charcoal.jpg', '2024-05-09 22:37:38'),
(4, 'Deluxe Manicure', 'A delightful treatment that involves a soak, moisturizing exfoliation, cuticle manipulation, filing and clipping of the nails, removal of rough skin such as pedicure, and application of a rejuvenating mask. Your nails are polished and prepared for painting after a quick massage.\r\n', 105, 'luxoriousmanicure.jpg', '2024-05-09 22:37:38'),
(5, 'Deluxe Pedicure', 'A pampering treatment that includes a relaxing soak and hydrating peeling, cuticle uses, nail trimming, clipping and filing, tough skin removal which is pedicure, and a revitalizing mask treatment. After a short massage therapy, your nails will be buffed clean and ready to paint.\r\n', 120, 'luxoriouspedicure.jpg', '2024-05-09 22:37:38'),
(6, 'Normal Manicure', 'A wonderful therapy that includes a bath and replenishing cleaning, cuticle use, nail clipping and filing, hard skin removal including pedicure, and a refreshing mask. Following a brief massage, your fingernails are manicured and all set for nail art.\r\n', 80, 'normalmanicure.jpg', '2024-05-09 22:37:38'),
(7, 'Normal Pedicure', 'An amazing massage which involves a bath and conditioning cleaning, fingernail use, nail clipping and sweeping, painful skin removal including pedicure, and a refreshing mask. ', 95, 'normalpedicure.jpg', '2024-05-09 22:37:38'),
(8, 'U-Shape Hair Cut', 'A U-shaped haircut features a curved hemline that resembles the letter \"U,\" creating soft, flowing layers. It adds dimension and movement to the hair, a versatile choice hair texture.', 65, 'uhaircuts.jpg', '2024-05-09 22:37:38'),
(9, 'Layer Haircut', 'A layered haircut involves cutting hair at different lengths to create volume, texture, and movement. It’s a versatile style suitable for all hair types, offering a fresh and dynamic look.', 70, 'layerhaircuts.jpg', '2024-05-09 22:37:38'),
(10, 'Rebonding', 'A chemical procedure called hair rebonding transforms your hair\'s organic texture and gives it a sleek, linear look. Another name for it is chemical straightening. A licensed cosmetologist usually does hair rebonding.\r\n', 270, 'rebonding.jpg', '2024-05-09 22:37:38'),
(11, 'Full Hair Coloring', 'Hair color refers to the pigmentation of hair follicles, determined by the amount and type of melanin. Choose your color! From natural shades to whatever, offering an endless possibility for personal expression.', 190, 'yunjin.jpg', '2024-05-09 22:37:38'),
(12, 'Body Spa', 'It is basically a massage spa therapy that helps reduce pain. The method including using fingertips, palm, elbow, or even feet to apply firm pressure on certain body parts or acupoint to encourage blood flow and promote healing.', 300, 'bodyspa.jpg', '2024-05-09 22:37:38'),
(16, 'Aroma Oil Massage Therapy', 'Aromatherapy is the application of essential oils to enhance one\'s well-being or health. We will rub essential oil in a proper diluted into your skin.', 200, 'aromatheraphy.jpg', '2024-05-09 22:37:38'),
(18, 'Body Scrub Spa', 'Indulge in the ultimate relaxation with our rejuvenating body scrubs. Full body scrub followed by various of choices body scrub. It affords for smoothing, flushes out unused cells from your skin.', 200, '457e4717aac7eee6a4fab9f16bc219981732000105.jpg', '2024-11-19 07:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(2, 'Wan Nur Khairina', 'Binti Wan Muda', '0129986765', 'khairinaawan@gmail.com', 'd841adbee1ed582bfd98885cb84fd2e8', '2024-11-18 09:10:17'),
(3, 'Aleeya Maisarah', 'Binti Rahmat', '0177755985', 'maicayah@gmail.com', '607fba5d2984fdb65bbc05adb2c2f551', '2024-11-18 14:34:59'),
(4, 'Shamimi Shahira', 'Mohd Zamri', '0123456789', 'mimizamri@gmail.com', 'd62ec24d065e424dd816ce7828f62584', '2024-11-18 14:53:50'),
(5, 'Nur Aina', 'Binti Zuriami', '0116568325', 'ainazuriamii@gmail.com', 'b7d517ff31bff1dc9367177f8ed39ceb', '2024-11-18 14:58:40'),
(6, 'Nik Athirah Batrisyia', 'Binti Nik Mahyudin', '0132183202', 'athirahbat@gmail.com', 'f30c0c89a28e4911976dc1c5a40d54e7', '2024-11-18 15:03:00'),
(7, 'Puteri Nur Athirah Farzana', 'Binti Kamaruzaman', '0114272756', 'athirahhensem@gmail.com', 'f843b92cce13c4f491f2411aad7ac435', '2024-11-18 15:04:47'),
(8, 'Nurhaznisa', 'Binti Reza', '0122465857', 'haznisareza@gmail.com', '054fae106d5648d8d519c1f41905e6aa', '2024-11-18 15:06:34'),
(9, 'Siti Nur Syamimi', 'Binti Yusoff', '0182119722', 'syamimimendes@gmail.com', 'a3cceba83235dc95f750108d22c14731', '2024-11-18 15:40:13'),
(10, 'Siti Nazurah', 'Binti Ahmat', '0138862184', 'nazurahh@gmail.com', '89041bdfeb96376e4a74fb6a85d683a6', '2024-11-18 15:42:27'),
(11, 'Nurfaiqah', 'Binti Husin', '0199174723', 'nurfaiiqah@gmail.com', 'f94e747ef60297cb86ce3227dad83535', '2024-11-18 15:44:23'),
(12, 'Nur Atiqca', 'Binti Razak', '0198765432', 'atiqcaca@gmail.com', 'fbd26e279d3592b7d8365261879f81c1', '2024-11-19 18:59:28'),
(13, 'Nooradilah Sofia', 'Binti Halim', '0124563789', 'adilahsofia@gmail.com', 'e39fff20b55dde517e515b00e333dfcd', '2024-11-21 06:25:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
