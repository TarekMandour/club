-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 01:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `role_id` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `password`, `photo`, `is_active`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Tarek Mandour', 'tarek.mandourr@gmail.com', '010062855379', '$2y$10$DdlKDFqLfrh8/DtMVSS/A.CFpRpr9VqmXKTv.4yTymkE83bOCEmVa', 'img1_1653665367.jpg', 1, 1, NULL, '2022-05-27 12:19:58', '2022-05-27 12:19:58'),
(9, 'tareq mohamed abdo', 'nehal.samir@rehamallam.com', '966541774999', '$2y$10$uGM5kneev5Rk.TXQ3E8qO./Si0N5mMwJGuACaF1NjqS1Q01XMg8US', NULL, 1, 0, NULL, '2022-06-04 14:24:37', '2022-06-04 14:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) DEFAULT 0,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_en`, `parent`, `photo`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'احداث وفعاليات', 'Events', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:19:59', '2022-05-27 12:19:59'),
(2, 'قسم فرعي 1', 'Sub Category 1', 1, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:19:59', '2022-05-27 12:19:59'),
(3, 'قسم فرعي 2', 'Sub Category 2', 1, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(4, 'قسم فرعي 3', 'Sub Category 3', 1, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(5, 'قسم رئيسي 2', 'Main Category 2', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(6, 'قسم فرعي 1', 'Sub Category 1', 5, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(7, 'قسم فرعي 2', 'Sub Category 2', 5, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(8, 'قسم فرعي 3', 'Sub Category 3', 5, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(9, 'قسم رئيسي 3', 'Main Category 3', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(10, 'قسم فرعي 1', 'Sub Category 1', 9, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(11, 'قسم فرعي 2', 'Sub Category 2', 9, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(12, 'قسم فرعي 3', 'Sub Category 3', 9, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:00', '2022-05-27 12:20:00'),
(13, 'قسم رئيسي 4', 'Main Category 4', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(14, 'قسم فرعي 1', 'Sub Category 1', 13, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(15, 'قسم فرعي 2', 'Sub Category 2', 13, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(16, 'قسم فرعي 3', 'Sub Category 3', 13, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(17, 'قسم رئيسي 5', 'Main Category 5', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(18, 'قسم فرعي 1', 'Sub Category 1', 17, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(19, 'قسم فرعي 2', 'Sub Category 2', 17, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(20, 'قسم فرعي 3', 'Sub Category 3', 17, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(21, 'قسم رئيسي 6', 'Main Category 6', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(22, 'قسم فرعي 1', 'Sub Category 1', 21, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(23, 'قسم فرعي 2', 'Sub Category 2', 21, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(24, 'قسم فرعي 3', 'Sub Category 3', 21, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(25, 'قسم رئيسي 7', 'Main Category 7', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(26, 'قسم فرعي 1', 'Sub Category 1', 25, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:01', '2022-05-27 12:20:01'),
(27, 'قسم فرعي 2', 'Sub Category 2', 25, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(28, 'قسم فرعي 3', 'Sub Category 3', 25, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(29, 'قسم رئيسي 8', 'Main Category 8', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(30, 'قسم فرعي 1', 'Sub Category 1', 29, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(31, 'قسم فرعي 2', 'Sub Category 2', 29, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(32, 'قسم فرعي 3', 'Sub Category 3', 29, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(33, 'قسم رئيسي 9', 'Main Category 9', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(34, 'قسم فرعي 1', 'Sub Category 1', 33, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(35, 'قسم فرعي 2', 'Sub Category 2', 33, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(36, 'قسم فرعي 3', 'Sub Category 3', 33, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(37, 'قسم رئيسي 10', 'Main Category 10', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(38, 'قسم فرعي 1', 'Sub Category 1', 37, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(39, 'قسم فرعي 2', 'Sub Category 2', 37, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(40, 'قسم فرعي 3', 'Sub Category 3', 37, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(41, 'قسم رئيسي 11', 'Main Category 11', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:02', '2022-05-27 12:20:02'),
(42, 'قسم فرعي 1', 'Sub Category 1', 41, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(43, 'قسم فرعي 2', 'Sub Category 2', 41, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(44, 'قسم فرعي 3', 'Sub Category 3', 41, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(45, 'قسم رئيسي 12', 'Main Category 12', 0, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(46, 'قسم فرعي 1', 'Sub Category 1', 45, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(47, 'قسم فرعي 2', 'Sub Category 2', 45, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(48, 'قسم فرعي 3', 'Sub Category 3', 45, 'img1_1653665367.jpg', 'meta_keywords', 'meta_description', '2022-05-27 12:20:03', '2022-05-27 12:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jop` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `register_date` timestamp NULL DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `type` tinyint(4) DEFAULT 0,
  `parent_id` int(11) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `membership_no`, `national_no`, `phone`, `password`, `email`, `jop`, `birth_date`, `register_date`, `photo`, `is_active`, `type`, `parent_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'طارق ابو مندور', '848421-1', '87218017171981', '201006287371', '$2y$10$35c6KTr5FaeK9RqB8bs02eGJrGXKSACyLreiwUf.ACW.3sZAl46Ai', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-01 09:14:54', '2014-08-01 09:14:54', 'img1_1653665367.jpg', 1, 0, 0, NULL, '2022-05-27 12:20:10', '2022-05-27 13:29:27'),
(2, 'مالك طارق ابو مندور', '84842.1-1', '8721801717198.1-1', '201006287311', '$2y$10$Wm/h1UCSGvQEfhB8SRbpbO6TRfl.m/cHSNSVlvZpz4szsaduLvwUO', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-01 09:14:54', '2014-08-01 09:14:54', NULL, 1, 1, 1, NULL, '2022-05-27 12:20:12', '2022-05-27 12:20:12'),
(3, 'روفان طارق ابو مندور', '84842.1-2', '8721801717198.1-2', '201006287312', '$2y$10$AdEYAFcvpvgoeW7odvX.CuduGQj3d2IOty7g5AUnpt0X0yIhIZXT.', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-01 09:14:54', '2014-08-01 09:14:54', NULL, 1, 1, 1, NULL, '2022-05-27 12:20:12', '2022-05-27 12:20:12'),
(4, 'محمود الغرباوي', '848421-2', '87218017171982', '201006287372', '$2y$10$iaFAoXauQB59o5QCdhadTO3IORPRLgRRVudwqN7sIB5ttP0zetJ/6', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-02 09:14:54', '2014-08-02 09:14:54', NULL, 1, 0, 0, NULL, '2022-05-27 12:20:12', '2022-05-27 12:20:12'),
(5, 'ادم محمود الغرباوي', '84842.2-1', '8721801717198.2-1', '201006287321', '$2y$10$5N6aTaO8e2yTneLHdG93v.VHM/Xa1VCqZx9hVST8happJJWTW5Osu', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-02 09:14:54', '2014-08-02 09:14:54', NULL, 1, 1, 4, NULL, '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(6, 'ايسل محمود الغرباوي', '84842.2-2', '8721801717198.2-2', '201006287322', '$2y$10$3fGATadQN05Fx7W0Pksn3uRHHdhHGd4k3.Ff9NlCqxDY2zqL3ZmYG', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-02 09:14:54', '2014-08-02 09:14:54', NULL, 1, 1, 4, NULL, '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(7, 'محمود درويش', '848421-3', '87218017171983', '201006287373', '$2y$10$rFmEpAWmeh0NpTBJjOWybOZssnspfHgLwLX5tBWC7z4ZDhHdL9Tbq', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-03 09:14:54', '2014-08-03 09:14:54', NULL, 1, 0, 0, NULL, '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(8, 'مؤمن محمود درويش', '84842.3-1', '8721801717198.3-1', '201006287331', '$2y$10$LvT9Lgn9yY.5SW6BjEJkHOgcTdW6txqMs3dh5DwLgjk.Ilj0z2Mzq', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-03 09:14:54', '2014-08-03 09:14:54', NULL, 1, 1, 7, NULL, '2022-05-27 12:20:15', '2022-05-27 12:20:15'),
(9, 'ساره محمود درويش', '84842.3-2', '8721801717198.3-2', '201006287332', '$2y$10$eFYd/kFNpRtKALaI/umcROgxNn9hPrTHj5tNYPvePm9YufTqPsfYK', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-03 09:14:54', '2014-08-03 09:14:54', NULL, 1, 1, 7, NULL, '2022-05-27 12:20:15', '2022-05-27 12:20:15'),
(10, 'نور خميس', '848421-4', '87218017171984', '201006287374', '$2y$10$UWhtFndELFxuGUv6fIuVzu3OwyqgVDrbtR2Okg119GCjrApuyFC2m', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-04 09:14:54', '2014-08-04 09:14:54', NULL, 1, 0, 0, NULL, '2022-05-27 12:20:15', '2022-05-27 12:20:15'),
(11, 'ليليا نور خميس', '84842.4-1', '8721801717198.4-1', '201006287341', '$2y$10$wpj1DO2b0O6jGPy0RKMpXehgMCHSpvdwEn6W3Dp4Z1rjYU0PrTqvm', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-04 09:14:54', '2014-08-04 09:14:54', NULL, 1, 1, 10, NULL, '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(12, 'سليم نور خميس', '84842.4-2', '8721801717198.4-2', '201006287342', '$2y$10$f1PRaXKhs86ib2khgzWMk.cFCrCzRgtke4Q5y/BT15vT5dIO.2NlW', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-04 09:14:54', '2014-08-04 09:14:54', NULL, 1, 1, 10, NULL, '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(13, 'اسامه زيدان', '848421-5', '87218017171985', '201006287375', '$2y$10$F9oJ0UaP5SarQLqIV5u3eex/1GdYZoOpC2q6QGf08rCcUcra7P9Nm', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-05 09:14:54', '2014-08-05 09:14:54', NULL, 1, 0, 0, NULL, '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(14, 'لي لي اسامه زيدان', '84842.5-1', '8721801717198.5-1', '201006287351', '$2y$10$0TTAMxpRw/PTWVm3fJFm6en.R7Qh4liKz7q7Sjf5S8zCyjPxi7UpW', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-05 09:14:54', '2014-08-05 09:14:54', NULL, 1, 1, 13, NULL, '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(15, 'عز اسامه زيدان', '84842.5-2', '8721801717198.5-2', '201006287352', '$2y$10$fveoFM13mFnrJFs7NbSVfu8YC1jGVZp7PNe.yCW95Lw5dbUB7s9We', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-05 09:14:54', '2014-08-05 09:14:54', NULL, 1, 1, 13, NULL, '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(16, 'عميل تجريبي', '848421-6', '87218017171986', '201006287376', '$2y$10$VKVJL9I40p//SaBJJi.H4eMgC3uqChteJRxRfG.EG67rVOiM/58Ly', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-06 09:14:54', '2014-08-06 09:14:54', NULL, 1, 0, 0, NULL, '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(17, 'عميل تابع تجريبي', '84842.6-1', '8721801717198.6-1', '201006287361', '$2y$10$cdMsouq7ircsiphqA7EtkOK1LVc0xRnkGomQnTdc/tD4O18FCFCmG', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-06 09:14:54', '2014-08-06 09:14:54', NULL, 1, 1, 16, NULL, '2022-05-27 12:20:19', '2022-05-27 12:20:19'),
(18, 'عميل تابع تجريبي', '84842.6-2', '8721801717198.6-2', '201006287362', '$2y$10$41LCU9IRVZpLUFsKfAcq0uWA.xHtO.n4lRubMmtjM2B9AmJqtrkoS', 'tarek.mandourr@gmail.com', 'Web Developer', '1987-08-06 09:14:54', '2014-08-06 09:14:54', NULL, 1, 1, 16, NULL, '2022-05-27 12:20:19', '2022-05-27 12:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `client_cards`
--

CREATE TABLE `client_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_cards`
--

INSERT INTO `client_cards` (`id`, `client_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'كارنيه 1', '2022-05-27 12:20:10', '2022-05-27 12:20:10'),
(2, 1, 'كارنيه 1', '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(3, 1, 'كارنيه 1', '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(4, 4, 'كارنيه 2', '2022-05-27 12:20:12', '2022-05-27 12:20:12'),
(5, 4, 'كارنيه 2', '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(6, 4, 'كارنيه 2', '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(7, 7, 'كارنيه 3', '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(8, 7, 'كارنيه 3', '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(9, 7, 'كارنيه 3', '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(10, 10, 'كارنيه 4', '2022-05-27 12:20:15', '2022-05-27 12:20:15'),
(11, 10, 'كارنيه 4', '2022-05-27 12:20:15', '2022-05-27 12:20:15'),
(12, 10, 'كارنيه 4', '2022-05-27 12:20:15', '2022-05-27 12:20:15'),
(13, 13, 'كارنيه 5', '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(14, 13, 'كارنيه 5', '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(15, 13, 'كارنيه 5', '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(16, 16, 'كارنيه 6', '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(17, 16, 'كارنيه 6', '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(18, 16, 'كارنيه 6', '2022-05-27 12:20:18', '2022-05-27 12:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `client_debts`
--

CREATE TABLE `client_debts` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_debts`
--

INSERT INTO `client_debts` (`id`, `client_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-06-06', 300.00, '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(2, 1, '2024-06-06', 300.00, '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(3, 4, '2023-06-06', 300.00, '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(4, 4, '2024-06-06', 300.00, '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(5, 7, '2023-06-06', 300.00, '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(6, 7, '2024-06-06', 300.00, '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(7, 10, '2023-06-06', 300.00, '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(8, 10, '2024-06-06', 300.00, '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(9, 13, '2023-06-06', 300.00, '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(10, 13, '2024-06-06', 300.00, '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(11, 16, '2023-06-06', 300.00, '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(12, 16, '2024-06-06', 300.00, '2022-05-27 12:20:18', '2022-05-27 12:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `client_notifications`
--

CREATE TABLE `client_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_notifications`
--

INSERT INTO `client_notifications` (`id`, `client_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(2, 1, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(3, 1, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:12', '2022-05-27 12:20:12'),
(4, 4, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(5, 4, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(6, 4, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(7, 7, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(8, 7, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(9, 7, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(10, 10, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(11, 10, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(12, 10, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(13, 13, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(14, 13, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(15, 13, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(16, 16, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(17, 16, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:18', '2022-05-27 12:20:18'),
(18, 16, 'تذكير سداد ', 'يرجى دفع مصاريف كارنيه ', '2022-05-27 12:20:18', '2022-05-27 12:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `client_payments`
--

CREATE TABLE `client_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_payments`
--

INSERT INTO `client_payments` (`id`, `client_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-06 09:14:54', 300.00, '2022-05-27 12:20:11', '2022-05-27 12:20:11'),
(2, 4, '2022-06-06 09:14:54', 300.00, '2022-05-27 12:20:13', '2022-05-27 12:20:13'),
(3, 7, '2022-06-06 09:14:54', 300.00, '2022-05-27 12:20:14', '2022-05-27 12:20:14'),
(4, 10, '2022-06-06 09:14:54', 300.00, '2022-05-27 12:20:16', '2022-05-27 12:20:16'),
(5, 13, '2022-06-06 09:14:54', 300.00, '2022-05-27 12:20:17', '2022-05-27 12:20:17'),
(6, 16, '2022-06-06 09:14:54', 300.00, '2022-05-27 12:20:18', '2022-05-27 12:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `type`, `email`, `phone`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'رسالة  1', NULL, 'tarek.mandourr1@gmail.com', '01006287379', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(2, 'رسالة  2', NULL, 'tarek.mandourr2@gmail.com', '01006287379', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(3, 'رسالة  3', NULL, 'tarek.mandourr3@gmail.com', '01006287379', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', '2022-05-27 12:20:09', '2022-05-27 12:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_26_130449_create_settings_table', 1),
(5, '2022_05_26_131206_create_admins_table', 1),
(6, '2022_05_26_131226_create_clients_table', 1),
(7, '2022_05_26_132317_create_pages_table', 1),
(8, '2022_05_26_133200_create_contacts_table', 1),
(9, '2022_05_26_133939_create_sliders_table', 1),
(10, '2022_05_26_134630_create_partners_table', 1),
(11, '2022_05_26_134709_create_languages_table', 1),
(12, '2022_05_26_140406_create_categories_table', 1),
(13, '2022_05_26_140623_create_posts_table', 1),
(14, '2022_05_26_142030_create_post_galleries_table', 1),
(15, '2022_05_26_144656_create_client_payments_table', 1),
(16, '2022_05_26_144722_create_client_debts_table', 1),
(17, '2022_05_26_153939_create_client_cards_table', 1),
(18, '2022_05_26_160028_create_offers_table', 1),
(19, '2022_05_26_160643_create_client_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `slogan`, `content`, `title_en`, `slogan_en`, `content_en`, `photo`, `qrcode`, `created_at`, `updated_at`) VALUES
(1, 'شركة 1  1', 'النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. 1', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Company  1', 'Lorem Ipsum is simply dummy text of the printing  1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img1_1653665367.jpg', 'img1_1653665111.png', '2022-05-27 12:20:10', '2022-05-27 12:20:10'),
(2, 'شركة 1  2', 'النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. 2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Company  2', 'Lorem Ipsum is simply dummy text of the printing  2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img1_1653665367.jpg', 'img1_1653665111.png', '2022-05-27 12:20:10', '2022-05-27 12:20:10'),
(3, 'شركة 1  3', 'النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. 3', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Company  3', 'Lorem Ipsum is simply dummy text of the printing  3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img1_1653665367.jpg', 'img1_1653665111.png', '2022-05-27 12:20:10', '2022-05-27 12:20:10'),
(4, 'شركة 1  4', 'النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. 4', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Company  4', 'Lorem Ipsum is simply dummy text of the printing  4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img1_1653665367.jpg', 'img1_1653665111.png', '2022-05-27 12:20:10', '2022-05-27 12:20:10'),
(5, 'شركة 1  5', 'النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. 5', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Company  5', 'Lorem Ipsum is simply dummy text of the printing  5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img1_1653665367.jpg', 'img1_1653665111.png', '2022-05-27 12:20:10', '2022-05-27 12:20:10'),
(6, 'شركة 1  6', 'النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. 6', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Company  6', 'Lorem Ipsum is simply dummy text of the printing  6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img1_1653665367.jpg', 'img1_1653665111.png', '2022-05-27 12:20:10', '2022-05-27 12:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `title_en`, `content_en`, `meta_keywords`, `meta_description`, `photo`, `photo2`, `lat`, `lng`, `mission`, `vision`, `why`, `mission_en`, `vision_en`, `why_en`, `created_at`, `updated_at`) VALUES
(1, 'من نحن', '<p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى</p>', 'About us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', 'meta_keywords', 'meta_description', 'img_1654375155.jpg', 'img2_1654375155.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 12:19:58', '2022-06-04 18:39:15'),
(2, 'سياسة الاستخدام', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'meta_keywords', 'meta_description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 12:19:58', '2022-05-27 12:19:58'),
(3, 'الشروط والاحكام', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Terms', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'meta_keywords', 'meta_description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 12:19:59', '2022-05-27 12:19:59'),
(4, 'لائحة النادي', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Terms', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'meta_keywords', 'meta_description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 12:19:59', '2022-05-27 12:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `title_en`, `link`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'شركاؤنا  1', 'Partner  1', 'http://google.com', NULL, '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(2, 'شركاؤنا  2', 'Partner  2', 'http://google.com', NULL, '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(3, 'شركاؤنا  3', 'Partner  3', 'http://google.com', NULL, '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(4, 'شركاؤنا  4', 'Partner  4', 'http://google.com', NULL, '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(5, 'شركاؤنا  5', 'Partner  5', 'http://google.com', NULL, '2022-05-27 12:20:09', '2022-05-27 12:20:09'),
(6, 'شركاؤنا  6', 'Partner  6', 'http://google.com', NULL, '2022-05-27 12:20:10', '2022-05-27 12:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `title_en`, `content_en`, `cat_id`, `meta_keywords`, `meta_description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'مقالة  1', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(2, 'مقالة  2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(3, 'مقالة  3', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:03', '2022-05-27 12:20:03'),
(4, 'مقالة  4', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(5, 'مقالة  5', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(6, 'مقالة  6', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(7, 'مقالة  7', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(8, 'مقالة  8', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(9, 'مقالة  9', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(10, 'مقالة  10', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(11, 'مقالة  11', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(12, 'مقالة  12', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(13, 'مقالة  1', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:04', '2022-05-27 12:20:04'),
(14, 'مقالة  2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(15, 'مقالة  3', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(16, 'مقالة  4', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(17, 'مقالة  5', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(18, 'مقالة  6', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(19, 'مقالة  7', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(20, 'مقالة  8', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(21, 'مقالة  9', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(22, 'مقالة  10', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(23, 'مقالة  11', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(24, 'مقالة  12', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(25, 'مقالة  1', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:05', '2022-05-27 12:20:05'),
(26, 'مقالة  2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(27, 'مقالة  3', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(28, 'مقالة  4', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(29, 'مقالة  5', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(30, 'مقالة  6', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(31, 'مقالة  7', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(32, 'مقالة  8', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(33, 'مقالة  9', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(34, 'مقالة  10', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(35, 'مقالة  11', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(36, 'مقالة  12', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(37, 'مقالة  1', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(38, 'مقالة  2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(39, 'مقالة  3', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:06', '2022-05-27 12:20:06'),
(40, 'مقالة  4', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(41, 'مقالة  5', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(42, 'مقالة  6', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(43, 'مقالة  7', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(44, 'مقالة  8', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(45, 'مقالة  9', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(46, 'مقالة  10', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(47, 'مقالة  11', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(48, 'مقالة  12', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(49, 'مقالة  1', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:07', '2022-05-27 12:20:07'),
(50, 'مقالة  2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(51, 'مقالة  3', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(52, 'مقالة  4', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(53, 'مقالة  5', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(54, 'مقالة  6', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(55, 'مقالة  7', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(56, 'مقالة  8', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(57, 'مقالة  9', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(58, 'مقالة  10', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(59, 'مقالة  11', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:08', '2022-05-27 12:20:08'),
(60, 'مقالة  12', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Article  12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 'meta_keywords', 'meta_description', 'img1_1653665367.jpg', '2022-05-27 12:20:09', '2022-05-27 12:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_galleries`
--

CREATE TABLE `post_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_galleries`
--

INSERT INTO `post_galleries` (`id`, `post_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'img1_1653665367.jpg', NULL, NULL),
(2, 1, 'img1_1653665367.jpg', NULL, NULL),
(3, 1, 'img1_1653665367.jpg', NULL, NULL),
(4, 1, 'img1_1653665367.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `title_en`, `meta_keywords`, `meta_description`, `meta_description_en`, `logo1`, `logo2`, `fav`, `breadcrumb`, `site_lang`, `phone1`, `phone2`, `email1`, `email2`, `address`, `address_en`, `website`, `location`, `work_time`, `whatsapp`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `snapchat`, `created_at`, `updated_at`) VALUES
(1, 'موقع تجريبي', 'Demo Site', 'موقع تجريبي 1 , موقع تجريب 2', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'logo-1.svg', 'logo2.png', 'logo-1.svg', 'breadcrumb.png', 'ar', '01006287379', '01006287379', 'tarek.mandourr@gmail.com', 'tarek.mandourr@gmail.com', 'العنوان شارع العنوان', 'Address St 25 , towers', 'https://demosite.com', 'https://goo.gl/maps/HpUs2tj6om1f6rRM7', NULL, '201006287379', 'facebook', 'twitter', 'youtube', 'linkedin', 'instagram', 'snapchat', '2022-05-27 12:19:58', '2022-05-27 12:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT 0,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_membership_no_unique` (`membership_no`),
  ADD UNIQUE KEY `clients_national_no_unique` (`national_no`),
  ADD UNIQUE KEY `clients_phone_unique` (`phone`);

--
-- Indexes for table `client_cards`
--
ALTER TABLE `client_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_cards_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_debts`
--
ALTER TABLE `client_debts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_debts_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_notifications_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_payments`
--
ALTER TABLE `client_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_payments_client_id_foreign` (`client_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `post_galleries`
--
ALTER TABLE `post_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_galleries_post_id_foreign` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `client_cards`
--
ALTER TABLE `client_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `client_debts`
--
ALTER TABLE `client_debts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_notifications`
--
ALTER TABLE `client_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `client_payments`
--
ALTER TABLE `client_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `post_galleries`
--
ALTER TABLE `post_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_cards`
--
ALTER TABLE `client_cards`
  ADD CONSTRAINT `client_cards_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_debts`
--
ALTER TABLE `client_debts`
  ADD CONSTRAINT `client_debts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD CONSTRAINT `client_notifications_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_payments`
--
ALTER TABLE `client_payments`
  ADD CONSTRAINT `client_payments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_galleries`
--
ALTER TABLE `post_galleries`
  ADD CONSTRAINT `post_galleries_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
