-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2022 at 11:19 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laracommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'tempore ratione', 'tempore-ratione', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(2, 'perspiciatis aut', 'perspiciatis-aut', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(3, 'rerum officia', 'rerum-officia', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(4, 'ut qui', 'ut-qui', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(5, 'ut eum', 'ut-eum', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(6, 'debitis eos', 'debitis-eos', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(7, 'sapiente quia', 'sapiente-quia', '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(8, 'et dignissimos', 'et-dignissimos', '2022-01-25 04:22:34', '2022-01-25 04:22:34');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(7, '2022_01_23_043453_create_home_slide_table', 1),
(8, '2022_01_23_044046_add_subtitle_to_home_slide', 1),
(10, '2014_10_12_000000_create_users_table', 2),
(11, '2014_10_12_100000_create_password_resets_table', 2),
(12, '2019_08_19_000000_create_failed_jobs_table', 2),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(14, '2022_01_20_085455_create_categories_table', 2),
(15, '2022_01_20_085523_create_products_table', 2),
(16, '2022_01_25_093132_create_sliders_table', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'aliquid nemo voluptatem eligendi', 'aliquid-nemo-voluptatem-eligendi', 'Velit harum provident eaque facilis qui voluptatibus eveniet. Eos quidem saepe earum ducimus sed. Aut ullam a non unde et ut expedita.', 'Aut nesciunt repellendus adipisci tempora. Et magnam tempore in ipsa error animi voluptate. Quae sunt laudantium illum harum iste. Suscipit perspiciatis ut aut et qui nulla. Vitae ut et eaque aliquid libero. Consequuntur rerum quam laudantium ut vel aut. Cupiditate dolore amet dicta soluta dolorem totam delectus. Qui exercitationem ut quis incidunt consequatur.', '259.00', NULL, 0, 184, 'digital_1.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(2, 'unde doloremque expedita a', 'unde-doloremque-expedita-a', 'Corrupti rerum maxime eius. Quisquam eos voluptate aut beatae blanditiis mollitia. Consequatur aperiam aspernatur rerum in animi est molestiae quidem.', 'Et sit delectus voluptatem quidem voluptates est inventore. Perferendis repellat aspernatur molestiae perspiciatis. Magni ullam nobis at est saepe nobis. Eos voluptatibus et corrupti adipisci. Sit aut quia odit placeat natus inventore. Laudantium est aperiam perferendis perferendis rerum dolorem. Est a sit numquam voluptas eligendi. Distinctio beatae illo corrupti. Non assumenda eligendi et ipsum optio quisquam et. Veniam quia exercitationem qui quo. Ullam sunt debitis quo eum dolor velit.', '254.00', NULL, 0, 139, 'digital_24.jpg', NULL, 3, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(3, 'non suscipit aut aspernatur', 'non-suscipit-aut-aspernatur', 'Illo alias nobis eum consectetur est tenetur. Voluptate incidunt odio exercitationem molestias neque aperiam. Enim nihil repellendus vero dolore illo occaecati. Possimus qui sapiente sapiente qui.', 'Maiores velit cupiditate voluptas quia sequi iure. Iste esse qui corporis praesentium. Neque velit et ipsam dolore nihil odit occaecati. Sed impedit voluptatem doloribus sint. Molestias ipsam mollitia dicta temporibus. Laborum molestias tenetur qui dolore reiciendis consequatur fugit dolores. Quia optio qui magni ipsam repudiandae ut et. Ullam aut et explicabo blanditiis excepturi quod.', '233.00', NULL, 0, 125, 'digital_15.jpg', NULL, 1, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(4, 'autem magnam magnam sunt', 'autem-magnam-magnam-sunt', 'Est facere enim sequi mollitia et ut. Aperiam dolor illo in fugiat et ut. Ea consequuntur animi sapiente sint reiciendis doloribus molestiae.', 'Ducimus laboriosam ratione fugit accusamus eos atque. Qui voluptatem est vel itaque qui qui. Expedita non suscipit ad laboriosam rem neque. Odio assumenda aperiam enim et. Amet aliquam non soluta molestiae qui nam. Omnis praesentium et eligendi rerum suscipit. Itaque numquam neque perspiciatis dolores qui laudantium nulla. Voluptas atque dolorum ipsam laborum dolorem placeat cumque.', '299.00', NULL, 0, 198, 'digital_2.jpg', NULL, 4, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(5, 'cumque eos qui sunt', 'cumque-eos-qui-sunt', 'Sit rem quia officia excepturi. Rerum laudantium fugiat qui sapiente nostrum unde. Impedit architecto omnis repellendus labore quos neque quam. Commodi quae nobis harum voluptas nobis.', 'Consequuntur sint sint omnis. Suscipit sit nihil vel. Possimus consequatur magni dolorem esse modi iste totam. Modi et recusandae debitis debitis et deserunt ex. Nam praesentium omnis sit labore accusamus cupiditate sit. Animi labore non itaque recusandae. Accusamus libero ut error rem et autem molestiae quas. Magnam odit labore qui non. Sed tempore atque sunt sunt aut quos fugiat. Quis voluptatum aut esse.', '282.00', NULL, 0, 100, 'digital_10.jpg', NULL, 1, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(6, 'dignissimos et iusto velit', 'dignissimos-et-iusto-velit', 'Laudantium libero iste dolore velit voluptatem modi. Odio in amet enim dolores ratione commodi. Quam odio aut ullam consequatur. Saepe et et sed qui quibusdam culpa.', 'Sit id alias aliquid praesentium. Et autem at qui quo. Minus inventore architecto ipsum rerum eos. Voluptatem accusantium voluptas id alias aut quia. Modi est adipisci et autem minus ad. Incidunt aut rerum pariatur eos doloribus culpa. Accusantium optio labore repellendus molestiae eos quidem. Et est sed dolor laborum repellendus explicabo qui. Debitis eum ipsa impedit necessitatibus et.', '243.00', NULL, 0, 196, 'digital_20.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(7, 'enim architecto ducimus itaque', 'enim-architecto-ducimus-itaque', 'Blanditiis labore qui harum fuga quae eius. Deserunt labore non perspiciatis consequatur sit enim a nihil. Aut temporibus ab saepe omnis enim sit. Quis iusto atque debitis sed voluptatem.', 'Qui ut fugiat vel consequatur qui. Magnam occaecati dicta repellat adipisci voluptatem at. Temporibus sint odio optio quos illo vel ut eveniet. Molestias illum minus totam inventore quo quidem expedita. Culpa animi id qui ut et culpa id optio. Consequatur et doloribus sint. Sit nemo minima inventore maiores quasi est aperiam. Voluptas est fuga qui facilis. Consequuntur perferendis non ipsam. Quia soluta pariatur voluptatem ut. Sit delectus rerum fugit ipsam qui excepturi ullam.', '398.00', NULL, 0, 144, 'digital_6.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(8, 'ut commodi voluptatibus ducimus', 'ut-commodi-voluptatibus-ducimus', 'Qui cupiditate quod velit et dicta similique. Nulla fuga ea repellat rem aperiam et error. Dolore quos dolor necessitatibus magnam enim dolor omnis. Et numquam distinctio cum.', 'Suscipit aliquam iusto odit. Ea aut tenetur inventore et temporibus quidem rerum id. Est eius aut eum suscipit rerum soluta. Laborum dolore incidunt dolores dolores sit. Ut aut velit et qui velit. Consectetur libero explicabo alias deleniti. Perspiciatis natus nulla laudantium neque vero ad aliquam pariatur. Inventore veritatis ad architecto minus et numquam. Velit eos laboriosam aperiam iusto accusamus. Repellendus harum earum veniam ullam. Rem fuga consequatur nihil sint dolorem tempora aut.', '450.00', NULL, 0, 168, 'digital_28.jpg', NULL, 2, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(9, 'velit eos animi odio', 'velit-eos-animi-odio', 'Occaecati quia consequatur incidunt fugit tempora quo. Sed voluptatem harum natus laborum saepe ut esse. Velit magnam dolorum quae nemo itaque. Est velit alias recusandae sapiente.', 'Voluptate veniam tenetur ad natus consequatur quo. Debitis nam culpa voluptatem eligendi. Repellendus provident dolore aut ut aut numquam. Laborum repellat hic hic rerum debitis. Quod suscipit sed sed quod. Sapiente et soluta quod corporis. Qui voluptatem voluptatem itaque distinctio optio deserunt aut laboriosam.', '312.00', NULL, 0, 159, 'digital_7.jpg', NULL, 2, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(10, 'ut delectus nemo repudiandae', 'ut-delectus-nemo-repudiandae', 'In autem perspiciatis id eveniet et ea aut. Voluptatem perspiciatis doloremque exercitationem et aut qui rerum. Fuga iusto quaerat commodi.', 'Atque repellat velit sit rerum quo. Voluptas aut nisi ad consequatur et consequuntur voluptatem. Eius harum provident ea asperiores quo iure nostrum laborum. Et veritatis occaecati ut non dolorem. Quae ut deleniti iure ut consequuntur. Dolor voluptas vitae eius occaecati. Ut aliquam error blanditiis totam quis et. Sequi qui quo suscipit. Ad aut ipsa eaque autem corporis impedit saepe. Aliquam quae sint aut aliquam.', '437.00', NULL, 0, 100, 'digital_9.jpg', NULL, 4, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(11, 'nemo molestiae deserunt sapiente', 'nemo-molestiae-deserunt-sapiente', 'Numquam error aut nihil illum ipsum et. Numquam inventore nihil et voluptatem quidem nihil. Molestiae nam nobis occaecati consequatur ut laborum et. Voluptas quis repellendus quaerat dolorum velit.', 'Eveniet corporis laudantium dolor itaque eaque at esse. Voluptatem et fugiat voluptatem facilis eligendi officiis beatae soluta. Qui sit temporibus unde nemo et. Voluptatum provident nemo quo quae aut at. Et sed aut aperiam occaecati consequuntur et. Magni dicta animi magni qui ex. Minus aperiam magni veniam sequi non ratione error. Illo in provident illum. Fugiat ab eos ipsa consectetur. Facere qui fuga deleniti in natus tempore.', '455.00', NULL, 0, 190, 'digital_29.jpg', NULL, 4, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(12, 'unde dolorem adipisci maiores', 'unde-dolorem-adipisci-maiores', 'Officiis voluptatum eaque velit vel. Provident consequatur optio ut non non impedit. Et est voluptas pariatur dolorem qui excepturi hic eligendi. At ut omnis illo velit ut.', 'Distinctio eaque at non neque alias praesentium. Placeat velit dolor ipsa modi. Aperiam aspernatur quam molestiae deserunt aut tempore. Enim optio pariatur placeat harum. Molestiae quaerat voluptatem ipsa quia suscipit eum. Debitis fuga inventore ad sequi nostrum impedit sapiente. Sed distinctio et voluptatem. Quia molestias id nemo a voluptatem eum culpa. Molestiae sit molestias facere deleniti perferendis. Similique ut praesentium dignissimos illum.', '498.00', NULL, 0, 135, 'digital_11.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(13, 'aut saepe optio soluta', 'aut-saepe-optio-soluta', 'Dicta illo ad molestiae mollitia consequuntur. Iusto vel quis quibusdam cumque inventore maiores. Ut dignissimos qui voluptatum deserunt nisi mollitia.', 'Saepe quia itaque quaerat magnam exercitationem et accusamus. In voluptatem voluptas ratione qui excepturi aut omnis libero. Non amet illo similique minus aut dolores. Non sint velit aut ut. Aperiam ut et suscipit distinctio eveniet. Esse aspernatur exercitationem dolor quo qui sit ducimus ullam. Quidem iusto maxime quidem quaerat et quod aut consequatur. Cupiditate tempore soluta nisi fugiat. Est officiis non voluptas quo consequatur praesentium culpa.', '321.00', NULL, 0, 145, 'digital_23.jpg', NULL, 1, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(14, 'quis voluptatem ut deleniti', 'quis-voluptatem-ut-deleniti', 'Et quia expedita repellendus dolores asperiores molestiae. Sint voluptatem et eum nihil sed voluptates ipsam. Ipsum voluptatem eum pariatur rerum et expedita.', 'Vitae nobis unde aut optio nihil quo praesentium. Ipsam pariatur quia corrupti quo non. Ipsum magnam pariatur nihil voluptatibus eum. Nisi a eligendi similique officiis aliquam rem. Iusto officiis aliquid atque doloremque. Maiores atque voluptatem qui voluptas omnis. Molestiae nisi aut officia fugiat. Sequi cupiditate adipisci qui qui.', '281.00', NULL, 0, 163, 'digital_17.jpg', NULL, 1, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(15, 'deleniti aliquam pariatur necessitatibus', 'deleniti-aliquam-pariatur-necessitatibus', 'Nobis enim facilis neque. Amet similique culpa eligendi natus quaerat et et. Quam repellat eveniet nemo aut. Id sunt natus et temporibus explicabo natus.', 'Aut sit adipisci voluptas. At sit reiciendis illo nihil. Eos sed consectetur ea optio est distinctio aperiam corporis. Optio vero qui facere dicta dolores ad. Aspernatur quia amet labore aut sint dolorem neque. Deleniti et dolores deleniti. Eaque aut nulla eos labore sunt facilis. Provident perferendis ipsa provident voluptate. Quasi omnis maiores expedita aliquid facilis. Labore quae ut doloremque necessitatibus qui architecto.', '311.00', NULL, 0, 115, 'digital_27.jpg', NULL, 1, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(16, 'dolore non repellendus illum', 'dolore-non-repellendus-illum', 'Voluptates fuga ipsa ea ullam officiis laborum. Cumque facilis accusantium qui quia consequuntur. At vitae aut et esse. Et nulla perspiciatis ullam excepturi.', 'Dolores consectetur eius hic veritatis quo consequatur totam. Voluptatem molestias ea quaerat perferendis earum rem temporibus. Perferendis molestiae molestias ea placeat. Sit repellendus voluptatem nemo nobis quam suscipit tenetur architecto. Facilis itaque sed assumenda magnam veritatis quasi facilis aspernatur. Saepe veritatis consequatur repellendus sapiente inventore facere similique.', '489.00', NULL, 0, 192, 'digital_8.jpg', NULL, 3, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(17, 'maxime esse ullam voluptatibus', 'maxime-esse-ullam-voluptatibus', 'Ea maiores ea maiores aperiam eos voluptatum natus. Voluptate et quibusdam voluptas hic delectus rerum. Dolor alias aut est ut.', 'Qui voluptatem voluptatem quidem reprehenderit similique autem autem. Molestiae est optio facilis consectetur occaecati illum. Assumenda molestiae perferendis sit cum id. Doloribus cupiditate perferendis ut id aliquid at qui. Debitis iste assumenda iusto voluptas ut mollitia repellat cumque. Molestiae excepturi impedit et tenetur non. Est fugit mollitia laudantium ut laudantium qui consequuntur. Et vitae amet aliquid eius explicabo praesentium et aut. Enim quaerat deleniti molestias qui quasi.', '328.00', NULL, 0, 149, 'digital_13.jpg', NULL, 4, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(18, 'soluta ut nam facilis', 'soluta-ut-nam-facilis', 'Hic eos fugiat cumque voluptas. Blanditiis sunt dignissimos optio omnis quis ipsa. In amet architecto cum odio sapiente ut. Architecto quisquam voluptatum aut consectetur cumque.', 'Aut non voluptas qui molestiae unde velit ad. Alias facilis consectetur ipsam quia sint vitae. Nesciunt quos ut aut enim dolorem. Maiores beatae a sint non nobis ut ipsam. Architecto molestiae eius quia voluptates doloremque. Architecto nisi est corrupti sit aliquid quia assumenda. Aut illum nesciunt voluptatem. Eligendi pariatur aut cumque. Sed quaerat est officiis odio quam dolorem. Ducimus dolorem perferendis aliquam facere sint eos explicabo.', '108.00', NULL, 0, 100, 'digital_4.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(19, 'aspernatur doloremque harum ex', 'aspernatur-doloremque-harum-ex', 'Debitis asperiores aut reiciendis cum non assumenda maiores. Recusandae repellat soluta dolor ad. Repellat neque doloribus laborum repudiandae natus vel. Non nesciunt aut maiores animi rerum.', 'Animi saepe eveniet similique ut. Recusandae dolorem voluptatem dolor fugit aut itaque nemo. Sunt ex non et molestias ipsum quaerat. Eum officia molestias cumque ducimus. Minus sed eligendi dolorem repellendus et quam corporis nihil. Dignissimos deleniti dolorem ratione cupiditate. Animi dolor ratione dicta quis quod aliquid. Tempore rerum numquam impedit cum sit sunt est.', '204.00', NULL, 0, 123, 'digital_26.jpg', NULL, 4, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(20, 'quod debitis ut ad', 'quod-debitis-ut-ad', 'Quas sit doloremque atque qui praesentium voluptatem unde. Maiores laboriosam maxime eligendi ipsa mollitia pariatur consequatur. Blanditiis omnis id atque veritatis nemo consequuntur accusantium.', 'Eum voluptatem atque debitis voluptas velit vel. Minus deserunt odio molestiae aliquid quisquam nihil natus. Eos et modi sunt maiores nihil. Molestias cumque ut temporibus et. Est unde non dolores debitis. Minus nam corrupti ullam sequi. Quia occaecati blanditiis quasi eveniet. Ut quisquam accusantium libero porro eligendi non rerum. Voluptas nemo vel reprehenderit aspernatur omnis sit. Voluptas et est tempore voluptatibus nihil ea.', '162.00', NULL, 0, 182, 'digital_14.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(21, 'dolorem eum quo perspiciatis', 'dolorem-eum-quo-perspiciatis', 'A nesciunt nisi inventore sapiente sunt facere. Et dignissimos dolorem fugiat sint veniam voluptatem. Velit quas ut optio accusantium explicabo qui.', 'Quos repellendus impedit nostrum necessitatibus officia. Aut maiores facere deserunt soluta. Maiores error ipsam assumenda. Consequatur et quia quas et amet. Molestias nisi ut tempora hic et. Deserunt nisi molestias quas quos unde iste. Atque aut dolorem quis voluptate sit voluptas omnis. Laborum pariatur aut ipsum nemo facere. Reiciendis voluptatem minus sint enim nihil. Numquam sed illum est optio blanditiis. Et consequatur non minima est sit ullam.', '277.00', NULL, 0, 154, 'digital_25.jpg', NULL, 3, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(22, 'sed eum quae placeat', 'sed-eum-quae-placeat', 'Iure praesentium quod excepturi veritatis. Voluptatem velit nobis est quos rerum qui ipsum. Fugit et quia similique laboriosam ut nihil aut a.', 'Soluta consectetur minima assumenda qui ut quo blanditiis. Omnis molestias cum recusandae blanditiis quis. Quis ut necessitatibus velit velit deleniti sunt ut. Consequatur eos est iure. Pariatur exercitationem quam eius nihil cumque. Id aut aut minima omnis. Totam delectus reprehenderit facere incidunt qui id. Qui voluptatem est eius eaque ipsa ipsum. Odio voluptatum vitae dolor dolorem. Deserunt sit ratione non eos est est expedita.', '488.00', NULL, 0, 177, 'digital_30.jpg', NULL, 2, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(23, 'et molestias esse id', 'et-molestias-esse-id', 'Et quasi odit in eaque est quo sunt. Consequuntur sit eos minus perferendis. Fuga quam autem doloremque nobis. Ipsa nisi sint aut velit sed dolores quia. Aliquam doloribus ipsam quisquam cum.', 'Illum sit qui et vel voluptas. Quia voluptatem cupiditate non molestias sunt voluptatem quo voluptas. Et ut cum fuga nostrum est aperiam. Omnis rerum deserunt voluptas molestiae officiis perferendis voluptatum qui. Minima et doloribus voluptatibus quisquam. Vero voluptates ipsam est repudiandae error necessitatibus saepe. Similique in quaerat enim nihil numquam. Ut voluptatibus aut qui omnis dolor.', '132.00', NULL, 0, 115, 'digital_12.jpg', NULL, 2, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(24, 'dolorem est ipsa aperiam', 'dolorem-est-ipsa-aperiam', 'Sunt temporibus doloremque qui non saepe officia. Quam beatae vel eos ut. Quisquam officia corporis nostrum explicabo odio.', 'Aliquid dolorem est in aut voluptas ut modi. Tenetur aut libero aut eligendi doloremque. Ut labore qui sed est a doloribus. Suscipit in consequatur rerum minus saepe. Et sit recusandae assumenda tempore. Vel rerum et quidem quia illum fuga ut. Maxime praesentium quos eveniet rem soluta. Vero sed sint ut ullam. Culpa est consequuntur ipsam maiores laudantium. Ipsum est unde tempora aut. Quaerat officiis aut fugit sint dolorem consequatur facere. In hic dolorum illo recusandae commodi.', '354.00', NULL, 0, 198, 'digital_21.jpg', NULL, 4, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(25, 'laborum aut saepe dicta', 'laborum-aut-saepe-dicta', 'Quia voluptas aut et voluptas. Dolor illum quidem beatae rem in mollitia.', 'Quam autem dolorem dolore illo sed numquam. Ex voluptatem ut quasi voluptates inventore ad nisi. Maxime eos fugiat soluta dolor sed ut. Voluptate inventore non esse est harum aut ut. Sit iste veritatis enim nostrum totam ullam. Non labore aut est saepe eaque illum. Voluptatibus blanditiis ut natus facilis delectus ab blanditiis vitae. Sunt dolorem provident quia optio. Quo nisi maxime omnis harum facere corporis. Vel exercitationem vero aliquid nemo voluptas.', '500.00', NULL, 0, 159, 'digital_19.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(26, 'et esse vero excepturi', 'et-esse-vero-excepturi', 'Consectetur autem natus ut voluptatibus magnam iusto eum corporis. Quibusdam ratione commodi quisquam consequatur consequuntur. Sapiente in aperiam qui provident. Assumenda rem aliquam amet quam.', 'Aut dolore saepe cumque explicabo velit aut. Alias rerum quia et consequatur occaecati. Ipsam doloremque aliquid magnam tenetur molestiae dolor. Minus asperiores qui iusto et ullam omnis id. Vel vitae quia voluptates architecto autem necessitatibus repellat. Voluptatibus et alias ipsum commodi et. Eum iste quia a. Inventore sit voluptas debitis id assumenda nihil. Ducimus ea blanditiis est quae. Ut laborum et rerum aut. Vel est qui quaerat sunt omnis illo nihil.', '292.00', NULL, 0, 132, 'digital_5.jpg', NULL, 5, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(27, 'voluptas laudantium cupiditate sit', 'voluptas-laudantium-cupiditate-sit', 'Velit dolor blanditiis vitae vel. Ratione est qui rem. Veritatis omnis deserunt beatae tempore totam eveniet. Et molestiae sapiente dolor voluptatibus soluta.', 'Rerum eaque sunt qui quis veniam voluptas voluptatem saepe. Repellat sint modi officiis laudantium voluptatem natus praesentium quia. Unde porro iusto sunt optio ipsam earum eos minima. Voluptatem quasi consequatur et aspernatur consequatur dolor sed. Voluptas praesentium molestias aperiam. Voluptatum molestiae consectetur qui architecto iure. Magnam accusamus sint est consectetur possimus sequi. Qui quo in nesciunt molestias qui. Officia placeat repudiandae id.', '393.00', NULL, 0, 146, 'digital_16.jpg', NULL, 1, '2022-01-25 04:22:34', '2022-01-25 04:22:34'),
(28, 'ex explicabo maxime incidunt', 'ex-explicabo-maxime-incidunt', 'Et modi corporis architecto sint sit nesciunt quo repellendus. Est quis et ut tenetur fuga eligendi repellendus.', 'Voluptatibus similique pariatur eius nihil sint ut reiciendis. Molestiae praesentium voluptate voluptates ut. Error et recusandae distinctio sed similique laboriosam non. Voluptatum molestiae eius quo magni error doloribus. Distinctio ut et modi qui mollitia porro officiis. Ut et eum ea debitis maiores ut. Ullam qui recusandae laboriosam earum. Necessitatibus aliquam aut delectus cumque voluptatum accusamus. Ducimus quidem aut voluptas qui cupiditate et architecto.', '114.00', NULL, 0, 158, 'digital_22.jpg', NULL, 3, '2022-01-25 04:22:35', '2022-01-25 04:22:35'),
(29, 'eos doloremque placeat expedita', 'eos-doloremque-placeat-expedita', 'Praesentium quo in rerum molestiae. Necessitatibus dolor a ullam doloremque aliquid fugit tenetur est.', 'Eum cum enim repellendus numquam sit. Veniam et voluptatem facere dolor est aspernatur possimus est. Officia commodi nulla et quas. Accusantium maiores perspiciatis accusantium quos facere est officia nisi. Itaque occaecati neque id aperiam sit qui. Pariatur non sit consequatur enim temporibus. Sunt architecto impedit maiores corporis tenetur sunt officia.', '387.00', NULL, 0, 189, 'digital_3.jpg', NULL, 1, '2022-01-25 04:22:35', '2022-01-25 04:22:35'),
(30, 'sint nihil et vel', 'sint-nihil-et-vel', 'Inventore in minima maiores nostrum quia ut. Et deserunt fugit quos. Minus et asperiores omnis nemo fugiat.', 'Quisquam molestiae pariatur laudantium modi quam. Quas eaque placeat autem et tempora facilis vel totam. Architecto est fugit nesciunt consequatur quaerat et. Necessitatibus nemo omnis saepe eius ipsam blanditiis possimus. Veniam minima consequatur et distinctio adipisci aut. Animi facilis cumque aperiam cumque voluptatibus. Et mollitia sed porro eum. Aut inventore rerum doloribus soluta.', '112.00', NULL, 0, 128, 'digital_18.jpg', NULL, 4, '2022-01-25 04:22:35', '2022-01-25 04:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sample', 'New', '150', 'link.com', 'deal-4.jpg', 1, '2022-01-25 04:23:17', '2022-01-25 04:23:17'),
(2, 'Sample2', 'Test2', '550', 'bitm.com', 'deal-5.jpg', 1, '2022-01-25 04:23:53', '2022-01-25 04:23:53');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
