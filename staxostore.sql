-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 01:01 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staxostore`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(200) NOT NULL,
  `date` timestamp(6) NULL DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `date`, `reason`, `created_at`, `updated_at`) VALUES
(18, '2023-04-13 06:21:00.000000', 'Golf Court Date with business partners', '2023-04-26 01:18:24.000000', '2023-04-26 01:18:24.000000'),
(19, '2023-04-12 01:58:00.000000', 'Playing Golf with Clients at the Golf Court', '2023-04-26 07:58:40.000000', '2023-04-26 07:58:40.000000'),
(20, '2023-04-05 11:28:00.000000', 'Golf Court Date with business partners', '2023-04-26 09:28:59.000000', '2023-04-26 09:28:59.000000'),
(21, '2023-04-05 11:28:00.000000', 'Golf Court Date with business partners', '2023-04-26 09:31:13.000000', '2023-04-26 09:31:13.000000'),
(22, '2023-04-25 20:38:00.000000', 'Golf Court Date with business partners', '2023-04-26 14:38:37.000000', '2023-04-26 14:38:37.000000');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `product_title` varchar(200) DEFAULT NULL,
  `quantity` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `Product_id` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Monitors', '2023-02-20 17:46:41', '2023-02-20 17:46:41'),
(2, 'Routers', '2023-02-20 17:47:53', '2023-02-20 17:47:53'),
(6, 'Laptops', '2023-03-18 17:07:15', '2023-03-18 17:07:15'),
(7, 'Headphones', '2023-03-18 17:07:28', '2023-03-18 17:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2023_02_20_092430_create_sessions_table', 1),
(7, '2023_02_20_190014_create_categories_table', 2),
(8, '2023_02_20_222152_create_products_table', 3),
(15, '2014_10_12_000000_create_users_table', 4),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 4),
(17, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(18, '2019_08_19_000000_create_failed_jobs_table', 4),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(200) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `notifiable_type` varchar(200) DEFAULT NULL,
  `data` varchar(200) DEFAULT NULL,
  `read_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `product_title` varchar(200) DEFAULT NULL,
  `quantity` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_id` varchar(200) DEFAULT NULL,
  `payment_status` varchar(200) DEFAULT NULL,
  `delivery_status` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'cash on delivery', 'processing', '2023-03-02 16:12:11.000000', '2023-03-02 16:12:11.000000'),
(2, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'cash on delivery', 'delivered', '2023-03-02 16:12:11.000000', '2023-03-05 10:14:28.000000'),
(3, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'cash on delivery', 'processing', '2023-03-02 17:04:02.000000', '2023-03-02 17:04:02.000000'),
(4, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'cash on delivery', 'processing', '2023-03-02 17:04:02.000000', '2023-03-02 17:04:02.000000'),
(5, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'test', '1', '4', '1677442406.jpg', NULL, 'paid', 'delivered', '2023-03-02 17:06:53.000000', '2023-03-19 08:03:03.000000'),
(6, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'paid', 'delivered', '2023-03-02 17:06:53.000000', '2023-03-07 17:04:45.000000'),
(7, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'paid', 'delivered', '2023-03-06 13:25:58.000000', '2023-03-06 14:12:11.000000'),
(8, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-06 13:25:58.000000', '2023-03-06 13:25:58.000000'),
(9, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-06 13:25:58.000000', '2023-03-06 13:25:58.000000'),
(10, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'paid', 'delivered', '2023-03-07 17:03:06.000000', '2023-03-07 17:04:19.000000'),
(11, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-07 17:29:52.000000', '2023-03-07 17:29:52.000000'),
(12, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 17:29:53.000000', '2023-03-07 17:29:53.000000'),
(13, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 17:36:47.000000', '2023-03-07 17:36:47.000000'),
(14, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 18:02:35.000000', '2023-03-07 18:02:35.000000'),
(15, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 18:02:35.000000', '2023-03-07 18:02:35.000000'),
(16, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 20:15:03.000000', '2023-03-07 20:15:03.000000'),
(17, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 20:15:04.000000', '2023-03-07 20:15:04.000000'),
(18, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 20:17:45.000000', '2023-03-07 20:17:45.000000'),
(19, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 20:33:26.000000', '2023-03-07 20:33:26.000000'),
(20, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 20:39:20.000000', '2023-03-07 20:39:20.000000'),
(21, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-07 20:39:20.000000', '2023-03-07 20:39:20.000000'),
(22, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 20:41:46.000000', '2023-03-07 20:41:46.000000'),
(23, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 20:41:46.000000', '2023-03-07 20:41:46.000000'),
(24, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 20:45:08.000000', '2023-03-07 20:45:08.000000'),
(25, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 20:45:08.000000', '2023-03-07 20:45:08.000000'),
(26, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 20:45:08.000000', '2023-03-07 20:45:08.000000'),
(27, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-07 20:46:41.000000', '2023-03-07 20:46:41.000000'),
(28, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 20:46:41.000000', '2023-03-07 20:46:41.000000'),
(29, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-07 20:49:31.000000', '2023-03-07 20:49:31.000000'),
(30, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 20:50:50.000000', '2023-03-07 20:50:50.000000'),
(31, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-07 20:51:53.000000', '2023-03-07 20:51:53.000000'),
(32, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 20:59:10.000000', '2023-03-07 20:59:10.000000'),
(33, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'paid', 'delivered', '2023-03-07 21:03:31.000000', '2023-03-21 15:15:29.000000'),
(34, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 21:06:18.000000', '2023-03-07 21:06:18.000000'),
(35, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 21:06:18.000000', '2023-03-07 21:06:18.000000'),
(36, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 21:08:58.000000', '2023-03-07 21:08:58.000000'),
(37, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 21:10:21.000000', '2023-03-07 21:10:21.000000'),
(38, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-07 21:11:50.000000', '2023-03-07 21:11:50.000000'),
(39, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 21:11:50.000000', '2023-03-07 21:11:50.000000'),
(40, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 21:15:42.000000', '2023-03-07 21:15:42.000000'),
(41, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-07 21:18:10.000000', '2023-03-07 21:18:10.000000'),
(42, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 21:19:42.000000', '2023-03-07 21:19:42.000000'),
(43, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-07 21:22:09.000000', '2023-03-07 21:22:09.000000'),
(44, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 21:23:24.000000', '2023-03-07 21:23:24.000000'),
(45, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-07 21:23:24.000000', '2023-03-07 21:23:24.000000'),
(46, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-11 14:14:51.000000', '2023-03-11 14:14:51.000000'),
(47, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-11 14:14:51.000000', '2023-03-11 14:14:51.000000'),
(48, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-11 14:18:02.000000', '2023-03-11 14:18:02.000000'),
(49, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-11 14:18:02.000000', '2023-03-11 14:18:02.000000'),
(50, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-14 08:17:00.000000', '2023-03-14 08:17:00.000000'),
(51, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-14 08:17:00.000000', '2023-03-14 08:17:00.000000'),
(52, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Laptop', '1', '2300', '1677481959.png', NULL, 'Paid', 'processing', '2023-03-14 09:21:55.000000', '2023-03-14 09:21:55.000000'),
(53, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Laptop', '1', '23000', '1677482038.png', NULL, 'Paid', 'processing', '2023-03-14 09:21:56.000000', '2023-03-14 09:21:56.000000'),
(54, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Paid', 'processing', '2023-03-14 09:21:56.000000', '2023-03-14 09:21:56.000000'),
(55, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Deposited', 'processing', '2023-03-16 19:15:05.000000', '2023-03-16 19:15:05.000000'),
(56, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Deposited', 'processing', '2023-03-21 08:52:18.000000', '2023-03-21 08:52:18.000000'),
(57, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '1300', '1677482107.png', NULL, 'Deposited', 'processing', '2023-03-21 08:52:19.000000', '2023-03-21 08:52:19.000000'),
(58, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus i5', '1', '2400', '1679167059.png', NULL, 'Deposited', 'processing', '2023-03-21 09:11:20.000000', '2023-03-21 09:11:20.000000'),
(59, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Deposited', 'processing', '2023-03-21 10:21:05.000000', '2023-03-21 10:21:05.000000'),
(60, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Lenovo i5', '1', '4500', '1679167192.png', NULL, 'Deposited', 'processing', '2023-03-21 12:03:34.000000', '2023-03-21 12:03:34.000000'),
(61, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Lenovo Tablet', '1', '5600', '1677482176.png', NULL, 'Deposited', 'processing', '2023-03-21 12:09:39.000000', '2023-03-21 12:09:39.000000'),
(62, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus i5', '1', '2400', '1679167059.png', NULL, 'Deposited', 'processing', '2023-03-21 12:17:58.000000', '2023-03-21 12:17:58.000000'),
(63, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Deposited', 'processing', '2023-03-21 12:21:31.000000', '2023-03-21 12:21:31.000000'),
(64, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Lenovo i5', '1', '4500', '1679167192.png', NULL, 'Paid', 'processing', '2023-03-21 13:44:04.000000', '2023-03-21 13:44:04.000000'),
(65, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Lenovo Tablet', '1', '5600', '1677482176.png', NULL, 'Deposited', 'processing', '2023-03-21 13:48:32.000000', '2023-03-21 13:48:32.000000'),
(66, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Lenovo Tablet', '1', '5600', '1677482176.png', NULL, 'Paid', 'processing', '2023-03-22 17:42:03.000000', '2023-03-22 17:42:03.000000'),
(67, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Asus Headphones', '1', '3400', '1679413052.png', NULL, 'Paid', 'processing', '2023-03-22 17:42:03.000000', '2023-03-22 17:42:03.000000'),
(68, 'Lux', 'luxmotsumi67@gmail.com', NULL, NULL, '1', 'Sony Headphones', '1', '2000', '1677482139.png', NULL, 'Paid', 'processing', '2023-03-22 17:42:04.000000', '2023-03-22 17:42:04.000000');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(12, 'Sony Headphones', 'Sony Gaming', '1677482139.png', 'Monitors', '4', '2000', '1600', '2023-02-27 05:15:39', '2023-02-27 05:15:39'),
(13, 'Lenovo Tablet', 'Lenovo Tablet series', '1677482176.png', 'Monitors', '5', '5600', '5000', '2023-02-27 05:16:16', '2023-02-27 05:16:16'),
(19, 'Asus i5', 'Asus 1515', '1679167059.png', 'Laptops', '8', '2400', '1600', '2023-03-18 17:17:39', '2023-03-18 17:17:39'),
(21, 'Lenovo i5', 'Lenovo Think i5', '1679167192.png', 'Laptops', '7', '4500', '1600', '2023-03-18 17:19:52', '2023-03-18 17:19:52'),
(22, 'Asus Headphones', 'Gaming Headphones', '1679413052.png', 'Headphones', '8', '3400', '1200', '2023-03-21 13:37:32', '2023-03-21 13:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KZ3r8xhnfK92bcN010ahNcX0ONdvtoR7O9s6hXkB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzlYcTdwR2IyekRxMWN0dGxpZ1RHS3RFdGlxNk5XUkxQckNzaU9TdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93X2Jvb2tpbmdzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1682530339);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Lux', 'luxmotsumi67@gmail.com', '1', NULL, NULL, NULL, '$2y$10$iPj6I3S7bkZC1u.Biv1dYONXe2bGjg6lP0jTuOyS3ylMDvwsHp38y', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 05:15:52', '2023-03-01 05:15:52'),
(2, 'User1', 'user1@gmail.com', '1', NULL, NULL, NULL, '$2y$10$jBslUKmbUjadC15jQ2nCyudsarIDSFVBCkG8HC9mA330NzMMo7.3G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 13:16:14', '2023-04-26 13:16:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD UNIQUE KEY `uuid` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
