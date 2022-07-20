-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 20, 2022 at 10:17 PM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluearchive`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` bigint(50) NOT NULL,
  `c_author_id` bigint(11) NOT NULL,
  `c_post_id` bigint(11) NOT NULL,
  `c_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `c_edited` int(11) NOT NULL DEFAULT 0,
  `c_time_edited` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `c_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `c_author_id`, `c_post_id`, `c_content`, `c_edited`, `c_time_edited`, `c_time`) VALUES
(1647939433, 324473291918158, 1647652756, 'bnigga mode add (follow system-theme or apps version)', 1, '1646411181', 1646410503),
(1648554444, 324473291918158, 1650782427, 'v', 0, '0', 1646845852),
(1649539102, 324473291918158, 1647706495, 'segss', 0, '0', 1646066855),
(1650589931, 324473291918158, 1647652756, 'navbar fix', 0, '0', 1646410452),
(1651777258, 324473291918158, 1651285567, '👀', 0, '0', 1646361155),
(1652098800, 324473291918158, 1651285567, '😑  😐  😗  🤐  😣  😯', 0, '0', 1646361202),
(1652822627, 324473291918158, 1655492271, 'jagoan', 1, '1646411377', 1646411311),
(1653065619, 324473291918158, 1650344355, 'lolz', 0, '0', 1648219798),
(1653287830, 797383294362764, 1647526538, 'tuturu', 0, '0', 1647181708),
(1653298935, 797383294362764, 1647526538, 'tuturu', 0, '0', 1647181713),
(1653529352, 797383294362764, 1647526538, 'tuturu', 0, '0', 1647181704),
(1657868290, 324473291918158, 1651480629, 'test', 0, '0', 1648913881),
(1663904153, 324473291918158, 1665205703, 'lol 😏', 0, '0', 1657895894);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` bigint(11) NOT NULL,
  `uf_one` bigint(11) NOT NULL,
  `uf_two` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `uf_one`, `uf_two`) VALUES
(37, 324473291918158, 268053293444020),
(38, 324473291918158, 248233293851758),
(39, 248233293851758, 324473291918158),
(40, 309803294195742, 324473291918158),
(48, 797383294362764, 324473291918158),
(56, 123293296450132, 324473291918158),
(60, 324473291918158, 793383296893120),
(63, 324473291918158, 123293296450132),
(64, 324473291918158, 116303297637086),
(66, 324473291918158, 658453296594200),
(67, 380263297935350, 324473291918158),
(68, 361123297959602, 334983297917446),
(69, 334983297917446, 361123297959602),
(70, 734093297965756, 361123297959602),
(71, 734093297965756, 334983297917446),
(72, 361123297959602, 734093297965756),
(73, 100423297908558, 914503297932024),
(74, 914503297932024, 100423297908558),
(75, 334983297917446, 734093297965756),
(76, 755813297977386, 324473291918158),
(77, 324473291918158, 734093297965756),
(89, 755813297977386, 916973297975572),
(90, 16883297973480, 916973297975572),
(91, 16883297973480, 755813297977386),
(94, 324473291918158, 916973297975572),
(96, 324473291918158, 30323298304922),
(98, 324473291918158, 389033298306630),
(99, 324473291918158, 755813297977386),
(100, 855453298307614, 324473291918158),
(101, 324473291918158, 855453298307614),
(102, 755813297977386, 16883297973480),
(105, 324473291918158, 380263297935350);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(11) NOT NULL,
  `liker` bigint(11) NOT NULL,
  `post_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `m_id` bigint(11) NOT NULL,
  `message` varchar(1538) CHARACTER SET utf8mb4 NOT NULL,
  `m_from` bigint(11) NOT NULL,
  `m_to` bigint(11) NOT NULL,
  `m_time` int(11) NOT NULL,
  `m_seen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mynotepad`
--

