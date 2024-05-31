-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2024 at 10:01 AM
-- Server version: 10.5.24-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekoy1459_sosmed`
--

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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-08-06 19:19:41', '2023-08-06 19:19:41'),
(1, 4, '2022-08-23 01:19:23', '2022-08-23 01:19:23'),
(1, 6, '2022-06-21 06:45:28', '2022-06-21 06:45:28'),
(1, 8, '2022-08-23 01:19:26', '2022-08-23 01:19:26'),
(11, 11, '2022-07-01 02:07:15', '2022-07-01 02:07:15'),
(12, 1, '2024-05-01 21:11:40', '2024-05-01 21:11:40'),
(14, 10, '2024-05-04 09:29:48', '2024-05-04 09:29:48'),
(15, 14, '2024-05-30 19:17:25', '2024-05-30 19:17:25');

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
(5, '2021_10_06_114612_create_statuses_table', 1),
(6, '2021_10_06_141111_create_follows_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `user_id`, `identifier`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'c9tde511sjsuvztytuqxgsqapqnpzkzw', 'Minus velit voluptatem enim aliquid aut.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(2, 1, 'i4pu85tdmdmcyoo7uug2kmsalwx0wlid', 'Reiciendis soluta quis tenetur cumque deleniti nemo eligendi.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(3, 1, 'xipbseklls56p733ptazqvkctsl3ptbl', 'Blanditiis debitis officia placeat nisi et velit itaque.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(4, 1, 'ykxnsi1a8xk3iohbijhbhpwwe1lt4wcs', 'Accusamus esse dolor a velit cum quia.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(5, 1, 'szr0xbgplvw7nhz5dfbdkrac7ucczrrx', 'Voluptas est amet hic alias magnam numquam.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(6, 2, 'ej3s1vnwguezsf7ivwbn3lfnfvhiihng', 'Assumenda qui beatae sint suscipit ut consequatur quisquam eius.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(7, 2, 'c5wugt6iru2ofcewpd4zuuemd8jnms2s', 'Facilis a molestiae tenetur tempora molestiae dolores sed fuga.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(8, 2, 'zyne0qtgd0zcb6nsdxpd2tvmuvw22bfo', 'Accusamus aspernatur et itaque saepe.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(9, 2, 'qmcp9yrfvuqehvsrdrxq5d8tvnmgk87x', 'Quia placeat enim dolores non dolorem aut.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(10, 2, 'et3ppgsfg7c6c5qvzyer5zyvp8eyrwca', 'Provident at autem quam molestias consequatur suscipit.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(11, 3, 'owkl8nobijdnw46g5uxnhjemhupgnum0', 'Eos qui optio ratione quia optio quidem.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(12, 3, 'ovbrinzsbu5pjg8wuo0ud6d9xdmw4tqm', 'Quo eum expedita aut illum quo non.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(13, 3, 'cdnbh9v9exelcqwip66gdpm7cw81ktnq', 'Amet et nobis esse reprehenderit quae soluta.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(14, 3, '3msuhw9ntkzboezpp0mdouhbakousjmi', 'Iure veniam dolorem quo quas exercitationem libero fugiat impedit.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(15, 3, 'kpnzuucadsauyfdamk1sxs4qtifpnyet', 'Deserunt voluptas distinctio minus expedita deserunt distinctio.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(16, 4, 'qom4j5hwjvuomoucqxs8f7l7u1gvmsd6', 'Similique eveniet sapiente tempora neque illum.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(17, 4, 'os5gsywkofewypc16knnvbwp8ttzr5e9', 'Consequatur et eius et dicta vel esse doloremque quasi.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(18, 4, '2bzlb4ujo7uvbtyy7td5znhn1codryxr', 'Perferendis voluptates doloribus itaque quis nemo.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(19, 4, 'xyueymyjcr8xmlxxkmfn70snfjpgrlxa', 'Dicta unde aut provident aut expedita ea et et.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(20, 4, 'duitrkxygzpi6hgbz8d2shrunew8nxnc', 'Voluptas perspiciatis numquam iste.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(21, 5, 'rsavnxnbynwympart4txtub7ioa8lnlq', 'Non autem ipsum quas excepturi repellendus placeat maxime.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(22, 5, 'edm42aodj1xekloklvzhcbvrfjvhfgwp', 'Laboriosam atque rerum inventore aut eum.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(23, 5, '3lfn1om4aqzakpi8lr9pzxrgxzhestm5', 'At est nobis deserunt.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(24, 5, 'rdci0iwhvx4sosvmkthllioreracjc3b', 'Ad dolore accusamus praesentium mollitia quisquam voluptatem aspernatur.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(25, 5, '3brx0jfbajeatedueapabmf8sr4wryfp', 'Praesentium eum numquam voluptate provident minima odio.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(26, 6, 'jgxjcns8crwczksnbdrtt7o4rwf9blsw', 'Ipsa natus qui neque exercitationem accusamus voluptate vero.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(27, 6, 'ydsnkyxfrhpznguhfylzuu7s0t8pvu1v', 'Error voluptatem nam consequuntur laboriosam et.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(28, 6, '6ikrhcgqaeyhqogszamifdqeiuvfyays', 'Voluptas recusandae sequi minus voluptatem nobis non nobis nesciunt.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(29, 6, '1dl2hud0joynduz2abmlvzzhrjrps6o3', 'Incidunt et eos minima.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(30, 6, 'wviqvodmx6x4c9uglaceezosqwy7zosh', 'Quia dolorem officia deleniti ut maxime.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(31, 7, 'kqxed7a0uekltl9r8yjmehbrtlk2tznk', 'Et qui eveniet molestias et dolores ullam.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(32, 7, 'fsfrp4r7covpwyemqgpkzl0nr2bloc4q', 'Dolor maxime sunt fugit eligendi consequatur aut sed.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(33, 7, 'u9rdvbsc5g49afevzz8japebw48oziy1', 'Tempora repellendus beatae harum rerum.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(34, 7, 'iysv5mz1p4o52k5gb5tnne9bkijnczyo', 'Voluptatem nostrum quaerat quasi ea quidem quasi.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(35, 7, '5uq6ayzj0udajxotwls02nikv0x7x129', 'Voluptatem ut et est quisquam cum similique.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(36, 8, 'xtvpid7tsk3iurg5w3xqdavntfwwbnyj', 'Dolorem qui repudiandae animi dignissimos aut corporis.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(37, 8, 'co0c8x4ecwrsqx4xvvdysm3y4t1vx19s', 'Impedit nam nulla ab doloribus.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(38, 8, 'ha4iipk1qhxpuev0nbr7noitbjitabfj', 'Sed blanditiis neque expedita quae.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(39, 8, '744xw1gy1kir0kp4o9ngfmenu9ajzwim', 'Ducimus consequatur non ducimus doloribus error labore.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(40, 8, 'rcenxw0roiugbalytkjzqpnmno2gyobk', 'Maxime animi iusto at.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(41, 9, 'deae3yszgx3hv4layhiq7z6ijyr3pagy', 'Dicta deleniti tenetur voluptate praesentium eos voluptatum.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(42, 9, 'nhv4clkoqloa4k4gialeh9chkfgs904r', 'Aut itaque a vel aut aspernatur voluptatibus voluptatem quasi.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(43, 9, 'wu8rxpqjynzigffzyyvoh2wnuvpstqau', 'Provident necessitatibus totam ut quisquam similique repellendus.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(44, 9, 'sk198g2xlebiuoufvyy9haqcghvwyxit', 'Enim similique voluptate ut autem in consequatur magnam consectetur.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(45, 9, 'aozyqqvxeel3shr09jdnk6u0jomnrtxd', 'Nesciunt laudantium cupiditate doloremque aut delectus nemo.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(46, 10, 'phcxsh3dlip6y7swiokzlaxzyl9wbb55', 'Omnis mollitia laboriosam ab incidunt autem sit consectetur.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(47, 10, 'gcpaes4b98nfpa70gm1ygmtpjkcadzk0', 'Quo atque repellendus voluptas aut itaque non et tempora.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(48, 10, 'r7uc0ffzqgrlq7fublnmbq54aqc5x1g5', 'Ducimus consequuntur hic blanditiis repudiandae quo.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(49, 10, 'xdooyew9kkeudhkwbmevadiqozhr8rkb', 'Sit quia et voluptatibus tempora enim architecto repellat.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(50, 10, 'ur6hdnxdx2tobnsorit0vj4qxfnrgbpa', 'Ex explicabo ipsa facere eum quibusdam maxime.', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(51, 1, '1cjztka6a2jnzv7qoqdbnxksukoul9ni', 'tes', '2022-06-15 21:03:05', '2022-06-15 21:03:05'),
(52, 1, '159oleop9v77zhofuvoabbwe7xzhuakl', 'dada', '2022-06-21 06:45:08', '2022-06-21 06:45:08'),
(53, 11, '1156ij6gkagposqq40af1dvuwbq8acq5f', 'as', '2022-07-01 02:07:07', '2022-07-01 02:07:07'),
(54, 1, '1gsd5srhyzmtq9juhwfoa15khs5otj8c', 'K', '2022-08-23 01:19:41', '2022-08-23 01:19:41'),
(55, 1, '1oq04c8tyg83u1tfgmejtzl1vdogobal', 'tes', '2023-06-11 15:17:02', '2023-06-11 15:17:02'),
(56, 1, '1it9bzsfri33uxm4k9hzqa79kexquswb', 'F', '2023-06-21 04:07:46', '2023-06-21 04:07:46'),
(57, 13, '13enhv7ir5923wbozjgyau7wzdsgpz9n2', 'hallow', '2024-05-04 09:28:54', '2024-05-04 09:28:54'),
(58, 13, '13bcwibdfe5kackc4ba6v0riqpdkw1oy8', 'infokan', '2024-05-04 09:29:26', '2024-05-04 09:29:26'),
(59, 13, '13kjhcyp8v1dz5q8lhftdwxmpmlvbnaae', 'asdasd', '2024-05-04 09:30:16', '2024-05-04 09:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Bryon Moore PhD', 'buddy.kirlin', 'madonna.wehner@example.com', '2022-06-15 21:00:47', '$2y$10$I2XoXBqcbzgjbgRpoJJERuIccuJV60mOnQEFvSbdtHU8xM3XMJ3CG', 'oVBeSfHX9m1LQfILlxuzWH6YZAqnY7P3BaLgWSXznyg4q5sM0iRqbfy6m9iP', '2022-06-15 21:00:47', '2023-08-06 19:20:03'),
(2, 'Corbin Zieme', 'antwan13', 'nikolas.swift@example.net', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6XFZLC4jBF', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(3, 'Prof. Jerrell Sporer Sr.', 'akautzer', 'oberbrunner.friedrich@example.org', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6qMT9L8XpD', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(4, 'Prof. Guiseppe Olson', 'savion.ferry', 'kovacek.yasmine@example.com', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NTkccn35Iq', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(5, 'Prof. Quentin Aufderhar III', 'alene32', 'clair.rice@example.org', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ILjCNKmFkE', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(6, 'Prof. Stephan Shields', 'vincenzo.trantow', 'bmarquardt@example.net', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SWU3pTrtqm', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(7, 'Virgil Cremin', 'turcotte.kristofer', 'mhilpert@example.net', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BRvJwWcv2B', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(8, 'Wilfredo Rath', 'eliane34', 'antonetta35@example.org', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5XnIiM5FcX', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(9, 'Selina Bernhard', 'toney.kerluke', 'labadie.tressie@example.org', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xTTaKnKRWy', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(10, 'Caden Zemlak II', 'dhaag', 'bberge@example.org', '2022-06-15 21:00:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0XCL69lS6w', '2022-06-15 21:00:47', '2022-06-15 21:00:47'),
(11, 'as', 'uempymkoj3nyb4c', 'as@d.com', NULL, '$2y$10$3fn6ph3R31u68f/x.PmtU.PrYM8KEL87UZfhYHfSPVUEXl8T8RJce', NULL, '2022-07-01 02:07:01', '2022-07-01 02:07:01'),
(12, 'eko budi', 'udf3cn3deepogsr', 'eko1@gmail.com', NULL, '$2y$10$kJhXa341kjnVUav73DD9tOhyXgtagF9.587d60M3Q3GM8s52YCZSy', NULL, '2024-05-01 21:11:28', '2024-05-01 21:11:28'),
(13, 'anjays', 'uzha3a37khxnhnk', 'anjays@gmail.com', NULL, '$2y$10$RCT3e9YvWuH38gX.X6YeEeZ9yfdVc45Fs1kOt87zcreydo.qgzoA6', NULL, '2024-05-04 09:28:30', '2024-05-04 09:28:30'),
(14, 'kafka', 'ucjfjnahwcx3wk8', 'kafka@gmail.com', NULL, '$2y$10$2LIW44neOyU9xcsjU/zMMe4o0XKqz1qVCiUl6NnPLpXLs6L3cDkMG', NULL, '2024-05-04 09:28:49', '2024-05-04 09:28:49'),
(15, 'sadsa', 'uj2mtbblxhfvykh', 'ekonew@gmail.com', NULL, '$2y$10$gB4FjlhtNSyxs0JvV6WR/umRGwUSRvgV49bFFbv2z6K0o0PD6rgSe', NULL, '2024-05-30 19:16:23', '2024-05-30 19:16:23');

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
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

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
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_identifier_unique` (`identifier`),
  ADD KEY `statuses_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
