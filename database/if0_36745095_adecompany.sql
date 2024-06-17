-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql305.infinityfree.com
-- Generation Time: Jun 17, 2024 at 11:40 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_36745095_adecompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`, `password`) VALUES
(1, 'admin', 'fa6a6bd136dec26a1dd5e326b7e43254', 'adehasbullah00@gmail.com', 1, '2024-01-09 18:30:00', '2024-06-17 12:38:16', 'ade123'),
(5, 'subadmin1', '88163d52393f6a81518fb6432555e56a', 'subadmin00@gmail.com', 0, '2024-06-17 12:39:42', '2024-06-17 12:39:58', 'sub2123'),
(6, 'subadmin2', 'ead0a46481729c6fed56f42114d7ebc5', 'subadmin200@gmail.com', 0, '2024-06-17 12:40:42', '2024-06-17 12:40:54', 'sub3123');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Action', 'Film yang menyuguhkan banyak aksi pertarungan ', '2024-01-11 18:30:00', '2024-06-17 11:23:25', 1),
(5, 'Horror', 'Film yang menegangkan dan juga menakutkan', '2024-01-11 18:30:00', '2024-06-17 11:22:52', 1),
(6, 'Thriller', 'Film yang mengerikan dengan banyaknya adegan pembunuhan dan pembantaian', '2024-01-11 18:30:00', '2024-06-17 11:24:27', 1),
(7, 'Kids', 'Film khusus anak-anak', '2024-01-11 18:30:00', '2024-06-17 11:25:04', 1),
(8, 'Magic', 'Film dengan efek sihir', '2024-01-11 18:30:00', '2024-06-17 11:26:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, 12, 'Anonymous', 'anonymous1@gmail.com', 'keren film nya', '2024-06-17 12:43:43', 0),
(5, 15, 'anonymous2', 'anonymous2@gmail.com', 'bagus banget film nya', '2024-06-17 12:44:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Ade Company', '<p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Welcome to Ade Company, your premier destination for the latest news and insights from around the globe.</span></font></p><p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">At Ade Company, we prioritize delivering accurate and timely information in a world where every moment counts. Our dedicated team of journalists and editors is committed to bringing you the most compelling stories from diverse sources, ensuring you stay well-informed about the topics that matter to you.</span></font></p><p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">From politics and sports to entertainment, technology, and business, Ade Company covers it all. Our intuitive interface makes it easy for you to access breaking news, delve into detailed articles, and gain fresh perspectives on the issues shaping our world.</span></font></p><p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">More than just a news platform, Ade Company is a vibrant community of inquisitive minds and active citizens. We believe in the transformative power of journalism to drive change and promote understanding. Our platform is dedicated to providing a space where voices from all backgrounds can be heard and ideas can flourish.</span></font></p><p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Join us in our mission to enlighten, inspire, and empower. At Ade Company, we believe that informed individuals can make a significant impact. Together, let\'s shape a better future.</span></font></p>', '2024-01-14 18:30:00', '2024-06-17 07:04:21'),
(2, 'contactus', 'Contact Details', '<p><b><font face=\"Courier New\">Address :&nbsp; Malang, Indonesia</font></b><br></p><p><font face=\"Courier New\"><b>Phone Number : </b>+62 81234931275</font></p><p><b><font face=\"Courier New\">Email -id : adehasbullah00@gmail.com</font></b></p>', '2024-01-15 18:30:00', '2024-06-17 07:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(11) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'The Big 4', 3, 4, '<p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">The Big 4 (2022) memang pantas disebut sebagai film Indonesia paling sukses di tahun 2022. Tidak ditayangkan di bioskop, film garapan Timo Tjahjanto ini sukses besar secara global.</p><p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">Film original Netflix Indonesia ini berhasil jadi film kedua non-Bahasa Inggris tersukses di Netflix. Aksi luar biasa dari Abimana Aryasatya, Putri Marino, Lutesha, Arie Kriting dan Kristo Immanuel memang tidak main-main.</p><p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">Filmnya sendiri mengisahkan seorang polisi muda bernama Dina yang baru tahu bahwa ayahnya memiliki empat anak asuh. Bedanya, empat orang ini berprofesi sebagai pembunuh bayaran.</p><p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">Namun polisi dan penjahat ini malah bekerjasama untuk mencari tahu pembunuh ayah mereka. Dina bersama Topan, Jenggo, Alpha dan Pelor mati-matian melawan sosok yang membunuh sang ayah.</p>', '2024-01-15 18:30:00', '2024-06-17 11:58:23', 1, 'The-Big-4', 'b2a8dde548d00c0f8a8043be197dc131.png', 24, 'admin', 'admin'),
(10, 'Guardians of the Galaxy Vol. 3 (2023)', 3, 8, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: &quot;DM Sans&quot;, ui-sans-serif, system-ui, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; letter-spacing: normal;\"><em style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">Guardians of the Galaxy Vol. #</em>&nbsp;adalah salah satu film&nbsp;<em style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">action</em>&nbsp;terbaik di tahun 2023 ini. Film ini memulai kisahnya dengan sebuah serangan mendebarkan di markas baru Guardians of the Galaxy, ketika mereka diserang oleh Adam, seorang prajurit Sovereign yang diciptakan oleh High Priestess Ayesha.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: &quot;DM Sans&quot;, ui-sans-serif, system-ui, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; letter-spacing: normal;\">Adam ingin menghancurkan Guardians, tetapi situasi semakin rumit ketika Rocket yang terluka parah mengaktifkan sebuah&nbsp;<em style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">kill switch</em>&nbsp;yang tertanam dalam dirinya oleh Orgocorp, perusahaan yang dipimpin oleh ilmuwan gila, High Evolutionary. Untuk menyelamatkan Rocket, Guardians harus mencari kode&nbsp;<em style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">override</em>&nbsp;untuk&nbsp;<em style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">kill switch</em>&nbsp;tersebut, yang mengarah pada perjalanan epik mereka ke Counter-Earth.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: &quot;DM Sans&quot;, ui-sans-serif, system-ui, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; letter-spacing: normal;\">Dengan karakter-karakter yang kompleks dan cerita yang mendalam,&nbsp;<em style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">Guardians of the Galaxy Vol. 3</em>&nbsp;adalah film action terbaik yang tak hanya seru dan menarik, tetapi juga menghadirkan momen-momen penuh emosi yang akan membuat penonton terpesona. Jadi, jangan lewatkan kesempatan untuk menyaksikan petualangan epik para Guardians ini di layar besar!</p></h1>', '2024-01-16 18:30:00', '2024-06-17 12:00:36', 1, 'Guardians-of-the-Galaxy-Vol.-3-(2023)', '3a00f2cca32de926d035aed2273d7328jpeg', 1, 'admin', 'admin'),
(11, 'Pengabdi Setan 2', 5, 3, '<p style=\"margin-bottom: 1rem; color: rgb(20, 23, 41); font-family: Inter, sans-serif; font-size: 16px;\">Film Pengabdi Setan pertama ditutup dengan keluarga Suwono yang kabur dari rumah berhantu setelah hampir dicelakai oleh hantu yang menyerupai ibu mereka. Mereka sekeluarga pindah dari satu rusun ke rusun yang lain. Sampai akhirnya, mereka menetap di sebuah rusun kumuh di utara Jakarta. Nyatanya, teror justru lebih mengerikan di sana!</p><p style=\"margin-bottom: 1rem; color: rgb(20, 23, 41); font-family: Inter, sans-serif; font-size: 16px;\">Semua berawal dari sebuah kecelakaan lift yang merenggut belasan penghuni rusun. Mereka meninggal secara mengenaskan. Malangnya, mereka meninggal ketika badai tengah terjadi dan membuat bagian bawah rusun tergenang banjir yang cukup tinggi. Tak mungkin dikuburkan, jenazah-jenazah itu disemayamkan di masing-masing kamar.<br></p><p style=\"margin-bottom: 1rem; color: rgb(20, 23, 41); font-family: Inter, sans-serif; font-size: 16px;\">Bondi ternyata mengetahui rusun yang dia dan keluarganya tempati adalah salah satu tempat pemujaan sekte pengabdi setan yang dilangsungkan dalam rentang waktu tertentu. Hari itu adalah hari saat pemujaan akan dilangsungkan kembali</p><p style=\"margin-bottom: 1rem; color: rgb(20, 23, 41); font-family: Inter, sans-serif; font-size: 16px;\">Kecelakaan lift yang merenggut nyawa belasan orang tersebut ada kaitannya dengan ritual sekte yang akan segera dilangsungkan. Filmnya jadi semakin tegang lantaran jenazah korban kecelakaan yang telah dikafani bangkit dan menyatroni setiap karakter.</p><p style=\"margin-bottom: 1rem; color: rgb(20, 23, 41); font-family: Inter, sans-serif; font-size: 16px;\">Belum lagi sosok ibu yang kembali muncul dan meneror! Bagaimana caranya Rini, Toni, Bondi, serta bapak dapat lolos dari ritual sekte jahanam ini? Kamu bisa temukan jawabannya saat nonton&nbsp;<i>Pengabdi Setan 2: Communion</i>&nbsp;di bioskop kesayangan kamu.</p>', '2024-01-16 18:30:00', '2024-06-17 12:04:21', 1, 'Pengabdi-Setan-2', '7aefa545ce1280693b4f73966ac3d120.jpg', 34, 'admin', 'admin'),
(12, 'Marlina Si Pembunuh Empat Babak', 6, 5, '<p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">Marlina Si Pembunuh Empat Babak (2017) adalah film&nbsp;<em style=\"box-sizing: inherit;\">thriller&nbsp;</em>Indonesia yang disutradarai oleh Mouly Surya dan diproduksi oleh Kaninga Pictures. Diperankan oleh Marsha Timothy, film ini bercerita tentang Marlina, seorang janda dari Sumba yang membunuh sekelompok perampok yang mencoba merampok dan memperkosanya.</p><p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">Kenapa disebut empat babak? Karena film ini dibagi menjadi empat bagian, yaitu Perampokan, Perjalanan, Pengakuan, dan Kelahiran. Bergenre&nbsp;<em style=\"box-sizing: inherit;\">thriller</em>, film ini mengambil latar belakang budaya dan pemandangan Sumba.</p><p style=\"box-sizing: inherit; margin-block: 0px 30px; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\">Film ini mendapat banyak pujian dari kritikus dan penonton, serta meraih berbagai penghargaan di dalam dan luar negeri dan jadi perwakilan Indonesia untuk Oscar.</p>', '2024-01-17 18:30:00', '2024-06-17 12:43:43', 1, 'Marlina-Si-Pembunuh-Empat-Babak', '7c444f55aae72af9057687c4e99655b4.png', 24, 'admin', 'admin'),
(13, 'A Quiet Place', 6, 10, '<p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\">Jika kalian memang sedang mencari rekomendasi film thriller yang membuat tegang selama penayangan,&nbsp;<i>A QUIET PLACE</i>&nbsp;merupakan jawabannya. Kalian seolah bisa merasakan setiap kejadian yang dialami oleh para tokohnya. Intinya, film ini berkisah tentang monster yang akan menyerang manusia saat mengeluarkan suara.</p><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\">Sudah bisa membayangkan bagaimana kerasnya kalian untuk menahan napas saat menonton film garapan John Krasinski ini? sekuel film ini juga sudah dirilis pada tahun 2020 silam lho, KLovers!</p>', '2024-01-18 18:30:00', '2024-06-17 12:15:34', 1, 'A-Quiet-Place', '5782039119c677090e3e77975f220c59.jpg', 7, 'admin', 'admin'),
(14, 'Meraih Mimpi', 7, 6, '<p style=\"box-sizing: inherit; margin-block: 0px 30px;\">Awalnya dari sebuah novel berjudul sama karya penulis Myanmar, Minhong Fo yang pertama kali diterbitkan 1975 dan sangat populer di Singapura. Film Meraih Mimpi&nbsp; diproduksi di Indonesia oleh studio animasi bernama Infinite Frameworks yang berbasis di Batam.</p><p style=\"box-sizing: inherit; margin-block: 0px 30px;\">Ceritanya tentang Dana, gadis yang tinggal di desa kecil di Batam. Desanya dikuasai oleh tuan tanah yang kejam. Penduduk desa nggak sadar kalau Dana ingin mengusir mereka karena dia ingin membangun kota dan perhotelan seperti Las Vegas di sana.</p><p><div class=\"code-block code-block-4\" style=\"box-sizing: inherit; margin: 30px 0px; text-align: center;\"><div class=\"ai-fallback-adsense\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\"></div><div data-code=\"PCEtLSBNdWx0aWJhbm5lcjQgLS0+CjxkaXYgaWQ9J2Rpdi1ncHQtYWQtbXVsdGliYW5uZXI0Jz4KICA8c2NyaXB0PgogICAgZ29vZ2xldGFnLmNtZC5wdXNoKGZ1bmN0aW9uKCkgeyBnb29nbGV0YWcuZGlzcGxheSgnZGl2LWdwdC1hZC1tdWx0aWJhbm5lcjQnKTsgfSk7CiAgPC9zY3JpcHQ+CjwvZGl2Pgo8IS0tIE11bHRpYmFubmVyNCAtLT4=\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\"></div><div id=\"div-gpt-ad-multibanner4\" data-google-query-id=\"CL7Bp_fO4oYDFXn2cwEdNz8HHQ\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); font-family: Roboto; font-size: 18px;\"></div></div></p><p style=\"box-sizing: inherit; margin-block: 0px 30px;\">Dana dan adiknya terjun ke dalam perjuangan untuk menyelamatkan desa mereka. Pada waktu yang sama, Dana merasa sedih karena dipaksa menuruti tradisi patriarkis kampungnya dengan dijodohkan oleh Ayahnya. Dalam perjuangannya Dana dibantu oleh banyak binatang lucu yang bisa berbicara.</p>', '2024-06-17 12:17:47', NULL, 1, 'Meraih-Mimpi', 'ab025b2ccafde3e4b1a499b6f6eec804.png', NULL, 'admin', NULL),
(15, 'FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE', 8, 7, '<p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\"><i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>menjadi rekomendasi film fantasi sihir terbaru yang dirilis pada 2022. Selain jadi film terbaru bergenre fantasi, ternyata film&nbsp;<i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>merupakan salah satu sekuel dari film&nbsp;<i>FANTASTIC BEASTS&nbsp;</i>sebelumnya.</p><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\">Ya, film&nbsp;<i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>mengambil latar di masa sebelum film&nbsp;<i>HARRY POTTER.&nbsp;</i>Di mana pada film terbaru berjudul&nbsp;<i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>bakalan berkisah mengenai tokoh Dumbledore yang merupakan salah satu karakter dari film&nbsp;<i>HARRY POTTER.</i></p><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; color: rgb(51, 51, 51); line-height: 1.8em;\">Sementara itu sinopsis film&nbsp;<i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>yakni pertarungan antara Albus Dumbledore dan Gellert Grindelwald yang berubah jadi jahat. Dalam film&nbsp;<i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>tersebut Dumbledore akan dibantu oleh Newt Sacmander untuk menyelesaikan misinya. Beragam rahasia dari Albus Dumbledore ini juga akan terungkap dalam film&nbsp;<i>FANTASTIC BEASTS: THE SECRETS OF DUMBLEDORE&nbsp;</i>yang dirilis pada 8 April 2022.</p>', '2024-06-17 12:22:07', '2024-06-17 12:44:25', 1, 'FANTASTIC-BEASTS:-THE-SECRETS-OF-DUMBLEDORE', 'd61b4ffca76517763224b37d18aacdda.jpg', 2, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'nasional', 'Film horor dari dalam negeri', '2024-01-14 18:30:00', '2024-06-17 11:49:06', 1),
(4, 3, 'Nasional', 'film action dalam negeri\r\n', '2024-01-14 18:30:00', '2024-06-17 11:49:54', 1),
(5, 6, 'Nasional', 'film thriller dari dalam negeri', '2024-01-14 18:30:00', '2024-06-17 11:50:33', 1),
(6, 7, 'nasional', 'film untuk anak\" dari dalam negeri', '2024-01-14 18:30:00', '2024-06-17 11:51:26', 1),
(7, 8, 'Internasional', 'film berefek sihir dari luar negeri', '2024-01-14 18:30:00', '2024-06-17 12:21:13', 1),
(8, 3, 'internasional', 'film aksi dari luar negeri', '2024-01-14 18:30:00', '2024-06-17 11:52:49', 1),
(9, 5, 'internasional', 'film horor dari luar negeri', '2024-01-14 18:30:00', '2024-06-17 11:53:16', 1),
(10, 6, 'Internasional', 'film thriller dari luar negeri', '2024-01-14 18:30:00', '2024-06-17 11:53:46', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `AdminUserName` (`AdminUserName`) USING BTREE;

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `postcatid` (`CategoryId`) USING BTREE,
  ADD KEY `postsucatid` (`SubCategoryId`) USING BTREE,
  ADD KEY `subadmin` (`postedBy`) USING BTREE;

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`) USING BTREE,
  ADD KEY `catid` (`CategoryId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`);

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `tblposts_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`),
  ADD CONSTRAINT `tblposts_ibfk_2` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`),
  ADD CONSTRAINT `tblposts_ibfk_3` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`);

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `tblsubcategory_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
