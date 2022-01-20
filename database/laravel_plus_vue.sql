-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-01-2022 a las 19:34:49
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_plus_vue`
--
CREATE DATABASE IF NOT EXISTS `laravel_plus_vue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `laravel_plus_vue`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_23_153012_create_thoughts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thoughts`
--

DROP TABLE IF EXISTS `thoughts`;
CREATE TABLE IF NOT EXISTS `thoughts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `thoughts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `thoughts`
--

INSERT INTO `thoughts` (`id`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'asd', 9, '2021-09-23 15:11:07', '2021-09-24 16:11:50'),
(2, 'dfg', 9, '2021-09-23 15:11:41', '2021-09-23 15:11:41'),
(3, 'Pensamiento de verdad', 9, '2021-09-23 15:46:01', '2021-09-24 16:11:57'),
(5, 'asd', 10, '2021-09-27 15:36:54', '2021-09-27 15:36:54'),
(7, 'bb', 10, '2021-09-27 15:37:00', '2021-09-27 15:37:00'),
(9, 'asd', 14, '2022-01-15 17:30:06', '2022-01-15 17:30:06'),
(10, 'futuros', 13, '2022-01-20 19:09:01', '2022-01-20 19:09:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Juan', 'juan@gmail.com', NULL, '$2y$10$T.WeGLxcVFovzAxhrMD1hON8cJWiBJdEQ/ylls20F7t0FptF7.bh6', NULL, '2021-09-23 15:00:06', '2021-09-23 15:00:06'),
(7, 'Prof. Johnny Weissnat Jr.', 'ayana.bartoletti@example.net', '2021-09-23 15:00:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xkhvtWi8Cm', '2021-09-23 15:00:06', '2021-09-23 15:00:06'),
(8, '4cXMLf850l', 'IPAwP5RWEj@gmail.com', NULL, '$2y$10$Bxo1CemCsJ4af5TRLHqnG.KsiuhK4FhTWzXeiOnJCuFqC6FEwCH5e', NULL, NULL, NULL),
(10, 'Pepe', 'pepe@gmail.com', NULL, '$2y$10$KW5eb8U6qfo5ckmSkXsc8ejW/kilYMMJJGZ1lmDYQRtEz.i.veGiq', NULL, '2021-09-27 00:33:26', '2021-09-27 00:33:26'),
(11, 'test', 'test@gmail.com', NULL, '$2y$10$9UWAi7WxzOqSJu.OhWoM0.RWsZolRAwnbF4x7Npxn4bFGGtwGR0pe', NULL, '2021-10-04 11:48:45', '2021-10-04 11:48:45'),
(12, 'Bolto Ademonium', 'adam@hotler.com', NULL, '$2y$10$1Yn9E.iinGbvUdQKJMu4gOtyly7ocac6t7lmaSlHS98eWV1vZgICK', NULL, '2021-10-25 07:55:36', '2021-10-25 07:55:36'),
(13, 'Paco', 'paco@gmail.com', NULL, '$2y$10$rf7bn81no.HNtnx2vcID/uztsXViq7b/zDjG8/6UaujX7HVBcEMWC', NULL, '2022-01-15 17:28:46', '2022-01-15 17:28:46'),
(14, 'Pedro', 'pedro@gmail.com', NULL, '$2y$10$uI2FaA5uBCeCNsGkyM4S5e4OWQH5728AS5.cA1Hurka5.5cqsHWtW', NULL, '2022-01-15 17:30:01', '2022-01-15 17:30:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
