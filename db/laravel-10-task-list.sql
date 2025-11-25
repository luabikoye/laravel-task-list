-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 25, 2025 at 07:23 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-10-task-list`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, '0001_01_01_000000_create_users_table', 1),
(12, '0001_01_01_000001_create_cache_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '2025_11_11_084835_create_tasks_table', 1),
(15, '2025_11_13_001930_create_registrations_table', 1);

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
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Erling Rowe', 'Raymond Lockman', 'douglas.buster@wuckert.com', '(657) 308-3405', 'Officiis velit dolor officia.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(2, 'Dennis Osinski', 'Dr. Mylene Beahan', 'aurelie.bogisich@mann.com', '+1-714-418-3077', 'Quia et non non eum ipsum voluptatum corporis.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(3, 'Fern Heidenreich', 'Karli Reichel', 'reginald62@cartwright.com', '(785) 434-3802', 'Cumque provident ipsum eum odit a.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(4, 'Bell McKenzie', 'Libby Medhurst', 'bayer.chasity@kovacek.net', '540.979.9918', 'Harum nulla molestiae tempore qui doloremque adipisci voluptates praesentium.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(5, 'Dr. Jed Homenick', 'Emmitt Grimes', 'amely78@hotmail.com', '936.415.1795', 'Est dolor repudiandae repellat temporibus officia et asperiores.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(6, 'Eric Reinger', 'Precious Ledner', 'charity18@gmail.com', '(313) 500-2795', 'Temporibus ut consectetur quae quae explicabo.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(7, 'Moses White', 'Dr. Faustino Padberg', 'walsh.belle@erdman.com', '252.804.1754', 'Exercitationem nostrum eius esse recusandae.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(8, 'Maritza Windler V', 'Jalon Stamm', 'anderson.elliot@friesen.com', '(726) 906-0330', 'Tenetur modi dolorem odio accusamus ut omnis.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(9, 'Johanna Dietrich PhD', 'Flo Prohaska', 'oswaldo.kuhn@cole.com', '859.978.8850', 'Quia officiis aut officiis repudiandae sit.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(10, 'Marina Davis DDS', 'Linnie Green IV', 'lamont28@rolfson.biz', '1-984-365-9408', 'Quasi ratione iure placeat libero reprehenderit omnis.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(11, 'Miss Arianna Braun', 'Dr. Heber Boyle', 'eloy.jast@hotmail.com', '+1.689.545.4026', 'Amet hic saepe porro voluptatem.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(12, 'Wilma Zulauf', 'Madelynn Johnston', 'brigitte09@ondricka.com', '(678) 531-4522', 'Numquam neque sequi pariatur ducimus et sit voluptate veniam.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(13, 'Zoila Huel', 'Mazie Halvorson', 'gino.hoeger@hotmail.com', '541-899-7340', 'Deserunt dolorum et consequatur quod est sit.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(14, 'Autumn Franecki', 'Dr. Lottie King', 'flo40@brown.com', '+1 (934) 336-0087', 'Et similique dolorem voluptatem magnam.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(15, 'Miss Daniela Lind', 'Xzavier Champlin', 'breanna.cummings@grimes.org', '+1 (678) 612-3775', 'Quos voluptas iste dolorem officiis cum.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(16, 'Dr. Lemuel Dietrich I', 'Prof. Kenny Goodwin', 'zpacocha@gmail.com', '1-660-488-6326', 'Ratione et blanditiis qui.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(17, 'Mazie Walter DDS', 'Breana Kerluke Jr.', 'joel.towne@schmidt.com', '+1.832.363.7649', 'Vero consequatur itaque beatae cumque iusto tenetur ut sit.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(18, 'Ms. Elenor Kub', 'Demond Adams', 'dale.volkman@gmail.com', '319-462-1636', 'Sequi eaque accusamus itaque quia.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(19, 'Aurelio Kiehn', 'Brooks Quigley PhD', 'halvorson.rasheed@bednar.biz', '1-248-883-6384', 'Minima dicta quas et cumque numquam saepe provident mollitia.', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(20, 'Dr. Rita Wunsch', 'Luz Jacobs', 'bmorissette@waelchi.com', '1-570-910-4332', 'Doloribus ipsam aut eum accusantium delectus perferendis autem.', '2025-11-14 07:53:45', '2025-11-14 07:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3LNNyduVgL8LMdjLTcMIO8wIOTgnbCARrDvqIart', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazk1R3VzV1JUd3BZVUxpWXFTeUl4QXpTckUyeDk0R3lRRWE0eUtWYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90YXNrcz9wYWdlPTEiO3M6NToicm91dGUiO3M6MTE6InRhc2tzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763972501),
('x157HBl0Mb16KlxnNBphmXKrDmFOIq2Ql7GstJl6', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHR4TUtrdEtLcnNhZWVsZHppVlU3TXVSU3RZYU14cUxzRlQ3cWpBUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90YXNrcy8zMiI7czo1OiJyb3V0ZSI7czoxMDoidGFza3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763841724);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `long_description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 'Aliquid sit lm; labore officiis sit quam labore dicta.', 'Vel earum omnis eos dicta. Officia eum ut ut earum officiis sed nihil. Quo quia et exercitationem eius et.', 'Numquam voluptas eaque qui est. Aut fugit aliquid reiciendis et. Tempora eos nobis nulla doloribus ut vel. Commodi velit est autem. Sequi est velit magni. Molestiae molestias cupiditate ullam eum nesciunt voluptatem quam. Dolor natus dolores suscipit aliquid omnis debitis. Perferendis et necessitatibus dolorum voluptates. Fuga aut reprehenderit minus officiis ut explicabo.', 1, '2025-11-14 07:53:45', '2025-11-22 18:57:16'),
(2, 'Est nemo qui nam adipisci perferendis dolor.', 'Ut et deleniti vel qui et facere dolores. Aperiam excepturi sit aspernatur vel. Sit ea molestiae fugiat libero distinctio voluptatem fugiat. Quas laudantium repellat autem velit corrupti dolores quo.', 'Tenetur aut ut eum aut consequatur impedit. Ab repudiandae et consequatur illo laborum. Voluptatem est provident velit ea est vel. Placeat sequi deleniti nostrum consequatur. Odio quibusdam cumque necessitatibus itaque autem sit. Magni aperiam excepturi voluptatem quibusdam praesentium cumque. Incidunt ratione tempora expedita veritatis rerum ratione nam. In saepe officiis non.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(3, 'Provident nulla recusandae dolore autem sed.', 'Vero aspernatur sit quos eaque. Veniam officia voluptas at et omnis illo magnam. Veritatis et at facere placeat eaque accusantium. Dicta asperiores dolores expedita cum suscipit esse.', 'Repudiandae dolorem expedita nisi magnam molestiae. Praesentium ut sit architecto minima qui ut ullam. Saepe perferendis rerum ut cumque veniam possimus. Ipsa in ipsum nobis occaecati placeat odit. Et qui enim debitis ipsam quisquam aut dolor. Vero laudantium libero alias harum ullam ducimus. Sed consequuntur molestiae enim rerum.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(4, 'Est et quia voluptates nesciunt molestias itaque quo consectetur.', 'Quisquam aliquam et nemo maiores. Odio quibusdam aut soluta exercitationem aperiam numquam. Assumenda voluptatem maiores ut quisquam quisquam praesentium eos. Et id velit fugit est repellat dolor ut.', 'Est libero consectetur quaerat iure iste minus. Recusandae quibusdam perspiciatis laudantium illo molestias. Beatae tempore ut illum qui ea et. Occaecati qui error omnis voluptatem. Consequatur soluta delectus eum voluptatem. Qui consequatur autem dolore rerum recusandae temporibus consequatur. Harum non voluptatem quia aut qui nisi repudiandae aut.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(5, 'Deleniti soluta esse qui.', 'At possimus aspernatur sit inventore quo adipisci quibusdam. Et nemo praesentium quidem ipsum ducimus. Omnis ex ipsum at placeat qui rerum.', 'Sunt magni nisi ut culpa. Dolores tempora laudantium dolore eius qui nostrum quis. Saepe et blanditiis temporibus porro odit. Molestiae non excepturi occaecati alias. Blanditiis incidunt laboriosam aperiam beatae id dolor dolorem. Qui libero laborum ea consequuntur. Qui dolores qui rerum et sunt qui quia. Impedit possimus commodi quia omnis.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(6, 'Vero aspernatur optio optio et enim.', 'Recusandae aut dolorem nisi maxime aut aliquam. Modi culpa aperiam asperiores beatae et quia. Ipsum illum quod non aut officia. Enim qui repellendus ab nisi et ipsam est nemo. Sed praesentium delectus beatae.', 'Ab cupiditate debitis ullam maxime voluptate non alias. Consectetur vel rerum accusamus magni nisi eaque rerum. Temporibus unde quasi perspiciatis odio qui culpa. Voluptatem deserunt est velit mollitia. Minima consequatur dignissimos aut ullam impedit ab fugiat quia. Et veniam unde ducimus velit quia. Ratione alias quia dolor accusantium natus optio itaque. Quo quas enim eius laborum.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(7, 'Libero dignissimos id assumenda at autem.', 'Aspernatur eos eius incidunt consequatur. Reiciendis nobis delectus iste sequi. Suscipit nam animi nostrum nostrum.', 'Blanditiis enim reiciendis consequatur voluptas consequatur ipsum blanditiis. Nisi ipsa sed alias sed voluptates veniam eveniet. Sit qui voluptatem officiis similique quia et consequatur. Tenetur est enim fuga. Nesciunt fuga eius possimus veritatis dignissimos in rem.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(8, 'Aliquam porro dolorem eveniet qui voluptas quo eos.', 'Molestiae nam optio beatae aut. Quibusdam ea exercitationem ut voluptatibus. Labore consequuntur rerum quia beatae deleniti. Nihil quo itaque quasi quis soluta. Dolorem laudantium quia quia et adipisci sequi.', 'Odit inventore assumenda quo sint est alias. Vitae minus aliquam ut ducimus. Neque impedit sed aut aut deserunt sint eos. Tenetur et dolorum blanditiis et dolor ipsa. Aperiam voluptatem iste asperiores vitae. Hic fugit non dolorum placeat optio libero fugiat. Quia rerum accusantium aut ut sed natus.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(9, 'Tempore itaque eum quis quo qui perferendis.', 'Error totam et iste sint aperiam. Et qui ipsa necessitatibus aut tempore ex ducimus. Rerum quas molestiae sint molestiae. Voluptas consectetur dolorem aut officia animi velit consequatur.', 'Aut perspiciatis voluptate quia voluptatem quae. Accusantium eos ullam et harum quisquam ipsam vitae. Voluptas ut ut tempore accusamus sit voluptatem. Accusantium est sed harum et. In facilis culpa molestiae ut ut voluptatem libero. Nesciunt dolorem sequi quis quo incidunt et sed ipsam. Voluptatem voluptatem cumque et sed est magnam repellendus nisi. Aperiam nulla ut blanditiis id nihil tempore vel sint.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(10, 'Sunt est dolores aperiam velit.', 'Praesentium et iure reiciendis eos corrupti. Non officia temporibus qui. Dignissimos hic ea voluptatem nam assumenda aliquid dolorum. Similique sed qui qui fugiat quis.', 'Quam illum ut exercitationem ea. Praesentium porro quo animi dignissimos ullam ipsa quae molestias. Corporis temporibus libero et fugit quis in. Est perferendis vel nihil facere similique doloribus. Enim est tempore sapiente minima officiis. Et deserunt eius error voluptas qui quis praesentium non. Nam repudiandae voluptatem sapiente. Nobis maxime recusandae expedita. Blanditiis at qui consequatur natus et odio distinctio. Maiores voluptatem culpa est quia vitae debitis omnis est.', 0, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(11, 'Natus quisquam repellendus vel nam et aut quis explicabo.', 'Doloremque qui quam mollitia repellendus ab quia rem. Ut et aliquid deserunt mollitia iure. Labore officiis totam excepturi et perspiciatis incidunt.', 'Facilis nesciunt quod facere dolor error. Quia dolor blanditiis commodi. Adipisci qui quo ab. Facere eum doloremque facere optio ex omnis saepe. Temporibus dicta quis cumque nobis. Tempore autem ea beatae earum. Et reprehenderit itaque reprehenderit nemo est.', 0, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(13, 'Accusantium consequuntur ea aut corrupti neque.', 'Consectetur a sunt officiis animi corrupti temporibus nostrum. Et magni a quibusdam tempore qui consequatur qui. Expedita reprehenderit dolores aliquam laudantium beatae. Similique aliquam quisquam ut fugit perferendis suscipit. Et ab in minima ea vel.', 'Dignissimos in quos nam architecto id. Rerum iure nihil porro dolorem aut consequatur explicabo. Eos veniam eos iste dolores a. Autem qui id eligendi itaque. Quia eos inventore fuga facere et facilis.', 0, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(14, 'Et ad est quam et non.', 'Doloremque omnis velit nostrum. Dolorum eveniet suscipit non vel. Hic voluptatem ab cupiditate ex doloribus sed.', 'Dolores sed vel explicabo quae. Ut tenetur nobis ut et. Magnam nihil sit numquam sequi ab sapiente ad. Saepe quaerat magni ex velit. Reprehenderit qui consequatur dolorem voluptatem. Sed voluptates qui est unde assumenda officiis omnis. Beatae ex error sint quisquam. Sit possimus qui magnam omnis dolore. Omnis similique suscipit culpa.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(15, 'Ut ab fuga vel.', 'Voluptas corrupti vero nisi enim. Sunt et in iste laboriosam. Provident modi esse sit sit inventore ratione quia voluptatem. Quia ex omnis omnis et labore praesentium ut.', 'Beatae earum nesciunt consequatur dolorem ducimus excepturi nostrum. Explicabo quam sed quisquam et quas placeat autem. Quam beatae sint sit ut qui pariatur. Asperiores facere ad et porro. Qui sed vero optio et et.', 0, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(16, 'Natus magni beatae sint nisi sed dolor eos.', 'Id velit similique facilis quasi maiores dolore blanditiis eum. Impedit debitis perferendis corrupti et veniam. Ducimus rerum reiciendis sapiente nam rerum consequatur. Molestiae earum enim error harum possimus quia quod.', 'Aspernatur ullam aut eaque voluptatem consequatur. Sunt sit sit libero enim sequi et. Totam commodi est in fuga. Praesentium neque et corrupti vitae quia qui. Est sapiente molestias laboriosam.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(17, 'Sint sapiente ut amet odio vero sit est similique.', 'Excepturi natus aspernatur voluptates fuga vitae corporis. Et eius accusantium tenetur doloribus et numquam molestias officiis. Sunt reiciendis rem voluptatem.', 'Neque enim dolorem labore nisi labore qui. Alias minima incidunt ut quod modi. Inventore voluptatem rem aut est laudantium aut. Quo consequuntur ut tempora voluptatem a. Tempore optio et soluta sint. Praesentium libero vel esse placeat est est. Facilis quia in perferendis molestiae sed nostrum. Vero architecto laboriosam et consequatur eos et voluptate.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(18, 'Porro enim at quis ut atque vel id dolores.', 'Et excepturi hic ducimus. Omnis commodi minima quia suscipit eum.', 'Itaque voluptate culpa et. Repudiandae et impedit ut eius. Cumque velit repudiandae veritatis quos hic asperiores. Est laborum nisi blanditiis omnis. Adipisci in aut voluptatem esse omnis tempore. Velit libero ea iusto illo aliquid illum fuga. Natus consequuntur quasi porro doloribus quo nisi. Alias amet voluptatem iste officia.', 0, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(19, 'Neque qui odit expedita voluptas ut corporis.', 'Ut earum ad quibusdam et architecto iusto. Delectus earum laboriosam est animi fuga. Commodi quia beatae laudantium corporis aperiam. Nihil est doloribus iusto sint quo.', 'Et fugit dolores aut nam deleniti ea vitae consequuntur. Voluptatem aspernatur voluptatem laborum repudiandae qui. Et dolore velit a voluptas mollitia sapiente beatae. Quis deleniti consequatur qui rem omnis dolores. Repellendus cum et voluptatem optio. Molestiae magni aut non est aliquid non.', 0, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(20, 'Dolore quam illo similique est cupiditate.', 'Fugit at reiciendis qui alias est. Occaecati necessitatibus inventore rerum illo. Non nisi sunt inventore.', 'Voluptatem a sed in eveniet. Aut consequuntur sint officiis ut et accusantium. Voluptatem voluptatem laborum mollitia. Quos quo nostrum id et. Velit esse doloribus numquam iste corporis. Rem facere a quidem ipsum qui. Minus exercitationem sed sed et sit nostrum. Deleniti asperiores occaecati fugit non quam voluptas qui.', 1, '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(25, 'This was changed recently', 'The Lord show himself finish', 'Lpng test The Lord show himself finish', 0, '2025-11-17 21:19:10', '2025-11-17 21:58:46'),
(32, 'Everythiong changed', 'asdvasdvasd', 'asdvasdv', 1, '2025-11-21 08:22:10', '2025-11-22 19:02:04'),
(33, 'asdc', 'asdc', 'adsc', 0, '2025-11-22 18:16:33', '2025-11-22 18:16:33');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kelsi Prosacco', 'marvin.kling@example.net', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'gsCcHJt9OT', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(2, 'Miracle Eichmann', 'julian.shields@example.net', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'hKlv2K0yfW', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(3, 'Antwan Purdy PhD', 'ustehr@example.com', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'm3mfC7QJi9', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(4, 'Prof. Vanessa Kuhn MD', 'watsica.alysa@example.net', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'AZFrty8Dkx', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(5, 'Elmore Abernathy', 'marcos.kshlerin@example.com', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', '5MxArSYNfg', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(6, 'Dora Jones V', 'yasmeen68@example.com', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'HToVizc3tM', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(7, 'Annetta Huels III', 'cassandra.herzog@example.net', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', '4xUfZ9Hy7y', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(8, 'Anika Schmeler', 'larkin.ariane@example.com', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', '8KZ4G0frih', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(9, 'Mrs. Rosella Bergstrom', 'francisca.hirthe@example.org', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'XJmgXr3KzC', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(10, 'Prof. Anderson Cole Jr.', 'heathcote.chelsea@example.com', '2025-11-14 07:53:45', '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'E3LFvFq1tV', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(11, 'Ms. Nora Grimes', 'oswaldo.nicolas@example.com', NULL, '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'FeUtQml2ML', '2025-11-14 07:53:45', '2025-11-14 07:53:45'),
(12, 'Elouise Quitzon', 'ena.dietrich@example.org', NULL, '$2y$12$Iq5lghvzptJKZH8gUZKNfuT.fCnDVHw.sbcMd6o0K2J4.arEJYgry', 'HCauyCRuD3', '2025-11-14 07:53:45', '2025-11-14 07:53:45');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
