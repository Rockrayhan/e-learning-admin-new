-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 05:03 PM
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
-- Database: `laravel-e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mr Admin', 'admin@gmail.com', NULL, '$2y$12$C3P4CpcLQzeSP2tuwq4phu5WYwjETSDVtllx.wllL9.u0mRVJPMmi', NULL, '2024-01-31 09:03:35', '2024-01-31 09:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Programming', '2024-02-01 13:22:32', '2024-02-01 13:22:32'),
(5, 'Database', '2024-02-01 13:22:47', '2024-02-01 13:22:47'),
(6, 'Networking', '2024-02-01 13:23:31', '2024-02-01 13:23:31'),
(7, 'Digital Marketing', '2024-02-01 13:25:01', '2024-02-01 13:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `catelogues`
--

CREATE TABLE `catelogues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catelogues`
--

INSERT INTO `catelogues` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, ' Product Title 1 ', 'This is product description', '2024-01-22 09:45:21', '2024-01-22 09:45:21'),
(2, ' Product Title 2', 'This is product description', '2024-01-22 09:45:21', '2024-01-22 09:45:21'),
(3, ' Product Title 3', 'This is product description', '2024-01-22 09:45:21', '2024-01-22 09:45:21'),
(4, ' Product Title 4', 'This is product description', '2024-01-22 09:45:21', '2024-01-22 09:45:21'),
(5, 'title 5', 'asdasdasdasdasdasdad', '2024-01-22 10:05:21', '2024-01-22 10:05:21');

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
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `c_id` tinyint(4) DEFAULT NULL,
  `l_id` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `email_verified_at`, `password`, `c_id`, `l_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Instructor', 'instructor@gmail.com', NULL, '$2y$12$C3P4CpcLQzeSP2tuwq4phu5WYwjETSDVtllx.wllL9.u0mRVJPMmi', NULL, NULL, NULL, '2024-01-31 17:27:29', '2024-01-31 17:27:29'),
(2, 'instrucotr 22', 'instructor22@gmail.com', NULL, '$2y$12$C3P4CpcLQzeSP2tuwq4phu5WYwjETSDVtllx.wllL9.u0mRVJPMmi', NULL, NULL, NULL, '2024-02-01 13:46:17', '2024-02-01 13:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `product_id` tinyint(4) DEFAULT NULL,
  `instructor_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `product_id`, `instructor_id`, `created_at`, `updated_at`) VALUES
(1, 'Simple Data Entry', 1, 1, NULL, NULL),
(2, 'Data Spamming', 2, 2, NULL, NULL),
(4, 'Basic English', 4, NULL, '2024-02-01 09:42:37', '2024-02-01 09:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Jonson & Jonson', 'USA', '2024-01-22 15:49:09', '2024-01-22 15:49:09'),
(2, 'Healforce', 'China', '2024-01-22 15:49:09', '2024-01-22 15:49:09'),
(3, 'Meditron', 'Canada', '2024-01-22 15:49:09', '2024-01-22 15:49:09');

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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2024_01_04_084239_create_categories_table', 1),
(22, '2024_01_04_084331_create_products_table', 1),
(23, '2024_01_22_063606_create_admins_table', 2),
(24, '2024_01_22_064122_create_admins_table', 3),
(25, '2024_01_22_093435_create_catelogues_table', 4),
(26, '2024_01_22_154159_create_migrations_table', 5),
(27, '2024_01_23_070024_create_orders_table', 6),
(28, '2024_01_31_090131_create_admins_table', 7),
(29, '2024_01_31_170435_create_instructors_table', 8),
(30, '2024_01_31_171305_create_instructors_table', 9),
(31, '2024_02_01_113649_create_products_table', 10),
(32, '2024_02_01_134052_create_lessons_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `u_name`, `phone`, `p_name`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Masum', '1500000', 'Glass face mask', '50', '2024-01-25 07:09:17', '2024-01-25 07:09:17'),
(2, 'Masum', '0155555', 'Hand gloves', '50', '2024-01-25 07:11:50', '2024-01-25 07:11:50'),
(3, 'Masum', '0158080', 'Glass face mask', '50', '2024-01-25 07:14:50', '2024-01-25 07:14:50'),
(4, 'Masum', '0158080', 'Glass face mask', '50', '2024-01-25 07:17:02', '2024-01-25 07:17:02'),
(5, 'Masum', '0155555', 'Glass face mask', '50', '2024-01-25 07:19:54', '2024-01-25 07:19:54'),
(6, 'Masum', '0155555', 'Glass face mask', '50', '2024-01-25 07:23:01', '2024-01-25 07:23:01');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `manufacturer_id` tinyint(4) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `instructor_id` tinyint(4) DEFAULT NULL,
  `student_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `manufacturer_id`, `image`, `instructor_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'Data Analysis', 'This is product description', 120.00, 5, 1, '1706793311.jpg', 1, 2, '2024-02-01 11:47:26', '2024-02-01 07:15:11'),
(2, 'Linux Basic To Advance', 'This is product description', 130.00, 6, 1, 'images/no_photo.jpg', 1, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26'),
(3, 'MS expert', 'This is product description', 140.00, 6, 2, 'images/no_photo.jpg', 1, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26'),
(4, 'Prompt Engineering', 'This is product description', 150.00, 4, 2, 'images/no_photo.jpg', 1, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26'),
(5, 'AI learning', 'This is product description', 140.00, 4, 3, 'images/no_photo.jpg', 2, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26'),
(6, 'Graphics Design', 'This is product description', 150.00, 7, 3, 'images/no_photo.jpg', 2, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26'),
(7, 'Facebook Marketing', 'This is product description', 140.00, 7, 3, 'images/no_photo.jpg', 2, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26'),
(8, 'Digital Marketing', 'This is product description', 150.00, 7, 3, 'images/no_photo.jpg', 2, 2, '2024-02-01 11:47:26', '2024-02-01 11:47:26');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. User', 'abc@gmail.com', NULL, '$2y$12$C3P4CpcLQzeSP2tuwq4phu5WYwjETSDVtllx.wllL9.u0mRVJPMmi', NULL, '2024-01-21 09:19:55', '2024-01-21 09:19:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catelogues`
--
ALTER TABLE `catelogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_email_unique` (`email`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catelogues`
--
ALTER TABLE `catelogues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
