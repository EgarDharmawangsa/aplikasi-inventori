-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meri`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `user_id`, `name`, `stock`, `price`, `created_at`, `updated_at`) VALUES
(1, 9, 'Raihan Prakasa Baru', 30, 22222, '2024-05-28 08:02:58', '2024-05-28 08:14:02'),
(2, 6, 'Mariadi Darimin Latupono S.Pt', 1, 16823, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(3, 2, 'Jagaraga Prasetya', 12, 17940, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(4, 10, 'Asmuni Candrakanta Marpaung S.Pd', 20, 15163, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(5, 2, 'Malika Usamah', 12, 28862, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(6, 2, 'Narji Marbun S.Psi', 12, 20957, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(7, 2, 'Bagas Maulana M.TI.', 23, 24971, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(8, 5, 'Asirwanda Santoso', 5, 16859, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(9, 7, 'Mustofa Maulana', 14, 29017, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(10, 8, 'Kezia Uyainah', 7, 11221, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(11, 8, 'Budi Siregar', 27, 16842, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(12, 9, 'Febi Laksmiwati', 18, 10757, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(13, 4, 'Nadia Usada', 11, 17055, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(14, 1, 'Uli Nabila Wulandari S.Farm', 17, 26328, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(15, 8, 'Faizah Nasyiah', 10, 16186, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(16, 10, 'Najam Bajragin Wibowo S.H.', 3, 12784, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(17, 5, 'Ajiman Mangunsong', 9, 16050, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(18, 4, 'Widya Hasanah', 13, 20686, '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(21, 1, 'Shampo Bayi', 340, 15000, '2024-07-01 18:41:31', '2024-07-01 18:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_04_070420_create_barangs_table', 1),
(5, '2024_05_07_010606_create_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(2, 'non-admin', '2024-05-28 08:02:58', '2024-05-28 08:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sa8V3dZNh9iDm8b1AtnH9WVgPQoJKpgIuhFg1f0o', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNVNtUGFBMFZjYm9xMWlrMkFpUU4xN2xrcUpoMGh5TkR2S3ZDNjlHQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vYXBsaWthc2lpbnZlbnRvcmkudGVzdC9kYWZ0YXJwZXR1Z2FzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjE7fQ==', 1721534559);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cinthia Paulin Halimah Baru', 'indra.halim', 2, 'zmarbun@example.com', '2024-05-28 08:02:58', 'admin', 'oaMPBjTskV', '2024-05-28 08:02:58', '2024-05-28 09:01:53'),
(2, 'Cager Prayoga', 'nova.permata', 1, 'kayla87@example.com', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', '16Sy97QaWG', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(3, 'Sari Palastri', 'nova.irawan', 1, 'marbun.kania@example.org', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'lVbQqeowoP', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(4, 'Kania Usamah', 'lintang20', 1, 'puti65@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'r8ZhceoAPb', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(5, 'Sakura Dinda Puspita M.Pd', 'usamah.kartika', 1, 'suryono.karimah@example.com', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'wm8fGhNjSF', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(6, 'Reksa Tamba', 'vlestari', 1, 'siska.marbun@example.com', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'bdhHmx7oyZ', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(7, 'Bakianto Jailani', 'ajiman.melani', 2, 'safitri.qori@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'kODoMpKx60', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(8, 'Mursita Siregar', 'qnuraini', 1, 'cahyono00@example.org', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'k2pQEPaf66', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(9, 'Cornelia Namaga S.E.', 'manullang.raina', 1, 'ratih.simanjuntak@example.org', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'sPQ1mXRC4R', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(10, 'Adika Simbolon', 'usuartini', 2, 'fathonah.mulyani@example.com', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', '6QFg5kaW8p', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(11, 'Hana Yulianti', 'mandriani', 2, 'susanti.karja@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'qVmm5jcBJF', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(12, 'Ismail Marpaung', 'tdongoran', 1, 'luwes61@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'fAKL2SBADY', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(13, 'Darmanto Sihombing', 'anggraini.unggul', 2, 'xwijayanti@example.org', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'Qs0s7fqNZj', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(14, 'Jati Uda Pranowo', 'melinda.laksmiwati', 2, 'mandala.tirta@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'A0IqEdVJbz', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(15, 'Gilda Mandasari', 'hutapea.gandewa', 2, 'irma91@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'TcTtMPkKtC', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(16, 'Kasim Mahendra', 'gmandala', 2, 'ibrahim44@example.com', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', '5KoVG7BNtQ', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(17, 'Laila Kusmawati S.IP', 'nova.saragih', 2, 'ohutapea@example.org', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'COOJO208t2', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(18, 'Dalimin Wacana', 'mustofa.catur', 2, 'jono.padmasari@example.org', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'LL0WUn5cjw', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(19, 'Gatra Pradana', 'mardhiyah.adhiarja', 1, 'jaka15@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'Xhs91XxSRw', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(20, 'Dimas Ardianto S.Ked', 'djanuar', 2, 'ztampubolon@example.net', '2024-05-28 08:02:58', '$2y$12$arIXc2mSzUe3EJpMIyH1Nus.cmW594sYfguSx8AMsTbf8d2ERgY1C', 'XziCEv8QjI', '2024-05-28 08:02:58', '2024-05-28 08:02:58'),
(21, 'admin', 'admin', 1, 'admin@gmail.com', NULL, '$2y$12$OzO2qjvXrkMTrWQvxjEPiOwIgIfLtUkJSJUWxnP6sXPfKbvzLJ4le', NULL, '2024-05-28 08:03:11', '2024-05-28 08:03:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
