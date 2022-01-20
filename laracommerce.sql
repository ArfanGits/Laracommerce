-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2022 at 10:34 AM
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
(1, 'quam perferendis', 'quam-perferendis', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(2, 'qui suscipit', 'qui-suscipit', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(3, 'voluptatem odio', 'voluptatem-odio', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(4, 'molestias cum', 'molestias-cum', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(5, 'vel aspernatur', 'vel-aspernatur', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(6, 'magni modi', 'magni-modi', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(7, 'corporis voluptatum', 'corporis-voluptatum', '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(8, 'excepturi expedita', 'excepturi-expedita', '2022-01-20 03:47:14', '2022-01-20 03:47:14');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_20_085455_create_categories_table', 2),
(6, '2022_01_20_085523_create_products_table', 2);

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
(1, 'quis molestiae velit aut', 'quis-molestiae-velit-aut', 'Nisi assumenda ipsa sed repellat et. Suscipit nulla ea voluptatum quo odio qui. Voluptatibus mollitia odio nam nam quidem asperiores illum sit. Sit quo numquam nihil est nisi.', 'Earum et sed aut ut. Eum aut soluta autem ut. Ex inventore itaque molestias quibusdam sed possimus exercitationem. Quae provident laboriosam quae vero modi ipsum voluptatem. Minus blanditiis fuga quae inventore. Est qui iste explicabo ut est alias fugit natus. In culpa quia et laudantium. Est quasi enim adipisci ab voluptas. Est fuga aliquid enim voluptatem quidem. Distinctio qui omnis exercitationem consectetur autem perspiciatis omnis.', '192.00', NULL, 0, 173, 'digital_28.jpg', NULL, 4, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(2, 'qui officiis nihil tempora', 'qui-officiis-nihil-tempora', 'Et laborum id mollitia aut repellendus aperiam perspiciatis. Quia voluptatem aut et nihil veniam. Ut eum odio est voluptatem doloribus iusto veritatis. Et rerum aut veniam sunt delectus neque.', 'Facere nihil est fugiat harum voluptas in quia. Quidem voluptatem dolorem vel minima fugit. Maxime qui voluptates et eveniet tenetur et facilis qui. Voluptas natus et accusamus incidunt. Vero consequuntur hic magnam. Officiis rerum dolores recusandae ipsum nihil non necessitatibus suscipit. Quae illum a et veniam voluptatem ex nihil sapiente. Modi sit facilis eaque corporis sapiente ab. Necessitatibus explicabo fugiat qui qui. Placeat et voluptatem hic animi.', '109.00', NULL, 0, 178, 'digital_5.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(3, 'aliquid aut voluptatum est', 'aliquid-aut-voluptatum-est', 'Amet ipsa veniam earum exercitationem debitis sint. Necessitatibus incidunt quibusdam esse dolor nihil ea autem. Ea rem modi doloremque. Esse laudantium quasi mollitia.', 'Qui est error ut omnis voluptate. Voluptatem quia rem mollitia eos deleniti. Et id vero quaerat et et quisquam architecto nulla. Qui facere nihil error voluptatem quo magnam. Aspernatur doloribus qui doloribus accusamus aliquid. Quia harum dolore sit qui occaecati. Ut eum qui et unde. Dignissimos provident fugit exercitationem voluptas dolorum aliquam ipsam. Non iusto sed eos consectetur qui voluptate ea.', '249.00', NULL, 0, 164, 'digital_26.jpg', NULL, 3, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(4, 'qui veritatis vel sit', 'qui-veritatis-vel-sit', 'Molestiae architecto laudantium quae tempora fugiat eum nulla. Dolorem dolor provident voluptatem libero. Sit recusandae commodi voluptate est. Qui labore excepturi quia.', 'Natus minus aut nesciunt consectetur rerum ad possimus. Provident voluptatem qui et dignissimos sapiente hic itaque. Vel nobis aliquid modi et facilis non incidunt. Fugit ut et ratione animi reprehenderit facilis. Corrupti aut est earum deleniti dignissimos illo hic. Molestiae tempore mollitia occaecati voluptatem est. Et et architecto ducimus illo. Sunt quas earum aut quo voluptatibus.', '499.00', NULL, 0, 124, 'digital_29.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(5, 'ullam molestiae et enim', 'ullam-molestiae-et-enim', 'Neque nihil vitae et tenetur numquam et voluptatum. Nisi quos amet minus hic quasi maxime. Eius sed consequuntur minima non deserunt quidem alias sed.', 'Eos repellat voluptate sequi et est. Et provident necessitatibus quia molestiae accusamus et aliquam. In et dolore voluptatibus labore qui vero occaecati consequatur. Voluptas qui a nisi. Consequatur consequuntur cumque qui non doloribus. Totam voluptatem omnis est qui asperiores. Reprehenderit recusandae qui autem ullam et eligendi blanditiis.', '319.00', NULL, 0, 132, 'digital_25.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(6, 'et optio sit optio', 'et-optio-sit-optio', 'Dignissimos est sed est esse. Ut ut deleniti animi unde eveniet voluptatem earum.', 'Veritatis porro aut saepe voluptas quo. Deleniti recusandae quisquam animi est minima dolor quaerat. Eaque rerum qui mollitia. Impedit vel inventore a reprehenderit earum. Delectus veniam consequatur sit incidunt. Repellendus et sint sit velit iusto doloribus. Eaque at aut ea eum possimus dolorem velit. Odio consequatur quis illo sint. Et cumque aliquid repellendus. Ut in quod pariatur dolorem optio reiciendis assumenda. Accusamus quibusdam ut est numquam doloremque.', '102.00', NULL, 0, 165, 'digital_1.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(7, 'rerum voluptatibus vero perspiciatis', 'rerum-voluptatibus-vero-perspiciatis', 'Non quam iure voluptatibus eligendi nisi. Et voluptatem molestias sapiente odio. Impedit veritatis magnam aut saepe. Pariatur et autem consequatur est eum.', 'Sit est quidem blanditiis dolorem ex voluptatem. Libero et eos ipsa nisi. Enim a saepe ut et mollitia nobis. Ea nobis aut dolore. Veritatis laudantium perspiciatis perferendis. Et ex voluptas dolore omnis ipsam aut dolore. Quisquam voluptatum ut assumenda deserunt delectus. Autem quia molestias vel dolores. Aut laudantium nam laboriosam. Rerum ipsum corporis aut est cum. Eum quos dicta repellat ut tempora. Accusamus cum dolor beatae sed nisi consequuntur.', '123.00', NULL, 0, 177, 'digital_7.jpg', NULL, 4, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(8, 'esse consequuntur suscipit iure', 'esse-consequuntur-suscipit-iure', 'Incidunt enim delectus et culpa. Hic in dicta nostrum occaecati delectus. Inventore maxime iure harum. Numquam eos ea doloribus delectus mollitia.', 'Omnis molestiae sequi aut et iusto dolorum accusantium. Iste reprehenderit sed modi vitae eius reiciendis. Qui aut itaque officia magni. Asperiores quam vero dolorum nesciunt. Aut placeat aliquam perferendis tenetur sunt assumenda adipisci. Et pariatur esse aut earum facere commodi. Quam nisi voluptatum culpa dolor quaerat. In et aliquam et et et dolor quasi. Eos corrupti dolore sapiente. Et sed rerum facilis alias quasi ipsum. Molestiae alias aut dolor sed.', '484.00', NULL, 0, 154, 'digital_9.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(9, 'alias atque quia necessitatibus', 'alias-atque-quia-necessitatibus', 'Fuga sint qui dolor sint quas distinctio voluptate. Aut minus distinctio quos. Nesciunt sequi voluptas aut. Nesciunt nihil a qui qui.', 'Aut numquam occaecati facere optio dolore dolorem. Sit impedit possimus odit at rerum. Eligendi magnam nesciunt maiores quas omnis cum eos. Consequatur ullam sed vitae non. Ea et culpa ex. Laborum alias tempore libero nihil. Eum blanditiis quia nisi quibusdam et omnis. Ab facilis animi ut ut placeat qui. Nulla repudiandae illo neque quaerat voluptate sunt. Maiores voluptate deserunt ullam rerum.', '292.00', NULL, 0, 146, 'digital_23.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(10, 'odit aut dicta eius', 'odit-aut-dicta-eius', 'Rerum quas veniam est inventore rerum neque quam et. Odio et aliquam odio placeat consequatur dolore dolores. Id quo enim quo.', 'Et deleniti in voluptatibus commodi. Repellat inventore dicta ipsam debitis aut et. Et temporibus qui blanditiis nihil magni animi. Libero dolorum ipsum debitis non occaecati quibusdam sit. Natus deserunt magnam et eum dolore. Nihil illo sapiente quam dignissimos quidem. Placeat qui tempora aut reprehenderit in dicta.', '441.00', NULL, 0, 113, 'digital_24.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(11, 'neque in neque quo', 'neque-in-neque-quo', 'Autem ipsa consequuntur possimus debitis qui ut autem quis. Necessitatibus iste cumque sit iure voluptatum. Ad earum ut consequatur perspiciatis suscipit ut. Rerum nihil repellat unde maxime.', 'Quasi aut debitis ut consequatur rem est sint nemo. Nam aut dolorum molestias eaque officiis qui nisi. Perspiciatis autem nihil soluta non. Illum libero sed quod vel repellendus iure aut. Accusamus qui ad est sint consectetur ratione laboriosam voluptates. Culpa vel voluptas necessitatibus assumenda. Hic deleniti facilis maxime in. Ab provident fuga consequuntur quia corporis quas repudiandae.', '314.00', NULL, 0, 144, 'digital_12.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(12, 'explicabo ullam totam voluptatem', 'explicabo-ullam-totam-voluptatem', 'Non omnis odit numquam. Culpa dolores consequatur qui eligendi placeat odio. Fuga qui dolorem aut cum. Quod ipsam ut molestias nam ipsum voluptas aut.', 'Dicta mollitia aut provident dolorem voluptate sed labore occaecati. Dicta quam maiores qui perspiciatis dolores. Et est rerum ratione ipsam. Est et delectus velit sint itaque quo. Deserunt alias sed sit ipsum quod ut. In et quos itaque rerum labore minus. Qui modi voluptatibus molestias adipisci temporibus. Sit earum repudiandae dolorem at reprehenderit veniam. Asperiores itaque eum ipsa assumenda. Vero dolor velit laboriosam dolores autem. Totam natus quos ratione nostrum magni.', '299.00', NULL, 0, 155, 'digital_18.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(13, 'dolor sit et reprehenderit', 'dolor-sit-et-reprehenderit', 'Iste voluptatum dolorem laborum. Dicta fugiat et perferendis qui et. Est voluptas perferendis pariatur provident maxime. Aperiam beatae deserunt voluptate ex vero.', 'Sunt rerum minima consectetur qui aperiam. Hic nam quod accusantium temporibus. Esse quis qui molestiae doloremque voluptas autem quam aut. Distinctio unde consequuntur laborum saepe quibusdam aut eius. Ex voluptatem commodi iste corporis. Maiores ad amet ut. Est quidem suscipit ratione nisi. Ducimus voluptatum modi aliquid provident. Doloremque aliquid temporibus culpa. Officiis dolore voluptatum nihil doloremque nobis consequuntur alias. Omnis sint eum quia natus.', '247.00', NULL, 0, 112, 'digital_6.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(14, 'ipsa quidem omnis a', 'ipsa-quidem-omnis-a', 'Laboriosam minus ullam ex. Et ipsam dolores culpa harum. Sequi architecto nostrum ut ipsam. Dolore tempore mollitia qui iste totam. Aliquam ut nulla soluta cumque in officiis eveniet voluptatem.', 'Eos dolores et esse in debitis explicabo natus. Est doloremque tempora dolorum error veritatis aliquid officiis. Magnam ipsam nostrum eum pariatur et voluptas officia. Omnis laborum quis numquam nihil error dolores. Debitis dolores quod corrupti quae minima ut ut. Explicabo natus ut velit ex voluptate dolores ea. Veritatis aut nihil commodi quaerat. Et eius veritatis ut commodi architecto omnis.', '492.00', NULL, 0, 143, 'digital_16.jpg', NULL, 4, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(15, 'quod alias deserunt et', 'quod-alias-deserunt-et', 'Ullam earum hic debitis ut architecto. Culpa et reprehenderit perspiciatis quam et consequuntur voluptatem. Nobis temporibus sunt nihil ea iusto aut et.', 'Labore ea voluptas quia veritatis eligendi. Rerum laborum consectetur dolores consequatur recusandae quidem. Iure vel sint cum fuga aperiam et ipsum. Id cupiditate totam sunt earum amet deleniti. Ratione cum dolorem odit. Expedita veniam voluptates repellendus odio. Omnis optio dolores aut ut ipsa quos est. Est ab et necessitatibus optio. Cum debitis non magni repellat facilis. Aut ipsam ipsam ullam totam magnam amet.', '482.00', NULL, 0, 128, 'digital_3.jpg', NULL, 2, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(16, 'dolor et possimus ab', 'dolor-et-possimus-ab', 'Sint incidunt quos at eaque. Et facere pariatur facere voluptatum voluptas. Quae veritatis culpa id quisquam adipisci saepe et. Quae sunt est vel accusantium est.', 'Laboriosam dolor quaerat iusto iusto mollitia ea eos aut. Corporis et omnis labore porro. Explicabo alias quod non earum sit in. Ab ea quidem beatae minima quaerat facere modi maxime. Deleniti fugiat accusamus consequatur beatae voluptate ut. Eum deleniti error voluptatem accusamus ut omnis tempora. Voluptas quae aspernatur in. Assumenda at ut saepe dolores.', '318.00', NULL, 0, 158, 'digital_20.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(17, 'est laboriosam nihil excepturi', 'est-laboriosam-nihil-excepturi', 'Consequatur consequatur excepturi non qui voluptas iste. Enim et amet dolores sed fugiat odio. Quibusdam quos delectus aliquam quia.', 'Occaecati dolores hic laboriosam at. Commodi tenetur consectetur necessitatibus cupiditate. Velit molestias deleniti dolores itaque eveniet eos non et. Est error et aut et. Quae assumenda aperiam aut cumque repudiandae dolorem. Atque laborum consectetur corrupti nesciunt. Temporibus corporis numquam velit delectus culpa qui. Ipsum tempora autem et ut. Dolorem facilis aut et at.', '367.00', NULL, 0, 157, 'digital_27.jpg', NULL, 4, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(18, 'iure recusandae ducimus qui', 'iure-recusandae-ducimus-qui', 'Quos vero aut cupiditate eius et. Nemo libero perspiciatis repudiandae minima. Nihil rerum fuga autem nihil.', 'Occaecati animi cupiditate quo praesentium ab quas sapiente. Qui eveniet sequi debitis vitae tempora. Tempore consectetur aut laboriosam quibusdam. Dolorum harum earum amet optio est. Voluptas id sunt cupiditate non reprehenderit accusamus voluptas. Accusamus cum distinctio sunt. Qui possimus quisquam a officiis veniam ea. Voluptates itaque est debitis quis qui aut velit labore. Voluptates dolore minus omnis id et ducimus.', '352.00', NULL, 0, 147, 'digital_17.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(19, 'ut non quaerat consequatur', 'ut-non-quaerat-consequatur', 'Architecto sed veniam molestias omnis soluta veniam. Voluptatem at fugit quo ut hic facere. Tempore incidunt molestias officia reprehenderit odio voluptas dolorem et.', 'Dolor reprehenderit aliquid aut nemo aut. Porro quia est dolores vel optio ut. Aspernatur quis possimus quas similique. Consequuntur qui id corporis velit voluptate suscipit magni. Excepturi quam quidem quos a. Quod sit voluptates est eos qui a exercitationem. Tempore possimus a quibusdam quidem explicabo placeat accusantium. Animi officiis ea deleniti animi. Accusantium quae sit dignissimos illo eum a.', '426.00', NULL, 0, 185, 'digital_4.jpg', NULL, 1, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(20, 'facere impedit accusamus illum', 'facere-impedit-accusamus-illum', 'Vel reiciendis fuga tenetur aliquam velit culpa quaerat. Error dolorem dignissimos nulla facere cumque. Blanditiis id vitae molestiae. Nostrum dolores fugiat molestias et.', 'Repellendus et ut dolor magni et eveniet. Dolorum facere et molestias minus minus doloremque. Deleniti est veritatis recusandae. Omnis placeat sit vel vero a dolores voluptatum. Sit enim qui ut voluptatum doloremque pariatur voluptas nihil. Molestias itaque vero est recusandae vero inventore. Qui eius ut nesciunt ut perspiciatis. Sapiente est praesentium voluptates et et et expedita velit.', '210.00', NULL, 0, 125, 'digital_19.jpg', NULL, 5, '2022-01-20 03:47:14', '2022-01-20 03:47:14'),
(21, 'nemo alias esse similique', 'nemo-alias-esse-similique', 'Eos tempore reiciendis nihil voluptatem. Nihil commodi suscipit ea autem accusantium et molestias saepe. Ut modi soluta aspernatur quae debitis ea.', 'Voluptas unde aliquid laudantium cupiditate iste. Doloremque ex tenetur ea molestiae neque. Distinctio laboriosam necessitatibus illum reiciendis molestiae tenetur sit. Molestiae iure tenetur sed. Vitae omnis voluptas laudantium quia tempora libero. Eveniet perferendis explicabo earum provident. Ut et non natus. Ipsum similique quo temporibus modi.', '385.00', NULL, 0, 194, 'digital_22.jpg', NULL, 1, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(22, 'expedita nam at praesentium', 'expedita-nam-at-praesentium', 'Dolores nisi porro sunt non. Ea deserunt error voluptates recusandae omnis alias voluptatum harum. Eveniet amet molestiae dolor repudiandae. Repellendus voluptatum modi dignissimos ut rerum et.', 'Nihil quo atque ut atque sequi sed quisquam voluptas. Beatae laborum non esse veniam sit harum exercitationem. Sed in aut eum repellendus animi corrupti. Sed eum et delectus qui ut. Similique non ut hic tempora ut. Alias sunt labore blanditiis doloremque ut et. Culpa ut impedit dolorem eos earum voluptatem et. Ut vel deleniti dolorem aut. Dolores pariatur omnis facere nihil. A voluptas aut error officiis voluptatum excepturi. Autem nihil qui aperiam labore qui officia.', '303.00', NULL, 0, 118, 'digital_15.jpg', NULL, 1, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(23, 'totam sit accusamus ad', 'totam-sit-accusamus-ad', 'Quas voluptatum atque aut harum accusamus nihil dolores. Et quis ut quaerat architecto. Et voluptatibus eaque facilis aperiam dolorum suscipit.', 'Autem consequatur voluptas qui velit tempore a. Labore voluptatem recusandae deleniti nihil. Blanditiis in unde earum vel ut est. Minima in temporibus quod. Est aut molestiae ipsa quia delectus. Minima error facere consectetur assumenda. Sed est rerum maxime temporibus est saepe facere voluptatem. Ut harum voluptatum magni et autem. Aut optio cupiditate perferendis velit nobis quia aut.', '268.00', NULL, 0, 145, 'digital_8.jpg', NULL, 5, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(24, 'quis nisi voluptas officiis', 'quis-nisi-voluptas-officiis', 'Culpa maiores voluptate ea blanditiis beatae. Aliquid eum accusamus qui. Omnis molestiae nihil sunt quia eum libero ex. Est quia aut dolores ad ut et consequatur sit.', 'Vero illum rerum vero ut ratione. Eum quod animi quia beatae beatae eos excepturi. Maiores recusandae iste maiores quidem eum pariatur. Est repellat quo voluptas omnis pariatur. Ut culpa quia optio. Quia delectus eum est cumque eaque sapiente. Id expedita reprehenderit corporis est voluptatem. Maiores nemo sunt recusandae non sit. Accusantium dolorem et rem officiis. Quia sequi odit voluptas ratione omnis quasi commodi. Tempore minima dolores aut et totam. Eligendi sunt repellat eveniet.', '490.00', NULL, 0, 197, 'digital_2.jpg', NULL, 5, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(25, 'est eum iste quia', 'est-eum-iste-quia', 'Voluptates impedit temporibus nesciunt reiciendis aut nam dicta. Et voluptatum occaecati eligendi. Aut qui et laudantium unde aut.', 'Et laborum est aut quis velit voluptate molestiae. Aut non est ut aut beatae ea hic eaque. Possimus quas odio consequatur omnis. Quo non optio adipisci adipisci. Fuga impedit suscipit possimus ut enim officiis a. Velit labore sit enim sed. Enim error aliquam autem repellat. Similique quibusdam sunt officiis quia est eveniet natus quo. Sed deleniti laudantium accusantium sapiente sint veritatis reprehenderit. Non omnis vel sint sunt illo praesentium fugit.', '279.00', NULL, 0, 125, 'digital_30.jpg', NULL, 5, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(26, 'et autem voluptas qui', 'et-autem-voluptas-qui', 'In rerum saepe qui enim voluptatem. Nemo est nobis qui est quo hic. Illum animi adipisci autem libero totam qui.', 'Aperiam eius aliquid consequatur qui. Unde inventore adipisci corporis. Rerum nulla in officiis accusantium omnis ea neque. Quo ipsum eum excepturi ea. Dolores itaque quia voluptas consequatur illo. Qui eveniet voluptatem cum molestiae odit. Sunt veniam distinctio laborum hic. Amet in perferendis voluptatum nihil corrupti quaerat quaerat. Enim eius labore ut illo laboriosam.', '318.00', NULL, 0, 150, 'digital_21.jpg', NULL, 1, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(27, 'at doloribus exercitationem nulla', 'at-doloribus-exercitationem-nulla', 'Et accusamus ab non. Nam necessitatibus ut ut nihil accusantium. Sit voluptatem commodi et est sint. Tempora praesentium ut rerum exercitationem laboriosam.', 'Dolor quia unde laborum est. Dolores minus cum quibusdam saepe. Omnis consequatur et deleniti amet. Dicta rerum totam ducimus. A quod rerum ex officiis. Asperiores atque magni eum et sed labore. Dolorem ipsum culpa est et iusto. Itaque velit consequatur minus mollitia quam. Blanditiis impedit nulla at debitis qui doloribus. Occaecati voluptas inventore vero dolores.', '447.00', NULL, 0, 118, 'digital_10.jpg', NULL, 1, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(28, 'aliquid est accusamus ipsa', 'aliquid-est-accusamus-ipsa', 'Aliquid culpa error libero est. Id ducimus molestias et nam eos sit. Et nam ut temporibus id.', 'At dolores eos exercitationem in velit. Fuga magnam molestiae enim aut consequuntur. Ut vel saepe dolores commodi aspernatur. Rerum nobis ea et sunt minima asperiores non. Nam omnis est laudantium. Sed beatae in eum dolorum itaque. Soluta sunt dolorem minus et laudantium. Voluptatibus et fuga sed ut. Aut ratione facere occaecati tenetur. Est qui magnam id velit sequi accusantium rerum. Magnam maiores fuga nobis cupiditate alias voluptates. Cupiditate hic sapiente temporibus eius dignissimos.', '302.00', NULL, 0, 113, 'digital_11.jpg', NULL, 4, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(29, 'nam similique dicta voluptatem', 'nam-similique-dicta-voluptatem', 'Repudiandae beatae numquam voluptas perspiciatis dolor dolorem itaque. Nostrum hic illum repellendus vero vel. Perferendis eaque accusamus soluta.', 'Id excepturi debitis cum reiciendis modi nihil. Aliquid sed officia voluptas voluptatibus quidem impedit. Velit nesciunt blanditiis dolorem aut aspernatur. Nemo id debitis incidunt rerum sit voluptas. Eum temporibus natus est tempore sit est ex. Deleniti ea dolores amet nobis est autem dolorem. Atque consectetur repellendus dolor voluptas asperiores doloribus temporibus sit. Qui eius et repudiandae facilis ea quidem. Voluptatem quos nemo et earum totam dignissimos. Et vel nulla sit facilis.', '425.00', NULL, 0, 152, 'digital_13.jpg', NULL, 1, '2022-01-20 03:47:15', '2022-01-20 03:47:15'),
(30, 'laborum non voluptatum sed', 'laborum-non-voluptatum-sed', 'Molestiae ut reiciendis reprehenderit ullam excepturi. Voluptas impedit qui velit quia odit. Perspiciatis omnis qui fugit ad vel. Eaque dolor dolore perspiciatis sit atque tempora.', 'Quod vel mollitia dicta ut corrupti in. Blanditiis accusamus ea suscipit omnis. Illum porro et ipsam debitis. Quis quo est assumenda quia nam qui. Sit sed eum soluta hic saepe id odit. Esse ipsum officiis aut. Provident dolor est maiores nemo incidunt voluptas. Aut rem adipisci eius minus reiciendis dolores placeat. Id voluptas beatae dolor voluptates harum autem. Reprehenderit quo fuga veniam.', '107.00', NULL, 0, 154, 'digital_14.jpg', NULL, 3, '2022-01-20 03:47:15', '2022-01-20 03:47:15');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
