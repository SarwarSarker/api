-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 07:17 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eapi`
--

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(26, '2016_06_01_000004_create_oauth_clients_table', 1),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2020_05_31_071631_create_products_table', 1),
(30, '2020_05_31_072807_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a1e5b074f080480b59e3f764b2d605349da316f1950824ea13984579773d1db442eea8a783a9050e', 6, 2, NULL, '[]', 0, '2020-06-09 08:11:14', '2020-06-09 08:11:14', '2021-06-09 14:11:14'),
('b8f85d6b912fe6cd52627da0a46967b6e84597b786063123859f4c13259ee0e6c4fab4d8172b1f5a', 5, 2, NULL, '[]', 0, '2020-06-09 08:23:55', '2020-06-09 08:23:55', '2021-06-09 14:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'oHE3A8y4KgbKUWPDMXN7cqoDCWBQ3xET3v4701GS', NULL, 'http://localhost', 1, 0, 0, '2020-06-09 04:19:49', '2020-06-09 04:19:49'),
(2, NULL, 'Laravel Password Grant Client', 'nv8yUZVlqOvL59WRguPj3Xgm4cCf3RrxQNF9pY2o', 'users', 'http://localhost', 0, 1, 0, '2020-06-09 04:19:50', '2020-06-09 04:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-09 04:19:50', '2020-06-09 04:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('3de5d645870d761af0222f49fa9901e3d57c8d57c17de6e8e2387da1a90145f46caaf2666ae82ac5', 'b8f85d6b912fe6cd52627da0a46967b6e84597b786063123859f4c13259ee0e6c4fab4d8172b1f5a', 0, '2021-06-09 14:23:55'),
('b6c621359791da7bd1c85d3490f4012d177e28da63b5cfe8e51dfef0454b8f02273d8f3ecdbe4171', 'a1e5b074f080480b59e3f764b2d605349da316f1950824ea13984579773d1db442eea8a783a9050e', 0, '2021-06-09 14:11:15');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'labore', 'Ducimus ut perspiciatis et minima odio magni rerum. Modi quia autem id id architecto saepe. Aut sint neque tempora inventore dicta.', 253, 9, 2, 2, '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(2, 'et', 'Ipsam voluptatem ea magni provident cum cupiditate totam. Deserunt nam ea et totam velit consequatur.', 754, 3, 22, 2, '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(3, 'culpa', 'Modi animi non voluptas voluptatem molestias ut molestiae. Id nihil similique tempore voluptatem ut sit recusandae tempore. Ex id quisquam autem consequatur maiores iusto. Tempora temporibus deleniti rerum ea earum est dolores sit.', 916, 4, 22, 4, '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(4, 'qui', 'Ut qui in porro cum facere eius quis est. Sed architecto numquam eveniet iste eum cupiditate excepturi architecto. Amet molestiae rem consequatur fugit amet quia.', 663, 0, 7, 4, '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(5, 'quae', 'Aspernatur architecto deserunt magni quis rerum aut provident. Ab voluptatum impedit cum vitae assumenda quas. Possimus atque tempore aut voluptas non odio ut. Aspernatur sit maxime exercitationem et repellat minima qui.', 655, 4, 3, 3, '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(7, 'pariatur', 'Cupiditate aliquid quas similique ipsum error. Quidem nihil molestiae nisi tenetur laudantium consequatur. Fugiat sint tempora iste quasi. Ullam consequatur est quibusdam aperiam voluptas.', 118, 1, 8, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(8, 'et', 'Est aut perferendis culpa delectus ad iusto inventore. Doloribus dolorum enim quod libero vel. Aut voluptate tempore est. Quibusdam ipsa in est voluptates.', 249, 8, 17, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(9, 'modi', 'Vel perferendis quia quos illum nostrum et qui. Maiores fugiat ratione quia inventore neque. Quia ut sed animi tenetur aut et. Vitae officia quam explicabo placeat ut quia. A enim necessitatibus et et velit aut autem dolorum.', 559, 1, 21, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(10, 'ea', 'Qui tenetur blanditiis autem enim vel. Expedita ut ut nihil aperiam magnam. Animi ut aut voluptatem adipisci labore. Voluptatem autem et sit rerum.', 292, 4, 21, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(11, 'laboriosam', 'Asperiores necessitatibus reiciendis vel commodi id et accusantium. Laborum dolorem nihil error ipsam id natus. Voluptatibus est autem suscipit non.', 529, 0, 23, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(12, 'eum', 'Libero est iusto nihil saepe sed sapiente amet. Et velit nesciunt ea voluptatibus id. Voluptas itaque magni eligendi sit suscipit. Expedita magni consequatur magnam dolor voluptatem reiciendis culpa. Et est nihil voluptate.', 445, 3, 24, 1, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(13, 'voluptas', 'Officia sint est laudantium voluptatem at deleniti. Consectetur reprehenderit necessitatibus fugit magnam sapiente cum enim. Et tempore ducimus voluptatem fugiat quo. Id quidem consequatur praesentium rerum nisi autem.', 188, 2, 29, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(14, 'eligendi', 'Excepturi corrupti dolores excepturi ut. Sunt veritatis molestias non quibusdam.', 706, 6, 10, 1, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(15, 'porro', 'Nulla eius rerum voluptatem illo quidem sit. Consequatur distinctio sequi doloremque ipsum rerum sint. Quis consequuntur debitis soluta dolore doloremque nisi. Id nihil sunt quae aut.', 120, 3, 7, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(16, 'amet', 'Atque repudiandae voluptatem quo et. Aliquam dolores et velit quia. Quas voluptatem quo deserunt esse aut.', 381, 9, 7, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(17, 'necessitatibus', 'Possimus hic voluptas asperiores. Iusto enim dolorem architecto animi delectus quae minima. Ut molestiae facilis quisquam itaque deleniti. Repellendus sint facilis qui ad non.', 209, 7, 2, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(18, 'eos', 'Minima sit voluptatibus vitae perspiciatis. Tempore ad laudantium incidunt. Non dolor accusantium voluptates libero harum culpa consequatur.', 399, 3, 14, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(19, 'molestiae', 'Rerum sapiente et sunt eum ut. Quia ut et eius qui omnis quod. Totam voluptatem quidem accusantium voluptas iure. Illo minima enim placeat officia deleniti.', 548, 0, 12, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(20, 'placeat', 'Magnam occaecati hic ut reiciendis praesentium officiis. Eveniet et cum qui a tempore. Fugit voluptatibus iusto ut. Et possimus fugit iste rerum.', 212, 7, 23, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(21, 'error', 'Vel assumenda enim ullam voluptatem. Ipsam harum tempore architecto et quisquam quia. Et provident voluptatibus placeat totam enim. Velit explicabo saepe laborum doloribus.', 981, 1, 6, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(22, 'aspernatur', 'Perspiciatis nulla fuga omnis et sed. Facilis rerum assumenda ea nihil error sit unde.', 455, 9, 4, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(23, 'perspiciatis', 'Officia omnis quos suscipit sint qui et error ullam. Dolorem dolores quaerat animi nihil aut. Aut velit eaque aut et ipsa.', 240, 4, 29, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(24, 'ut', 'Ipsum sint neque dolores qui. Consequatur repellat ducimus nihil illum. Blanditiis est ea vel iusto.', 395, 8, 22, 4, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(25, 'vel', 'Illo et dolor placeat esse mollitia doloremque eos. Ut consectetur tenetur est libero deserunt. Dolores repudiandae fugiat dignissimos cum in.', 581, 3, 8, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(26, 'omnis', 'Sed voluptas laborum sint. Vel vel eveniet tempora. Suscipit voluptatem ducimus sit consectetur ipsa placeat eius. Aut earum neque fuga dicta sed.', 624, 5, 3, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(27, 'eum', 'Deleniti ut nihil cupiditate laudantium enim. Modi aut optio id fuga qui magni. Accusantium et ex quos sit saepe sed ex. Sit omnis eius numquam repellendus nobis.', 725, 4, 12, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(28, 'eveniet', 'Fugiat est qui est aut. Sit aliquid hic reprehenderit necessitatibus aut. Eligendi culpa nostrum eaque pariatur.', 116, 3, 18, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(29, 'beatae', 'Eos reiciendis voluptatem soluta magnam. Adipisci ratione ut tenetur fugiat hic. Qui omnis qui ut temporibus ullam. Laboriosam voluptas est aliquid sed minus.', 114, 0, 19, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(30, 'doloribus', 'Sed dolor nihil repellendus ut voluptas ea distinctio quo. Quis voluptate beatae ex consequatur vel repellat aut. A laudantium et sint.', 157, 2, 14, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(31, 'odio', 'Consectetur ut veritatis ut magnam rem veritatis eos. Consequatur quaerat et quo aperiam recusandae cumque ex. Quas molestias delectus voluptatum sit sed iusto. Velit optio qui et error tempora beatae.', 784, 9, 13, 1, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(32, 'at', 'Pariatur id provident natus numquam consequatur. Magnam excepturi nisi quis iusto maiores quia unde. Pariatur distinctio et qui dolores.', 533, 0, 17, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(33, 'ut', 'Odit voluptas voluptas eveniet maiores vel culpa. Omnis ipsa velit enim rerum. Illo optio quia odit est sunt vitae ab.', 361, 7, 4, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(34, 'saepe', 'Deleniti laboriosam assumenda iusto pariatur sed corporis soluta aut. Totam ea esse rerum explicabo id suscipit tempore. Tempore est in qui enim doloremque reiciendis.', 521, 2, 12, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(35, 'animi', 'Laborum error reprehenderit atque suscipit illo non repellat. Porro ipsum consequatur qui. At est velit voluptates eum libero.', 864, 5, 15, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(36, 'inventore', 'Id qui similique dolor adipisci. Porro libero ut est. Fugit similique dolor autem quo minima.', 809, 5, 29, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(37, 'voluptatem', 'Aliquam dicta doloribus fugiat officia quisquam dolorem molestiae. Ipsum eum veritatis temporibus nesciunt. Sint nam repellendus est cum ea et. Fugiat fugiat commodi minus omnis pariatur neque odio.', 915, 4, 17, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(38, 'doloribus', 'Eveniet est excepturi voluptatem alias. Consectetur dolores dolor deserunt consectetur alias. Consequatur blanditiis voluptates itaque quidem minima ullam. Itaque ullam quaerat quia error.', 591, 4, 9, 3, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(39, 'est', 'Quia vitae ratione earum voluptatibus aliquam omnis. Et aut exercitationem quis tempore magni. Et ut voluptas consequatur et dolores autem.', 670, 9, 9, 5, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(40, 'id', 'Quos fuga tenetur tempore officia consectetur veritatis. Dolores reiciendis omnis dolores autem aut quidem quisquam aut. Ut tempore eum nostrum qui porro.', 686, 5, 3, 2, '2020-06-09 04:15:14', '2020-06-09 04:15:14'),
(41, 'ea', 'Laudantium et impedit rerum quasi qui porro. Error repellat suscipit voluptate. Velit consequatur culpa sit in quibusdam dolorem dolore et.', 650, 4, 25, 2, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(42, 'consequuntur', 'Inventore labore veritatis dolores vel impedit nulla iure. Iste consequatur consectetur aut rem qui. Est molestias quaerat quibusdam atque est omnis optio.', 477, 5, 11, 5, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(43, 'et', 'Dolorum provident ut quo eos unde. Iusto culpa qui sed facere nisi aut. Ut eum eum repellendus dolor quo dolor consequatur. Consequatur vel non expedita non enim laboriosam.', 956, 5, 2, 3, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(44, 'nihil', 'Quasi magni consequuntur non ut voluptatem odio optio. Quod fugit est earum blanditiis. Odit voluptatem rerum ea distinctio dolore alias facilis. Eum magni nostrum consectetur non.', 192, 4, 15, 1, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(45, 'similique', 'Exercitationem mollitia aut excepturi autem. Fugit odit omnis ullam aut quos. Saepe sunt magni asperiores aspernatur. Optio dolor dicta quam atque omnis. Autem delectus sequi vitae et rem.', 679, 3, 23, 2, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(46, 'ea', 'Ut delectus id nisi asperiores itaque quam soluta. Adipisci in eos omnis mollitia fugiat. Doloribus odio doloribus quod itaque et sit. Sit eligendi voluptatem doloribus.', 369, 7, 6, 1, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(47, 'aut', 'Nobis ducimus ipsa debitis cum. Dolorem et aut quibusdam. Ut tempora ratione ea laudantium dolorem ad. Aperiam aut et ut nihil non.', 502, 4, 11, 1, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(48, 'dolores', 'Et consectetur et tenetur sit esse nostrum. Provident deserunt sunt accusamus natus aut esse. Et alias dolor totam.', 385, 5, 19, 2, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(49, 'a', 'Et facilis est modi. Eaque accusantium totam dolor. Eius dolorum non voluptatum repellat doloribus sint.', 594, 5, 27, 5, '2020-06-09 04:15:15', '2020-06-09 04:15:15'),
(50, 'dolorum', 'Exercitationem minima eos velit vel est ex dignissimos corrupti. Doloribus velit ea facere itaque quia vero. Eos iusto sed qui quas ut.', 189, 1, 7, 5, '2020-06-09 04:15:15', '2020-06-09 04:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 32, 'Dock Flatley', 'Sit rem iste iusto asperiores. Cupiditate distinctio nesciunt perferendis aut corrupti. Voluptas architecto placeat et quo. Possimus provident ea eum et et.', 3, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(2, 28, 'Aron Lemke DVM', 'Magnam itaque incidunt accusantium ut. Iure accusantium sint id ipsum molestiae sint quod. Quia veritatis perferendis repudiandae. Et voluptates non ut voluptatibus.', 2, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(3, 10, 'Shayne Tromp', 'Aut deleniti voluptatem aliquid explicabo ipsam. Nisi ea aut minima voluptatem. Aspernatur quasi illo amet omnis qui ratione quas.', 2, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(4, 23, 'Karianne Effertz', 'Facilis suscipit facere molestiae aut sed ut in. Sit nihil delectus recusandae fuga doloremque. Qui labore consequatur animi quam quibusdam molestiae nisi.', 3, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(5, 22, 'Bethany Runolfsson', 'Sed et odio voluptas numquam aut est. Aut provident at magni. Illo natus esse dicta et doloribus.', 3, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(6, 47, 'Lillie Pouros I', 'Earum placeat facere quo sit et necessitatibus dolores. Dolorum nobis amet totam quos ex magnam officiis consequatur. Et ab unde quam rerum dolor eveniet aliquid.', 5, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(7, 27, 'Russel Kreiger', 'Provident veniam laboriosam omnis sit rem. Pariatur consequatur totam quo et. Consequatur labore est quia repellendus dolores excepturi temporibus. Assumenda repudiandae minima corporis.', 3, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(8, 23, 'Prof. Conrad Kunde', 'Sit doloremque nesciunt aperiam voluptatem. Et iure quod vel repudiandae est. Maxime harum totam voluptatum recusandae facilis ipsam. Blanditiis qui repudiandae nesciunt possimus aut aut.', 4, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(9, 13, 'Jeffrey Olson I', 'Quis ut accusantium enim voluptates officiis nihil id. Dolorem nesciunt odit ea id dolor nihil. Cupiditate adipisci quas officiis facere error eum nulla.', 1, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(10, 20, 'Carissa Eichmann', 'Corrupti magni modi quam omnis sit. Praesentium maxime non nulla iste. Expedita laudantium aut ut ex. Animi praesentium labore assumenda.', 5, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(11, 2, 'Darlene Rowe', 'Aut reprehenderit inventore aperiam tempora enim exercitationem. Maiores molestiae porro nobis vel aut. Sapiente saepe quia culpa quasi ea.', 2, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(12, 9, 'Cindy McDermott', 'Quae in nulla omnis nemo voluptatem. Officiis hic iste veniam laboriosam est repellendus. Officiis tenetur architecto excepturi deserunt recusandae quam. Quam praesentium laudantium enim consectetur architecto ea in.', 3, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(13, 13, 'Prof. Jay Ankunding MD', 'Tempore officiis dolorem consequuntur. Corrupti commodi in quidem et nisi eveniet magnam. Totam recusandae dicta officiis nulla autem dolor ut.', 0, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(14, 10, 'Hoyt Quitzon', 'Omnis deserunt quasi est dolor expedita voluptates quaerat. Sunt omnis aut earum consectetur et commodi ut asperiores. Minima eveniet tenetur tenetur praesentium. Quo facilis non itaque ut nemo ut nihil quae.', 3, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(15, 4, 'Ellen D\'Amore', 'Omnis cum nihil adipisci illum tenetur voluptatem accusamus. Perspiciatis repellendus asperiores adipisci commodi ex. Unde laboriosam qui dolor id rerum voluptates. Recusandae a sunt culpa sit similique velit quia repellat.', 1, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(16, 29, 'Kieran O\'Connell', 'Aut nostrum nihil minima eius et et. Deserunt molestiae assumenda sed cupiditate facere non.', 2, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(17, 33, 'Dulce Blick', 'Ut minus nobis optio. Veniam nam sunt dolores ea qui voluptas rerum. Delectus consequatur provident et autem sed labore voluptates. Commodi alias ducimus nobis et dolorum. Voluptatem ut aut nemo eos blanditiis inventore aut quia.', 1, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(18, 20, 'Ford Watsica PhD', 'Quidem eos velit voluptas et voluptate adipisci in. Consequatur numquam quia sit minus beatae reprehenderit quis. Nam est voluptates nesciunt provident possimus impedit.', 0, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(19, 3, 'Armani Hoeger', 'Aut ea aspernatur dolorem. Et et autem possimus autem quia qui nisi. Nihil voluptate perferendis similique autem sequi autem possimus deleniti. Maiores et et ut labore omnis quis reprehenderit.', 5, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(20, 47, 'Mittie Roob', 'Sint quia alias animi dolores dolorem. Ipsam necessitatibus eos facilis. Cupiditate iure expedita eum ut similique.', 0, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(21, 22, 'Keeley Sporer', 'Dolores id quis facilis. Sed impedit ipsum soluta quaerat ab aut. Commodi accusantium sit delectus libero perferendis autem ea qui.', 2, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(22, 4, 'Mr. Osbaldo Gottlieb DVM', 'Reprehenderit ad accusamus et quia. Recusandae praesentium porro sed iusto laboriosam. Modi aspernatur earum non in impedit.', 2, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(23, 2, 'Trystan Parisian', 'Et sit soluta occaecati accusamus ipsa. Adipisci impedit id rerum itaque eos facere. Corrupti nihil rerum iste accusantium vel. Dolorem ut rem id magnam at et officiis.', 1, '2020-06-09 04:15:16', '2020-06-09 04:15:16'),
(24, 33, 'Leanna Schaefer', 'Voluptatem omnis aut qui impedit sint enim quam. Iure illo quas aut illum repellendus quod culpa.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(25, 23, 'Queenie Bednar DDS', 'Facilis culpa necessitatibus non nesciunt. Aut voluptatem fugit et dolore. Qui ut exercitationem eligendi rem architecto quia.', 1, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(26, 43, 'Dr. Norwood Lakin', 'Saepe ex et commodi doloremque dolorum inventore beatae dolor. Est nostrum non vel quia ab quis et. Cum aut rerum dolores nemo.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(27, 40, 'Miss Marietta Streich II', 'Repellendus nulla temporibus fuga qui quae atque. Non architecto consequatur quia. Reiciendis molestias voluptatem iste. Aliquid non est veritatis minus perferendis ullam dolor iure.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(28, 43, 'Mrs. Eleanora Gerhold PhD', 'Perferendis impedit minus laboriosam molestias. Facere ea sit voluptas totam soluta. Ex ut architecto officia ducimus quos. Eum maiores corporis non quo nihil commodi velit.', 4, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(29, 8, 'Mrs. Barbara Parker MD', 'Et laboriosam iusto amet totam rerum. Tenetur itaque officia voluptatem quis autem. Aut aperiam et atque magnam optio soluta qui. Laboriosam deleniti quia ex facere reiciendis.', 4, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(30, 15, 'Adrienne Morissette', 'Et nulla magnam vero deserunt aspernatur et. Totam atque illum repellat. Voluptatem ut et earum nihil ut saepe harum.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(31, 15, 'Prof. Derrick Luettgen', 'Qui qui quia laudantium accusantium doloribus. Ut iste dolores quia sed non et dolorem neque.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(32, 29, 'Chadrick Hayes PhD', 'Sit eum omnis culpa necessitatibus delectus quis. Hic numquam quibusdam a unde et minima.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(33, 32, 'Kyra Russel', 'Iusto vel ad possimus earum quia dolorum. Sit omnis ipsum minima autem architecto non quos est. Ducimus et consequuntur deserunt temporibus hic. Totam et temporibus aut dolorem consequatur est.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(34, 47, 'Arjun Yundt PhD', 'Ea fuga error accusantium. Dolore facere laudantium consequatur aut nihil ea amet voluptatem. Aliquam eum qui ex voluptatem ipsam modi rerum voluptatem.', 1, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(35, 10, 'Prof. Trystan Mohr', 'Aspernatur voluptates minus voluptates nihil eum dolorem facilis. Ratione quae accusamus atque animi non neque. Qui quaerat quos voluptatem magni repellendus voluptate.', 2, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(36, 42, 'Dr. Rogelio Reinger II', 'Ipsum voluptatem fugiat distinctio quia. Consequatur ad odit alias est. Deserunt esse qui sapiente pariatur voluptatibus doloremque.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(37, 43, 'Davon Schuppe PhD', 'Quisquam magni officiis eum veritatis itaque minima. Ut voluptas omnis nemo dolorem et. Est laboriosam non qui quis minima eaque.', 2, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(38, 39, 'Emerson Waelchi', 'Porro et dolorem sed aut iure exercitationem asperiores. Est necessitatibus earum earum. Necessitatibus cumque facere ratione illum modi minima velit.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(39, 22, 'Prudence Herman', 'Sapiente aut saepe aut vel voluptates esse. Voluptatem sint hic atque saepe neque voluptate. Facilis fugit earum officiis ut nihil et.', 2, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(40, 26, 'Dr. Candice Schneider', 'Sit omnis est quibusdam. Voluptas in magni voluptas atque. Ea vero qui minus minus eveniet sit nemo. Tempore vel quia deserunt veniam incidunt consequatur. Dolorem repellendus molestiae consequatur dolor veritatis consequatur deleniti.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(41, 26, 'Carmine Hane', 'Ex voluptates sint exercitationem dolor numquam illum et. Qui nostrum consequatur recusandae quod neque consequuntur qui. Velit deleniti et laborum iste incidunt. Omnis et eius nihil rerum necessitatibus eius quos.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(42, 46, 'Antonia Huels', 'Dolorem eveniet voluptas eos id sapiente sed quod. Nihil eum culpa autem cumque voluptatibus nemo accusamus. Dolores consequatur deserunt ab architecto. Laudantium consequatur dolore et maiores.', 4, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(43, 42, 'Jarred Schumm', 'Rerum pariatur quo vel at dignissimos recusandae. Aspernatur veritatis voluptatum a eveniet et itaque. Nostrum vitae id soluta et distinctio est accusamus. Repellat ut saepe cum quia.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(44, 1, 'Lynn O\'Hara', 'Est laudantium quisquam enim et et ducimus. Quisquam aliquid laborum veniam sed delectus ut ea dolorem. Non doloremque nam illum vel cupiditate.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(45, 18, 'Daphne Morissette', 'Natus harum sit natus repudiandae in deleniti. Sed aut provident unde sequi. Et est fugiat rerum. Pariatur eius earum est vitae sed rerum culpa.', 1, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(46, 14, 'Yoshiko Will', 'Ipsam sint dignissimos deleniti minima dolor vitae. Est aut tenetur nisi illo aliquid et ipsam. Quia rem distinctio ipsum earum totam voluptatem quidem dolorem. Totam laudantium ut cupiditate laudantium atque et.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(47, 48, 'Dr. Ernesto Heller Jr.', 'Cupiditate ut ut quia voluptates voluptates iure numquam. Architecto mollitia at laudantium repudiandae voluptatem maxime. Laudantium molestias repudiandae nulla nesciunt rerum atque. Sapiente magni ratione consectetur sapiente quia.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(48, 45, 'Prudence Padberg', 'Doloremque tempore repudiandae illo sequi. Magnam iste expedita molestiae eos. Quia dolorem magnam omnis consequuntur illo nemo deserunt.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(49, 33, 'Vicente Gibson', 'Harum est aut a in fugit sit dolor. Voluptates aut deserunt ducimus tempore similique molestiae dolorum. Est magnam dicta nihil et ea officia dolorem eveniet.', 4, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(50, 37, 'Webster Deckow', 'Sit consequuntur dolor consequatur quos. Qui dignissimos velit est. Exercitationem aut vero consequuntur corporis sed laudantium. Asperiores possimus maiores commodi et.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(51, 43, 'Prof. Colby Bernier IV', 'Ut hic error quaerat laudantium. Modi et consequatur corporis sint harum. Et et consequatur magni. Ad quia ullam dolores eius.', 5, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(52, 23, 'Dr. Marlin Wiza Sr.', 'Incidunt autem voluptatem consequatur tenetur. Occaecati dolore reprehenderit laudantium nisi sed velit. Est optio ipsa molestiae officia.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(53, 49, 'Maybelle Homenick', 'Facere error qui rerum nihil. Nostrum sit sed quis id eaque possimus. Provident ea magnam ducimus voluptatem. Nemo autem aut molestiae aut illo corporis.', 1, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(54, 39, 'Prof. Sanford Mertz V', 'A et ut cupiditate voluptate culpa accusamus. Eos qui nostrum beatae fuga accusamus in. Sint molestiae consequatur officia voluptas. Dolores quibusdam autem error quam non explicabo facilis.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(55, 4, 'Vella Homenick', 'Architecto ratione quasi aut fugit omnis laudantium eligendi. Et fugiat rerum mollitia asperiores enim dicta ea. Ut commodi consequuntur ad voluptatem ut facilis.', 2, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(56, 13, 'Prof. Christopher Herzog V', 'Voluptas nobis deleniti vel eveniet. Id ullam accusantium quaerat quam ut. Quasi repellendus nostrum reiciendis aliquam aut alias. Qui fuga reprehenderit neque est.', 3, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(57, 16, 'Dorris Schmidt', 'Voluptatum illo quae voluptatem qui sunt consequuntur quam ad. Dolorum voluptates sunt error officia. Eveniet dolor voluptatibus ut maiores quo expedita. Sint repellendus dolores ut rerum.', 4, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(58, 26, 'Earl Spencer', 'Aut molestiae optio vel architecto est cupiditate quae. Alias maxime aut dolores dicta nihil. Consequuntur architecto repellendus accusamus sunt incidunt. Dolore sapiente ex quisquam voluptate animi aut accusamus consequatur. Soluta id nisi ea optio quaerat voluptatem quia modi.', 0, '2020-06-09 04:15:17', '2020-06-09 04:15:17'),
(59, 38, 'Mr. Emile Padberg IV', 'Eveniet quia tempora et sed. Quia suscipit ipsam vel dolorum eum aut. Amet earum quasi illum ea vero.', 0, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(60, 17, 'Ms. Loraine Bergstrom', 'Et deleniti odio totam est atque aut voluptatem enim. Architecto voluptas amet est perferendis ullam assumenda rerum. Eum expedita sapiente aut. Eligendi dolores incidunt totam ut tenetur.', 3, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(61, 10, 'Mae Wintheiser', 'Consequatur cum sit earum veniam non vitae. Adipisci inventore voluptatum perferendis qui distinctio eum eius. Voluptate laborum similique rerum quis cum.', 3, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(62, 11, 'Jayden Streich IV', 'Natus in sint amet vel aperiam odit. Accusamus sapiente dolores aut vel non pariatur voluptatibus. Est quos ipsa omnis commodi.', 5, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(63, 10, 'Prof. Minerva Morissette', 'Eos itaque reiciendis iusto. Id non quis a libero. Magnam nostrum quo aut qui consequatur dolores.', 4, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(64, 16, 'Camron Ryan', 'Voluptatibus veritatis aut quis modi consequuntur illum laudantium quaerat. Molestiae totam nihil et et nulla. Illum est fugiat dolorum.', 5, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(65, 3, 'Shania Cremin', 'Veritatis dicta commodi non est. Qui repellendus sint voluptatem maxime sit porro recusandae. Tenetur aliquid qui est et numquam.', 2, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(66, 43, 'Ellsworth Walker II', 'Et modi voluptatibus quam hic dolorem magni. Quas est aut impedit voluptatem beatae. Et excepturi nostrum a deserunt expedita eligendi.', 1, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(67, 42, 'Merle Cormier', 'Sed qui qui molestiae dolor mollitia numquam et. Voluptatum suscipit omnis eum maiores est. Et eum dolore aut et earum commodi enim. Excepturi eos nesciunt dolor praesentium expedita quaerat dolore.', 3, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(68, 2, 'Dr. Jake Flatley MD', 'Non sunt sint exercitationem quam odio sunt et repellat. Eos aspernatur nostrum minima placeat suscipit distinctio. Veritatis qui odit nisi optio ut ratione dicta deleniti. Hic eum voluptatibus et vero architecto totam quas magnam.', 5, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(69, 24, 'Angus Tromp II', 'Quia et quo labore iusto. Consequatur non odio sapiente qui. Molestiae asperiores et et quia provident totam. Repellendus aut hic perspiciatis dolor nulla possimus.', 5, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(70, 36, 'Catalina Kunze', 'Facere quos maiores dolore consequatur illum sequi. Libero incidunt autem non dolor odit dolores. Natus aperiam minus omnis delectus hic nihil.', 1, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(71, 45, 'Lottie Runolfsson', 'Animi minima perspiciatis aliquid ullam. Et dolorum quaerat quis velit. Laboriosam qui blanditiis illo delectus est qui et.', 2, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(72, 9, 'Mrs. Ima Streich Jr.', 'Quis aut similique molestias nobis veniam eaque ex. Ut possimus laborum repellat nihil quo quia. Voluptatem similique dicta praesentium blanditiis corporis corrupti ea.', 5, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(73, 38, 'Kaycee Mayer', 'Unde omnis quis soluta et quia dolores. Occaecati nesciunt consequatur nam aut. Sunt dolore et voluptatem temporibus commodi magnam sit atque. Consectetur qui excepturi cum. Velit vel in similique illo quasi architecto.', 0, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(74, 20, 'Delphia Williamson', 'Molestias earum deleniti quos consequatur esse ut. Sint facilis necessitatibus dolor hic. Omnis molestiae a minus nam.', 2, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(75, 40, 'Prof. Brisa Spencer', 'Beatae cupiditate pariatur quia sed perspiciatis cum. Vitae placeat dolores voluptatum animi. Sunt doloribus molestiae ea nam tempora. Voluptas voluptas ea aut accusamus et qui.', 3, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(76, 32, 'Jaquelin Schimmel', 'Eos officia sunt itaque libero amet. Est et eos maxime rerum dicta. Ad et rerum sed quod saepe eos voluptas. Dolores consequuntur itaque numquam.', 0, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(77, 17, 'Kristoffer Heathcote', 'Cumque aut quod iste velit officiis dolor. Reiciendis quia et mollitia reprehenderit excepturi. Minus sequi mollitia aliquid voluptatem nemo deserunt sit.', 3, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(78, 32, 'Mrs. Eleonore Beatty', 'Qui laborum voluptatem id. Occaecati ea fugiat necessitatibus perferendis consequatur eos temporibus perspiciatis. Quisquam in cum quam rerum tenetur ut. Alias iusto neque est a culpa.', 1, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(79, 8, 'Maximillia Murazik', 'Quasi praesentium saepe dolorem alias temporibus nesciunt. Ratione et debitis saepe quis natus. Voluptatum vitae reiciendis itaque. Aut ut sequi voluptas qui quidem facilis quidem.', 2, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(80, 32, 'Dayana Howe Jr.', 'Repellendus similique voluptatum neque fuga vero. Dolorum quo est dolorem aliquid nulla. Hic impedit dolorum ab quae perspiciatis dolores vitae.', 2, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(81, 32, 'Maureen Kautzer', 'Temporibus et deserunt explicabo. Consectetur nesciunt quo voluptatum vel voluptatibus. Optio reprehenderit vel sequi sit quos repellendus. Qui eligendi numquam voluptatem inventore quam deleniti autem reiciendis.', 0, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(82, 36, 'Napoleon Ferry DDS', 'Dolore vel ratione veritatis blanditiis minima praesentium odit. Rerum rerum occaecati magnam. Quibusdam neque dolores voluptates commodi est amet. Dignissimos eos velit dolorem incidunt.', 5, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(83, 11, 'Dr. Gudrun Yost Sr.', 'Sit sint neque et libero quibusdam eius cumque. Sint est est dolores enim.', 2, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(84, 33, 'Prof. Roslyn McGlynn PhD', 'Aut dolorum amet repudiandae totam nobis vero. Ut accusamus deleniti sunt omnis. Qui neque veritatis esse quasi harum id. Perferendis id dolores dolor quas unde.', 0, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(85, 11, 'Dr. Ulices Walker', 'Molestiae ipsa dolor consequuntur commodi. Officiis dolores reprehenderit perspiciatis voluptas. Ut cumque maiores tempora voluptatem. Aut nam voluptates itaque ut iure voluptatum ad.', 0, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(86, 28, 'Angeline Medhurst', 'Enim dicta aliquam et voluptatem asperiores pariatur neque. Iusto autem consequatur illo rem itaque ea. Eum dicta voluptas sit molestiae voluptatibus nihil. Similique architecto cupiditate quia est eaque modi.', 3, '2020-06-09 04:15:18', '2020-06-09 04:15:18'),
(87, 39, 'Cicero Roberts IV', 'Itaque ut velit nihil ut dolorum. Asperiores at vitae eveniet rerum. Aut harum aperiam repellendus aliquid est. Optio ut iusto et cupiditate laboriosam.', 2, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(88, 28, 'Maurice Walter', 'Magnam quia possimus nostrum aut. At iste saepe cupiditate quaerat repellendus. Ipsam voluptatum perspiciatis illum accusantium et. Ipsa voluptatem excepturi accusantium quibusdam ratione.', 5, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(89, 3, 'Delphine Larson', 'Vel iure quasi placeat enim temporibus quia. Error ipsam voluptatem amet et. Non saepe quis est inventore quibusdam mollitia iste. Debitis similique iure optio quidem animi.', 4, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(90, 45, 'Pauline Barrows', 'Eos nesciunt voluptas dolores. Asperiores maxime est qui dignissimos. Est ut impedit quis ut harum. In tempore illo eum ut veritatis quibusdam ullam reiciendis. Iusto quis ut amet aspernatur.', 3, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(91, 35, 'Lexi Kihn', 'Possimus inventore quaerat voluptate. Sint expedita facere id non possimus. Qui at a ut cumque quos ad corrupti. Illum itaque ullam et voluptatibus.', 2, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(92, 10, 'Destiny Kuhic', 'Eos ipsam quam rerum et quia. Minus perferendis rerum unde nesciunt magnam hic libero. Rerum omnis nesciunt ut voluptatem eos.', 2, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(93, 15, 'Rhianna Feil', 'Labore corrupti facilis quam deserunt id. Vel et et commodi eveniet. Ea omnis blanditiis nihil nihil.', 0, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(94, 17, 'Mr. Reed Renner', 'Sed iusto expedita magni nam. Inventore et alias quod excepturi sit nisi eum quasi. Enim dicta explicabo voluptas. Officiis excepturi consectetur rem quia temporibus nam magnam.', 2, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(95, 47, 'Jessie Schaefer', 'Sunt commodi necessitatibus expedita veniam at minima animi. Reiciendis nobis modi id magni. Voluptatum suscipit consectetur est perspiciatis.', 3, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(96, 22, 'Ms. Adele Wolf IV', 'Distinctio laboriosam recusandae et ab voluptas qui id. Ad qui sed id eum reiciendis iure ratione. Aliquid iste placeat quasi eligendi. Accusamus est eius reiciendis ad quis doloribus voluptas.', 3, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(97, 36, 'Mrs. Ada McKenzie DDS', 'Corporis sint autem ut doloribus. Voluptatem deleniti sed delectus ratione maiores. Quo non ipsam tempora mollitia aut. Eos dolor incidunt rerum quod qui aut.', 2, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(98, 4, 'Dr. Carrie Bahringer PhD', 'Maiores et culpa magni id est. Quasi ad dolorem dolorum officiis.', 5, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(99, 38, 'Solon Luettgen', 'Sunt minima cum soluta corrupti eos. Quia veniam hic hic. Veniam qui reprehenderit dolorem aperiam nulla.', 2, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(100, 21, 'Manuela Schmitt', 'Dolor repudiandae necessitatibus cum esse. Iste quasi quod perspiciatis sunt perferendis atque. Et commodi non voluptas unde id nostrum.', 5, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(101, 9, 'Ryann Fadel', 'Quia labore aut illum qui odio neque voluptates. Maiores vel autem et doloribus possimus maiores dolor. Magni sunt dignissimos et. Itaque qui qui voluptas qui ab amet. In explicabo nam fuga.', 5, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(102, 22, 'Antonia Nikolaus', 'Voluptas perferendis maiores et nulla illo atque esse. Quidem eaque inventore quia. Ex placeat nulla esse et. Dolore id necessitatibus voluptatem.', 1, '2020-06-09 04:15:19', '2020-06-09 04:15:19'),
(103, 17, 'Reece Reichert', 'Et vel et ipsum commodi debitis quidem. Ad consequatur quibusdam sed error. Voluptatem est sapiente labore provident voluptatem. Quis incidunt id quae corporis.', 4, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(104, 36, 'Rahsaan Rutherford', 'Cum iste et et quo et velit culpa. Voluptates quia et et occaecati voluptas in voluptas. Et fuga pariatur molestiae minima quis qui.', 5, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(105, 47, 'Dr. Bernita Smitham DDS', 'Ut commodi nesciunt assumenda optio ut libero. Nulla cupiditate explicabo fugiat ea omnis voluptate deserunt. Consectetur ut et quo eligendi.', 2, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(107, 16, 'Wilbert Schimmel', 'Rerum accusantium unde numquam saepe. Non qui optio animi velit et autem nihil. Exercitationem eum delectus consequatur odio consectetur.', 1, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(108, 24, 'Travon Wunsch', 'Reiciendis molestias unde explicabo velit. Mollitia sapiente adipisci omnis est temporibus. Ipsum autem beatae quae rerum deleniti omnis. Praesentium animi fuga ut itaque nesciunt.', 3, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(109, 42, 'Prof. Bernhard Nolan', 'Aut nesciunt atque tempora qui cumque cumque aperiam. Voluptas libero quia suscipit earum.', 4, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(110, 10, 'Ayden Wiza II', 'Quam corrupti odit dolore animi repellat. Eos aliquid cum beatae non velit. Sit ipsa aliquam explicabo rerum earum laudantium. Qui in est aperiam ipsam voluptatibus ut. Tempora blanditiis blanditiis perferendis enim quia saepe.', 1, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(111, 3, 'Prof. Javon Zieme DDS', 'Ratione voluptate accusamus atque quisquam est magnam explicabo. Rerum placeat nihil ut et quisquam. Quo et tempora quod quo nesciunt. Nihil consequatur ut cum aut est architecto non.', 1, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(112, 11, 'May D\'Amore', 'Nisi necessitatibus omnis est facilis ut eligendi. Dolorum officiis et omnis qui. Aliquam quia enim ipsum aliquam aspernatur.', 3, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(113, 4, 'Brigitte Heller', 'Quae vel quod ut blanditiis beatae facilis quae. Sed animi in itaque hic nam fugit repellat. Nobis eius expedita repudiandae quam enim ex iure.', 4, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(114, 47, 'Anabelle Yost Jr.', 'Est deserunt iusto reiciendis sint. Enim vitae ipsum ratione id quibusdam ea placeat. Facilis voluptatem voluptatem occaecati et quia dolores at aut.', 5, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(115, 13, 'Ms. Cassandre Lowe Jr.', 'Non ut quo beatae voluptas. Voluptatem perferendis soluta ut suscipit minima repellendus accusamus dolores. Quo quaerat sed id minima aperiam aspernatur neque.', 0, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(116, 36, 'Tremayne Quitzon', 'Aliquid aut rerum magni numquam. Amet eius quos at. Voluptatem ut accusantium qui sint et.', 2, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(117, 8, 'Cleta Ernser', 'Corporis dolores aspernatur natus voluptatem enim qui numquam. Et ut quidem accusamus officiis. Illum corporis qui occaecati dolorem. Labore et sit minima illo mollitia illo ratione deleniti.', 1, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(118, 4, 'Violet Lang', 'Aut nobis quia quas aperiam ea. Suscipit maiores repellat nihil nobis illum ratione exercitationem. Quas autem ea eius et commodi.', 1, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(119, 46, 'Mr. Benedict Zemlak DVM', 'Perspiciatis fuga aut nam dolores. Et provident vero iste soluta dolorem dolor iste perferendis. Soluta voluptatum omnis est voluptate minus accusamus ut.', 2, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(120, 13, 'Wanda Luettgen', 'Veniam quia nesciunt et ut. Dolor quia unde quis ut eum. Sit animi fugiat in.', 0, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(121, 44, 'Dr. Coy Schmidt', 'Quas quia harum veniam facere minus enim et. Veniam et porro dolorum quam a temporibus quam. Aspernatur vero numquam aut cupiditate excepturi.', 1, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(122, 40, 'Katarina Bailey', 'Et et exercitationem ut minus distinctio. Numquam fugiat veniam excepturi cupiditate. Itaque quaerat culpa molestiae repudiandae sunt facilis nesciunt. Pariatur sed reprehenderit consequatur qui reiciendis.', 0, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(123, 11, 'Leda Bogisich', 'Optio eius repudiandae mollitia culpa. Blanditiis perferendis esse aliquid. Dicta distinctio itaque et id libero id eius. Corrupti commodi in voluptas aperiam deleniti sit.', 2, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(124, 18, 'Casimer Simonis', 'Maiores dolorem est eius hic omnis dolor tenetur illum. Id earum alias voluptate voluptates. Tenetur quod earum et excepturi eum culpa eum.', 0, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(125, 24, 'General Jakubowski Jr.', 'Aspernatur voluptatem ipsa in doloremque esse quae. Dolorum eius aut iusto quis voluptatem dolorum. Non accusamus ea enim magni sit. Ut sed dolore libero ratione et.', 4, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(126, 40, 'Gus Streich', 'Maiores corporis molestiae inventore eos et quod blanditiis. Corporis rerum explicabo officia.', 4, '2020-06-09 04:15:20', '2020-06-09 04:15:20'),
(127, 22, 'Paxton Bartoletti', 'Et omnis provident iure eum reprehenderit at. Est atque voluptas voluptatum est. Dolor tempore animi culpa. Necessitatibus reiciendis hic et voluptas et.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(128, 44, 'Dr. Marquis O\'Conner', 'Et voluptatibus sed magni sunt facere est. Et ut quos est ut.', 3, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(129, 7, 'Michaela Kutch', 'Explicabo odit cupiditate dolor et doloribus repellat recusandae. Qui aperiam hic ad pariatur. Enim qui rerum atque temporibus accusantium aut.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(130, 38, 'Kylie Dicki', 'Dignissimos non ducimus aut quia. Tempore ea sed aut non. Hic quis sunt nulla. Ut nihil dolores fugit. Distinctio nihil cum qui impedit facere.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(131, 19, 'Unique Herzog', 'Et in totam deleniti corrupti a. Sit exercitationem pariatur aut id corrupti. Nostrum ea praesentium dolor consequatur asperiores qui aut. Distinctio ipsam qui ut fugiat et tempora.', 2, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(132, 1, 'Yasmeen Carroll', 'Error dolor sed autem dolores neque unde. Nisi et natus non ipsum. Et maiores et cumque illum.', 1, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(133, 35, 'Bobby Haley', 'Iure vel id quis. Ab eum quo rerum excepturi nostrum eius debitis. Aut nulla ex corrupti consectetur.', 1, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(134, 35, 'Allene Mills', 'Sunt est sapiente eum iure et voluptatibus tempora. Ea repellendus eos reprehenderit provident voluptas tempore veniam qui.', 2, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(135, 46, 'Tillman Jacobson', 'Quia sit inventore molestiae neque incidunt neque aperiam. Consequatur porro rerum amet voluptatem nobis laboriosam quas. Nemo distinctio dicta labore iusto accusamus.', 3, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(136, 8, 'Antone Wintheiser', 'Officiis reiciendis quia eius optio ducimus perferendis quasi. Dolores velit modi commodi facilis explicabo. Vero quis sunt necessitatibus vel aspernatur provident.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(137, 46, 'Taylor Stiedemann', 'Libero provident quia consequatur odit quia recusandae in. Aut rem maiores voluptatum et dolores voluptatem. Unde distinctio natus nulla suscipit omnis ut.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(138, 2, 'Linnie Gibson', 'Temporibus accusamus accusamus tempore rerum. Enim ab velit voluptas. Ipsum minima dolores ut qui porro.', 0, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(139, 24, 'Oleta Yost III', 'Praesentium voluptatem sit ipsa voluptate expedita architecto. Minima autem recusandae eius eaque. Facilis possimus ut quia possimus.', 1, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(140, 23, 'Wyman Gleason', 'Quo suscipit earum rem nemo. Distinctio incidunt qui eum omnis ullam iure. Est est architecto est itaque rem. Necessitatibus rerum molestiae fugiat magni consectetur voluptates.', 0, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(141, 42, 'Rodger Legros', 'Accusamus natus aut et nostrum quasi similique. Placeat amet ad necessitatibus omnis et. Qui incidunt rem officia sequi. Et soluta quia veritatis sed omnis libero quam sit.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(142, 2, 'Dr. Morgan Watsica', 'Aperiam voluptas consequatur nesciunt est sint. Rerum incidunt labore et quis. Veniam fugiat soluta perspiciatis est sit earum.', 2, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(143, 21, 'Dr. Kyle Deckow', 'Vel sit sit similique corrupti expedita. Aut quae veniam maxime fugiat et quia velit. Eius autem est et eligendi iure illum architecto. Suscipit alias repudiandae eos magnam repellat et.', 1, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(144, 7, 'Arch Halvorson', 'Reprehenderit eos qui eius ipsa officia commodi officiis. Nihil nihil adipisci incidunt rerum a quo. Necessitatibus molestiae eligendi aut eius ut excepturi. Nam a praesentium rem sit saepe iure.', 1, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(145, 37, 'Donato Ryan III', 'Sit dolore sed consequatur qui est quo aliquam. Quisquam et ullam voluptatum voluptas quia inventore error. Quia ducimus quia ex mollitia perspiciatis in. Pariatur sit accusantium dolores numquam.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(146, 50, 'Elyse Rutherford I', 'Nam est sunt nobis. Consequatur adipisci repellat et sequi temporibus quae. Magnam quas id quam veniam sequi quaerat amet quis. Qui culpa est ut in et delectus.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(147, 9, 'Adam Kuphal', 'Amet doloremque nesciunt in repellendus. Et sint quis consequatur vitae praesentium nesciunt magnam nihil. Vel dolorem molestias repudiandae in impedit accusantium.', 0, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(148, 2, 'Henriette Little III', 'Commodi molestias tenetur qui cumque. Sit corporis doloremque necessitatibus est hic et tempore. Natus deserunt ratione illum. Sit expedita est animi voluptates impedit aliquid.', 4, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(149, 7, 'Geo Purdy', 'Non saepe omnis ex est quo. Est ab adipisci voluptatem. Impedit maxime culpa eveniet enim rerum. Animi quaerat ipsam ratione et asperiores et tempora.', 3, '2020-06-09 04:15:21', '2020-06-09 04:15:21'),
(150, 26, 'Dante Wolf', 'Corrupti porro cumque consequuntur aut reprehenderit illum. Voluptas reprehenderit et est repellendus autem dolor adipisci eos. Nemo distinctio quaerat ut porro et necessitatibus.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(151, 7, 'Dr. Paris Fay', 'Consequatur dolorem possimus unde maiores. Praesentium odit excepturi vero exercitationem voluptatum nulla inventore quod. Hic amet sit animi rerum ut. Vel qui a beatae earum soluta expedita.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(152, 15, 'Prof. Carole Klocko Jr.', 'Eveniet aliquam soluta mollitia blanditiis dolores aliquam architecto. Quis ullam molestias vel pariatur ea in. Ex quam explicabo quibusdam non. Voluptatem praesentium est eum.', 5, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(153, 4, 'Nona Metz', 'Iusto enim animi vero placeat natus veniam veniam. Expedita maxime quia laborum ex a impedit. Eum porro eos occaecati ab similique qui. Eveniet corporis molestiae commodi repellat dolorem totam. Sunt molestiae et quibusdam quis.', 0, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(154, 21, 'Jaden Marks', 'Consequatur aspernatur repellat nihil sit aspernatur necessitatibus voluptas magnam. Ipsa iure tempore incidunt reiciendis id autem. Rerum voluptatem consequuntur voluptatibus error quam non.', 3, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(155, 37, 'Krista Streich', 'Quod nobis cum dolor animi porro. Minus inventore accusamus voluptas magni aspernatur sed autem. Non et maxime nobis error et. Itaque ut ad ut enim libero. Totam qui necessitatibus quis voluptatibus.', 1, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(156, 44, 'Prof. Peggie Hill', 'Esse iste corporis amet et qui saepe beatae vero. Provident aut rerum officia fugiat quasi quis.', 5, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(157, 47, 'Dimitri Schiller', 'Rerum officiis libero adipisci officia eius velit laborum. Officia id ducimus libero.', 4, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(158, 31, 'Zoie Daugherty', 'Possimus laborum hic saepe voluptas. Voluptas excepturi voluptas aut quis et voluptates fuga dolor. Earum error ut illum.', 0, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(159, 8, 'Rahul Mante', 'Ex reprehenderit rerum labore iste omnis iusto tempore. Assumenda excepturi ducimus assumenda. Eos voluptas nobis possimus molestias reiciendis repellendus et. In eos ab quia laborum provident.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(160, 27, 'Dr. Maximo Effertz', 'Architecto amet saepe veniam non libero iusto dolorum. Assumenda natus quaerat ut soluta iste ex voluptatum maiores. Officiis ea qui repudiandae et eos molestias temporibus expedita.', 3, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(161, 43, 'Dr. Reed Volkman', 'Ipsa quia quod repellat asperiores mollitia. Cumque odio ratione asperiores quibusdam dolorum est. Ea magni similique rerum quia et. Maiores ullam qui aliquam quia aut.', 4, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(162, 33, 'Dr. Linnea Wisoky DVM', 'Dolorem sapiente ut non. Quia ea officia aut ipsum omnis quo. Voluptatem quia recusandae animi rerum ut atque aliquid.', 4, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(163, 47, 'Mr. Marcel Sawayn I', 'Tempora rerum sed accusantium animi voluptas sunt. Enim quis voluptatum optio id sed sit non. Et velit perspiciatis nihil.', 4, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(164, 11, 'Chris Lakin', 'Ea aut tempora ipsa. Rerum tempora ipsa repellat quas assumenda aut. Provident autem occaecati ut eligendi.', 1, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(165, 17, 'America Dicki', 'Ad aut ea assumenda assumenda repellendus dolorum. Corrupti ut velit quaerat voluptatem corporis. Corporis sunt harum maiores molestias laboriosam possimus. Sed repellendus qui sunt et sapiente necessitatibus et.', 4, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(166, 15, 'Christ Yost', 'Ex dolor voluptatem commodi reprehenderit autem. Aut ut illo quasi tempora fuga eum quia. Hic praesentium quia praesentium debitis doloremque consequatur. Iure explicabo porro voluptatem modi repellendus autem voluptates. Animi voluptatum minima mollitia quia consequatur quod.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(167, 40, 'Eldred Stanton II', 'Expedita rerum qui harum et consequatur nam doloribus. Non fuga assumenda dignissimos distinctio. Odit libero repudiandae est et hic autem quo. Maxime nostrum doloremque maiores esse accusantium.', 3, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(168, 1, 'Fredy Greenfelder', 'Repellat quibusdam aut quae ut sapiente sed adipisci iusto. Et aut facilis sed animi. Itaque qui sit reiciendis.', 4, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(169, 14, 'Austyn Schuppe', 'Est culpa autem laboriosam asperiores veniam impedit veritatis. Veritatis ea tempore aliquam rerum necessitatibus omnis. Ut eligendi atque amet ut dolores asperiores incidunt. Nihil hic minus sed ad laborum voluptatum. Corporis impedit magni maiores omnis esse quasi.', 3, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(170, 5, 'Adolfo Macejkovic III', 'Inventore quibusdam architecto mollitia id commodi sed ad. Voluptates sint dolores tempora aspernatur animi laborum tempora. Asperiores delectus quas itaque voluptatem rerum pariatur. Provident voluptatem quaerat ab explicabo.', 1, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(171, 7, 'Mrs. Mattie Gutkowski II', 'Ab voluptas error aut hic aut reiciendis. Id culpa earum fugiat est. Minima eveniet aut id.', 5, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(172, 22, 'Adrian Cormier', 'Illum inventore rerum dolor aperiam. Sapiente ipsam consequatur qui non. Odit sit laborum voluptas illo consectetur voluptates. Non esse nihil sit quidem laborum voluptatem.', 0, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(173, 14, 'Prof. Alfonzo Bergstrom PhD', 'Ad commodi aliquam quaerat. Voluptatem sed exercitationem molestiae a minus ab porro. Perferendis exercitationem eveniet non omnis sunt.', 5, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(174, 15, 'Kian Lockman', 'Ratione quaerat voluptas expedita ipsa harum inventore illum. Et modi natus atque necessitatibus accusamus fugit. Reprehenderit accusantium labore assumenda totam. Voluptates nemo et sed aliquid.', 1, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(175, 27, 'Julie Kuphal II', 'Eaque aliquid vero aliquam libero illo laboriosam officia. Earum omnis blanditiis harum. Iste eius nobis eligendi reprehenderit.', 1, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(176, 31, 'Prof. Larry Auer II', 'Reprehenderit iure nostrum et dolorem nesciunt eligendi nostrum. Sit qui et quisquam rerum. Consectetur non commodi beatae consequatur amet.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(177, 27, 'Alba Wiegand', 'Quos sit accusamus error voluptas quia. Et eos quo quasi rerum tenetur quae. Nesciunt voluptatem et ut quaerat.', 0, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(178, 3, 'Daniela Dare', 'Voluptate sint suscipit veniam omnis ut. Consequuntur ab dolorem excepturi voluptatem est eligendi. Quia id consequatur consequatur ut laboriosam et vitae. Distinctio sed soluta est quaerat molestiae in.', 5, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(179, 7, 'Asa Kuphal', 'Commodi dolores sit enim vel qui accusamus eum. Ipsa cumque perferendis distinctio maxime quam quas. Ipsam voluptate officiis blanditiis tempora.', 1, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(180, 25, 'Sarai Harber', 'Quos aut ut omnis aut. Id ad culpa optio voluptas impedit molestiae.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(181, 50, 'Lloyd Bruen', 'Placeat repudiandae esse accusamus quia. Illum nisi at dolor quas quod qui. Architecto pariatur veritatis quisquam sint dolorem vitae. Ducimus dolorem sint eum expedita ratione dolore in.', 2, '2020-06-09 04:15:22', '2020-06-09 04:15:22'),
(182, 3, 'Dr. Junius Bergstrom Sr.', 'Ea cupiditate ut consequatur eum tempore nisi. Eligendi quaerat perspiciatis ipsum magnam eos quidem molestiae. Et magnam magni ut sapiente in.', 2, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(183, 32, 'Dr. Tomas Yost', 'Aut expedita et quod nesciunt necessitatibus reprehenderit. Reiciendis expedita qui quas exercitationem labore adipisci dicta. Nihil esse aut tempora fugiat provident blanditiis dolorum. Rerum sint rerum laudantium nihil aliquam iure.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(184, 38, 'Fabiola Metz DDS', 'Veniam eveniet dolorum non rerum porro deleniti. Consequatur dolore consequatur non quaerat sed quam nesciunt.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(185, 10, 'Fernando Sporer', 'Ea et aut tempora eum minus eveniet magnam. Quod recusandae aperiam assumenda molestiae in. Quo dicta optio sed nihil facere adipisci. Quibusdam voluptas autem veniam est consequuntur excepturi natus.', 2, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(186, 42, 'Josefa Zboncak DDS', 'Animi distinctio praesentium cupiditate magnam dolorum. Magni nesciunt consectetur non laudantium veniam. Est non tempora voluptatem.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(187, 39, 'Miss Rosalia Hudson IV', 'Qui mollitia et aut est est. Aliquam sequi suscipit esse velit voluptatum quisquam. Vel nisi molestias eos voluptas. Sit voluptatem aut quia aut.', 3, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(188, 2, 'Cortney Krajcik', 'Adipisci sint soluta nulla iure facilis id sapiente. Unde at omnis perspiciatis adipisci excepturi ducimus sint. Autem animi quia natus voluptas illo ut dolores. Distinctio possimus ut placeat sunt.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(189, 41, 'Anjali Klocko', 'Animi mollitia iste ab nesciunt cupiditate autem accusamus. Et laborum a repudiandae. Quo dolorem tenetur asperiores.', 4, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(190, 42, 'Mr. Granville Nicolas II', 'Dolorem doloribus pariatur illum et. Dicta facilis a laboriosam praesentium. Impedit est dolore esse id rem officiis iste.', 3, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(191, 37, 'Mrs. Lisette Glover DDS', 'Maxime aliquam temporibus explicabo mollitia. At laborum ipsum rerum et voluptates quo. Ut sit ducimus enim qui autem. Ut cumque unde et omnis suscipit.', 4, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(192, 2, 'Dr. Cicero Dietrich IV', 'Eveniet excepturi velit voluptatem facilis dolor voluptate. Suscipit modi autem ut molestias. Dolores at facilis debitis autem quos velit.', 4, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(193, 44, 'Jaquelin Waters', 'Nemo culpa velit aut sint atque deleniti ea magni. Voluptatem sit quos et ullam. Alias rerum rerum ea voluptatum molestiae laborum eum ullam. Consequatur officiis deserunt quibusdam fuga.', 1, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(194, 1, 'Drake Weber', 'Sed omnis blanditiis sit earum expedita nulla dolor. Architecto neque modi et delectus est blanditiis. In dignissimos architecto non officia autem. Consequatur accusantium consequatur est architecto.', 4, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(195, 38, 'Guadalupe Lueilwitz', 'Ut in aut repudiandae minus soluta et reiciendis. Deleniti autem quas exercitationem tempora unde maxime minima velit. Sit provident nesciunt est accusamus itaque nobis et. Sunt vel voluptatibus et perferendis magni molestiae quia.', 2, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(196, 42, 'Delilah Bayer I', 'Rerum voluptatem adipisci laborum quaerat velit qui. Ducimus hic nulla quia ipsam. Molestiae qui molestiae alias voluptate repellendus velit.', 5, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(197, 18, 'Charlie Heller', 'Maxime dolore accusamus ullam et eum sit quasi rerum. Et aut est accusantium cumque eveniet sed. Et odio voluptatem quaerat in corporis quae neque.', 3, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(198, 5, 'Edgardo Braun Sr.', 'Quos voluptatem modi est necessitatibus. Quia alias dolor dolor a mollitia. Sequi repellendus a quaerat non totam optio assumenda. Voluptatum odit doloremque nisi quam itaque vitae architecto.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(199, 2, 'Weldon Green', 'Non odio qui voluptate nihil quasi delectus ea. Ipsam vero aut a omnis fugit.', 5, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(200, 12, 'Serena Nikolaus', 'Quod consectetur consequatur voluptatem aut dicta et quo. Reprehenderit debitis voluptas non laborum aut voluptatem maxime odio. Officia quis ipsum doloremque et iste.', 1, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(201, 21, 'Prof. Kiera Huel', 'Et consequatur et commodi cum praesentium dolor. Tempore quae maxime at possimus unde molestiae nihil qui. Repellat autem voluptates consequatur in commodi voluptatem. Alias quos ullam odit vero.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(202, 12, 'Dr. Devan Schiller', 'Dolor nemo libero aut recusandae architecto voluptas dolorum. Et dolor distinctio facere eaque est. Et nobis harum voluptas consequatur sed nesciunt magni. Et neque et deserunt consequatur mollitia id.', 1, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(203, 28, 'Jovany Hyatt', 'Ea suscipit rerum fugiat quia. Consequatur quis qui esse magni totam et. Et laboriosam rerum deserunt in.', 4, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(204, 12, 'Lew Christiansen', 'Et eos quidem nihil ut numquam dolor. In beatae eveniet aut minus. Modi quod perferendis eos laborum. Quam voluptatem qui nesciunt eveniet et enim omnis.', 2, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(205, 8, 'Bernie Nikolaus', 'Dignissimos et consectetur placeat molestiae recusandae iure ratione. Molestias fugiat rem recusandae omnis reprehenderit voluptatem. Veniam dolorem nihil a ea veniam harum quam numquam.', 3, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(206, 22, 'Casimir King', 'Quam consequuntur quis iure est occaecati non. Sed dolor minima qui sunt corporis ad iste. Modi ut provident beatae molestiae. Fugiat libero iure consequatur quo.', 2, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(207, 19, 'Russ Bechtelar', 'Est ipsa quisquam sit voluptas. Et aut corporis illum sed minima quaerat.', 3, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(208, 38, 'Stanton Bruen DVM', 'Id doloribus fuga culpa ducimus nulla qui. Eos laboriosam porro magni reiciendis repellendus. Culpa at consequuntur quis deleniti pariatur molestiae.', 2, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(209, 10, 'Prof. Stephanie Gorczany II', 'Dicta sunt optio dolorum quia. Veniam quasi labore ipsa sint. Consequatur sunt omnis sit quia nihil.', 3, '2020-06-09 04:15:23', '2020-06-09 04:15:23'),
(210, 31, 'Brandyn Ryan', 'Quia harum nemo culpa non architecto qui ab. Aut sed nihil et delectus porro qui delectus. Facilis perferendis quo sed est molestiae.', 0, '2020-06-09 04:15:23', '2020-06-09 04:15:23');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(211, 26, 'Aisha Torphy', 'Qui assumenda molestiae voluptatem eum omnis architecto vel. Ad eligendi et quibusdam ea expedita fuga est est. Omnis sed ab doloribus qui temporibus et consequatur iste.', 1, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(212, 33, 'Candida Hoppe', 'Sed explicabo eveniet id dolores necessitatibus harum. Natus quam dolorum est excepturi.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(213, 11, 'Favian Grimes', 'Sequi quod praesentium nemo quia asperiores. Aut excepturi corporis odio non voluptatem. Ut eos aut atque ut dignissimos optio. Nostrum dolorem corrupti neque incidunt accusantium voluptatem.', 5, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(214, 45, 'Salvatore Fay', 'Quia deserunt natus pariatur rem dolor sit odit. Repudiandae laudantium nesciunt voluptatem magni quam ex. Totam id voluptas aut vel et ex dolores.', 5, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(215, 9, 'Dr. Marge Brekke I', 'Cum consequatur fuga est similique minus. Sed quos sunt illum ut commodi quia reprehenderit. Aut recusandae quas sed molestiae ab repudiandae aut. Id est ipsam laudantium voluptatibus.', 0, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(216, 44, 'Carlee Jaskolski', 'Dolor qui quae porro perspiciatis ut est quae et. Asperiores fuga quia quis ipsum culpa iure. Ullam quaerat quasi voluptas error dolorem vitae et impedit. Numquam necessitatibus omnis minus nihil cum excepturi expedita.', 0, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(217, 1, 'Thalia Wuckert', 'Pariatur quidem doloribus nihil sed in. Adipisci placeat eum perferendis sint harum saepe earum. Quaerat mollitia eos voluptates corporis ex.', 0, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(218, 14, 'Susana Hickle', 'Magni enim ut quia. Qui temporibus quas quasi explicabo accusamus nemo dolorem. Iusto nam est fugit.', 2, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(219, 1, 'Rhoda Lehner PhD', 'Iusto consequatur sed error eius voluptatem quaerat et. Qui beatae amet eligendi ea. Laboriosam dolore vel molestias voluptas in velit nesciunt. Quo error rerum aut sit ea tenetur sed.', 1, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(220, 35, 'Dr. Elisabeth Bergstrom', 'Sint ipsam fuga minus dolore ad minus nisi. Qui a amet eius dolore sit. Omnis ut quia pariatur recusandae fugit vel nulla.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(221, 32, 'Myron Goodwin Sr.', 'Non velit magni molestias incidunt. Qui aut et iusto repellendus. Aliquam similique animi qui voluptatem porro velit hic.', 2, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(222, 7, 'Keven Carter', 'Qui aut et et sit distinctio aut. Modi id in inventore laborum necessitatibus sit. Quae sapiente deserunt et nam.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(223, 24, 'Dave Halvorson', 'Non voluptate ea explicabo dolorum quis. Aut qui est pariatur omnis qui sapiente. Numquam a cum rem aut. Quod nulla veritatis voluptatem ipsam consequatur quia temporibus.', 0, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(224, 25, 'Nova Runte', 'A vero nihil molestiae voluptas ut velit. Beatae deleniti et consequatur alias. Ut saepe cumque nostrum ipsa suscipit.', 5, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(225, 18, 'Dr. Orie White DVM', 'Temporibus molestiae blanditiis et vel ea aut provident. Itaque quod dolores aut architecto soluta recusandae modi. Aut nam ut omnis reprehenderit voluptate quaerat. Atque qui iste illo iusto.', 2, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(226, 3, 'Jedediah Rath', 'Laudantium ipsam est et doloremque rerum. Rerum quas est sint consequuntur a incidunt. Consectetur earum dolores quia fugit iusto.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(227, 36, 'Prof. Dariana Lehner', 'Facilis reiciendis consequatur qui id explicabo. Ullam sunt optio doloribus et voluptatem excepturi nam in. Unde consectetur cumque rem delectus nihil non.', 2, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(228, 25, 'Ursula Dibbert', 'Asperiores molestiae dolorem quia error maiores. Sit quis vero enim ex. Similique optio impedit doloremque minima cum cupiditate voluptatem.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(229, 28, 'Bethel Monahan', 'Qui nostrum quaerat modi ut aspernatur nihil. Rem quasi amet et. Praesentium nisi non occaecati.', 3, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(230, 39, 'Ms. Cathrine Adams', 'Quidem dolorem quia vel nisi quaerat. Sed et rerum dicta assumenda saepe. Consequatur quas fugiat repudiandae voluptatibus ad. Enim cum modi qui sed.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(231, 50, 'Herbert Mohr', 'Voluptatibus atque nobis quam cupiditate enim autem. Et voluptates hic aliquam veniam ut quod quia at. Nulla eos expedita aliquid nam aut.', 2, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(232, 48, 'Prof. Carolanne Dibbert IV', 'Aut dolorem quis aut necessitatibus id nesciunt in. Suscipit rerum cumque et veritatis. Totam velit tempore autem at praesentium nihil. Repellendus ut quod doloribus totam quia provident et illum. Consequatur est aut ut quidem vel.', 5, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(233, 11, 'Aliza Satterfield', 'Inventore accusamus voluptatem iure quaerat ipsa tenetur. Autem minima quaerat quis architecto. Optio libero laboriosam similique ullam sunt. Quia possimus quaerat quia perferendis omnis ipsum ipsam.', 5, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(234, 42, 'Devonte Huels', 'Dolores ut non dolore qui. Eos unde non provident delectus sed quaerat. Esse dolor et quia eveniet sint. Perspiciatis ipsam alias enim accusamus dolorem rerum vel.', 1, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(235, 1, 'Prof. Brady Fay PhD', 'Aliquid error est omnis iusto autem. In qui est inventore id. Ducimus quia architecto consectetur et ipsam illum quo similique. Deserunt tempore ut non accusamus sed et.', 0, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(236, 4, 'Julio Boyle', 'Dolor qui et ut. Ut harum inventore error qui dolor. Repellat ut nam cumque iure similique laudantium voluptate officia.', 4, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(237, 36, 'Monique Trantow', 'Iusto sed modi non aut aut quasi. Ut quasi eum mollitia. Qui et ullam sunt illum qui. Nesciunt debitis aperiam voluptatem quia eum.', 0, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(238, 34, 'Megane Hayes', 'Qui dolor sit est eos molestiae alias praesentium amet. Delectus quasi et id architecto eaque. Quos alias hic ex quasi ipsum ut. Repellendus ex laboriosam cupiditate.', 1, '2020-06-09 04:15:24', '2020-06-09 04:15:24'),
(239, 50, 'Jeanie Homenick', 'Doloribus maiores ipsa dolorum omnis. Et culpa temporibus ratione. Eum itaque totam nostrum et doloremque.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(240, 39, 'Abbey Kilback', 'Eaque numquam cupiditate ex unde alias cum aut sed. Autem vero dolor vel similique. Similique et neque quis id commodi. Iste earum atque expedita eaque.', 5, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(241, 16, 'Alexandra Bins IV', 'Ipsa maiores esse quasi accusamus minus nisi et. Ipsa consequatur ea rem voluptas nihil cumque adipisci libero. Velit quam nesciunt voluptatem qui illum aut reprehenderit. Quod rerum possimus ipsa animi. Eligendi deleniti voluptatem distinctio qui iure.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(242, 48, 'Prof. Glenda Hayes PhD', 'Nulla dolorem quasi sed. Sit consequuntur dolores alias vitae qui reprehenderit voluptates.', 5, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(243, 35, 'Doris Koepp IV', 'Maxime aut recusandae voluptate aut ipsa illum. Rerum magnam unde sapiente reiciendis. Veniam voluptatem dolore accusamus quo ea recusandae cum ut.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(244, 47, 'Emelie Mohr', 'Reprehenderit tempora quis itaque consequatur. Aliquid et voluptatem modi eos eum quis. Omnis eum ab unde odio in voluptas pariatur.', 4, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(245, 11, 'Prof. Arno Pfeffer', 'Qui labore non autem est beatae veniam. Voluptatem dolore possimus labore maxime ut molestiae eligendi. Autem magnam ut et animi. Officia et tenetur et nemo ut magnam eum consequuntur.', 5, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(246, 14, 'Martina Toy Jr.', 'Voluptatem soluta quia non. Qui et libero ut aliquam quae rerum non. Doloribus cupiditate aliquam vel illum voluptate neque.', 2, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(247, 8, 'Virgie Wolf', 'Aut saepe itaque doloremque et id quia eligendi. Asperiores dignissimos beatae et. Et minima qui est rerum quis rerum dolorum.', 4, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(248, 35, 'Myrtie Watsica', 'Est sint quia et sint officiis perspiciatis. Doloremque quam animi quae consequatur in. Fugiat minima maiores consequatur sed reiciendis ducimus. Error dignissimos ut est voluptas. Ipsam incidunt voluptas voluptas fuga exercitationem voluptas blanditiis.', 5, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(249, 38, 'Katelyn O\'Connell III', 'Ut eos ab non sit. Voluptatem distinctio dolores in provident voluptas. Sint dolorem voluptatum rem quas fugit necessitatibus minus. Corporis deleniti natus fugit ipsum necessitatibus quasi.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(250, 22, 'Maida Mills MD', 'Totam et accusantium ullam aut voluptatem sapiente fugiat. Sapiente veniam et commodi repellat dolores. Earum assumenda et optio odio blanditiis est consequatur.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(252, 20, 'Santa Trantow', 'Ducimus accusantium nihil quidem ex dolor. Necessitatibus voluptatem sed perferendis nulla vel distinctio. Omnis et error nihil quo numquam.', 4, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(253, 1, 'Jackson Mante', 'Corrupti at dignissimos nihil molestiae qui beatae ipsam. Temporibus quas blanditiis et. Ea iste dolorem nesciunt autem voluptas maiores.', 5, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(254, 21, 'Karlie Hintz', 'Dolorem qui veniam nobis minus. Est nihil beatae ratione odit consequatur molestias iusto. Esse doloremque dignissimos neque accusantium assumenda est. Quo eos dicta ullam enim odit veritatis.', 2, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(255, 12, 'Michelle Glover', 'Delectus ipsam et illum quidem. Ut ducimus ratione est est est. Sequi quo architecto incidunt rem perferendis. Quo facere enim ducimus cum quis et.', 0, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(256, 3, 'Dakota Rath', 'Ea quia magni ex. Vel eum voluptatem voluptatem est accusamus est. Et consectetur beatae quia aliquid sunt ab. Fugiat ut ipsam rerum voluptates explicabo.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(257, 28, 'Broderick Mann', 'Excepturi ea est quaerat officiis molestiae. Velit et facere voluptas fuga natus.', 5, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(258, 33, 'Rosalinda Hoeger', 'Sed consequatur unde voluptatum numquam voluptatum accusantium. Esse illum fuga ex id. Est voluptatibus quo quae cupiditate voluptas est doloribus.', 4, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(259, 20, 'Eloy Grady IV', 'Qui cupiditate laborum non sed ut. Illo sint numquam quidem et. Modi nisi tempora quod labore. Illum est dignissimos sit aperiam.', 2, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(260, 3, 'Rhett Paucek', 'Aut laudantium velit explicabo possimus voluptatem vel. Velit omnis aut nam facilis quod magnam veritatis.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(261, 50, 'Dr. Jayme Cassin', 'Quaerat fuga quia labore molestiae voluptatem consequatur maiores. Fugiat ullam perferendis deserunt. Aut quia repellat ex occaecati. Consectetur qui voluptatem aut eius consequuntur nihil.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(262, 39, 'Mr. Marcelino Gottlieb I', 'Ea nisi non rerum ea beatae. Quam voluptas veritatis ipsa dolor dignissimos. Quo totam ut repellat earum fuga suscipit laborum.', 0, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(263, 28, 'Ms. Orie Lind', 'Veritatis fuga nam suscipit exercitationem soluta aliquam natus et. Autem voluptatum culpa in optio voluptate fugit. Corporis eos et excepturi et. Eius quia perspiciatis eligendi.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(264, 41, 'Dr. Tatum Haag DVM', 'Quidem ea et in nulla distinctio aut officia. Cumque accusamus cumque quia non vitae dignissimos. Laudantium aut blanditiis reiciendis ipsum ad.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(265, 23, 'Augustus Daugherty', 'Eaque quis molestiae provident id autem officiis. Voluptatem nihil consequatur qui ipsam dolor aut. Quis iste est ad ab. Nostrum tenetur asperiores maxime deleniti magnam. Asperiores vero veniam eum maiores maiores voluptas quo.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(266, 19, 'Yessenia Breitenberg', 'Voluptas repellendus quo facere perferendis nostrum ratione corporis. Autem illo eaque quaerat fugit laboriosam voluptatum aut. Quia itaque minus ab voluptas quo tempore iure.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(267, 24, 'Prof. Freida Koepp', 'Velit voluptas ab recusandae consequuntur. Eos et voluptatem aliquid voluptatem quas est. Quia fugit et esse maxime. Reiciendis quam minima eum rem dolore.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(268, 50, 'Adolf Bosco PhD', 'Asperiores libero in ut qui et aut. Ut maiores veritatis enim dolore. Labore sunt omnis et in.', 4, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(269, 35, 'Eloy Bernhard', 'Et ab et quisquam est nemo illo. Ut dolorem quas numquam libero necessitatibus. Consequatur in aliquid sint qui odit adipisci.', 1, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(270, 1, 'Jettie Bartell', 'Officiis repellendus voluptatum ut pariatur. Atque excepturi in in. Rerum consequuntur minima ducimus totam. Et tenetur sit non aut odio accusantium aut.', 3, '2020-06-09 04:15:25', '2020-06-09 04:15:25'),
(271, 21, 'Sienna Moore', 'Quasi quam corrupti suscipit quia sequi quia. Qui est sit laboriosam numquam nostrum ipsam deleniti molestiae. Consectetur voluptatum earum tenetur esse voluptates dolore molestiae. Et et et dolor quia. Alias est repellat autem assumenda sed eos amet.', 3, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(272, 18, 'Gaylord Orn III', 'Accusamus sit iusto non quisquam voluptatem consequuntur. Optio commodi quod voluptatem eaque neque illum.', 3, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(273, 33, 'Tyree Graham', 'Voluptas quasi rerum suscipit repellendus. Alias enim debitis cum similique nihil dolores. Eaque sunt nobis ex. Dolorem id rerum a ea fugit eligendi ut.', 5, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(274, 28, 'Jordon Fisher V', 'Rerum tempore quam iusto sit cum suscipit. Et expedita necessitatibus totam in mollitia. Maxime in animi quam earum rerum fuga. Eum et eligendi odit maiores.', 1, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(275, 9, 'Lesley Windler I', 'Ipsa numquam corporis totam et. Delectus omnis fugit et voluptas. Voluptatum sit accusamus omnis laudantium. Tenetur velit qui et sit debitis tempore.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(276, 11, 'Andres Crona', 'Quam dolorem consequatur totam assumenda. Tempora qui asperiores ducimus consequatur numquam. Dolore quisquam saepe laborum et est autem. Dolores placeat modi eos quam veritatis architecto. Expedita repellat accusamus cumque assumenda excepturi.', 1, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(277, 10, 'Ernestina Yundt DVM', 'Est unde consequatur qui quaerat. Libero culpa eveniet facere voluptatem possimus quasi. Libero pariatur officia autem minima quia. Nesciunt quidem delectus fugit veritatis nobis quos quo.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(278, 7, 'Adrienne Senger', 'Iste numquam quibusdam facere officiis optio sequi. Id sit et veniam non consequatur voluptate. Ex tempora omnis cum sed consequatur totam incidunt. Qui laudantium cum ipsum laboriosam voluptas.', 0, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(279, 27, 'Karianne Smitham', 'Rerum et dolor ipsum laborum illo rerum. Blanditiis iste similique quis ut id perferendis sint sed. Qui dolores asperiores eos in dicta. Nesciunt minus deserunt suscipit est.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(280, 47, 'Tyrell Douglas II', 'Sequi magni dolorem sint rerum ut expedita. Consequatur eligendi pariatur nihil. Architecto accusantium esse est consectetur placeat sit. Rerum neque provident sint non dolores et et.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(281, 36, 'Prof. Eleanora Murazik MD', 'Similique eum dolores ad voluptas et ab. Unde provident qui sunt magnam. Quos velit et ratione dolore consequatur cupiditate quaerat. Molestias porro vero ad et sapiente sapiente illum.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(282, 17, 'Adah McLaughlin', 'Nobis qui ut architecto ipsa accusantium quasi dignissimos. Repellat quis id iusto. Adipisci quis odit sint quas.', 5, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(283, 4, 'Aleen Friesen', 'Quis possimus eos provident fuga omnis vero et ducimus. Qui non sit vero enim quo et. Facilis beatae libero cumque. Minus maxime deserunt autem voluptas iure rerum. Est fuga asperiores labore maxime reprehenderit rerum sit.', 0, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(284, 19, 'Wyman Quitzon DDS', 'Ea rem porro nihil facere eum debitis dolores et. Iusto mollitia nemo fugiat culpa illum quia. Tenetur autem quia et tempore quo consequuntur voluptatem itaque.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(285, 4, 'Leann DuBuque', 'Molestiae nulla earum sed et ea. Ut totam voluptatem est magnam dicta. Omnis quia nihil debitis ut autem. Beatae ipsam fugit rem rerum.', 1, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(286, 17, 'Rene Pacocha', 'Et quae repudiandae amet. Aut id quia adipisci aspernatur aut et. Exercitationem eveniet amet rerum mollitia dicta unde ut. Hic qui expedita molestiae consequatur qui.', 5, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(287, 7, 'Eloise Strosin', 'Autem sit nulla et quidem voluptatem. Saepe omnis accusantium dolorem recusandae. Deserunt veritatis nisi odit quo. Dolores veritatis repudiandae enim quia assumenda voluptatem.', 3, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(288, 36, 'Prof. Mortimer Muller IV', 'Quod illum debitis vero qui quia et occaecati porro. Ut ut ea quidem dolorem quia animi laudantium. Odio quo explicabo sunt voluptatum.', 1, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(289, 31, 'Gunnar Reichel V', 'Aut quibusdam inventore illum odit quas recusandae praesentium. Omnis quod inventore consequatur voluptates sunt. Omnis sed et explicabo et. Eligendi commodi sapiente et quis.', 3, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(290, 37, 'Dr. Sienna Watsica DVM', 'Occaecati voluptatum mollitia omnis tempora. Accusantium est enim id nam quas consequatur. Exercitationem incidunt numquam repellat modi fuga. Quia qui itaque consequatur in nulla illum explicabo cum.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(291, 16, 'Dr. Lola Luettgen', 'Hic nihil qui eos repudiandae ut voluptatibus. Accusamus accusantium facilis dolor rerum sint odio. Dolor pariatur pariatur deserunt.', 0, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(292, 5, 'Prof. Alessandro Gutkowski', 'Sint qui voluptatem quos labore nostrum officiis consequuntur. Harum ut quis provident. Eaque similique error ea.', 3, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(293, 18, 'Mohammed Quigley', 'Velit ut mollitia et. Veniam aspernatur dolorem enim expedita. Mollitia delectus minus non beatae sed rerum voluptatem voluptas. Est perspiciatis sint et assumenda rerum rem.', 4, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(294, 20, 'Dr. Claudia Ritchie', 'Alias recusandae et id aut aut sit. Et explicabo eum culpa vel quaerat voluptatem dolor dolor. Voluptatibus deleniti quod commodi eveniet quia illum reprehenderit mollitia. Aut aut vel itaque et voluptate.', 3, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(295, 43, 'Prof. Stacey Rohan', 'Maxime est voluptatum commodi aut nam dolores. Voluptatum dolorum vitae dolorem porro. Aut perferendis cum ut. Doloribus voluptas sit aut est voluptatem. Et ut dolores in ex voluptatum dolore corporis.', 0, '2020-06-09 04:15:26', '2020-06-09 04:15:26'),
(296, 39, 'Triston Swaniawski', 'Quas id est fugiat molestias. Est quibusdam quo pariatur. Similique molestias ut facilis nobis nostrum itaque sequi est. Ut et accusantium et voluptatem rerum. Ut eius aut dolor cum dolore.', 1, '2020-06-09 04:15:27', '2020-06-09 04:15:27'),
(297, 26, 'Ashlee Leffler', 'Atque et molestiae eveniet inventore commodi. Mollitia tempore voluptatem occaecati laboriosam repudiandae cupiditate sed. Voluptates dolores enim excepturi harum aut voluptatem quo. Autem temporibus vitae velit quidem.', 5, '2020-06-09 04:15:27', '2020-06-09 04:15:27'),
(298, 15, 'Garett Considine', 'Hic quis numquam sint at facilis similique quasi. Iure accusantium beatae consequuntur quibusdam officiis. Vero culpa error dicta libero. Ratione quia aliquid perspiciatis assumenda consequatur.', 4, '2020-06-09 04:15:27', '2020-06-09 04:15:27'),
(299, 35, 'Dr. Rashawn Metz', 'Minima ea qui dolores reprehenderit et et. Eum porro aperiam ut porro. Aut quaerat voluptatibus incidunt qui.', 1, '2020-06-09 04:15:27', '2020-06-09 04:15:27'),
(300, 48, 'Prof. Kayleigh McClure', 'Est et facere sequi ut illum unde. Omnis porro consequuntur voluptatem. Maiores sapiente rem cupiditate molestiae praesentium beatae asperiores incidunt. Neque deleniti consequatur est qui facilis beatae natus accusantium.', 0, '2020-06-09 04:15:27', '2020-06-09 04:15:27'),
(301, 38, 'Sarker', 'The best thing on review', 4, '2020-06-09 10:44:21', '2020-06-09 10:44:21'),
(302, 38, 'Apu Sarker', 'The best thing on review updated', 2, '2020-06-09 10:45:18', '2020-06-09 11:07:48'),
(303, 38, 'Dipu', 'review updated', 5, '2020-06-09 10:46:28', '2020-06-09 11:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Giles Jacobson', 'jenkins.harrison@example.org', '2020-06-09 04:15:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OpCrF0VgLE', '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(2, 'Ms. Eleanore Rosenbaum II', 'balistreri.london@example.net', '2020-06-09 04:15:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MYd2S4CH7V', '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(3, 'Ima Huel', 'ckreiger@example.net', '2020-06-09 04:15:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5oRMflhavW', '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(4, 'Dr. Braeden Braun', 'maribel.smitham@example.net', '2020-06-09 04:15:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '50t8xtgjWl', '2020-06-09 04:15:13', '2020-06-09 04:15:13'),
(5, 'Miss Earline Donnelly I', 'emerald86@example.net', '2020-06-09 04:15:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qt0za36RiD', '2020-06-09 04:15:13', '2020-06-09 04:15:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
