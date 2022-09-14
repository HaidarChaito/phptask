-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2022 at 03:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytask`
--
CREATE DATABASE IF NOT EXISTS `mytask` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mytask`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

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
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint UNSIGNED NOT NULL,
  `First_Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Last_Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_Number` bigint NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `updated_at`, `created_at`) VALUES
(1, 'Chesley', 'Sipes', 'bernard59@kuhlman.com', 1878788693, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(2, 'Kitty', 'Maggio', 'william35@gmail.com', 124792398, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(3, 'Miguel', 'Greenholt', 'fgottlieb@hotmail.com', 884909036, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(4, 'Rico', 'Leannon', 'king.liam@kertzmann.com', 1258106650, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(5, 'Kelly', 'Beer', 'kbalistreri@friesen.com', 1547408860, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(6, 'Claudia', 'Dickinson', 'rhintz@trantow.info', 1397836891, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(7, 'Sophia', 'Howe', 'gordon.boehm@gmail.com', 1062213817, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(8, 'Kasandra', 'Conn', 'ustrosin@rosenbaum.com', 1684907857, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(9, 'Ona', 'Gerlach', 'kstreich@torp.com', 1261538152, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(10, 'Kimberly', 'Walter', 'uturner@hotmail.com', 1236951027, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(11, 'Orion', 'Goyette', 'phyllis63@runolfsdottir.com', 1774150252, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(12, 'Arielle', 'Wisozk', 'andy69@pouros.com', 604877426, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(13, 'Jacinthe', 'Feeney', 'lawson.leffler@yahoo.com', 1063804166, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(14, 'Josephine', 'Heller', 'cremin.norma@anderson.com', 1784625433, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(15, 'Margaretta', 'Johnston', 'verla92@gmail.com', 2138465465, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(16, 'Mckayla', 'Vandervort', 'jamal00@lowe.org', 89350254, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(17, 'Dewayne', 'Hodkiewicz', 'heaven.turner@bayer.com', 1280031387, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(18, 'Dasia', 'Keebler', 'aleen.daugherty@gmail.com', 772833225, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(19, 'Freeda', 'Gleason', 'cristopher.orn@schaefer.com', 1271099403, '2022-09-14 11:46:17', '2022-09-14 11:46:17'),
(20, 'Precious', 'Hand', 'kemmer.allie@hotmail.com', 251640898, '2022-09-14 11:46:17', '2022-09-14 11:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_09_13_204343_create_infos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `infos_email_unique` (`Email`),
  ADD UNIQUE KEY `infos_phone_number_unique` (`Phone_Number`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
