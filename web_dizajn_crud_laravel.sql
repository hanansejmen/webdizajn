-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 11:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_dizajn_crud_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanstvo`
--

CREATE TABLE `clanstvo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `benefits` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clanstvo`
--

INSERT INTO `clanstvo` (`id`, `name`, `description`, `benefits`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'ovo je testno clanstvo', 'sve sve sve', 50, '2025-04-04 17:37:51', '2025-04-04 17:37:51'),
(2, 'Bronza', 'Osnovno članstvo', 'koristenje teretane', 30, '2025-04-06 18:47:15', '2025-04-06 18:47:15'),
(3, 'Srebro', 'prošireno članstvo', 'korištenje,teretane,individualni treninzi', 60, '2025-04-06 18:47:42', '2025-04-06 18:47:42'),
(4, 'Zlato', 'najbolje članstvo', 'korištenje teretane,individualni treninzi,popust u shopu', 100, '2025-04-06 18:48:11', '2025-04-06 18:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `name`, `surname`, `date_of_birth`, `phone_number`, `email`, `adress`, `created_at`, `updated_at`) VALUES
(1, 'Test1', 'Test', '2010-10-10', '062777049', 'test@test.com', 'Postojeca 2', '2025-04-04 17:27:57', '2025-04-05 17:19:12'),
(4, 'Hanan', 'Sejmen', '2001-08-23', '06030296747', 'hanan.sejmen@gmail.com', 'Sarajevska 428', '2025-04-06 18:41:02', '2025-04-06 18:41:02'),
(5, 'Neki', 'NoviKorisnik', '2010-08-23', '424643834239', 'test@test.com', 'Sarajevska 428', '2025-04-06 18:41:36', '2025-04-06 18:41:36'),
(6, 'Marko', 'Marković', '1985-06-12', '0612345678', 'marko.markovic@example.com', 'Banjalučka 12, Sarajevo', NULL, NULL),
(7, 'Jelena', 'Jovanović', '1990-04-25', '0623456789', 'jelena.jovanovic@example.com', 'Mirsada Smajlovića 5, Zenica', NULL, NULL),
(8, 'Ana', 'Nikolić', '1988-03-09', '0634567890', 'ana.nikolic@example.com', 'Franje Tuđmana 7, Mostar', NULL, NULL),
(9, 'Ivan', 'Petrović', '1992-02-20', '0645678901', 'ivan.petrovic@example.com', 'Hrvatske Veljkovski 3, Tuzla', NULL, NULL),
(10, 'Maja', 'Vasiljević', '1984-11-13', '0656789012', 'maja.vasiljevic@example.com', 'Mihaila Jovanovića 8, Novi Pazar', NULL, NULL),
(11, 'Marko', 'Pavić', '1991-07-18', '0667890123', 'marko.pavic@example.com', 'Kneza Miloša 4, Rijeka', NULL, NULL),
(12, 'Petar', 'Savić', '1987-12-02', '0678901234', 'petar.savic@example.com', 'Mihajla Pupina 14, Novi Sad', NULL, NULL),
(13, 'Ivana', 'Stanković', '1993-01-30', '0689012345', 'ivana.stankovic@example.com', 'Nikole Tesle 22, Beograd', NULL, NULL),
(14, 'Jovana', 'Todorović', '1995-08-14', '0690123456', 'jovana.todorovic@example.com', 'Laze Kostića 10, Kragujevac', NULL, NULL),
(15, 'Stefan', 'Marinković', '1990-10-22', '0701234567', 'stefan.marinkovic@example.com', 'Kralja Petra 25, Niš', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_04_152757_create_korisnici_table', 2),
(6, '2025_04_04_153218_create_clanstvo_table', 3),
(7, '2025_04_04_153438_create_radnici_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `radnici`
--

CREATE TABLE `radnici` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `contract_since` date NOT NULL,
  `contract_till` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `radnici`
--

INSERT INTO `radnici` (`id`, `name`, `surname`, `date_of_birth`, `phone_number`, `email`, `Adress`, `contract_since`, `contract_till`, `created_at`, `updated_at`) VALUES
(1, 'Amar', 'Kavaz', '2010-10-10', '062777049', 'test@test.com', 'Postojeca 2', '2024-12-10', '2025-12-10', '2025-04-04 18:04:38', '2025-04-04 18:04:38'),
(2, 'Ana', 'Anic', '1999-06-08', '060111234', 'anaanic@gmail.com', 'Stanovska 4', '2025-04-01', '2025-08-01', '2025-04-06 18:46:47', '2025-04-06 18:46:47'),
(3, 'Amar', 'Dautovic', '1995-12-05', '060222333', 'amar@yahoo.com', 'Zmaja bb', '2024-10-01', '9999-12-31', '2025-04-06 18:49:21', '2025-04-06 18:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hanan', 'hanan.sejmen@gmail.com', NULL, '$2y$10$6SHp3wv4Xf/ajyK.opZk7.MR9j6s9q1SpPe7x2DIwr321qyYv3vz2', NULL, '2025-04-06 18:03:30', '2025-04-06 18:03:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanstvo`
--
ALTER TABLE `clanstvo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `radnici`
--
ALTER TABLE `radnici`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `clanstvo`
--
ALTER TABLE `clanstvo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radnici`
--
ALTER TABLE `radnici`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
