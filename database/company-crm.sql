-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2022 at 07:19 PM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company-crm`
--
DROP DATABASE IF EXISTS `company-crm`;
CREATE DATABASE IF NOT EXISTS `company-crm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `company-crm`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company name',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company email',
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company Image',
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company URL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Tommie Howe Sr.', 'may28@example.org', 'app/default.jpeg', 'http://guadalupe.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(2, 'Clemens Lebsack', 'littel.raina@example.com', 'app/0LWoNIKq2ksqAjKI07hoYvyFjSbvlNIxT9DxXTYM.png', 'http://georgiana.com', '2022-12-01 06:56:32', '2022-12-01 08:12:29'),
(3, 'Andreane Leffler', 'uriah12@example.com', 'app/default.jpeg', 'http://janice.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(4, 'Wayne Moen', 'lynn09@example.com', 'app/default.jpeg', 'http://aurelio.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(5, 'Dr. Geovanni Kub IV', 'ella33@example.net', 'app/default.jpeg', 'http://athena.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(6, 'Dr. Clint Walsh', 'kuphal.aylin@example.net', 'app/default.jpeg', 'http://justen.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(7, 'Maverick Hettinger', 'xconn@example.org', 'app/default.jpeg', 'http://scot.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(8, 'Alanis Murazik', 'graciela98@example.net', 'app/default.jpeg', 'http://larry.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(9, 'Lazaro Koss', 'bschroeder@example.com', 'app/default.jpeg', 'http://lloyd.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(10, 'Isaac Wiegand', 'walter.schowalter@example.org', 'app/default.jpeg', 'http://angie.com', '2022-12-01 06:56:32', '2022-12-01 06:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Employee name',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Employee last name',
  `company_id` bigint UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Employee email',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Employee phone',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Ibrahim', 'Hegmann', 1, 'dstrosin@example.net', '(626) 754-3000', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(2, 'Johnson', 'Kling', 1, 'xrodriguez@example.org', '786-386-3417', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(3, 'Timothy', 'Harber', 1, 'ellsworth46@example.net', '352.966.9782', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(4, 'Katharina', 'Kunze', 1, 'aglae.okeefe@example.net', '(305) 771-3304', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(5, 'Dewitt', 'Weimann', 1, 'kmohr@example.com', '253.852.1839', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(6, 'Wyman', 'Larkin', 1, 'harvey.john@example.net', '(860) 430-6637', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(7, 'Theodora', 'Welch', 1, 'vincenzo75@example.net', '+1.916.494.1788', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(8, 'Cyril', 'O\'Conner', 1, 'burdette.streich@example.net', '+1-941-496-4529', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(9, 'Jules', 'Wunsch', 1, 'rkoepp@example.org', '(914) 403-2413', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(10, 'Margarette', 'Schimmel', 1, 'evangeline69@example.net', '1-973-688-5972', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(12, 'Francisca', 'Harris', 2, 'zieme.tre@example.net', '+1-689-724-1345', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(13, 'Benjamin', 'Armstrong', 2, 'ambrose.carroll@example.com', '425.284.9943', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(14, 'Aubrey', 'Witting', 2, 'ckassulke@example.net', '(220) 970-9072', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(15, 'Deron', 'Hessel', 2, 'earlene77@example.org', '424.292.7122', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(16, 'Chase', 'Orn', 2, 'kling.marcelina@example.com', '217.442.2862', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(17, 'Cassandra', 'Lehner', 2, 'blittle@example.org', '1-520-964-8261', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(18, 'Ines', 'Hyatt', 2, 'leatha.pagac@example.org', '(347) 746-1696', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(19, 'Vernice', 'Hettinger', 2, 'schneider.herbert@example.com', '+1.347.351.4832', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(20, 'Aurelia', 'Schamberger', 2, 'doyle.breanne@example.org', '+1-906-860-9278', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(21, 'Laney', 'Nitzsche', 3, 'vmoen@example.com', '+1-609-485-7981', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(22, 'Vada', 'Zulauf', 3, 'adonis.gislason@example.org', '+1-239-715-4962', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(23, 'Jeramie', 'Strosin', 3, 'kovacek.jeanie@example.com', '607.346.0547', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(24, 'Brenden', 'Ernser', 3, 'kim.medhurst@example.com', '(240) 790-3989', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(25, 'June', 'Lindgren', 3, 'wbergnaum@example.net', '+1-806-223-2264', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(26, 'Jordy', 'Little', 3, 'otho.larson@example.org', '+1 (601) 981-4225', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(27, 'Viviane', 'Dibbert', 3, 'agutkowski@example.org', '754.309.4567', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(28, 'Vivianne', 'Reichert', 3, 'watsica.madaline@example.com', '1-615-269-4993', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(30, 'Amani', 'Gottlieb', 3, 'maximilian05@example.org', '+12487950537', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(31, 'Heath', 'Abshire', 4, 'hschumm@example.org', '+1 (989) 321-5881', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(32, 'Henderson', 'Hodkiewicz', 4, 'kaleigh.fisher@example.net', '+1-940-976-5212', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(33, 'Anastacio', 'Schneider', 4, 'quitzon.jarret@example.com', '667.575.8520', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(34, 'June', 'Feest', 4, 'zstehr@example.net', '215.957.1790', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(35, 'Grady', 'Wintheiser', 4, 'kathryn.kozey@example.org', '+1.757.484.1860', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(36, 'Taya', 'Stamm', 4, 'tbauch@example.com', '+16026908105', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(37, 'Tanner', 'Rempel', 4, 'iemmerich@example.net', '(605) 501-0494', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(38, 'Raleigh', 'Franecki', 4, 'mollie53@example.net', '1-201-402-3247', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(39, 'Caesar', 'Dach', 4, 'tblock@example.com', '+1-424-371-0703', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(40, 'Dale', 'Bogan', 4, 'mervin.walsh@example.org', '+1-940-678-5868', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(41, 'Ludwig', 'Auer', 5, 'demetrius.kohler@example.com', '+1-346-938-5219', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(42, 'Etha', 'Baumbach', 5, 'greenholt.jarrett@example.org', '567-423-5020', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(43, 'Devante', 'Hessel', 5, 'eudora.dubuque@example.org', '346-714-2285', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(44, 'Domenico', 'Russel', 5, 'reginald41@example.com', '870.538.0320', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(45, 'Pauline', 'Ward', 5, 'qflatley@example.org', '+13519485295', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(46, 'Bernadine', 'Bins', 5, 'gusikowski.mina@example.org', '(848) 331-6797', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(47, 'Loraine', 'Stanton', 5, 'vandervort.kitty@example.com', '+1 (820) 888-0880', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(48, 'Joshuah', 'DuBuque', 5, 'sdietrich@example.org', '619-226-9699', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(49, 'Maryse', 'Mraz', 5, 'brodriguez@example.com', '+1-601-313-4124', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(50, 'Evan', 'Labadie', 5, 'legros.matilda@example.com', '1-563-887-3691', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(51, 'Bradford', 'Cremin', 6, 'ncrist@example.org', '1-360-582-6074', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(52, 'Marcelle', 'Howe', 6, 'kellie.gleichner@example.com', '361.432.4550', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(53, 'Oceane', 'Rowe', 6, 'fannie.torp@example.org', '1-564-719-2596', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(54, 'Susie', 'Harris', 6, 'vtorp@example.org', '1-412-874-3380', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(55, 'Laverna', 'Hartmann', 6, 'zachery65@example.org', '360-359-1100', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(56, 'Derek', 'Crooks', 6, 'felipa15@example.com', '281-901-6438', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(57, 'Willis', 'Braun', 6, 'tierra.boyer@example.com', '956.221.3904', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(58, 'Thelma', 'Schulist', 6, 'tristin.kunze@example.com', '(878) 593-4398', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(59, 'Alisa', 'Monahan', 6, 'runolfsdottir.letha@example.org', '1-281-496-1624', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(60, 'Jettie', 'Armstrong', 6, 'nikolas84@example.net', '810-584-9749', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(61, 'Bernard', 'Bednar', 7, 'agrant@example.org', '+15863578899', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(62, 'Gabriella', 'Kilback', 7, 'stamm.lora@example.org', '+17866635437', '2022-12-01 06:56:32', '2022-12-01 06:56:32'),
(63, 'Shanna', 'Fritsch', 7, 'vschultz@example.com', '+1-562-823-7915', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(64, 'Shea', 'King', 7, 'gmccullough@example.com', '1-757-713-6980', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(65, 'Jessica', 'Wuckert', 7, 'raymundo.crooks@example.net', '+1.678.833.5576', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(67, 'Kianna', 'White', 7, 'jose80@example.org', '740.388.4615', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(68, 'Marcelina', 'Glover', 7, 'qmurazik@example.net', '661-702-1662', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(69, 'Liliana', 'Konopelski', 7, 'cassandre.bogisich@example.net', '+1.334.894.3602', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(70, 'Ralph', 'Cummings', 7, 'murl.daniel@example.org', '+1-352-645-7526', '2022-12-01 06:56:32', '2022-12-01 06:56:33'),
(71, 'Faye', 'Huel', 8, 'mgleason@example.net', '(574) 929-7599', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(72, 'Denis', 'Kirlin', 8, 'larson.kellie@example.net', '(229) 978-6960', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(75, 'Elian', 'Wehner', 8, 'moore.tevin@example.net', '786.722.3139', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(76, 'Annie', 'Langworth', 8, 'imelda.klein@example.org', '857-838-8351', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(77, 'Jarred', 'Koepp', 8, 'adam86@example.net', '(256) 782-9872', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(78, 'Melisa', 'Lemke', 8, 'oscar.farrell@example.org', '+1.254.862.5154', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(79, 'Ressie', 'O\'Keefe', 8, 'domenick.hoppe@example.com', '+1-630-681-7167', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(82, 'Ken', 'Spencer', 9, 'caroline54@example.net', '+1-534-659-6065', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(83, 'Stan', 'Reilly', 9, 'pearlie.schiller@example.net', '276-875-2032', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(88, 'Wilfrid', 'Larson', 9, 'littel.christa@example.com', '+1-860-422-4749', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(89, 'Pierre', 'Glover', 9, 'yazmin52@example.com', '240-520-9362', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(90, 'Julian', 'Lockman', 9, 'qkuhlman@example.com', '361.995.2548', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(91, 'Hildegard', 'Crooks', 10, 'zrohan@example.com', '205-981-8642', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(92, 'Lucinda', 'Leffler', 10, 'schroeder.ruth@example.org', '(432) 514-5581', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(93, 'Althea', 'O\'Reilly', 10, 'marilou.hill@example.net', '520.969.4286', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(94, 'Dariana', 'Hegmann', 10, 'daniella.fritsch@example.net', '424-264-0916', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(95, 'Henri', 'Wolf', 10, 'gottlieb.rudolph@example.org', '540-616-9176', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(96, 'Rafael', 'McDermott', 10, 'fhauck@example.org', '+19565146784', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(97, 'Alta', 'Zboncak', 10, 'jlittle@example.org', '816.975.2182', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(98, 'Jeff', 'Donnelly', 10, 'rroob@example.net', '1-458-236-3117', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(99, 'Freddy', 'Wiegand', 10, 'deja.swaniawski@example.net', '715.591.3765', '2022-12-01 06:56:33', '2022-12-01 06:56:33'),
(100, 'Newell', 'Marquardt', 10, 'vbayer@example.net', '+1-947-204-3193', '2022-12-01 06:56:33', '2022-12-01 06:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_30_121104_create_companies_table', 1),
(6, '2022_11_30_123622_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$zjZv2eF.O/YwdKCh/Ly9Ce.N61FoFsxbcjBFcj3mfIz5Mc5tyAPNi', NULL, '2022-12-01 06:56:32', '2022-12-01 06:56:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
