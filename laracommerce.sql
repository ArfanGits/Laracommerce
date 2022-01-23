-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2022 at 06:07 AM
-- Server version: 5.7.24
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
(1, 'quia et', 'quia-et', '2022-01-22 22:24:13', '2022-01-22 22:24:13'),
(2, 'beatae repellat', 'beatae-repellat', '2022-01-22 22:24:14', '2022-01-22 22:24:14'),
(3, 'maxime est', 'maxime-est', '2022-01-22 22:24:14', '2022-01-22 22:24:14'),
(4, 'nulla qui', 'nulla-qui', '2022-01-22 22:24:14', '2022-01-22 22:24:14'),
(5, 'ipsa illum', 'ipsa-illum', '2022-01-22 22:24:14', '2022-01-22 22:24:14'),
(6, 'non tempora', 'non-tempora', '2022-01-22 22:24:14', '2022-01-22 22:24:14'),
(7, 'quia vero', 'quia-vero', '2022-01-22 22:24:14', '2022-01-22 22:24:14'),
(8, 'omnis suscipit', 'omnis-suscipit', '2022-01-22 22:24:14', '2022-01-22 22:24:14');

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
-- Table structure for table `home_slide`
--

CREATE TABLE `home_slide` (
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
(5, '2022_01_20_085455_create_categories_table', 1),
(6, '2022_01_23_041716_create_products_table', 1),
(7, '2022_01_23_043453_create_home_slide_table', 2),
(8, '2022_01_23_044046_add_subtitle_to_home_slide', 3);

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
(1, 'aut repellat labore impedit', 'aut-repellat-labore-impedit', 'In quae aut sit. Mollitia porro velit ipsum consequuntur.', 'Pariatur illum totam magni totam. Libero voluptas et doloremque adipisci aut quas tempore autem. Ullam odio voluptas voluptas dolores aperiam magnam ipsum. Rerum eligendi deserunt et beatae natus facilis qui dolor. At magnam dolore magnam dignissimos quod vel. Eum neque possimus mollitia et voluptas ut. Natus aperiam inventore molestiae voluptatem. Repellendus voluptates sed impedit quia illo recusandae voluptatum. Veniam iste non vero et. Corporis in nesciunt exercitationem ullam consequatur.', '162.00', NULL, 0, 113, 'digital_27.jpg', NULL, 1, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(2, 'voluptatem aut consequuntur praesentium', 'voluptatem-aut-consequuntur-praesentium', 'Sit veniam est expedita dolorem in ab. Tempore rem velit molestiae consequatur temporibus deserunt vel optio. Aut id harum enim similique. Labore sit omnis aut sed quis ipsum assumenda tempora.', 'Rerum repudiandae nihil quis sed. Aliquid laboriosam nesciunt laboriosam iste. Mollitia suscipit dolorem quos vero dolores eos ipsam et. Est et voluptate optio ducimus sit dolorem. Similique modi aut quidem aut. Repellendus nihil tempore porro. Et ea sunt explicabo non rerum in ex. Voluptatem sequi illum voluptatem beatae consequatur. Laboriosam eveniet voluptatem voluptas quia porro. Aut alias iusto et. Velit vero autem sunt non.', '313.00', NULL, 0, 163, 'digital_8.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(3, 'aut libero dicta sit', 'aut-libero-dicta-sit', 'Omnis magnam quaerat earum provident. Porro ipsum tenetur est ut sint ipsa voluptatem. Quo ea aliquam deserunt et dolorem aut deleniti.', 'Dolor a ipsam rerum dolor deleniti et. Pariatur odio dolor quo. Magni vitae reprehenderit consequuntur sunt est perspiciatis sit. Modi et debitis nemo earum aliquam cum sunt. Est accusantium dicta dolores ut iusto. A eius est hic quaerat aliquid. Eligendi quia quo facilis adipisci vitae. Inventore et tenetur vel alias. Facilis minus sit architecto iste et est. Commodi omnis molestiae consequatur dolorem.', '437.00', NULL, 0, 120, 'digital_11.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(4, 'magnam non aperiam qui', 'magnam-non-aperiam-qui', 'Similique tempore aut harum eos quibusdam fuga natus. Dolorem voluptatem repellat necessitatibus. Veritatis alias aut maxime libero id cum nobis dolorem.', 'Culpa commodi cupiditate deleniti ipsa consequatur atque ullam. Excepturi est facere optio et sit. Culpa sunt recusandae officiis sit error repellat. Maxime maiores voluptas ducimus ad aliquid cumque. Eos sunt et soluta. Incidunt aut labore autem. Harum nisi inventore voluptatem necessitatibus architecto necessitatibus sunt.', '112.00', NULL, 0, 108, 'digital_24.jpg', NULL, 1, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(5, 'ut id consequuntur provident', 'ut-id-consequuntur-provident', 'Dignissimos modi rerum magni unde enim qui eos. Atque qui harum earum corrupti nobis veniam. Recusandae ut labore nulla ut ipsum.', 'Necessitatibus quia accusamus molestiae quibusdam aut. Voluptatem rerum quia nam et. Consequatur iusto quam aut. Minima adipisci qui sit est. Quasi natus voluptatem ducimus. Et quia quia sed similique dolor nemo aut. Nihil iste labore a est corrupti. Ut aperiam totam animi sed aut aut veritatis. Nobis dolor optio deleniti quod maiores velit. Eius similique nulla quia recusandae repellendus qui. Consequatur corporis atque minima mollitia temporibus.', '232.00', NULL, 0, 197, 'digital_20.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(6, 'saepe vero necessitatibus nesciunt', 'saepe-vero-necessitatibus-nesciunt', 'Sequi eius voluptas ipsam dolorum quisquam explicabo. Animi dolor et non quidem nemo. Vitae at ducimus reprehenderit.', 'Et maxime consectetur consequatur sunt. Enim et qui ea molestiae sed aut non. At tempora non ullam quibusdam ex ipsa sit expedita. Iusto ut molestiae architecto labore molestiae. Tempore veniam voluptatem est illo amet accusantium repellat ut. Error quae hic illum enim inventore velit. Repudiandae modi recusandae vitae necessitatibus provident nihil eum. Consequatur officia sunt est possimus repudiandae non animi ea. Aliquam voluptates consequatur aut neque.', '118.00', NULL, 0, 128, 'digital_19.jpg', NULL, 4, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(7, 'id minima et doloribus', 'id-minima-et-doloribus', 'Est doloribus repudiandae omnis fugit numquam fugiat. Veniam sequi temporibus porro eligendi ipsam. Aut quam dolorum recusandae est corrupti.', 'Provident dignissimos nostrum magnam est sunt qui. Enim tempore quo quod deserunt velit. Quia ut consequatur et deserunt natus unde voluptatibus. Temporibus quia rerum corporis dolor laborum facilis sit. Perspiciatis officiis et esse delectus facilis aperiam. Velit libero blanditiis voluptates voluptatem consectetur sed quae. Fugit corrupti labore alias voluptatibus omnis deserunt est. Sit ipsum vel ipsa illo. Ut temporibus facilis vero.', '326.00', NULL, 0, 141, 'digital_18.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(8, 'sunt voluptas vel ipsam', 'sunt-voluptas-vel-ipsam', 'Assumenda nostrum sed magnam asperiores sequi fuga tempora. Itaque et illum ipsa neque perferendis et est. Eligendi facilis quis molestiae.', 'Ut cum quas non iure est dicta. Odio numquam distinctio eveniet unde. Molestiae sit fugit sed rerum. Magnam nesciunt similique possimus eum voluptatem nihil illo quas. Id reprehenderit sed doloremque quis laudantium quas ipsa porro. Fuga quasi reprehenderit veniam mollitia velit suscipit. Consequatur ut autem nemo quibusdam quos molestiae. Eius facere dolore architecto. Ut earum dolorem adipisci qui. Corrupti quisquam non error qui rerum dolores. Iusto rem est et voluptatem ex quas.', '482.00', NULL, 0, 140, 'digital_10.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(9, 'rerum enim ipsum doloremque', 'rerum-enim-ipsum-doloremque', 'Soluta dolores quia eveniet eum error libero. Odio in eum fuga ad voluptas quibusdam. Deserunt harum nemo a dolores.', 'Omnis qui sit inventore omnis non. Eaque autem rem recusandae error magnam. Architecto temporibus quia consequatur et neque. Nihil est voluptatem sed a aperiam dolor. Molestiae consequatur doloremque nam laboriosam quia velit fugiat. Quae id minus esse. Ut assumenda amet cumque nostrum cum sapiente totam dolorum. Vitae asperiores fugit provident laborum. Dolorem sit odio nesciunt sequi exercitationem. Aliquid est fugit qui beatae nam.', '379.00', NULL, 0, 191, 'digital_28.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(10, 'qui a qui animi', 'qui-a-qui-animi', 'Ipsam commodi mollitia earum qui quia enim. Sed aut perferendis dolorum vitae deserunt.', 'Ratione delectus vero voluptate voluptas autem saepe. At velit vel nemo eos et sit ea. Reiciendis doloribus adipisci unde et. Est nihil eum magni nobis magni consectetur. Delectus fugiat suscipit officiis expedita illo earum. Qui temporibus culpa doloremque velit quasi ab a. Suscipit et quia dolores commodi. Doloremque in ipsam exercitationem debitis velit qui soluta. Quidem aut facere ea adipisci aut. Aut deleniti ut sint quis non. Recusandae nostrum totam nisi.', '224.00', NULL, 0, 167, 'digital_3.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(11, 'odit ut corporis dolorem', 'odit-ut-corporis-dolorem', 'Velit omnis quod corrupti a illo ab. Animi non quia vel. Rerum dolor quia error modi accusamus praesentium incidunt.', 'Earum voluptatem aut et officia accusantium aut dolor. Perspiciatis corrupti doloremque reiciendis accusantium recusandae ut voluptas. Vitae nobis ut praesentium excepturi voluptatibus. Est velit aut qui eveniet debitis. Iusto quo voluptates qui quisquam voluptatum sed illum. Rerum odit soluta adipisci illum ducimus pariatur. Itaque expedita quia voluptas deleniti veritatis eaque. Repellat alias mollitia tempora totam iure enim culpa.', '218.00', NULL, 0, 110, 'digital_14.jpg', NULL, 1, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(12, 'delectus sunt voluptas pariatur', 'delectus-sunt-voluptas-pariatur', 'Sed ducimus vitae accusantium id error. Cum minus pariatur earum cum nobis. Enim perspiciatis deserunt aut vitae repellat et. In magni ut veritatis voluptatem dolor necessitatibus.', 'Soluta officiis sunt blanditiis. Quos est odio totam libero. Voluptatibus aspernatur et sit sed. Et rem aspernatur velit soluta. Illum quasi voluptatum nesciunt iusto accusantium laudantium ducimus itaque. Nam fuga placeat quod. Voluptatem exercitationem animi iure perferendis corrupti laboriosam eum. Est voluptas quis omnis perspiciatis non et quaerat. Voluptatibus quidem velit dolor quo. Ut voluptatem tenetur facilis est est harum. Nisi sunt quo quibusdam magnam sunt placeat.', '103.00', NULL, 0, 165, 'digital_13.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(13, 'ea quia debitis unde', 'ea-quia-debitis-unde', 'Facere quod et neque. Sed voluptas sunt vitae eius odit cum. Blanditiis nihil et aut enim dolores quia possimus.', 'Qui odio ipsa nihil. Mollitia id delectus et. Ut harum quod voluptates soluta explicabo error. Voluptas praesentium nam ut placeat aliquam mollitia culpa qui. Dicta commodi porro cum est asperiores ut non. Debitis ab perferendis dolores consequuntur. Consequatur reiciendis nulla et unde aut consequatur voluptas in. Itaque et veritatis eaque ratione aperiam. Inventore totam iste quasi est. Ducimus nihil sed velit est ipsa et eos officia.', '293.00', NULL, 0, 121, 'digital_9.jpg', NULL, 4, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(14, 'ut rem eligendi unde', 'ut-rem-eligendi-unde', 'Et omnis placeat nihil quaerat. Et hic eaque nulla sed dolores et non. Sint non assumenda neque illo molestiae reiciendis. Ut quia doloremque aut natus rerum qui est.', 'Molestiae quam illo aspernatur ut esse aspernatur. Dolorem laudantium nemo et sunt eum deserunt adipisci. Numquam quidem reprehenderit veritatis et. Cupiditate aut et ab officiis aut in repellendus. Eligendi doloremque ut et et dolorum omnis iure. Porro eos distinctio qui illum est consequuntur quisquam. Illum omnis omnis modi officia ut facilis sapiente. Sed magni aut consequatur rerum cupiditate.', '267.00', NULL, 0, 103, 'digital_29.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(15, 'consequuntur earum quod sint', 'consequuntur-earum-quod-sint', 'Nulla eos illo ut et error deserunt. Culpa rerum nesciunt vero dolor ab natus. Fuga rem sed suscipit saepe consequatur. Sunt qui reprehenderit quia assumenda sunt nesciunt.', 'Sit quidem occaecati eos qui mollitia distinctio. Aut est enim rerum aut laborum consectetur. Id accusamus et velit non iste veritatis. Eveniet saepe distinctio laborum alias laboriosam et. Impedit incidunt qui animi incidunt voluptas. Error et repudiandae dicta. Et porro omnis perspiciatis eum. Quia aperiam ad recusandae ea. Tenetur mollitia ut voluptates atque corrupti incidunt. Harum possimus quos et vitae. Ut ut facere iste est.', '246.00', NULL, 0, 157, 'digital_1.jpg', NULL, 4, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(16, 'deserunt laudantium corrupti accusantium', 'deserunt-laudantium-corrupti-accusantium', 'Accusantium quos reiciendis placeat qui culpa velit vel. Eum non qui sit quis tenetur. Odit voluptatibus incidunt voluptatem harum. Quod consequatur sit et et architecto perferendis.', 'Dolore dolore quasi dolor inventore. Autem voluptatem dolorum officiis eius sit. A accusamus in necessitatibus non voluptas aut explicabo. Error consequatur rerum cumque eaque optio accusamus quo. Dolores similique atque quibusdam dolorem. Sit voluptas minus praesentium asperiores. Excepturi autem quo rerum laboriosam. Perspiciatis consequatur odit doloremque similique blanditiis necessitatibus asperiores.', '284.00', NULL, 0, 148, 'digital_23.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(17, 'delectus eligendi voluptas beatae', 'delectus-eligendi-voluptas-beatae', 'Totam minus exercitationem a neque est ea qui distinctio. Saepe nam eius voluptatem aliquam ut quaerat voluptates. Voluptas similique voluptas maiores et consectetur ex.', 'Reprehenderit vero accusantium repellat eos temporibus. Est nostrum et cumque sed in aut dolores. Consequuntur doloribus corporis rerum. Ut occaecati dolore nostrum repellendus. Et et eaque vel illum voluptas. Id quia impedit velit sunt. Nihil a eligendi pariatur rem sunt sed dignissimos. Nulla quaerat nemo in quam ullam aut quis. Consequatur atque fugit at aut. Corporis culpa velit quia qui reiciendis expedita.', '441.00', NULL, 0, 177, 'digital_2.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(18, 'expedita ipsa iste rerum', 'expedita-ipsa-iste-rerum', 'Numquam voluptas possimus sit a quo architecto. Quisquam omnis distinctio voluptates debitis. Quo blanditiis eum nihil quod distinctio veniam.', 'Non eius debitis sequi enim esse modi. Voluptatem vel nesciunt possimus blanditiis at consequatur. Corrupti aut nihil qui ut et aut quasi. Ipsa et et modi ipsa nulla doloribus rerum voluptates. Id saepe distinctio nam ut inventore expedita. Provident sequi dolor rerum. Molestiae molestiae eaque id sit est. Aut nobis a sapiente quis sapiente voluptatibus. Dolore nemo enim omnis ut. At totam aut non aut cumque voluptatem animi.', '205.00', NULL, 0, 196, 'digital_26.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(19, 'adipisci voluptatum omnis aliquid', 'adipisci-voluptatum-omnis-aliquid', 'Quos accusamus officia esse natus autem. Et sunt et possimus qui. Occaecati ut aliquid ipsam ullam velit numquam maxime.', 'Suscipit dolore commodi et fugit amet voluptate sed. Nobis quia officia repellendus modi dolorum ut laboriosam. Voluptas nulla minus minus officiis et enim. Ut est minima consequuntur vitae culpa. Aut placeat ut tempore ullam suscipit omnis vitae. Optio debitis molestias voluptate rerum et quae quas maiores. Quisquam explicabo explicabo at dolore. In vel temporibus voluptatem delectus est. Totam voluptatem facilis nostrum reiciendis quos eius aut.', '261.00', NULL, 0, 159, 'digital_30.jpg', NULL, 4, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(20, 'id nesciunt accusantium sunt', 'id-nesciunt-accusantium-sunt', 'Eveniet excepturi consequuntur nulla mollitia fugiat consequatur. Inventore consectetur dolore odio. Est quia magnam voluptas quis.', 'Provident facere ut omnis veritatis. Fugiat rerum et debitis sed incidunt repellat. Maiores rerum id eius velit. Quia est aliquid et qui et placeat minus. A eveniet blanditiis nihil. Aut nemo et placeat quaerat. Voluptatem aut quis qui totam vel nulla amet qui. Ut nihil voluptatibus nisi. Qui rerum quod tempore voluptas. Omnis consequatur tempore qui vitae maxime consequatur minima sapiente. Error similique sed quas saepe quod quia ex.', '107.00', NULL, 0, 110, 'digital_5.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(21, 'rem qui doloribus quia', 'rem-qui-doloribus-quia', 'Fugit aliquid quisquam sit dolores culpa ducimus distinctio fugiat. Non eveniet ratione provident quae eveniet vel. Fugiat cupiditate et nihil laudantium dolorem velit beatae.', 'Tempore animi itaque doloremque velit iure voluptas ratione. Quia dignissimos perferendis necessitatibus. Quos fugiat earum ea aut. Voluptate optio quod laudantium provident at. Velit id commodi harum velit laborum voluptatum possimus qui. Qui sunt repellendus quae unde. Neque qui optio temporibus eveniet ipsa. Rem quia et veritatis et nihil tempora. Similique maxime dolor autem sed itaque ab vel sunt.', '139.00', NULL, 0, 186, 'digital_4.jpg', NULL, 4, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(22, 'velit voluptatem consequatur quidem', 'velit-voluptatem-consequatur-quidem', 'Vero accusantium quia quibusdam perferendis a rem occaecati. Aliquam nulla aut debitis nam voluptatibus modi. Quisquam sint quibusdam sunt voluptatem.', 'Molestiae cupiditate quia deserunt velit nulla odit doloremque. Autem corporis velit aut ut rerum harum. Officiis aut assumenda doloremque. Consequuntur ut quaerat quia et ad iure. Expedita omnis id expedita eum. Optio perferendis dolorem et libero delectus. Ratione quidem autem animi cupiditate nisi mollitia. Dolor nam placeat ad hic facere. Ut aperiam nihil pariatur quibusdam reprehenderit.', '377.00', NULL, 0, 146, 'digital_21.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(23, 'fuga rerum excepturi quas', 'fuga-rerum-excepturi-quas', 'Aut et aliquam eum sit voluptas voluptas recusandae. Et vitae quo deleniti eius aut quo consectetur. Ipsum optio porro impedit nisi ratione corporis. Nostrum non placeat in numquam ut id ut rerum.', 'Vel dolores nesciunt reprehenderit dolores ut delectus. Atque exercitationem sed iste. Voluptas officiis unde aliquid quae sit corporis. Asperiores dolore tempore sapiente magnam. Repellat aut dolorem dolorum et quae reiciendis. Repellendus recusandae iure est aut quis. Sunt voluptates velit et fugiat voluptate eum quasi nobis. Vel autem fugiat dolore aut. Cumque id nihil dolore consequatur. Qui ullam aut itaque earum omnis.', '261.00', NULL, 0, 120, 'digital_15.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(24, 'illum incidunt ut dolores', 'illum-incidunt-ut-dolores', 'Possimus voluptatem non enim. Laboriosam et omnis aut illo.', 'Harum at id vel nulla veritatis blanditiis quaerat. Amet vel sed nemo. Debitis quisquam nesciunt consequatur esse molestias quia aperiam. Quisquam aut quia perferendis quidem. Praesentium ut illo nihil culpa harum. Odio qui mollitia magni aperiam iste adipisci aut. Exercitationem aut voluptatem voluptatem et magnam. Odit omnis praesentium numquam sit qui. Fuga ipsum consequatur dolor ut quasi commodi. Error voluptates aut dicta voluptatum autem nisi eius corrupti.', '164.00', NULL, 0, 104, 'digital_7.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(25, 'voluptatibus omnis qui cum', 'voluptatibus-omnis-qui-cum', 'Minima nihil dolore minus vel. Corporis doloribus qui hic ut et. Repudiandae vero deleniti voluptatum ipsam ut aliquid. Adipisci occaecati rerum veritatis in aut et omnis.', 'Eum corrupti iure quo velit pariatur vel aut. Qui vero mollitia quisquam distinctio sed debitis consequatur. Quod facilis perspiciatis perferendis rerum autem. Officia harum nulla labore nemo ipsa repudiandae totam praesentium. Sequi fugit mollitia esse sequi officiis. Corporis quia est aut sit aut maxime nihil. Quod illo et rerum culpa incidunt quis ducimus iusto. Qui similique impedit alias qui. Nam soluta expedita itaque ea labore.', '118.00', NULL, 0, 108, 'digital_16.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(26, 'officiis error et et', 'officiis-error-et-et', 'Dolor voluptatem recusandae nobis maxime vel ea maxime ut. Quaerat velit dolorum aspernatur laboriosam temporibus. Voluptas aperiam quisquam dolores unde et. Perspiciatis debitis maxime est.', 'Sequi reprehenderit impedit tenetur dolor molestias molestias culpa vitae. Earum iure dolor sed dicta consequatur vel rem amet. Rem neque ut minima. Ullam maiores debitis saepe aliquid ut quia aut. Et molestias eligendi tenetur consectetur sequi et. Atque inventore et sint occaecati quae non. Minus optio fuga quod distinctio. Hic ad doloremque non perferendis nam labore. Voluptatum debitis omnis in reiciendis. Dolore dolor aspernatur dolorem sunt atque qui enim. Est quo quia beatae omnis quasi.', '123.00', NULL, 0, 144, 'digital_22.jpg', NULL, 2, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(27, 'ea ab sint officiis', 'ea-ab-sint-officiis', 'Ullam saepe nulla optio quaerat quod esse aut deleniti. Sit voluptatem sed omnis maiores suscipit quidem. Voluptatem ex amet harum provident iste qui officiis.', 'Repellat earum vero deleniti et ullam et et. Dolore perspiciatis debitis eaque harum nihil. Et provident ut assumenda. Voluptatem in et nemo reiciendis delectus. Autem vel ut dolor. Rem excepturi quia totam qui. Voluptas quia id assumenda aut. Quidem magnam libero libero aut beatae nemo. Ipsum aut alias minima eius aliquid aut.', '141.00', NULL, 0, 107, 'digital_25.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(28, 'ea assumenda ut vitae', 'ea-assumenda-ut-vitae', 'Fugiat voluptas assumenda numquam maxime iste et. Illo vel dolor fugiat nisi recusandae suscipit ullam. Repudiandae accusamus quam iure vel totam.', 'Aliquam rerum similique itaque qui impedit dolor saepe. Omnis vero illum dolorem facilis corporis. Tempore et minus et et est amet accusantium. Quae soluta veniam nostrum ab non totam. Ab debitis distinctio qui reiciendis hic sed ut. Autem aut quo doloribus sint doloribus quo inventore quas. Cupiditate et veritatis incidunt in quo incidunt. Aliquam animi consequuntur distinctio ut. Odio expedita id earum ipsam fugiat.', '198.00', NULL, 0, 129, 'digital_6.jpg', NULL, 4, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(29, 'animi accusantium odio pariatur', 'animi-accusantium-odio-pariatur', 'Ut consectetur quia natus. Facere et aut sint blanditiis quas. Cumque et vero et qui. Odit vero suscipit aliquam et eveniet. Deserunt consequatur sit mollitia temporibus.', 'Repudiandae non molestiae magnam quos. Occaecati omnis provident modi incidunt voluptatem voluptatum omnis. Minus tempora eum excepturi minus necessitatibus atque. Aliquid tempore consequatur dolores repellendus assumenda. Optio reiciendis vel adipisci. Sed tenetur consequatur animi inventore et reiciendis. Saepe ratione necessitatibus est sit voluptas. Ad eius officiis dolorem ut.', '277.00', NULL, 0, 122, 'digital_17.jpg', NULL, 5, '2022-01-22 22:24:15', '2022-01-22 22:24:15'),
(30, 'quae sed dolores ut', 'quae-sed-dolores-ut', 'Dolor esse qui et exercitationem culpa. Unde harum ea nisi eos animi eos. Officiis sapiente eos velit animi ea molestiae.', 'Et libero a est blanditiis. Soluta nam voluptate earum aut doloremque. Enim vero voluptatem laudantium minus. Facilis laudantium unde et eligendi magni officia sapiente culpa. Reiciendis ut doloribus laborum commodi omnis. Voluptas eum voluptas ut odit. Dolorem impedit possimus nulla quam eum quo. Corrupti ea aut molestiae enim aliquam tempora ut. Et et veritatis deleniti maxime cupiditate. Vel similique et qui qui.', '130.00', NULL, 0, 123, 'digital_12.jpg', NULL, 3, '2022-01-22 22:24:15', '2022-01-22 22:24:15');

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
-- Indexes for table `home_slide`
--
ALTER TABLE `home_slide`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `home_slide`
--
ALTER TABLE `home_slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
