-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 04:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4_tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '446d20f2c05bddab8022cba777cb1abf', '2020-10-26 21:28:46'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '70df8adc20394855bdf2ff5eed7cf3a3', '2020-12-04 23:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'ghaidadwi50@gmail.com', 1, '2020-10-26 21:06:15', 1),
(2, '::1', 'ghaidadwi', NULL, '2020-10-26 21:07:58', 0),
(3, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-26 21:29:07', 1),
(4, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-26 21:36:32', 1),
(5, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-28 05:30:47', 1),
(6, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-28 06:58:25', 1),
(7, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-28 07:01:47', 1),
(8, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-28 07:07:10', 1),
(9, '::1', 'ghaidadwi25@gmail.com', 2, '2020-10-28 07:29:57', 1),
(10, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:19:53', 1),
(11, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:20:13', 1),
(12, '::1', 'ghaidadwi', NULL, '2020-12-03 23:21:28', 0),
(13, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:21:33', 1),
(14, '::1', 'ghaidadwi', NULL, '2020-12-03 23:21:53', 0),
(15, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:21:57', 1),
(16, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:22:26', 1),
(17, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:24:10', 1),
(18, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-03 23:35:42', 1),
(19, '::1', 'jhasonteam17@gmail.com', 3, '2020-12-04 23:25:45', 1),
(20, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-04 23:52:59', 1),
(21, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-05 00:06:33', 1),
(22, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-05 00:07:27', 1),
(23, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-05 00:18:09', 1),
(24, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-05 00:20:22', 1),
(25, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-05 00:20:41', 1),
(26, '::1', 'ghaidadwi25@gmail.com', 2, '2020-12-05 00:26:47', 1),
(27, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-06 02:40:45', 1),
(28, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-06 03:17:05', 1),
(29, '::1', 'jhasonteam17@gmail.com', 4, '2020-12-06 04:10:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Captain Marvel', 'captain-marvel', 'Stan Lee', 'Marvel Comics', 'CaptainMarvel.jpg', NULL, '2020-10-14 17:24:41'),
(2, 'Marvel', 'marvel', 'Stan Me', 'Marvel Comics', 'Avenger.jpg', NULL, '2020-10-13 01:34:54'),
(12, 'Black Widow', 'black-widow', 'Stan Lee', 'cobain', '1602595671_b58c71d4f577913710e4.jpg', '2020-10-13 08:23:50', '2020-10-13 08:32:16'),
(13, 'Naruto', 'naruto', 'arul', 'rozi', 'user.png', '2020-10-24 04:22:38', '2020-10-24 04:22:38'),
(14, 'baru', 'baru', 'ghaida', 'gramedia', '1607059404_0b74f53e2f7fb02a4224.jpg', '2020-12-03 23:23:24', '2020-12-03 23:23:24'),
(15, '2020', '2020', 'desember', 'gramedia', 'user.png', '2020-12-08 21:48:59', '2020-12-08 21:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-14-005203', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1602637493, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1603762912, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Bajragin Suryono', 'Ki. Nanas No. 7, Tasikmalaya 71514, SulTeng', '1985-12-08 19:58:22', '2020-10-13 21:23:50'),
(2, 'Devi Ami Wijayanti S.Psi', 'Jr. Supomo No. 307, Palu 17293, Aceh', '1975-03-26 02:55:37', '2020-10-13 21:23:50'),
(3, 'Adiarja Banawi Setiawan', 'Jln. Gedebage Selatan No. 253, Palopo 22050, SumUt', '1987-04-25 04:17:21', '2020-10-13 21:23:50'),
(4, 'Gambira Nainggolan', 'Jln. Baabur Royan No. 42, Semarang 50708, Bali', '1999-11-09 19:14:11', '2020-10-13 21:23:50'),
(5, 'Maras Winarno', 'Psr. Salatiga No. 256, Kediri 56582, DKI', '2003-05-28 22:09:13', '2020-10-13 21:23:50'),
(6, 'Diana Nasyiah', 'Kpg. Sampangan No. 396, Langsa 90612, SulUt', '1995-05-07 10:30:17', '2020-10-13 21:23:50'),
(7, 'Novi Namaga', 'Kpg. Samanhudi No. 266, Malang 27028, DKI', '1977-09-20 08:08:43', '2020-10-13 21:23:51'),
(8, 'Edison Budiyanto', 'Jr. Kalimalang No. 52, Tomohon 96211, Riau', '1975-01-22 05:41:22', '2020-10-13 21:23:51'),
(9, 'Kania Prastuti S.Pt', 'Dk. Yoga No. 86, Kupang 77687, DKI', '1974-04-08 20:25:25', '2020-10-13 21:23:51'),
(10, 'Shakila Fathonah Prastuti', 'Psr. Lembong No. 356, Palopo 73922, SumBar', '2014-09-11 00:13:37', '2020-10-13 21:23:51'),
(11, 'Putri Diah Nurdiyanti', 'Ki. Ujung No. 792, Banjarmasin 67444, SulTra', '1982-01-29 00:16:11', '2020-10-13 21:23:51'),
(12, 'Dodo Winarno', 'Jln. Bakin No. 809, Sorong 74546, KalBar', '1996-02-19 02:04:40', '2020-10-13 21:23:51'),
(13, 'Ganda Manullang', 'Ki. Merdeka No. 905, Tomohon 61498, Aceh', '2019-04-04 06:26:37', '2020-10-13 21:23:51'),
(14, 'Martani Saptono', 'Gg. Pasirkoja No. 346, Mataram 92701, KalSel', '2003-12-03 10:09:19', '2020-10-13 21:23:51'),
(15, 'Lulut Zulkarnain S.H.', 'Gg. Baranangsiang No. 186, Prabumulih 98241, Bali', '1974-04-06 01:31:09', '2020-10-13 21:23:51'),
(16, 'Samiah Tina Nurdiyanti', 'Ki. Mulyadi No. 465, Medan 92600, Gorontalo', '1996-04-17 11:42:25', '2020-10-13 21:23:51'),
(17, 'Mitra Simbolon', 'Psr. Rajiman No. 9, Mataram 10116, SulTeng', '2010-09-10 00:03:47', '2020-10-13 21:23:51'),
(18, 'Adikara Pradipta S.Psi', 'Jln. Bagas Pati No. 840, Sorong 40353, MalUt', '1993-09-02 19:10:56', '2020-10-13 21:23:51'),
(19, 'Winda Handayani', 'Jln. Wora Wari No. 76, Malang 18494, JaTim', '1982-03-01 11:43:25', '2020-10-13 21:23:52'),
(20, 'Sadina Susanti', 'Ds. Bata Putih No. 425, Blitar 18917, KepR', '1992-02-06 04:03:49', '2020-10-13 21:23:52'),
(21, 'Ajimin Firmansyah S.E.', 'Jr. Sukajadi No. 646, Tegal 37157, SumBar', '1998-12-17 02:20:04', '2020-10-13 21:23:52'),
(22, 'Ifa Mulyani', 'Jln. Villa No. 467, Binjai 56200, NTB', '1997-09-24 19:55:44', '2020-10-13 21:23:52'),
(23, 'Dono Waskita', 'Psr. Pasir Koja No. 379, Padangpanjang 38252, KepR', '1984-10-08 23:31:14', '2020-10-13 21:23:52'),
(24, 'Ika Mandasari S.Ked', 'Psr. Kalimalang No. 101, Tarakan 22898, KalUt', '1994-01-02 03:29:17', '2020-10-13 21:23:52'),
(25, 'Aditya Elon Hidayanto', 'Jln. Katamso No. 702, Depok 83694, Aceh', '1975-03-13 09:20:42', '2020-10-13 21:23:52'),
(26, 'Ida Sudiati', 'Dk. Gatot Subroto No. 737, Padangpanjang 62514, Bengkulu', '2019-06-09 22:46:17', '2020-10-13 21:23:52'),
(27, 'Jessica Aryani', 'Kpg. Imam Bonjol No. 983, Banjarbaru 64743, DKI', '2017-10-09 01:31:26', '2020-10-13 21:23:52'),
(28, 'Agnes Rini Wahyuni', 'Kpg. Gajah No. 657, Padang 57235, Papua', '2019-11-02 12:43:23', '2020-10-13 21:23:52'),
(29, 'Kusuma Najmudin S.Pt', 'Psr. Wahidin Sudirohusodo No. 929, Jambi 13179, Gorontalo', '1992-09-30 21:27:33', '2020-10-13 21:23:52'),
(30, 'Agnes Vanesa Winarsih S.Sos', 'Dk. Babakan No. 940, Banjarbaru 12169, Aceh', '1993-10-03 06:57:24', '2020-10-13 21:23:52'),
(31, 'Daniswara Budiman M.M.', 'Dk. Urip Sumoharjo No. 73, Padangpanjang 93093, NTT', '1974-01-23 06:41:37', '2020-10-13 21:23:52'),
(32, 'Diah Kusmawati', 'Jr. Wahid Hasyim No. 685, Yogyakarta 67297, Aceh', '1991-10-13 01:46:49', '2020-10-13 21:23:53'),
(33, 'Wadi Ega Sihombing S.Sos', 'Jln. Asia Afrika No. 900, Banjar 26246, SumBar', '2000-05-06 02:00:29', '2020-10-13 21:23:53'),
(34, 'Cornelia Safitri', 'Kpg. Ekonomi No. 733, Salatiga 53845, KalUt', '2005-11-12 07:20:09', '2020-10-13 21:23:53'),
(35, 'Zulfa Puspasari', 'Jln. Basoka No. 594, Sorong 72154, Jambi', '2004-12-23 07:10:53', '2020-10-13 21:23:53'),
(36, 'Cahyadi Setiawan', 'Ki. Jaksa No. 59, Depok 88817, KalTeng', '2011-08-08 10:29:23', '2020-10-13 21:23:53'),
(37, 'Mahmud Hutasoit', 'Kpg. Sutarjo No. 468, Tangerang 15669, JaTeng', '1979-04-20 08:38:45', '2020-10-13 21:23:53'),
(38, 'Raisa Winarsih M.TI.', 'Gg. Zamrud No. 179, Bogor 41773, Maluku', '2019-01-24 23:11:05', '2020-10-13 21:23:53'),
(39, 'Talia Haryanti M.M.', 'Kpg. Gremet No. 762, Bitung 16952, SulSel', '2020-08-20 19:49:48', '2020-10-13 21:23:53'),
(40, 'Eli Titin Uyainah M.Pd', 'Jr. Dago No. 795, Gorontalo 56134, MalUt', '1998-03-31 20:30:30', '2020-10-13 21:23:53'),
(41, 'Viman Mahendra M.M.', 'Psr. Salatiga No. 113, Bengkulu 42063, Bali', '1981-10-14 18:02:22', '2020-10-13 21:23:53'),
(42, 'Martani Hidayanto S.Pt', 'Gg. R.M. Said No. 425, Ambon 46815, Riau', '2008-03-19 19:58:53', '2020-10-13 21:23:53'),
(43, 'Ade Irma Pratiwi S.Pt', 'Jr. Padang No. 231, Tebing Tinggi 70745, SulSel', '1992-05-30 14:18:12', '2020-10-13 21:23:53'),
(44, 'Aditya Maulana', 'Kpg. Wahid Hasyim No. 143, Tanjungbalai 70599, KalTeng', '2018-09-20 20:00:43', '2020-10-13 21:23:53'),
(45, 'Yance Vicky Pudjiastuti', 'Psr. Raden No. 879, Sawahlunto 59632, KalTeng', '2000-09-26 02:28:51', '2020-10-13 21:23:53'),
(46, 'Najwa Permata', 'Jln. Wahid No. 917, Cilegon 68393, Bali', '2010-09-08 04:44:16', '2020-10-13 21:23:53'),
(47, 'Warsita Drajat Mustofa', 'Dk. PHH. Mustofa No. 283, Langsa 97006, Maluku', '2011-04-26 14:16:46', '2020-10-13 21:23:53'),
(48, 'Devi Wulan Mayasari S.Sos', 'Dk. Babah No. 16, Bandar Lampung 81436, KalSel', '2013-01-12 01:16:16', '2020-10-13 21:23:54'),
(49, 'Puji Kuswandari S.IP', 'Ki. Babadak No. 174, Tangerang 91926, NTB', '1990-02-19 08:36:50', '2020-10-13 21:23:54'),
(50, 'Hairyanto Eman Narpati S.E.', 'Gg. Wahid No. 634, Pekanbaru 20117, SumBar', '1988-06-06 20:43:34', '2020-10-13 21:23:54'),
(51, 'Kayun Mandala S.I.Kom', 'Gg. Bakhita No. 466, Palu 70386, SulTeng', '1981-04-01 16:12:42', '2020-10-13 21:23:54'),
(52, 'Zalindra Rahayu', 'Gg. Pahlawan No. 484, Sawahlunto 13466, KalTim', '2009-12-15 14:36:58', '2020-10-13 21:23:54'),
(53, 'Kalim Simbolon', 'Kpg. Bakau No. 17, Bekasi 22222, KepR', '2007-04-25 10:18:34', '2020-10-13 21:23:54'),
(54, 'Mariadi Nasab Kurniawan S.H.', 'Ds. Jaksa No. 72, Banda Aceh 12104, KalBar', '1983-07-20 20:21:52', '2020-10-13 21:23:54'),
(55, 'Ani Ratih Zulaika S.Kom', 'Kpg. Perintis Kemerdekaan No. 588, Cimahi 85263, KalTim', '1981-03-17 06:24:14', '2020-10-13 21:23:54'),
(56, 'Prayitna Vero Wibowo S.Psi', 'Kpg. Setia Budi No. 257, Tanjungbalai 91035, Lampung', '1983-04-12 06:52:02', '2020-10-13 21:23:54'),
(57, 'Karya Ilyas Prakasa M.Ak', 'Ki. Baabur Royan No. 772, Bitung 19433, JaTim', '1992-02-25 01:20:39', '2020-10-13 21:23:54'),
(58, 'Parman Suryono', 'Psr. Basuki Rahmat  No. 457, Tomohon 80069, Bengkulu', '1985-01-15 17:06:07', '2020-10-13 21:23:54'),
(59, 'Makuta Putra', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 298, Lubuklinggau 46958, Banten', '1970-07-29 06:00:40', '2020-10-13 21:23:54'),
(60, 'Damar Cengkir Ardianto S.Kom', 'Jln. Ciwastra No. 580, Sibolga 38795, SulBar', '1978-02-28 10:34:30', '2020-10-13 21:23:54'),
(61, 'Clara Maimunah Mandasari', 'Gg. Zamrud No. 745, Subulussalam 84176, DKI', '2016-04-17 10:45:58', '2020-10-13 21:23:54'),
(62, 'Safina Pratiwi', 'Dk. Ikan No. 393, Kupang 39600, PapBar', '2003-09-28 04:02:32', '2020-10-13 21:23:54'),
(63, 'Cinta Fujiati', 'Ds. Kyai Mojo No. 750, Langsa 44832, JaTim', '1980-07-25 00:49:39', '2020-10-13 21:23:54'),
(64, 'Usyi Wulandari S.T.', 'Jln. Ikan No. 197, Tegal 93448, JaTim', '1998-07-17 18:43:40', '2020-10-13 21:23:55'),
(65, 'Upik Cemplunk Siregar S.I.Kom', 'Jr. Bayan No. 236, Mataram 56106, MalUt', '1990-11-09 20:19:15', '2020-10-13 21:23:55'),
(66, 'Hartana Firmansyah', 'Kpg. Halim No. 671, Bandung 56277, Gorontalo', '1984-10-15 05:28:00', '2020-10-13 21:23:55'),
(67, 'Budi Simbolon', 'Ds. Otto No. 366, Madiun 18948, Jambi', '2019-03-15 15:40:15', '2020-10-13 21:23:55'),
(68, 'Aslijan Gunawan S.T.', 'Psr. Salam No. 562, Yogyakarta 63300, Maluku', '1971-03-05 13:29:46', '2020-10-13 21:23:55'),
(69, 'Muhammad Lazuardi', 'Gg. K.H. Wahid Hasyim (Kopo) No. 396, Sorong 71000, KalUt', '1991-09-24 10:07:52', '2020-10-13 21:23:55'),
(70, 'Elvin Wahyudin', 'Gg. Rajawali No. 520, Tangerang Selatan 15357, Banten', '1995-02-03 05:48:42', '2020-10-13 21:23:55'),
(71, 'Balamantri Cakrawala Natsir', 'Psr. Raya Ujungberung No. 821, Bima 88923, KepR', '2006-08-08 23:26:40', '2020-10-13 21:23:55'),
(72, 'Aurora Najwa Oktaviani', 'Jr. Cikutra Timur No. 671, Samarinda 40587, KalBar', '2000-09-25 18:10:03', '2020-10-13 21:23:55'),
(73, 'Maria Wulandari', 'Jln. Yogyakarta No. 164, Banjarmasin 81205, KalBar', '2003-09-11 06:32:42', '2020-10-13 21:23:55'),
(74, 'Gina Maryati', 'Jr. K.H. Maskur No. 369, Serang 74162, JaTeng', '1985-06-10 02:21:52', '2020-10-13 21:23:55'),
(75, 'Viman Ardianto S.H.', 'Kpg. Raya Setiabudhi No. 1, Bau-Bau 86158, Papua', '2011-12-31 10:47:27', '2020-10-13 21:23:55'),
(76, 'Alika Icha Winarsih', 'Jr. Banceng Pondok No. 771, Bengkulu 38422, SulTra', '1979-12-20 08:32:50', '2020-10-13 21:23:55'),
(77, 'Kamal Marbun S.Psi', 'Kpg. Raden No. 602, Sabang 67568, PapBar', '1992-05-01 22:39:25', '2020-10-13 21:23:55'),
(78, 'Balijan Pradana S.I.Kom', 'Gg. Tentara Pelajar No. 911, Mataram 51906, BaBel', '2008-01-18 09:24:43', '2020-10-13 21:23:55'),
(79, 'Asmadi Harsana Salahudin', 'Gg. Sutarjo No. 617, Pematangsiantar 81020, MalUt', '1984-06-28 08:07:12', '2020-10-13 21:23:55'),
(80, 'Puput Karen Hasanah', 'Psr. Dahlia No. 888, Yogyakarta 76075, Lampung', '2007-02-02 04:06:43', '2020-10-13 21:23:56'),
(81, 'Jindra Ganep Mahendra', 'Kpg. Basoka No. 940, Padangpanjang 36423, SulTeng', '1995-03-04 22:37:39', '2020-10-13 21:23:56'),
(82, 'Atmaja Maheswara S.Ked', 'Ds. Bara Tambar No. 268, Balikpapan 60901, Maluku', '1982-09-07 15:54:54', '2020-10-13 21:23:56'),
(83, 'Viman Gunarto', 'Ki. Padma No. 737, Parepare 23956, Banten', '1985-03-25 01:27:48', '2020-10-13 21:23:56'),
(84, 'Devi Kusmawati M.M.', 'Ds. Sugiono No. 631, Kupang 35202, MalUt', '1974-06-02 18:33:15', '2020-10-13 21:23:56'),
(85, 'Lulut Margana Manullang', 'Ki. Bakit  No. 517, Batu 24343, KalTim', '1993-01-07 11:09:11', '2020-10-13 21:23:56'),
(86, 'Rahmat Gamani Iswahyudi S.IP', 'Kpg. Kalimantan No. 261, Bontang 43656, SulTra', '2001-07-29 19:27:52', '2020-10-13 21:23:56'),
(87, 'Vinsen Habibi', 'Jr. Rumah Sakit No. 597, Bandar Lampung 51877, KalTim', '1981-10-26 18:35:06', '2020-10-13 21:23:56'),
(88, 'Mala Rahayu', 'Ki. Baranang No. 83, Administrasi Jakarta Utara 20892, JaTeng', '1972-01-02 13:09:42', '2020-10-13 21:23:56'),
(89, 'Jagapati Januar', 'Ds. Yosodipuro No. 734, Pasuruan 95610, JaTeng', '2005-02-09 01:13:38', '2020-10-13 21:23:56'),
(90, 'Betania Zulaika', 'Ki. Uluwatu No. 727, Tomohon 61060, JaBar', '2019-03-18 00:03:53', '2020-10-13 21:23:56'),
(91, 'Usyi Kuswandari', 'Jr. Yohanes No. 6, Pangkal Pinang 90915, Bali', '1992-09-19 15:48:15', '2020-10-13 21:23:56'),
(92, 'Ira Maryati', 'Gg. Yohanes No. 594, Singkawang 90921, SumBar', '1991-12-21 18:42:30', '2020-10-13 21:23:56'),
(93, 'Padma Riyanti S.E.', 'Jln. R.E. Martadinata No. 932, Sungai Penuh 61971, MalUt', '1996-12-30 18:55:08', '2020-10-13 21:23:56'),
(94, 'Indra Himawan Sitompul S.T.', 'Ki. Tambak No. 244, Bandar Lampung 44397, PapBar', '1997-02-01 13:13:18', '2020-10-13 21:23:56'),
(95, 'Karen Usyi Pratiwi', 'Gg. Villa No. 212, Padang 31833, SulTeng', '1970-07-10 22:19:05', '2020-10-13 21:23:57'),
(96, 'Zaenab Ade Suryatmi M.Ak', 'Jln. Suryo No. 379, Salatiga 50743, Banten', '2007-11-27 06:17:19', '2020-10-13 21:23:57'),
(97, 'Alika Yulianti S.Kom', 'Ds. Ujung No. 423, Lhokseumawe 91515, Bengkulu', '2012-03-07 10:45:02', '2020-10-13 21:23:57'),
(98, 'Yono Kuswoyo', 'Jln. Sunaryo No. 875, Magelang 57329, NTT', '2003-03-23 00:24:59', '2020-10-13 21:23:57'),
(99, 'Manah Irsad Nugroho S.Ked', 'Gg. Kali No. 768, Binjai 96001, SulSel', '1985-07-19 05:16:50', '2020-10-13 21:23:57'),
(100, 'Karja Suwarno', 'Jln. Surapati No. 795, Salatiga 73846, SumUt', '1998-08-20 19:06:26', '2020-10-13 21:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