CREATE TABLE `mynotepad` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `note_title` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `note_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `note_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `n_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `notifyType_id` bigint(11) NOT NULL,
  `notifyType` varchar(100) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `n_id`, `from_id`, `for_id`, `notifyType_id`, `notifyType`, `seen`, `time`) VALUES
(22, 2045503621, 324473291918158, 128753292119012, 1649644605, 'comment', 0, 1646060080),
(39, 2344904463, 324473291918158, 508743291944240, 1651250423, 'comment', 1, 1646479681),
(40, 2594775282, 324473291918158, 508743291944240, 1651250423, 'comment', 1, 1646479687),
(41, 2203218685, 324473291918158, 508743291944240, 1651250423, 'comment', 1, 1646479704),
(48, 1813149127, 324473291918158, 128753292119012, 324473291918158, 'follow', 0, 1646533115),
(51, 2323687004, 324473291918158, 268053293444020, 1650344355, 'comment', 0, 1646727447),
(52, 1852159589, 324473291918158, 268053293444020, 324473291918158, 'follow', 0, 1646727469),
(53, 2518036694, 324473291918158, 195233293165110, 1652357911, 'comment', 0, 1646751235),
(54, 2368720155, 324473291918158, 248233293851758, 324473291918158, 'follow', 1, 1646926268),
(55, 1824707048, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646926292),
(56, 1801098305, 248233293851758, 324473291918158, 248233293851758, 'follow', 1, 1646926784),
(57, 2342295601, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646926976),
(58, 2452323361, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646927158),
(59, 2108539249, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646927161),
(60, 2381845320, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646927164),
(61, 2349075856, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646927168),
(62, 1656275766, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646927171),
(63, 2539194985, 324473291918158, 248233293851758, 1651717901, 'comment', 1, 1646927174),
(64, 2065770041, 324473291918158, 248233293851758, 1651717901, 'comment', 0, 1646927332),
(65, 2099931084, 324473291918158, 248233293851758, 1651717901, 'comment', 0, 1646927335),
(66, 2106473698, 324473291918158, 248233293851758, 1651717901, 'comment', 0, 1646927338),
(67, 2384957366, 309803294195742, 324473291918158, 309803294195742, 'follow', 1, 1647097929),
(86, 1818882532, 797383294362764, 324473291918158, 797383294362764, 'follow', 1, 1647181675),
(91, 1776619201, 324473291918158, 221613296034530, 324473291918158, 'follow', 0, 1648017821),
(92, 2301198365, 324473291918158, 268053293444020, 1650344355, 'comment', 0, 1648219798),
(99, 2639768094, 123293296450132, 324473291918158, 123293296450132, 'follow', 1, 1648371977),
(103, 2546144389, 324473291918158, 793383296893120, 324473291918158, 'follow', 1, 1648647512),
(104, 2351441501, 324473291918158, 10163296444260, 324473291918158, 'follow', 0, 1648647520),
(106, 2496381212, 324473291918158, 123293296450132, 324473291918158, 'follow', 0, 1648915492),
(107, 2249083721, 324473291918158, 116303297637086, 324473291918158, 'follow', 0, 1648917324),
(109, 2242761160, 324473291918158, 658453296594200, 324473291918158, 'follow', 0, 1648918532),
(110, 2350645703, 380263297935350, 324473291918158, 380263297935350, 'follow', 1, 1648970304),
(111, 2288857554, 361123297959602, 334983297917446, 361123297959602, 'follow', 1, 1648979902),
(112, 1924205123, 334983297917446, 361123297959602, 334983297917446, 'follow', 1, 1648982046),
(113, 2474281726, 734093297965756, 361123297959602, 734093297965756, 'follow', 1, 1648982914),
(114, 2124769728, 734093297965756, 334983297917446, 734093297965756, 'follow', 1, 1648982918),
(115, 2323171342, 361123297959602, 734093297965756, 361123297959602, 'follow', 1, 1648985487),
(116, 1879875264, 100423297908558, 914503297932024, 100423297908558, 'follow', 1, 1649032406),
(117, 2186234867, 914503297932024, 100423297908558, 914503297932024, 'follow', 1, 1649032415),
(118, 1702041531, 334983297917446, 734093297965756, 334983297917446, 'follow', 1, 1649086399),
(119, 2209645234, 755813297977386, 324473291918158, 755813297977386, 'follow', 1, 1649121111),
(120, 2347781267, 324473291918158, 734093297965756, 324473291918158, 'follow', 1, 1649121908),
(132, 1934949908, 755813297977386, 916973297975572, 755813297977386, 'follow', 1, 1649123347),
(133, 2539583327, 16883297973480, 916973297975572, 16883297973480, 'follow', 1, 1649124685),
(134, 2539583330, 16883297973480, 755813297977386, 16883297973480, 'follow', 1, 1649124688),
(137, 2012874599, 324473291918158, 916973297975572, 324473291918158, 'follow', 1, 1649152683),
(139, 1873811248, 324473291918158, 30323298304922, 324473291918158, 'follow', 1, 1649153063),
(141, 2004498937, 324473291918158, 389033298306630, 324473291918158, 'follow', 0, 1649153866),
(142, 2163091135, 324473291918158, 755813297977386, 324473291918158, 'follow', 1, 1649153939),
(143, 2557725869, 855453298307614, 324473291918158, 855453298307614, 'follow', 1, 1649154066),
(144, 1723214469, 324473291918158, 855453298307614, 324473291918158, 'follow', 1, 1649155162),
(145, 2101178206, 755813297977386, 16883297973480, 755813297977386, 'follow', 0, 1649155466),
(148, 2386115030, 324473291918158, 380263297935350, 324473291918158, 'follow', 0, 1651336567);

-- --------------------------------------------------------

--
-- Table structure for table `r_star`
--

CREATE TABLE `r_star` (
  `id` bigint(11) NOT NULL,
  `u_id` bigint(11) NOT NULL,
  `p_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `user_saved_id` bigint(11) NOT NULL,
  `saved_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`main_id`, `id`, `post_id`, `user_saved_id`, `saved_time`) VALUES
(2, 1651305158, 1654010404, 324473291918158, 1646046160),
(3, 1648351234, 1649644605, 324473291918158, 1646062585),
(4, 1654698458, 1651285567, 324473291918158, 1646333663),
(5, 1649503233, 1647138721, 324473291918158, 1646405709),
(6, 1647438267, 1647930255, 324473291918158, 1646411715),
(7, 1655553964, 1647001260, 324473291918158, 1646508570),
(8, 1652587845, 1651291268, 324473291918158, 1646817980),
(9, 1654845574, 1647534831, 324473291918158, 1646831731),
(10, 1657083666, 1656478749, 324473291918158, 1647102960),
(11, 1650202757, 1650344355, 324473291918158, 1648018599);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `main_id` int(11) NOT NULL,
  `id` bigint(50) NOT NULL,
  `Fullname` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Username` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Email` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Password` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `followers` int(100) NOT NULL DEFAULT 0,
  `Userphoto` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `user_cover_photo` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `school` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `work` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `work0` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `country` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthday` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `website` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bio` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `admin` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gender` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `aSetup` int(11) NOT NULL DEFAULT 0,
  `online` int(100) NOT NULL DEFAULT 0,
  `darah` varchar(4) DEFAULT NULL,
  `agama` varchar(12) DEFAULT NULL,
  `qr` varchar(255) DEFAULT NULL,
  `alpha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`main_id`, `id`, `Fullname`, `Username`, `Email`, `Password`, `followers`, `Userphoto`, `user_cover_photo`, `school`, `work`, `work0`, `country`, `birthday`, `verify`, `website`, `bio`, `admin`, `gender`, `login_attempts`, `language`, `aSetup`, `online`, `darah`, `agama`, `qr`, `alpha`) VALUES
(666, 324473291918158, 'Mario', 'ma', 'bokuwama@gmail.com', '$2y$12$p.f62WTTFGjrvfHcGazgl.KeFY/afVOoVskIqYY9FoVyFlcCcKyj.', 7, '1657896750929255402.jpeg', '16463335801120065162.png', '', 'SMAN4 Muara Teweh', 'Pustakawan', 'Indonesia', '08/03/1995', 0, 'ma', 'Hi', '1', 'Netral', 1, 'Nonaktif', 100, 0, 'A', 'kristen', '../imgs/qr/ma.png', '../imgs/badge/alpha.png'),
(668, 123293296450132, 'PAMA AGUSTIN ', '200721164', 'pamaagustin07@gmail.com', '$2y$12$m1QAcYm./Sv7vqxGXIA/DuXUiFAZWRPf2IRl0txg8GSMy6s0rP2uy', 1, '16482251771256170385.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(669, 658453296594200, 'Khairunnisa Ahsanus', '200711030', 'khairunnisaahsanus@gmail.com', '$2y$12$BTqneQrk7zGsbkh4ApAl9egsS4QvfsigoYcQv89sRrQ3MoNgjbGpa', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(670, 793383296893120, 'Tiara Najwa Aurelia', '6205055506060008', 'araaacanss@gmail.com', '$2y$12$KNIf7ITVPA4mRkDgGeAD1ujXqnsF92HLfm4iqwtHK/ev/WCfmsCkW', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(671, 211463297573650, 'Nor Rasmi Kamariah', '200721162', 'rasminor18@gmail.com', '$2y$12$c5vwUB/DgMGEIC1yNAG7HOt.TvmXDf7QXrht05ZEcadHAHvGwzEYG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(673, 116303297637086, 'Ary Sigit Julian ', '200711008', 'ary30072005@gmail.com', '$2y$12$5qqJTeIi1OS1MnWb/.ReluCQ.zluU1Qb4ioaJsxpN3k0zNUjj.SGq', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(674, 100423297908558, 'Ifen Yaiyang Delliavroos', '200711024', 'ifenyaiyang@gmail.com', '$2y$12$PiVd2BnVui2jyCv2esdIAee6QGMnmwtyegsju6vm7rOvklU3zToNm', 1, '1649032320286241646.jpg', NULL, 'Pelajar', '', '', 'Indonesia', '30/03/2005', 1, '', '', NULL, 'perempuan', 0, 'Indonesian', 0, 1, 'A', 'islam', NULL, NULL),
(675, 334983297917446, 'Agatha Monalisa ', '0058260319', 'agathamona12@gmail.com', '$2y$12$XRTJK5o98UGaCbFHi/M7gOzFl1Gs7wM5qeAkjMMo0B7kkV083aFaC', 2, '1649152921991714983.png', NULL, 'SMA', 'Muara Teweh ', 'Murid', 'Indonesia', '25/08/2005', 0, '', '', NULL, 'perempuan', 0, 'Indonesian', 0, 1, 'O', 'khatolik', NULL, NULL),
(676, 216163297920250, 'Indah normala sari', '6205056502050004', 'indahnormalasari581@gmail.com', '$2y$12$Ehp6NZN62SOWtoK4l8yHleraSeucOqjI5noY/hNhmA2lZeY6zDtmW', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(677, 507373297926796, 'M.FAHRIZA FIRDAUS', '0053341018', 'muhammadfahrizafirdaus@gmail.com', '$2y$12$lf6yBGVaxWZNjZXPoN/.zuv4pYHVhpDoVP59bh/WTkfKrSIZ5F06K', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(678, 914503297932024, 'Nabila Al Adawiyah', '0055634685', 'nabilaaladawiyah164@gmail.com', '$2y$12$rDNJlsmseNJRiMEtENvZPucgJ1ODSaB7QO2YrLCZZZmPdDbjuwl6q', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(679, 380263297935350, 'Dwi Novita Sari', '0049531113', 'duwinovita14@gmail.com', '$2y$12$xRVfwRlPvLLnB7tCQWW87eUSwoADenp6lYX7JGvCZnxi2GPKicfYS', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(680, 361123297959602, 'Nia Regina ', '0054544922', 'niareginafrn@gmail.com', '$2y$12$IjHy8fZ6zYJG.Rqa4ZftB.xsyurBuNWh6c3bJzw5lavv29/.jKrGS', 2, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(681, 734093297965756, 'NIKI TIRTO ADI ', '0056730502', 'nikitirto.18052005@gmail.com', '$2y$12$mGltUWGHaQA0valSnuco5emdg3bOoEr0SxRd.aF29Py1tEUm0mLTi', 3, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 1, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(682, 550113297966932, 'Gladiezia Putri Utami', '0052281529', 'putriutamigladiezia@gmail.com', '$2y$12$LtsJK75VK0Udl3KxrBW9/.5r6kzeAya08VzRK6wp5PKIDxopELC1S', 0, '1648983561133709891.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(683, 16883297973480, 'MUHAMMAD RONALDDINHO', '12033', 'muhammadronalddinho22@sma.belajar.id12033', '$2y$12$CDB6tYRudD2ZmlrkpJnEvusmarvMFsAouIfT7VNmvlXWQpP1uYoqm', 1, '16489869381764326704.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(684, 914233297974584, 'Sheramianda Amianty', '200711074', 'sheramianda95@gmail.com', '$2y$12$qPthEqGh.LwJTZlz8.6uvO4Whw.TNHNzs21XwXFuVFp8mn/LpFYEa', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(685, 916973297975572, 'MUHAMAD SOLIHIN', '0056865907', 'solihinmuhamad75600@gmail.com', '$2y$12$cxeqhtAgNKkzBpKxk5QnZOYy6ASO1saQ8V4Tkz2Fjj3.7J960jY6m', 3, '1649153435508782801.jpg', NULL, 'SMA', '', '', 'Indonesia', '29/05/2005', 1, '', 'SELAMAT DATANG DI PROFIL SAYA😎', NULL, 'laki-laki', 0, 'Indonesian', 0, 1, 'A', 'kristen', NULL, NULL),
(686, 521273297976186, 'Fry steven', '0056773893', 'frysteven1801@gmail.com', '$2y$12$oflvPbnQUpaY/48tndMW9uzgEw6ei2zfEzv2h/9.EFQJ6VwlhV8dC', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(687, 755813297977386, 'Leo Deannova ', '200721133', 'deannova130@gmail.com', '$2y$12$ipdYn4rUb20049vk7kI2w.nKJtvzZL/x7m8N.40CiCZynoYR8JFnW', 2, 'default.png', NULL, 'SMA', '', '', 'Indonesia', '24/08/2004', 0, '', '', NULL, 'Male', 1, 'Indonesian', 0, 1, 'B', 'kristen', NULL, NULL),
(688, 336893297980020, 'Ahmad Rendy Saputra', '0054376600', 'ahmadrendy197@gmail.com', '$2y$12$55X7h6rMxu64rK/XlQAciOM8WcqtvD96rkY037rqPqJHIQll33WMa', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(689, 224613297992350, 'Daniel Julianda Geovani R', '0044517729', 'danieljuliandageovani@gmail.com', '$2y$12$Bd67BlcDwLQiEP5AX9wFCeZj6pZtFaKBxM1HAQnW6HdcEb5imeEZa', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(690, 324693298185576, 'bot', '1.2.123.1', 'bot@kartupelajar.com', '$2y$12$yMUN8RL3.YpiUr2Le5YI5eiYWI4h/8tihSeUF4NT2Bv5mR5P4PQcq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(691, 216983298187110, 'bot', '0.1', 'bot@sman4muarateweh.sch.id', '$2y$12$vmDKqIhxXYVPWpizp6kB/uQyCvm4utkP4VBsdL/09SR9MoAoOKzUW', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(692, 209103298205584, 'MUHAMMAD ADITYA PUTRA', '20.07.2.1.141', 'muhammadputra866@sma.belajar.id', '$2y$12$FW6YczvGeUyIM7XFRS1/Uu8ioETCnvrES/Uhg7lvRGD91ugLLIpqq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(693, 491013298211366, 'Renaldy Fazri', '20.07.2.1.169', 'renaldyfazri10@gmail.com', '$2y$12$a5gRNZiuOpjIk2fasJToxuMUUWaJXhoje20nrl/RbiYqouWthO25a', 0, 'default.png', NULL, 'SMA', '', '', 'Indonesia', '15/01/2006', 0, '', '', NULL, 'Male', 0, 'Indonesian', 0, 1, '', 'islam', NULL, NULL),
(694, 30323298304922, 'Muhammad Yuda Tri Setya', '0057376935', 'muhammadyudatrisetya73@gmail.com', '$2y$12$vV8bEI8k0faPcBKwhi8Cw.cvRdmScJRIK931XJOSg2ThGay3fGCfu', 1, '16491529341876902149.jpg', NULL, 'SMA', 'SMA 4 Muara Teweh', 'Ketua OSIS', 'Indonesia', '01/08/2022', 1, 'Sma4muarateweh', '', NULL, 'laki-laki', 0, 'Indonesian', 0, 1, '', '', NULL, NULL),
(695, 389033298306630, 'ALYA HERLINDHA SARI', '20.07.1.1.005', 'alyaherlindhasari@gmail.com', '$2y$12$AnAnsCoBmQnvHsZdKKCFKe8Vob/Bfac1DIF7/5EdoYrmuIFYE4gsu', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(696, 855453298307614, 'Lorin Oktavianto', '0053796819', 'oktaviantolorin@gmail.com', '$2y$12$cXY0YPkjAh.JgYUirqK5zuOtRjTt/Pct7AuU2/2rRqGWn3qONtrGG', 1, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(697, 939693298315008, 'Amanda Analicia Sachio', '0052818660', 'amanda.analiciasachio@gmail.com', '$2y$12$hgqo86gS3.FrCypgmggjmuq8xbvDNIrKd5deSmINkEUnC8IkXxDt.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(698, 148563298315872, 'Aulia Rahmah', '0044152239', 'auliarh535@gmail.com', '$2y$12$3jVNuDy0B7ahc143ncySveoMd1cPcgFQIOKEEBnMQoq.ujjRmiDFu', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(699, 299823298318158, 'Bima maulana putra', '0047731215', 'mtwbim12@gmail.com', '$2y$12$JQyHjiH5q20hU9irfjlQc.bgNRK1Z86TeMJ0UsbYhDonR.sPYdzCq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(700, 234383298421184, 'Ribka Priskila Magdalena', '0054527823', 'ribkaaa1211@gmail.com', '$2y$12$Xe/va9oRf6w5zjuLNdYQfumALYqe79uELQpvk5cvjG0Q37Z29BHZu', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(701, 510653298451584, 'Yunita', '0053452617', 'yunitayun37@gmail.com', '$2y$12$QbiZWiifnZlZlLLHDSA9yOna5mJqwIECVxxx29oSU6jIv.RXq3eJG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(702, 575193298453584, 'Rapita', '0065857959', 'rapita021@gmail.com', '$2y$12$rvZBkL7BVreCfLtgR3uVTeXTAtT2nGqt/IZYbcH.RmA6owP0Wmsu6', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(703, 679083298486740, 'Nadia Permata', '0057654874', 'nadiapermata14nadia@gmail.com', '$2y$12$DTvR1GOouJB1j4MyaKCaKOcxZWn/n3Zi.Rl64ffOshZYyypCkz7aW', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(710, 177363306694486, 'Cuk cak rowo', '12345678', 'dummyba1994@gmail.com', '$2y$12$2xEEEPZ3PGUsdllVzEkCFuVBTrLq/BnqmH/8WTQ57i8j3x2iMh30a', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(711, 958153307082912, 'Rachmad Joestar', '745609213309', 'senjataxmawar@gmail.com', '$2y$12$H/lNTPpURtaebtxIw9CGU.Yg4GHeMxgNvj411e.NJopMY5Wg2BbUS', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(712, 74203308101930, 'Clarissa Tovani', '0066812121', 'clarissa2006.belajar@gmail.com', '$2y$12$DCH.fJCzj87FugiSJmk9xuDeCUCD26pWqm17hu9CasccGZagGPaz2', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(713, 733763315184810, 'ALDO ', '109020', 'aldog8651@gmail.com', '$2y$12$/eqZi863XrnDQJljiq0eZO2/Eng3FNY8HNJqqlDiBjvj2K7L1N94q', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(714, 975133315184936, 'Geofanny Margaretha aprilina', '162', 'geofannyma8@gmail.com', '$2y$12$EqLOCezmFvU.V5PzE/5PPO7PI36YdgGVbvY0e1XUT9ZmMjgUEEJ5S', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Netral', 0, 'Indonesian', 0, 1, NULL, NULL, NULL, NULL),
(715, 488763315185010, 'Nadiya', '0063985782', 'nadiyaanadiya60@gmail.com', '$2y$12$hCYCQplZo6lmRQjCzV70keyogF.5ZD5nZcUjrNI18/j1nGz8ARUE2', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(716, 864533315185022, 'Ratmi', '0057753622', 'ratmiratmi038@gmail.com', '$2y$12$sW3ps1IXQe7aXCYMv8F6n.zbZuFe.fWWSntghJBgAAu3v2BXrvxB2', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(717, 543923315185060, 'Nabila Olivia ', '0016278956', 'nabilaoliviaolivia@gmail.com', '$2y$12$sUrGPc2FgGJxve0aEsJid.jh5Yj/ZHh0bH5QYpu8VxwY1H8x.TxKK', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(718, 163233315185152, 'Yulia mahal', '0068397', 'yuliamahal18@gmail.com', '$2y$12$qFzDfOZpyA.oXaqMwb/it.bBmpnDg5S4N9o0NOwSgDBUwyD.CWMHW', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(719, 558393315185152, 'Reva', '0087836719', 'revava912@gmail.com', '$2y$12$41HPfUYyLmB0nn4/EG3eUugqYpZi5Uw6yYOYj3s3PCY8guB1VQjE.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(720, 558273315185154, 'Reza subagio', '081382882705', 'udunreza@gmail.com', '$2y$12$7a7o6G7fre5SZ0nQQP6vNOW1HbQmVbaYYshkuFaUMYDsOFrLDZpc2', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(721, 154263315185586, 'Veronika grace Letriana', '0077311809', 'veronikagrace@gmail.com', '$2y$12$QyeThShoJSN3fdlX73yr9OdgsZgGTKVpTQMZoCfCu6vUtJJ.4G4zC', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(722, 974173315185622, 'RevanSiska', '497', 'revansiska5@gmail.com', '$2y$12$5cQTkzWkokCtcBuPPWdBoOuV743WS1r9AQUxX9i16aW9UFoa5PRP2', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(723, 122083315185708, 'Evagaberera.s', '007', 'evasembiring2404@gmail.com', '$2y$12$rHFMvr.lr6VOr15IUjPYC.TBXi8GXR1De6ibFVmKcXdU0JhqFWRea', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(724, 434183315194384, 'Dhodo Satriyo', '0073023243', 'dhodosatriyo07@gmail.com', '$2y$12$QgTkqPeXFKE0laYKBq01T.osvt1NwpEFmU49tUF8pKw05GFb84G2C', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(725, 85173315338098, 'Tania rustam', '0026145767', 'thania2456@gmail.com', '$2y$12$4dV3d.OpJ8yS4Qce3XTSDuFOYhx/GyhJt8EUl.UC3CLnA9/Bd.YG6', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian', 0, 0, NULL, NULL, NULL, NULL),
(726, 207313315557512, 'Yeremia saputra', '0078043688', 'yeremiasaputra39@gmail.com', '$2y$12$IJtpyC5xIfZQeI2lieTlU.vVea.l/pJ0kosdw0IvF0x2kxboMxnZS', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(727, 659453316400492, 'Zahratun Nafiaah', '0063235643', 'zahratunnafisah30@gmail.com', '$2y$12$bIVCPt0xsW20BkPMQfb6ou342LAKKYlKxSllxgKmPaRWrY5sFxazG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 1, NULL, NULL, NULL, NULL),
(728, 959403316400620, 'JENI MONIKA ', '0068236597', 'jenimonika227@gmail.com', '$2y$12$YUvRWPh6Q9.JyPcW.lvmr.MWiBlArMdr0x272BGR07bjxv/HVlGva', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(729, 781703316401096, 'THIARA RENATHA ', '0062458554', 'thiararenatha06@gmail.com', '$2y$12$Kjlf76X.RT0bLVT6RZm43u2g3Hty5E.s.8/Ghuhxy876peKEhD15.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(730, 708913316415134, 'MULYANI FEBRIANTI', '0066377788', 'mulyanifebrianti25@gmail.com', '$2y$12$tR.KdZz1hIV1ms1tKtvg6uidCatZYY4qKWgghrDH/t67MRCqzUCBa', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(731, 34933316415860, 'Naisha aiwasajuldah ', '0063066427', 'naiwasajuldah@gmail.com', '$2y$12$vtinYMjQVLpAf9Z456.dVulJYd6CIddaBgk4oJnW5f8MPg13SKlEq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(732, 976403316420132, 'Ceria Amelia', '0066587436', 'ceriaamelia2006.belajar@gmail.com', '$2y$12$b/g7TSOu2ajb3rpK/sW2auSbfqyk49Dp1ZBK3Gv/j9b1oLZ5VhaOq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(733, 653253316420284, 'Hannauli Simbolon ', '9969072123', 'imhanaa.us@gmail.com', '$2y$12$b/oh9cXaMbFtDXAxTC8ksuLZVGyu5Fl.0.jixvTo/KbjCx6kS/3US', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(734, 275713316420358, 'David Elkana Joel', '123456789', 'dza36984@gmail.com', '$2y$12$d0.AR72Zx4czWeEcdlgXMuuvxCkk17F41ep9THovxRmOYvF69PU4m', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(735, 632183316420382, 'IMELDA INDAH HERAWATI ANGGRAINI', '0057842811', 'imeldaindahbukman@gmail.com', '$2y$12$Tu9ZXCiQldEPV1nwXOvmDOdzkPw/OjmY1NChJgzuXugj/dT7rjv6.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(736, 91743316420414, 'Audia Witney Crysteni Amianni', '0066566629', 'audiawitneyca@gmail.com', '$2y$12$NBBaFidHIxkQaSqP8SGiBeX1OdwWf6zY6GzPpmFZypRnNd.VHHq0a', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Aktif', 0, 1, NULL, NULL, NULL, NULL),
(737, 958493316420472, 'Bunga ayudya harahap', '0064135414', 'ayudyahb@gmail.com', '$2y$12$.ggrBRzN9YzBDR2R1ZqFhu88P9Bu7AsuQyO67CB20P6222wgw0RAm', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(738, 940553316420554, 'Okta briantono', '11111111', 'oktabriantono@gmail.com', '$2y$12$SLo.KKocssIQpMgfrG2aXeCJbFjRfIHXYg2YQ5EaTyAYvemsKiOSq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(739, 621403316420576, 'Kade Dwi Resty Ardianty', '7765', 'restyardiantykadedwi@gmail.com', '$2y$12$LQL8XOmmj6JrQJCdZTupBOGjrNSXG8CKyZjhA06dfS11rQN6ofpTu', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(740, 309193316420636, 'Andrean Pasha Gemilang', '0064500996', 'pashaandrean69@gmail.com', '$2y$12$TbIuoyZTWcJ3Pzws6G6K1ugyQr12.RVk71ezQ4GeMdKgxAfBXQqFe', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(741, 490753316420692, 'Muhammad padlianoor ', '089768817', 'officialanime079@gmail.com', '$2y$12$Vrd6wFF/FmqpGLYXnNA/AOyBaukdM5XXmlgk6QsvtshkCpLlxDxFC', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(742, 176043316420710, 'Regita Misael Azarya', '0032173018', 'rgtazarya@gmail.com', '$2y$12$PltR9RfMPq52pnA19iv4huaiCfgkqxvJYfJr3yP59iLE8iomoFyyy', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(743, 924423316420784, 'Intan Maharani', '0069250380', 'im8625639@gmail.com', '$2y$12$Lkb4RpyBH0l9sjZbIjF4MeiTL80p507p.j4X1IMXuwb4cFUrNR1QO', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(744, 26413316420784, 'SILVA INDRI YANNI ', '0063827901', 'silvaindriyanni@gmail.com', '$2y$12$KdR8VjsRtDF8imJgzAvh2O18DX8YM51Qmlclkclej6JrflMvUZml.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(745, 902413316420812, 'Dona Parisha Gabriella', '0067210091', 'donafarishag@gmail.com', '$2y$12$AjqPnfG6AF5kP5TWHUxzJuhqbHFtn5GRphHb47rlRmpIzDQkvO28W', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(746, 233793316420854, 'Yusra Wesli', '22022006', 'yusraweslii@gmail.com', '$2y$12$dWDXa1OZKiqvtNvoZYBIZuZ8OYuXBrYnVHrS18Ug6xIgdAD5.slii', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(747, 938743316420900, 'Dovakunum', '23456789', 'dovakunum24@gmail.com', '$2y$12$KtN5rqjALwQh.8vtcMPz9efm7kCwEQX5WjtZzc4bGOOEWOLbFCcwe', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(748, 438003316421152, 'SEFTIANA SALSABILA NUR RAHMADANI', '0065120307', 'Seftiana.salsabila013@gmail.com', '$2y$12$A/Ygob483IkRCeYnVnjYVOBxr03aQUKoBcYd5m1i4SvdblA1KgzKi', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(749, 810313316421180, 'Julianse Reja', '0064251686', 'juliansereja5@gmail.com', '$2y$12$tFmkEDSPlo6U9AsZjXuNpemx/.XW5SnxyOz/gh7QbRFr.pjlaWbKG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(750, 586323316421198, 'Diaz Cesar Prasetyo', '0052546885', 'diazcesarp01@gmail.com', '$2y$12$cWp3fb7zMNV.txdpp98dw.Zpp6qvuNh4Ci5YOKBf7h31/XX0N5M.K', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(751, 955183316421228, 'Rama Maulana ', '0045534366', 'emonmaulana0005@gmail.com', '$2y$12$eRDeg.8EMGGS1cLtUXhLneISko3An9h6Jyixq/S2loweGtNAg3zFy', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(752, 971883316421296, 'Anisa Zahra ', '1112233445', 'zanisa844@gmail.com', '$2y$12$Amj2x3qpQVvymr1XD1AAGO3skOvm4Rraylrk9XjWMT6B5ii256k0a', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'netral', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(753, 984983316421402, 'Tri Wahyuni Ramadhani', '0057295946', 'triwahyuniramadhani394@gmail.com', '$2y$12$ngpYcOu1OCP1Ga46X4DDlukclj5Vex0ReXKmWMpdzRUITSBjZSUsG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(754, 729583316428564, 'Tiara yesilia ', '0067328326', 'scaniap20@gmail.com', '$2y$12$lSblGGPw/C2Mrg3VyztZCO/Oy4zr3zpDHJGEr9DbR5PvhvIAj6JqS', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(755, 836613316428646, 'Olga Septerisa', '0061841993', 'olgasepterisa@gmail.com', '$2y$12$2Ludk/mzCEX4pwxCZGXY9ep.iIMayP0IwLLsSCe46mdNR8RhxYa3W', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(756, 37113316428788, 'Jessica Whitney', '0051234043', 'jcany14@gmail.com', '$2y$12$IcRjxTgWQ3taN5G8qZuoNuaqvdtjZKzozrTr7yo9QwmkFeLgDRubq', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(757, 381063316428824, 'Ayra Valenci Rizki Aurilla ', '00619757998', 'ayraaurilla@gmail.com', '$2y$12$m3pZvU6jB6LMNW7XlRzZAuCfnPRolY5FFp8u0C1PZgLpB8dAxX4Au', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Indonesian_d', 0, 0, NULL, NULL, NULL, NULL),
(758, 241723316428862, 'CINDY LAURA', '0056336381', 'lauracindy105@gmail.com', '$2y$12$U1AO1ZB.cdgeUTf9oqNsy.CRTGZknoElbGqjlvGQogzXwz5DpCewe', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(759, 191163316428946, 'Dwi Andini ', '005178331', 'dwi607144@gmail.com', '$2y$12$Od70hKu8LINR1CeMh5gS0.wPFiJyK9hhv9LItDgwQhh1lIFuqEi/a', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(760, 524983316429040, 'Lidia Kartika ', '0122097901', 'lidiakartika504@gmail.com', '$2y$12$uQa3ysettn4RfKdYdPj.m.p5mHGai85I.LHkBonrEGskPiJE3uUCe', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(761, 718043316429072, 'Aurelio Adiatma Putra', '0062788167', 'adindalin.com@gmail.com', '$2y$12$FazZbMl/JuNgKSgIEZv3rOEM7NFL22qzrxoMPiAnKZhv.B5rrW3yG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'laki-laki', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(762, 613153316429168, 'Naswa Salsabila Hayati ', '0056793430', 'naswa.salsabila29@gmail.com', '$2y$12$RwuSStABgDdnWwX34tADNenF7OppgLLJ4eNMNaQ070RfBHGCgUvv2', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(763, 783323316429204, 'Berliana Br Nainggolan', '0056480658', 'berlianan070@gmail.com', '$2y$12$0jLV1qysCYQignUlM9o4XOmogXnE/6sISpkM1QWlzrKLZZlSVafru', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(764, 315483316429426, 'Marsya Olipia ', '0066171286', 'marsyaolipia08@gmail.com', '$2y$12$wG6.ZbhUftkqtNiHtfLlCuPqlVmWZBOH7ZtN30nYWO6zF0/0yieq.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(765, 636563316610404, 'Manda Viora ', '0057726377', 'mandaviora@gmail.com', '$2y$12$iwKQ276iMtjojk0paQxyX.kcQ/y1epjaA2BtyNl7MjlBUUGtzI8EG', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL),
(766, 180643316616250, 'Wahyuni', '0062933110', 'wahyuni452006@gamail.com', '$2y$12$jSE6fuYrQHpDbxXzbFvrtum5MtHH0.FUvv2eOArlV7SME5bFnR.h.', 0, 'default.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'perempuan', 0, 'Nonaktif', 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supportbox`
--

CREATE TABLE `supportbox` (
  `id` int(11) NOT NULL,
  `r_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `r_type` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `subject` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `report` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `r_time` int(11) NOT NULL,
  `r_replay` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `r_replay_time` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `typing_m`
--

CREATE TABLE `typing_m` (
  `id` bigint(11) NOT NULL,
  `t_from` bigint(11) NOT NULL,
  `t_to` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wpost`
--

CREATE TABLE `wpost` (
  `post_id` bigint(50) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `post_img` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `post_time` int(11) NOT NULL,
  `post_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `p_title` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `p_likes` int(100) NOT NULL DEFAULT 0,
  `p_privacy` int(11) NOT NULL DEFAULT 0,
  `shared` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wpost`
--

INSERT INTO `wpost` (`post_id`, `author_id`, `post_img`, `post_time`, `post_content`, `p_title`, `p_likes`, `p_privacy`, `shared`) VALUES
(1649527241, 324473291918158, NULL, 1646554111, 'https://sman4muarateweh.sch.id/kartupelajar/toacpnlp/?adb=General', '', 0, 2, NULL),
(1654896645, 324473291918158, 'user_post_img/16514993831722859132.jpeg', 1651499383, 'selamat hari pendidikan Nasional', 'selamat hari pendidikan Nasional', 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mynotepad`
--
ALTER TABLE `mynotepad`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_star`
--
ALTER TABLE `r_star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `supportbox`
--
ALTER TABLE `supportbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typing_m`
--
ALTER TABLE `typing_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpost`
--
ALTER TABLE `wpost`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665615341;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mynotepad`
--
ALTER TABLE `mynotepad`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `r_star`
--
ALTER TABLE `r_star`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=767;

--
-- AUTO_INCREMENT for table `supportbox`
--
ALTER TABLE `supportbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typing_m`
--
ALTER TABLE `typing_m`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
