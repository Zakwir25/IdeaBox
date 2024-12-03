-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2024 at 03:51 AM
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
-- Database: `cita_smii`
--

-- --------------------------------------------------------

--
-- Table structure for table `approvers`
--

CREATE TABLE `approvers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `approver_nik` varchar(10) NOT NULL DEFAULT '',
  `level` tinyint(3) UNSIGNED NOT NULL,
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `skip_to_level` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `approvers`
--

INSERT INTO `approvers` (`id`, `section_id`, `approver_nik`, `level`, `is_special`, `skip_to_level`, `created_at`, `updated_at`) VALUES
(1, 1, 'S0905', 1, 1, 3, '2024-11-03 19:10:08', '2024-11-03 19:10:08'),
(4, 4, 'T0930', 1, 1, 3, '2024-11-03 19:11:12', '2024-11-03 19:11:12'),
(5, 5, 'T0932', 3, 1, 3, '2024-11-03 19:11:56', '2024-11-03 19:11:56'),
(6, 6, 'AE1279', 3, 1, 3, '2024-11-03 19:12:30', '2024-11-03 19:12:30'),
(8, 7, 'AC1166', 1, 1, 2, '2024-11-03 19:31:07', '2024-11-03 19:31:07'),
(9, 7, 'D0437', 2, 0, NULL, '2024-11-03 19:31:07', '2024-11-03 19:31:07'),
(10, 7, 'T0932', 3, 0, NULL, '2024-11-03 19:31:07', '2024-11-03 19:31:07'),
(11, 18, 'AD1227', 1, 1, 2, '2024-11-04 03:01:59', '2024-11-05 08:56:38'),
(12, 18, 'T0932', 3, 0, NULL, '2024-11-04 03:01:59', '2024-11-04 03:01:59'),
(13, 8, 'U0955', 1, 1, 2, '2024-11-05 08:02:03', '2024-11-05 08:02:03'),
(14, 8, 'X1031', 2, 0, NULL, '2024-11-05 08:02:03', '2024-11-05 08:02:03'),
(15, 8, 'T0932', 3, 0, NULL, '2024-11-05 08:02:03', '2024-11-05 08:02:03'),
(16, 9, 'S0900', 1, 1, 2, '2024-11-05 08:04:01', '2024-11-05 08:04:01'),
(17, 9, 'Z1058', 2, 0, NULL, '2024-11-05 08:04:01', '2024-11-05 08:04:01'),
(18, 9, 'T0932', 3, 0, NULL, '2024-11-05 08:04:01', '2024-11-05 08:04:01'),
(19, 1, 'T0932', 3, 0, NULL, '2024-11-05 08:05:52', '2024-11-05 08:05:52'),
(20, 10, 'AD1214', 1, 1, 2, '2024-11-05 08:07:11', '2024-11-05 08:07:11'),
(21, 10, 'X1031', 2, 0, NULL, '2024-11-05 08:07:11', '2024-11-05 08:07:11'),
(22, 10, 'T0932', 3, 0, NULL, '2024-11-05 08:07:11', '2024-11-05 08:07:11'),
(23, 11, 'T0930', 1, 0, NULL, '2024-11-05 08:09:53', '2024-11-05 08:09:53'),
(24, 11, 'T0932', 3, 0, NULL, '2024-11-05 08:09:53', '2024-11-05 08:09:53'),
(25, 2, 'T0932', 3, 0, NULL, '2024-11-05 08:11:11', '2024-11-05 08:11:11'),
(26, 12, 'AG1345', 1, 1, 2, '2024-11-05 08:12:12', '2024-11-05 08:12:12'),
(27, 12, 'C0346', 2, 0, NULL, '2024-11-05 08:12:12', '2024-11-05 08:12:12'),
(28, 12, 'T0932', 3, 0, NULL, '2024-11-05 08:12:12', '2024-11-05 08:12:12'),
(29, 13, 'U0958', 1, 1, 3, '2024-11-05 08:13:28', '2024-11-05 08:13:28'),
(30, 13, 'Z1058', 2, 0, NULL, '2024-11-05 08:13:28', '2024-11-05 08:13:28'),
(31, 13, 'T0932', 3, 0, NULL, '2024-11-05 08:13:28', '2024-11-05 08:13:28'),
(32, 14, 'Q0872', 1, 1, 2, '2024-11-05 08:17:13', '2024-11-05 08:17:13'),
(33, 14, 'Z1058', 2, 0, NULL, '2024-11-05 08:17:13', '2024-11-05 08:17:13'),
(34, 14, 'T0932', 3, 0, NULL, '2024-11-05 08:17:13', '2024-11-05 08:17:13'),
(35, 15, 'U0947', 1, 1, 3, '2024-11-05 08:25:43', '2024-11-05 08:25:43'),
(36, 15, 'T0932', 3, 0, NULL, '2024-11-05 08:25:43', '2024-11-05 08:25:43'),
(37, 16, 'AG1337', 1, 1, 2, '2024-11-05 08:28:42', '2024-11-05 08:28:42'),
(38, 16, 'Z1058', 2, 0, NULL, '2024-11-05 08:28:42', '2024-11-05 08:28:42'),
(39, 16, 'T0932', 3, 0, NULL, '2024-11-05 08:28:42', '2024-11-05 08:28:42'),
(41, 19, 'U0942', 1, 1, 3, '2024-11-05 08:34:38', '2024-11-05 08:34:38'),
(42, 19, 'T0932', 3, 0, NULL, '2024-11-05 08:34:38', '2024-11-05 08:34:38'),
(43, 4, 'T0932', 3, 0, NULL, '2024-11-05 08:35:28', '2024-11-05 08:35:28'),
(44, 20, 'AF1308', 1, 1, 2, '2024-11-05 08:36:31', '2024-11-05 08:36:31'),
(45, 20, 'C0346', 2, 0, NULL, '2024-11-05 08:36:31', '2024-11-05 08:36:31'),
(46, 20, 'T0932', 3, 0, NULL, '2024-11-05 08:36:31', '2024-11-05 08:36:31'),
(47, 21, 'D0436', 1, 1, 2, '2024-11-05 08:37:21', '2024-11-05 08:37:21'),
(48, 21, 'C0346', 2, 0, NULL, '2024-11-05 08:37:21', '2024-11-05 08:37:21'),
(49, 21, 'T0932', 3, 0, NULL, '2024-11-05 08:37:21', '2024-11-05 08:37:21'),
(50, 22, 'Q0881', 1, 1, 3, '2024-11-05 08:37:57', '2024-11-05 08:37:57'),
(51, 22, 'T0932', 3, 0, NULL, '2024-11-05 08:37:57', '2024-11-05 08:37:57'),
(52, 23, 'Y1050', 1, 1, 2, '2024-11-05 08:38:45', '2024-11-05 08:44:20'),
(53, 23, 'Z1058', 2, 0, NULL, '2024-11-05 08:38:45', '2024-11-05 08:49:48'),
(54, 23, 'T0932', 3, 0, NULL, '2024-11-05 08:38:45', '2024-11-05 08:49:57'),
(55, 24, 'AC1156', 1, 1, 2, '2024-11-05 08:52:41', '2024-11-05 08:52:41'),
(56, 24, 'Z1058', 2, 0, NULL, '2024-11-05 08:52:41', '2024-11-05 08:52:41'),
(57, 24, 'T0932', 3, 0, NULL, '2024-11-05 08:52:41', '2024-11-05 08:52:41'),
(58, 25, 'Q0858', 1, 1, 2, '2024-11-05 08:53:56', '2024-11-05 08:53:56'),
(59, 25, 'Z1058', 2, 0, NULL, '2024-11-05 08:53:56', '2024-11-05 08:53:56'),
(60, 25, 'T0932', 3, 0, NULL, '2024-11-05 08:53:56', '2024-11-05 08:53:56'),
(61, 26, 'K0761', 1, 1, 2, '2024-11-05 08:55:24', '2024-11-05 08:55:24'),
(62, 26, 'Z1058', 2, 0, NULL, '2024-11-05 08:55:24', '2024-11-05 08:55:24'),
(63, 26, 'T0932', 3, 0, NULL, '2024-11-05 08:55:24', '2024-11-05 08:55:24'),
(64, 18, 'X1031', 2, 0, NULL, '2024-11-05 08:57:00', '2024-11-05 08:57:00'),
(66, 17, 'M0812', 1, 1, 3, '2024-11-05 09:18:46', '2024-11-05 09:18:46'),
(67, 17, 'T0932', 3, 0, NULL, '2024-11-05 09:18:46', '2024-11-05 09:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'NoVA-A Elimination', 'nova-a-elimination', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(2, 'Best Practice Implementation', 'best-practice-implementation', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(3, 'Improvement Implementation', 'improvement-implementation', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(4, 'AI Implementation', 'ai-implementation', '2024-10-09 00:39:36', '2024-10-09 00:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dep_head_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`, `dep_head_id`) VALUES
(1, 'Engineering & Maintainance', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 10),
(2, 'Finance Admin', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 3),
(3, 'HCD', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 3),
(4, 'Manufacturing', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 4),
(5, 'QM & HSE', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 1),
(6, 'R&D', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 2),
(7, 'Sales & Marketing', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 3),
(8, 'Supply Chain', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 4),
(9, 'Secret', '2024-10-09 00:39:36', '2024-10-09 00:39:36', 1);

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
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `approval_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`approval_path`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `before` text DEFAULT NULL,
  `after` text DEFAULT NULL,
  `benefit` varchar(255) DEFAULT NULL,
  `sumber_best_practice` varchar(255) DEFAULT NULL,
  `proses_improve` varchar(255) DEFAULT NULL,
  `nama_ai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `status`, `approval_path`, `created_at`, `updated_at`, `before`, `after`, `benefit`, `sumber_best_practice`, `proses_improve`, `nama_ai`) VALUES
(1, 1, 1, 'test', 'test', '<p>Test</p>', 'Pending', NULL, '2024-10-16 20:50:39', '2024-10-16 20:50:39', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 10, 2, 'Rating: Memberikan Nuansa Penilaian', 'rating:-memberikan-nuansa-penilaian', '<p>Feedback Lebih Detail: Rating (misalnya, 1 sampai 5 bintang) memberikan informasi yang lebih lengkap tentang bagaimana perasaan pengguna terhadap ide tersebut. Mereka bisa menyatakan apakah ide itu buruk, cukup bagus, atau luar biasa.\nEvaluasi yang Lebih Adil: Jika kamu ingin membandingkan ide berdasarkan seberapa bagusnya, rating bisa memberikan evaluasi yang lebih adil dibandingkan hanya mengandalkan like. Misalnya, ide yang mendapatkan banyak 5 bintang bisa dianggap lebih baik daripada ide yang mendapat banyak like tapi kurang disukai secara rata-rata.\nPeringkat atau Rekomendasi: Dengan rating, kamu bisa menghitung rata-rata atau peringkat yang lebih berguna jika kamu ingin menyusun daftar ide berdasarkan kualitas.</p>', 'Pending', NULL, '2024-10-21 14:47:47', '2024-10-21 14:47:48', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 3, 'Et cupiditate accusamus sunt est a esse dignissimos.', 'et-cupiditate-accusamus-sunt-est-a-esse-dignissimos', '<p>Praesentium neque ut accusamus et aperiam voluptatem temporibus. Dolorem ex quidem non sapiente sunt saepe optio. Provident hic nobis accusantium et. Quas odit quidem eos veniam.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 4, 'Totam omnis illo sint et eveniet.', 'totam-omnis-illo-sint-et-eveniet', '<p>Tempore et at sit architecto error perspiciatis omnis. Repudiandae totam qui vero facere doloremque. Aliquid quod vel sapiente qui quia laborum. Laboriosam maxime voluptatibus qui at enim est occaecati.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 3, 'Aut odit illo sunt voluptatem sit quam reprehenderit.', 'aut-odit-illo-sunt-voluptatem-sit-quam-reprehenderit', '<p>Harum qui a voluptatum dolore est consequatur. Veniam asperiores accusantium eius voluptatem rem.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 3, 'Ut rem voluptatibus et.', 'ut-rem-voluptatibus-et', '<p>In sunt placeat libero maxime consequuntur qui. Odit et laboriosam qui soluta maiores. Ullam autem pariatur iste animi similique modi cum.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 1, 'Officia eius inventore sunt minus voluptatum sed omnis commodi.', 'officia-eius-inventore-sunt-minus-voluptatum-sed-omnis-commodi', '<p>Velit exercitationem amet ut excepturi velit et. Cumque rerum exercitationem quam eos. Qui qui quis repellat consequatur sequi voluptas.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 4, 'Qui optio quidem delectus quos similique in.', 'qui-optio-quidem-delectus-quos-similique-in', '<p>Consectetur consequatur consectetur quia ut consectetur aut. Eum quidem ea sunt. Totam aut nemo quaerat. Non et eos commodi non ea.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 3, 'Voluptatem adipisci eius laboriosam praesentium ea non et et.', 'voluptatem-adipisci-eius-laboriosam-praesentium-ea-non-et-et', '<p>Et repudiandae itaque quis velit amet est. Aut error voluptatem explicabo dolores explicabo quibusdam ab.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2, 1, 'Nisi quas facilis tempore aut maiores.', 'nisi-quas-facilis-tempore-aut-maiores', '<p>Ut sit sint porro sunt itaque quam nesciunt. Praesentium dolores ea ipsam voluptas ab molestiae vel. Excepturi optio expedita ipsam facere quaerat qui illum. Aut repudiandae voluptatem eum ratione porro et consequatur temporibus.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 3, 'Quasi et perspiciatis adipisci in quia.', 'quasi-et-perspiciatis-adipisci-in-quia', '<p>Nobis et aut quae aut nam. Maxime labore est dolorem corporis dolor aut pariatur. Qui sit assumenda aut sed dolores magnam sit nihil. Voluptatum voluptatum excepturi dolorum quis.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2, 3, 'Iusto in aliquid suscipit commodi repellendus natus sit.', 'iusto-in-aliquid-suscipit-commodi-repellendus-natus-sit', '<p>Sit vitae cum molestiae enim. Laudantium voluptas neque voluptatem sint.</p>', 'Published', NULL, '2024-10-21 08:28:19', '2024-10-21 08:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, NULL, 'Tampilann Web', 'tampilann-web', '<h3>1. <strong>Desain Responsif</strong></h3><p>Salah satu elemen paling penting dalam sebuah website modern adalah <strong>desain responsif</strong>. Hal ini memastikan bahwa tampilan website dapat menyesuaikan dengan berbagai ukuran layar, mulai dari smartphone, tablet, hingga desktop. Dengan memanfaatkan teknologi <strong>CSS media queries</strong>, elemen-elemen di dalam web dapat otomatis menyesuaikan tata letak, ukuran teks, gambar, dan konten lainnya sesuai dengan perangkat yang digunakan oleh pengguna.</p><p>Jika website saat ini kurang responsif, pengguna yang mengakses melalui ponsel mungkin merasa kesulitan untuk membaca konten atau mengklik tombol. Implementasi desain responsif tidak hanya akan memperbaiki tampilan, tetapi juga meningkatkan pengalaman pengguna secara keseluruhan.</p>', 'Pending', NULL, '2024-10-21 23:51:26', '2024-10-21 23:51:26', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 1, 'test nova', 'test-nova', '<p>description nova</p>', 'In Approval', NULL, '2024-10-31 23:43:41', '2024-10-31 23:43:41', 'before nova', 'after nova', 'benefit nova', NULL, NULL, NULL),
(15, 1, 2, 'test approval', 'test-approval', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.8);\">The origins of the information on this site may be internal or external to Progress Software Corporation (“Progress”). Progress Software Corporation makes all reasonable efforts to verify this information. However, the information provided is for your information only. Progress Software Corporation makes no explicit or implied claims to the validity of this information.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgba(0, 0, 0, 0.8);\">Any sample code provided on this site is not supported under any Progress support program or service. The sample code is provided on an \"AS IS\" basis. Progress makes no warranties, express or implied, and disclaims all implied warranties including, without limitation, the implied warranties of merchantability or of fitness for a particular purpose. The entire risk arising out of the use or performance of the sample code is borne by the user. In no event shall Progress, its employees, or anyone else involved in the creation, production, or delivery of the code be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample code, even if Progress has been advised of the possibility of such damages.</span></p><p><br></p>', 'In Approval', '[{\"level\": 3, \"approver_nik\": \"S0905\"}]', '2024-11-03 23:44:10', '2024-11-03 23:44:10', 'before best practice', 'after best practice', NULL, 'google', NULL, NULL),
(16, 1, 1, 'asas', 'asas', '<p>asasasxxax</p>', 'In Approval', '[{\"level\": 1, \"approver_nik\": \"AC1166\"}, {\"level\": 2, \"approver_nik\": \"D0437\"}, {\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 00:20:41', '2024-11-04 00:20:41', 'as', 'after nova', 'benefit nova', NULL, NULL, NULL),
(17, 986, 3, 'test dimas', 'test-dimas', '<p>test imp</p>', 'In Approval', '[{\"level\": 2, \"approver_nik\": \"AC1166\"}, {\"level\": 2, \"approver_nik\": \"D0437\"}, {\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 00:37:21', '2024-11-04 00:37:21', 'test imp', 'test imp', NULL, NULL, 'test imp', NULL),
(18, 986, 3, 'test dimas 2', 'test-dimas-2', '<p>test dimas 2</p>', 'In Approval', '[{\"level\": 2, \"approver_nik\": \"AC1166\"}, {\"level\": 2, \"approver_nik\": \"D0437\"}, {\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 00:43:10', '2024-11-04 00:43:10', 'test dimas 2', 'test dimas 2', NULL, NULL, 'test dimas 2', NULL),
(19, 986, 2, 'test dimas 3', 'test-dimas-3', '<p>test dimas 3</p>', 'In Approval', '[{\"level\": 2, \"approver_nik\": \"D0437\"}, {\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 00:49:10', '2024-11-04 00:49:10', 'test dimas 3', 'test dimas 3', NULL, 'test dimas 3', NULL, NULL),
(20, 1, 1, 'test level biasa', 'test-level-biasa', '<p>test level biasa</p>', 'In Approval', '[{\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 00:51:44', '2024-11-04 01:17:09', 'test level biasa', 'test level biasa', 'test level biasa', NULL, NULL, NULL),
(21, 1, 1, 'test biasa lagi', 'test-biasa-lagi', '<p>test biasa lagi</p>', 'In Approval', '[{\"level\": 2, \"approver_nik\": \"D0437\"}, {\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 01:12:33', '2024-11-04 01:13:04', 'test biasa lagi', 'test biasa lagi', 'test biasa lagi', NULL, NULL, NULL),
(22, 984, 1, 'test arief', 'test-arief', '<p>test arief</p>', 'In Approval', '[{\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 01:19:02', '2024-11-04 01:19:02', 'test arief', 'test arief', 'test arief', NULL, NULL, NULL),
(23, 1207, 1, 'test sam', 'test-sam', '<p>test sam</p>', 'Published', '[]', '2024-11-04 03:06:32', '2024-11-05 19:24:44', 'test sam', 'test sam', 'test sam', NULL, NULL, NULL),
(24, 1206, 3, 'test andika', 'test-andika', '<p>test andika</p>', 'In Approval', '[{\"level\": 3, \"approver_nik\": \"T0932\"}]', '2024-11-04 03:12:26', '2024-11-04 03:12:26', 'test andika', 'test andika', NULL, NULL, 'test andika', NULL),
(25, 1208, 1, 'test ade', 'test-ade', '<p>test ade</p>', 'Rejected', '[]', '2024-11-05 01:01:32', '2024-11-05 01:20:46', 'test ade', 'test ade', 'test ade', NULL, NULL, NULL),
(26, 1208, 2, 'test ade ke 2', 'test-ade-ke-2', '<p>test ade ke 2</p>', 'Published', '[]', '2024-11-05 01:26:51', '2024-11-05 01:34:21', 'test ade ke 2', 'test ade ke 2', NULL, 'test ade ke 2', NULL, NULL),
(27, 1208, 4, 'test ade untuk notification', 'test-ade-untuk-notification', '<p>test ade untuk notification</p>', 'Rejected', '[]', '2024-11-05 03:11:09', '2024-11-05 23:22:52', 'test ade untuk notification', 'test ade untuk notification', NULL, NULL, NULL, 'test ade untuk notification'),
(28, 1091, 3, 'test tamara', 'test-tamara', '<p>test tamara</p>', 'In Approval', '[{\"approver_nik\":\"T0930\",\"level\":1},{\"approver_nik\":\"T0932\",\"level\":3}]', '2024-11-05 19:04:17', '2024-11-05 19:04:17', 'test tamara', 'test tamara', NULL, NULL, 'test tamara', NULL),
(29, 1215, 1, 'test rahman purchasing', 'test-rahman-purchasing', '<p>test rahman purchasing</p>', 'In Approval', '[{\"approver_nik\":\"T0930\",\"level\":1},{\"approver_nik\":\"T0932\",\"level\":3}]', '2024-11-05 19:24:39', '2024-11-05 19:24:39', 'test rahman purchasing', 'test rahman purchasing', 'test rahman purchasing', NULL, NULL, NULL),
(30, 1208, 4, 'test ade lagi', 'test-ade-lagi', '<p>test ade lagi</p>', 'Published', '[]', '2024-11-05 21:29:49', '2024-11-10 20:04:38', 'test ade lagi', 'test ade lagi', NULL, NULL, NULL, 'test ade lagi'),
(31, 1206, 1, 'IT', 'it', '<p>teswet</p>', 'In Approval', '[{\"approver_nik\":\"X1031\",\"level\":2},{\"approver_nik\":\"T0932\",\"level\":3}]', '2024-11-05 23:22:20', '2024-11-05 23:22:20', 'test', 'test1', '1000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `idea_approvals`
--

CREATE TABLE `idea_approvals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idea_id` bigint(20) UNSIGNED NOT NULL,
  `approval_id` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `note` text DEFAULT NULL,
  `approval_stage` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `idea_approvals`
--

INSERT INTO `idea_approvals` (`id`, `idea_id`, `approval_id`, `status`, `note`, `approval_stage`, `created_at`, `updated_at`) VALUES
(1, 20, 'AC1166', 'approved', 'Approved via UI', 'Level 1', '2024-11-04 00:54:41', '2024-11-04 00:54:41'),
(2, 21, 'AC1166', 'approved', 'Approved via UI', 'Level 1', '2024-11-04 01:13:04', '2024-11-04 01:13:04'),
(3, 20, 'D0437', 'approved', 'Approved via UI', 'Level 2', '2024-11-04 01:17:09', '2024-11-04 01:17:09'),
(4, 23, 'AD1227', 'approved', 'Approved via UI', 'Level 1', '2024-11-04 03:07:28', '2024-11-04 03:07:28'),
(5, 25, 'AD1227', 'rejected', 'Rejected via UI', 'Level 1', '2024-11-05 01:20:46', '2024-11-05 01:20:46'),
(6, 26, 'AD1227', 'approved', 'Approved via UI', 'Level 1', '2024-11-05 01:27:07', '2024-11-05 01:27:07'),
(7, 26, 'T0932', 'approved', 'Approved via UI', 'Level 3', '2024-11-05 01:34:21', '2024-11-05 01:34:21'),
(8, 23, 'T0932', 'approved', 'Approved via UI', 'Level 3', '2024-11-05 19:24:44', '2024-11-05 19:24:44'),
(9, 27, 'AD1227', 'rejected', 'Rejected via UI', 'Level 1', '2024-11-05 23:22:52', '2024-11-05 23:22:52'),
(10, 30, 'AD1227', 'approved', 'Approved via UI', 'Level 1', '2024-11-05 23:22:58', '2024-11-05 23:22:58'),
(11, 30, 'X1031', 'approved', 'Approved via UI', 'Level 2', '2024-11-07 00:19:04', '2024-11-07 00:19:04'),
(12, 30, 'T0932', 'approved', 'Approved via UI', 'Level 3', '2024-11-10 20:04:38', '2024-11-10 20:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `idea_files`
--

CREATE TABLE `idea_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idea_id` bigint(20) UNSIGNED NOT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `idea_files`
--

INSERT INTO `idea_files` (`id`, `idea_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/ideas/Ag1111-test-1.png', '2024-10-16 20:50:39', '2024-10-16 20:50:39'),
(2, 13, 'uploads/ideas/Ag1111-tampilann-web-1.png', '2024-10-21 23:51:26', '2024-10-21 23:51:26'),
(3, 13, 'uploads/ideas/Ag1111-tampilann-web-2.png', '2024-10-21 23:51:26', '2024-10-21 23:51:26'),
(4, 13, 'uploads/ideas/Ag1111-tampilann-web-3.png', '2024-10-21 23:51:26', '2024-10-21 23:51:26'),
(5, 14, 'uploads/ideas/Ag1111-test-nova-1.png', '2024-10-31 23:43:41', '2024-10-31 23:43:41'),
(6, 14, 'uploads/ideas/Ag1111-test-nova-2.png', '2024-10-31 23:43:41', '2024-10-31 23:43:41'),
(7, 15, 'uploads/ideas/Ag1111-test-approval-1.jpeg', '2024-11-03 23:44:10', '2024-11-03 23:44:10'),
(8, 15, 'uploads/ideas/Ag1111-test-approval-2.jpeg', '2024-11-03 23:44:10', '2024-11-03 23:44:10'),
(9, 16, 'uploads/ideas/Ag1111-asas-1.jpeg', '2024-11-04 00:20:41', '2024-11-04 00:20:41'),
(10, 17, 'uploads/ideas/AC1166-test-dimas-1.jpeg', '2024-11-04 00:37:21', '2024-11-04 00:37:21'),
(11, 18, 'uploads/ideas/AC1166-test-dimas-2-1.jpeg', '2024-11-04 00:43:10', '2024-11-04 00:43:10'),
(12, 19, 'uploads/ideas/AC1166-test-dimas-3-1.jpeg', '2024-11-04 00:49:10', '2024-11-04 00:49:10'),
(13, 20, 'uploads/ideas/Ag1111-test-level-biasa-1.png', '2024-11-04 00:51:45', '2024-11-04 00:51:45'),
(14, 23, 'uploads/ideas/AE1244-test-sam-1.jpeg', '2024-11-04 03:06:32', '2024-11-04 03:06:32'),
(15, 24, 'uploads/ideas/AD1227-test-andika-1.jpeg', '2024-11-04 03:12:26', '2024-11-04 03:12:26'),
(16, 24, 'uploads/ideas/AD1227-test-andika-1.png', '2024-11-04 03:12:26', '2024-11-04 03:12:26'),
(17, 25, 'uploads/ideas/AG1315-test-ade-1.jpeg', '2024-11-05 01:01:32', '2024-11-05 01:01:32'),
(18, 25, 'uploads/ideas/AG1315-test-ade-1.png', '2024-11-05 01:01:32', '2024-11-05 01:01:32'),
(19, 26, 'uploads/ideas/AG1315-test-ade-ke-2-1.jpeg', '2024-11-05 01:26:51', '2024-11-05 01:26:51'),
(20, 26, 'uploads/ideas/AG1315-test-ade-ke-2-1.png', '2024-11-05 01:26:51', '2024-11-05 01:26:51'),
(21, 30, 'uploads/ideas/AG1315-test-ade-lagi-1.png', '2024-11-05 21:29:49', '2024-11-05 21:29:49'),
(22, 30, 'uploads/ideas/AG1315-test-ade-lagi-1.jpg', '2024-11-05 21:29:49', '2024-11-05 21:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `idea_likes`
--

CREATE TABLE `idea_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idea_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `idea_likes`
--

INSERT INTO `idea_likes` (`id`, `idea_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 2, 1, NULL, NULL),
(15, 4, 1, NULL, NULL),
(16, 7, 1, NULL, NULL),
(17, 1, 1, NULL, NULL),
(19, 10, 1, NULL, NULL),
(20, 13, 1, NULL, NULL),
(22, 4, 1206, NULL, NULL),
(24, 7, 1206, NULL, NULL),
(29, 26, 984, NULL, NULL),
(30, 4, 984, NULL, NULL),
(31, 7, 1208, NULL, NULL),
(32, 4, 1208, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'I', 'i', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(2, 'II', 'ii', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(3, 'III', 'iii', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(4, 'IV', 'iv', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(5, 'V', 'v', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(6, 'VI', 'vi', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(7, 'VII', 'vii', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(8, 'Developer', 'developer', '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(17, 'VIII', 'viii', '2024-10-31 23:59:47', '2024-10-31 23:59:47');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_09_042713_create_permission_tables', 1),
(6, '2024_10_09_043245_create_levels_table', 2),
(7, '2024_10_09_043246_create_departments_table', 2),
(8, '2024_10_09_043247_create_positions_table', 2),
(9, '2024_10_09_043251_create_categories_table', 2),
(10, '2024_10_09_071058_add_manager_and_department_to_users_table', 3),
(11, '2024_10_09_045133_create_ideas_table', 4),
(12, '2024_10_09_064916_create_idea_approvals_table', 4),
(13, '2024_10_09_064933_create_idea_files_table', 4),
(14, '2024_10_09_064944_create_idea_likes_table', 4),
(15, '2024_10_09_075621_add_avatar_to_table_users', 5),
(16, '2024_10_28_061205_add_dynamic_fields_to_ideas_table', 6),
(17, '2024_11_01_030241_create_section_table', 7),
(20, '2024_11_01_030947_add_section_id_to_table_users', 8),
(21, '2024_11_04_064031_add_approval_path_to_ideas_table', 9),
(22, '2024_11_05_095747_create_notifications_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(13, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 10),
(13, 'App\\Models\\User', 984),
(13, 'App\\Models\\User', 1206),
(13, 'App\\Models\\User', 1208),
(14, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 3),
(16, 'App\\Models\\User', 4),
(17, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 3),
(17, 'App\\Models\\User', 4),
(17, 'App\\Models\\User', 1289),
(18, 'App\\Models\\User', 980),
(18, 'App\\Models\\User', 981),
(18, 'App\\Models\\User', 982),
(18, 'App\\Models\\User', 983),
(18, 'App\\Models\\User', 984),
(18, 'App\\Models\\User', 985),
(18, 'App\\Models\\User', 986),
(18, 'App\\Models\\User', 1206),
(18, 'App\\Models\\User', 1289),
(18, 'App\\Models\\User', 1290),
(18, 'App\\Models\\User', 1291),
(18, 'App\\Models\\User', 1292),
(19, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 10),
(19, 'App\\Models\\User', 980),
(19, 'App\\Models\\User', 984),
(19, 'App\\Models\\User', 1091),
(19, 'App\\Models\\User', 1206),
(19, 'App\\Models\\User', 1207),
(19, 'App\\Models\\User', 1208),
(19, 'App\\Models\\User', 1215);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notifiable_type`, `notifiable_id`, `type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('20ceb624-3fe3-40ad-bf73-a7fb8637b191', 'App\\Models\\User', 1206, 'App\\Notifications\\IdeaNotification', '{\"user_id\":1206,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"test ade lagi needs your approval.\",\"user_id\":1208}}', NULL, '2024-11-05 21:29:49', '2024-11-05 21:29:49'),
('37338180-c947-4e0f-bcb3-02a3c78827d9', 'App\\Models\\User', 983, 'App\\Notifications\\IdeaNotification', '{\"user_id\":983,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"Idea with title \\\"test tamara\\\" needs your approval.\"}}', NULL, '2024-11-05 19:04:17', '2024-11-05 19:04:17'),
('4010e0f3-3b17-4bd4-a5ae-9e3ba5b9cb17', 'App\\Models\\User', 1, 'App\\Notifications\\IdeaNotification', '{\"user_id\":1,\"data\":{\"title\":\"Idea Liked\",\"message\":\"Your idea has been liked by Ade Rusmana\"}}', NULL, '2024-11-05 08:58:09', '2024-11-05 08:58:09'),
('5381df19-af24-43c4-97f3-b846e09406bb', 'App\\Models\\User', 984, 'App\\Notifications\\IdeaNotification', '{\"user_id\":984,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"Idea with title \\\"test tamara\\\" needs your approval.\"}}', NULL, '2024-11-05 19:04:17', '2024-11-05 19:04:17'),
('667ddf1d-8f34-4b47-9017-eb3006a7a24d', 'App\\Models\\User', 984, 'App\\Notifications\\IdeaNotification', '{\"user_id\":984,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"Idea with title \\\"test rahman purchasing\\\" needs your approval.\"}}', NULL, '2024-11-05 19:24:39', '2024-11-05 19:24:39'),
('6c4ce684-a2ad-483e-8811-fa3a111994a1', 'App\\Models\\User', 4, 'App\\Notifications\\IdeaNotification', '{\"user_id\":4,\"data\":{\"title\":\"Idea Liked\",\"message\":\"Totam omnis illo sint et eveniet. has been liked by Ade Rusmana\"}}', NULL, '2024-11-06 00:50:26', '2024-11-06 00:50:26'),
('89780e99-ccdb-43e5-af9d-3635326b38b3', 'App\\Models\\User', 1290, 'App\\Notifications\\IdeaNotification', '{\"user_id\":1290,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"IT needs your approval.\",\"user_id\":1206}}', NULL, '2024-11-05 23:22:20', '2024-11-05 23:22:20'),
('dd2d8e15-7c4a-4b68-a4cf-83052827249f', 'App\\Models\\User', 983, 'App\\Notifications\\IdeaNotification', '{\"user_id\":983,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"Idea with title \\\"test rahman purchasing\\\" needs your approval.\"}}', NULL, '2024-11-05 19:24:39', '2024-11-05 19:24:39'),
('faa5a85f-536f-40ad-894c-2a15cfaa4bca', 'App\\Models\\User', 984, 'App\\Notifications\\IdeaNotification', '{\"user_id\":984,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"Idea with title \\\"test ade untuk notification\\\" needs your approval.\"}}', '2024-11-05 03:21:56', '2024-11-05 03:11:09', '2024-11-05 03:21:56'),
('fdd94d29-9702-4fdb-a87a-03c0f9722143', 'App\\Models\\User', 1206, 'App\\Notifications\\IdeaNotification', '{\"user_id\":1206,\"data\":{\"title\":\"New Idea for Approval\",\"message\":\"Idea with title \\\"test ade untuk notification\\\" needs your approval.\"}}', '2024-11-05 06:43:08', '2024-11-05 03:11:09', '2024-11-05 06:43:08');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(61, 'view role', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(62, 'create role', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(63, 'update role', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(64, 'delete role', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(65, 'view permission', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(66, 'create permission', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(67, 'update permission', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(68, 'delete permission', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(69, 'view user', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(70, 'create user', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(71, 'update user', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(72, 'delete user', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(73, 'view position', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(74, 'create position', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(75, 'update position', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(76, 'delete position', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(77, 'view level', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(78, 'create level', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(79, 'update level', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(80, 'delete level', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(81, 'view data master', 'web', '2024-11-03 21:55:32', '2024-11-03 21:55:32'),
(82, 'view users master', 'web', '2024-11-03 21:55:40', '2024-11-03 21:55:40'),
(83, 'view category master', 'web', '2024-11-03 21:55:51', '2024-11-03 21:55:51'),
(84, 'view department master', 'web', '2024-11-03 21:56:01', '2024-11-03 21:56:01'),
(85, 'view position master', 'web', '2024-11-03 21:56:23', '2024-11-03 21:56:23'),
(86, 'view level master', 'web', '2024-11-03 21:56:32', '2024-11-03 21:56:32'),
(87, 'view permission master', 'web', '2024-11-03 21:56:42', '2024-11-03 21:56:42'),
(88, 'view role master', 'web', '2024-11-03 21:56:51', '2024-11-03 21:56:51'),
(89, 'view section master', 'web', '2024-11-03 21:57:03', '2024-11-03 21:57:03'),
(90, 'view approver master', 'web', '2024-11-03 21:59:29', '2024-11-03 21:59:29'),
(91, 'view idea', 'web', '2024-11-03 21:59:37', '2024-11-03 21:59:37'),
(92, 'view idea approval', 'web', '2024-11-03 21:59:47', '2024-11-03 21:59:47');

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
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `slug`, `department_id`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'developer', 9, 8, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(2, 'General Manager', 'general-manager', 1, 17, '2024-10-09 00:39:36', '2024-10-31 23:59:59'),
(3, 'Department Head Finance', 'department-head-finance', 2, 7, '2024-10-09 00:39:36', '2024-10-31 23:57:05'),
(4, 'Assistant Manager MIS', 'assistant-manager-mis', 2, 5, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(5, 'Manager Accounting & Tax', 'manager-accounting-tax', 2, 5, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(6, 'Manager Bussiness Opr. Control', 'manager-bussiness-opr-control', 2, 5, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(7, 'IT Support', 'it-support', 2, 3, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(8, 'Web Developer', 'web-developer', 2, 3, '2024-10-09 00:39:36', '2024-10-31 23:57:20'),
(10, 'Department Head Supply Chain', 'department-head-supply-chain', 8, 6, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(11, 'Manager - Logistic', 'manager-logistic', 8, 6, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(12, 'Manager - PPIC', 'manager-ppic', 8, 6, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(13, 'Manager - Purchasing', 'manager-purchasing', 2, 6, '2024-10-09 00:39:36', '2024-11-01 01:07:03'),
(14, 'Supervisor - Export', 'supervisor-export', 8, 5, '2024-10-09 00:39:36', '2024-10-09 00:39:36'),
(16, 'Manager - Creative Bussines Tranformation', 'manager-creative-bussines-tranformation', 2, 6, '2024-10-31 23:50:45', '2024-10-31 23:50:45'),
(17, 'Senior Advisor', 'senior-advisor', 4, 7, '2024-10-31 23:55:12', '2024-10-31 23:55:12'),
(18, 'Assistant Manager-Batch Refinery', 'assistant-manager-batch-refinery', 4, 5, '2024-10-31 23:55:35', '2024-10-31 23:55:35'),
(19, 'Manager - Marsho Plant', 'manager-marsho-plant', 4, 6, '2024-10-31 23:55:51', '2024-10-31 23:55:51'),
(20, 'Manager - Business Opr. Control', 'manager-business-opr-control', 2, 6, '2024-11-01 00:01:10', '2024-11-01 00:01:10'),
(21, 'Supervisor - Business Opr. Controll', 'supervisor-business-opr-controll', 2, 4, '2024-11-01 00:01:24', '2024-11-01 00:01:24'),
(22, 'Manager - International Business', 'manager-international-business', 7, 6, '2024-11-01 00:02:54', '2024-11-01 00:02:54'),
(23, 'International Sales Executive', 'international-sales-executive', 7, 5, '2024-11-01 00:03:13', '2024-11-01 00:03:13'),
(24, 'Manager - Industrial & Key Account', 'manager-industrial-key-account', 7, 6, '2024-11-01 00:03:47', '2024-11-01 00:03:47'),
(25, 'Asst. Mgr - Key Account&Industrial', 'asst-mgr-key-accountindustrial', 7, 5, '2024-11-01 00:04:22', '2024-11-01 00:04:22'),
(26, 'Asst. Mgr - Industrial Commercial', 'asst-mgr-industrial-commercial', 7, 5, '2024-11-01 00:04:33', '2024-11-01 00:04:33'),
(27, 'Manager - Technical & Application', 'manager-technical-application', 7, 6, '2024-11-01 00:05:02', '2024-11-01 00:05:02'),
(28, 'Manager - Accounting & Tax', 'manager-accounting-tax', 3, 6, '2024-11-01 00:20:55', '2024-11-01 00:20:55'),
(29, 'Regional Sales Manager - Head of East Zone', 'regional-sales-manager-head-of-east-zone', 7, 6, '2024-11-01 00:22:43', '2024-11-01 00:22:43'),
(30, 'Dept. Head - Sales & Marketing', 'dept-head-sales-marketing', 7, 7, '2024-11-01 00:26:57', '2024-11-01 00:26:57'),
(31, 'Data Analis & Sales Support Specialist Supervisor', 'data-analis-sales-support-specialist-supervisor', 7, 4, '2024-11-01 00:27:16', '2024-11-01 00:27:16'),
(32, 'Staff', 'staff', 9, 3, '2024-11-01 00:32:05', '2024-11-01 00:32:05'),
(33, 'Manager - Engineering & Maintenance', 'manager-engineering-maintenance', 1, 6, '2024-11-01 00:51:55', '2024-11-01 00:51:55'),
(34, 'Manager HCD', 'manager-hcd', 3, 6, '2024-11-01 00:52:47', '2024-11-01 00:52:47'),
(35, 'Asst.Manager HSE', 'asstmanager-hse', 5, 5, '2024-11-01 00:53:28', '2024-11-01 00:53:28'),
(36, 'Dept. Head - Quality Mgmt & HSE', 'dept-head-quality-mgmt-hse', 5, 7, '2024-11-01 00:54:09', '2024-11-01 00:54:09'),
(37, 'Marketing Manager', 'marketing-manager', 7, 6, '2024-11-01 00:56:14', '2024-11-01 00:56:14'),
(38, 'RTM & Channel Development Ass. Manager', 'rtm-channel-development-ass-manager', 7, 5, '2024-11-01 00:56:37', '2024-11-01 00:56:37'),
(39, 'Brand Ambasador Gold Bullion', 'brand-ambasador-gold-bullion', 7, 6, '2024-11-01 00:58:53', '2024-11-01 00:58:53'),
(40, 'Assistant Marketing Manager', 'assistant-marketing-manager', 7, 5, '2024-11-01 00:59:07', '2024-11-01 00:59:07'),
(41, 'QA Supervisor', 'qa-supervisor', 5, 4, '2024-11-01 01:00:39', '2024-11-01 01:00:39'),
(42, 'QA Manager', 'qa-manager', 5, 6, '2024-11-01 01:01:17', '2024-11-01 01:01:17'),
(43, 'R & D Assistant Manager', 'r-d-assistant-manager', 6, 5, '2024-11-01 01:02:04', '2024-11-01 01:02:04'),
(44, 'Supervisor - R & D B', 'supervisor-r-d-b', 6, 4, '2024-11-01 01:02:17', '2024-11-01 01:02:17'),
(45, 'R&D Packaging & Regulatory', 'rd-packaging-regulatory', 6, 3, '2024-11-01 01:02:31', '2024-11-01 01:02:31'),
(46, 'R&D Application & Sensory', 'rd-application-sensory', 6, 3, '2024-11-01 01:02:41', '2024-11-01 01:02:41'),
(47, 'Manager - R & D', 'manager-r-d', 6, 6, '2024-11-01 01:02:58', '2024-11-01 01:02:58'),
(48, 'Supervisor-Tax', 'supervisor-tax', 2, 4, '2024-11-01 01:05:19', '2024-11-01 01:05:19'),
(49, 'Asst. Mgr - Tax', 'asst-mgr-tax', 2, 5, '2024-11-01 01:05:41', '2024-11-01 01:05:41'),
(50, 'Asst. Mgr - Finance & Adm.', 'asst-mgr-finance-adm', 2, 5, '2024-11-01 01:06:03', '2024-11-01 01:06:03'),
(51, 'Supervisor - Account Payable', 'supervisor-account-payable', 2, 4, '2024-11-01 01:06:19', '2024-11-01 01:06:19'),
(52, 'Jr. Secretary', 'jr-secretary', 2, 3, '2024-11-01 01:06:46', '2024-11-01 01:06:46'),
(53, 'Receptionist', 'receptionist', 2, 3, '2024-11-01 01:07:37', '2024-11-01 01:07:37'),
(54, 'Supervisor - Comp. & Benefit', 'supervisor-comp-benefit', 3, 4, '2024-11-01 01:08:03', '2024-11-01 01:08:03'),
(55, 'People & Organization Development Supervisor', 'people-organization-development-supervisor', 3, 4, '2024-11-01 01:08:42', '2024-11-01 01:08:42'),
(56, 'Talent Acquisition Supervisor', 'talent-acquisition-supervisor', 3, 4, '2024-11-01 01:08:53', '2024-11-01 01:08:53'),
(57, 'Chief Security', 'chief-security', 3, 4, '2024-11-01 01:09:39', '2024-11-01 01:09:39'),
(58, 'Manager - Logistic', 'manager-logistic', 8, 6, '2024-11-01 01:13:44', '2024-11-01 01:13:44'),
(59, 'Asst. Mgr - QC', 'asst-mgr-qc', 5, 5, '2024-11-01 01:14:21', '2024-11-01 01:14:21'),
(60, 'Key Account Supervisor', 'key-account-supervisor', 7, 4, '2024-11-01 01:15:35', '2024-11-01 01:15:35'),
(61, 'Regional Sales Manager - Head of West Zone', 'regional-sales-manager-head-of-west-zone', 7, 6, '2024-11-01 01:19:23', '2024-11-01 01:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(13, 'super-admin', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(14, 'admin', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(15, 'staff', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(16, 'user', 'web', '2024-10-09 00:39:35', '2024-10-09 00:39:35'),
(17, 'depHead', 'web', '2024-10-15 08:13:15', '2024-10-15 08:13:17'),
(18, 'approver', 'web', '2024-11-03 21:49:46', '2024-11-03 21:49:46'),
(19, 'user_idea', 'web', '2024-11-03 22:00:48', '2024-11-03 22:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(61, 13),
(61, 14),
(62, 13),
(62, 14),
(63, 13),
(63, 14),
(64, 13),
(65, 13),
(65, 14),
(66, 13),
(66, 14),
(67, 13),
(68, 13),
(69, 13),
(69, 14),
(70, 13),
(70, 14),
(71, 13),
(71, 14),
(72, 13),
(73, 13),
(74, 13),
(75, 13),
(76, 13),
(77, 13),
(78, 13),
(79, 13),
(80, 13),
(81, 13),
(82, 13),
(83, 13),
(84, 13),
(85, 13),
(86, 13),
(87, 13),
(88, 13),
(89, 13),
(90, 13),
(91, 13),
(91, 18),
(91, 19),
(92, 13),
(92, 18);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Engineering & Maintenance', '2024-11-01 03:50:00', '2024-11-01 03:50:11'),
(2, 'HCD', '2024-11-01 03:50:02', '2024-11-01 03:50:11'),
(4, 'Purchasing', '2024-11-01 03:50:03', '2024-11-01 03:50:10'),
(5, 'Creative Business Transformation', '2024-11-01 03:50:04', '2024-11-01 03:50:09'),
(6, 'Export Admin', '2024-11-01 03:50:04', '2024-11-01 03:50:09'),
(7, 'Batch Refinery', '2024-11-01 03:50:06', '2024-11-01 03:50:08'),
(8, 'Business Controller', '2024-11-01 03:50:05', '2024-11-01 03:50:08'),
(9, 'East Region', '2024-11-01 03:50:06', '2024-11-01 03:50:07'),
(10, 'Finance', '2024-11-01 04:21:19', '2024-11-01 04:21:20'),
(11, 'GA', '2024-11-01 04:26:50', '2024-11-01 04:26:51'),
(12, 'HSE', '2024-11-01 04:26:51', '2024-11-01 04:26:52'),
(13, 'Industrial & Key Account', '2024-11-01 04:26:53', '2024-11-01 04:26:53'),
(14, 'International Sales', '2024-11-01 04:26:54', '2024-11-01 04:26:54'),
(15, 'Logistic', '2024-11-01 04:26:56', '2024-11-01 04:26:55'),
(16, 'Marketing', '2024-11-01 04:26:57', '2024-11-01 04:26:56'),
(17, 'Marsho', '2024-11-01 04:26:57', '2024-11-01 04:27:06'),
(18, 'MIS', '2024-11-01 04:26:58', '2024-11-01 04:27:05'),
(19, 'PPIC', '2024-11-01 04:26:59', '2024-11-01 04:27:05'),
(20, 'QA', '2024-11-01 04:26:59', '2024-11-01 04:27:04'),
(21, 'QC', '2024-11-01 04:27:00', '2024-11-01 04:27:04'),
(22, 'R & D', '2024-11-01 04:27:00', '2024-11-01 04:27:03'),
(23, 'RTM', '2024-11-01 04:27:01', '2024-11-01 04:27:03'),
(24, 'Sales Admin', '2024-11-01 04:27:01', '2024-11-01 04:27:02'),
(25, 'Technical', '2024-11-01 04:27:07', '2024-11-01 04:27:09'),
(26, 'West Region', '2024-11-01 04:27:08', '2024-11-01 04:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `department_id`, `position_id`, `section_id`) VALUES
(1, 'Ag1111', 'Admin', 'admin@gmail.com', '$2y$12$e/B.S5be4qboh6hKVi7I7.NHJJNKBnywioTfSCEkpZU/K0LSAzq7.', NULL, '2024-10-09 00:39:35', '2024-11-04 00:16:17', 2, 3, 7),
(2, 'Ag2222', 'Manager', 'manager@gmail.com', '$2y$12$IKw.O34doXQsTQz.EiDlVeUAVhCsJu6kkwzAGrc10dsyrZkkSnXNK', NULL, '2024-10-09 00:39:36', '2024-10-09 00:39:36', 3, 3, 1),
(3, 'Ag3333', 'Staff', 'staff@gmail.com', '$2y$12$jJ.hZlJJBtl2IA/Xy7Lc.uPR/WYdnuIxQvegs/QCIBFjbtHtoDve6', NULL, '2024-10-09 00:39:36', '2024-10-09 00:39:36', 2, 3, 1),
(4, 'Ag4444', 'Karyawan', 'karyawan@gmail.com', '$2y$12$Lk0TaKuvGxvfc1v6g6gawuEEqdWikIzIfAE/T4L7y9XfRqOgdUpE.', NULL, '2024-10-09 00:39:36', '2024-10-09 00:39:36', 2, 3, 1),
(10, 'AG1555', 'ade rusmana', 'ade@gmail.com', '$2y$12$t/XmteUvcdBfYXZ07u0BB.QQ2gOjlyzz9wYFu1s.h76zRaQWEe3K.', NULL, '2024-10-14 21:24:45', '2024-10-14 21:24:45', 6, 1, 7),
(980, 'S0905', 'Jimmy Ferdinand', 'jimmy@smii.co.id', '$2y$12$qVntPsPT7NZOdF.tgN7chupqfTk3KXP1EdKFwlBnuy8Wwf/S/J9jq', '', '2024-11-03 19:07:47', '2024-11-03 19:07:47', 2, 32, 1),
(981, 'AE1270', 'Syaiful Syahrizal', 'syaiful@smii.co.id', '$2y$12$QXmp.o3Qa6AxVvFADBxdtOKK1mZtYL8kWUr4e50wgptnNB.v5smrq', '', '2024-11-03 19:07:48', '2024-11-03 19:07:48', 3, 14, 2),
(982, 'M0812', 'Djarot Hendrawan', 'djarot@smii.co.id', '$2y$12$NY7BuQw9RYFtRpKUcgm06Occfk4DwwzThWEieQgdzABhLA64d3Lmu', '', '2024-11-03 19:07:48', '2024-11-03 19:07:48', 4, 6, 17),
(983, 'T0930', 'Linda Rianty', 'linda@smii.co.id', '$2y$12$3ZPDu8gQsaEJMaIu.T1Uvu9qdfql1Y2j2whvHJKkUyC2Zkebq2zqu', '', '2024-11-03 19:07:48', '2024-11-03 19:07:48', 4, 7, 4),
(984, 'T0932', 'Arief Fazry', 'arief@smii.co.id', '$2y$12$BBSdg.Ym6X1d8vnRavSxWufJqwrlpCZ3n./ploMjw3NZnfoFuIVjS', '', '2024-11-03 19:07:48', '2024-11-03 19:07:48', 2, 7, 5),
(985, 'AE1279', 'Fitriyah Rahayu', 'fitriyah@smii.co.id', '$2y$12$i4sZ7JCsPhy2nlxvy0uUF.Yt2nJG4SjbrPuhNUnzATW38xZKTPp9S', '', '2024-11-03 19:07:48', '2024-11-03 19:07:48', 3, 6, 6),
(986, 'AC1166', 'Dimas Supriyadi', 'dimas@smii.co.id', '$2y$12$KlSfcIvF1DkCQK9VYnP62.7JLY0W0qubdi0k0eTn73JENOABC/ddS', '', '2024-11-03 19:07:49', '2024-11-03 19:07:49', 3, 14, 7),
(987, 'A0121', 'Mujiyono', 'mujiyono@smii.co.id', '$2y$12$uo.OXFp2voBJDnY3uA7gjOsCsyLHPcIaDHOdY8cvNj3I4DRQyD6Ly', '', '2024-11-03 19:07:49', '2024-11-03 19:07:49', 1, 32, 7),
(988, 'AE1275', 'Ahmad Suryalatif', 'ahmad@smii.co.id', '$2y$12$/xN1CVHzrr1dci8mqxlDRuuG2uud1AIpUHCnj3MkVHOcHQ7l92xgm', '', '2024-11-03 19:07:49', '2024-11-03 19:07:49', 1, 13, 7),
(989, 'A0163', 'Sutikno', 'sutikno@smii.co.id', '$2y$12$XzjXyNhrLrojsrc6v37Z4e1Ju5s/sY2wmMjSosl3hRtXxPFWjEZyu', '', '2024-11-03 19:07:49', '2024-11-03 19:07:49', 5, 5, 7),
(990, 'F0629', 'Ali Maksum', 'ali@smii.co.id', '$2y$12$tjSywcx05/5rC51VqwYUW.ToAqHNgJv3AV3fsoT6bWgaNcFrP/h0q', '', '2024-11-03 19:07:49', '2024-11-03 19:07:49', 7, 6, 7),
(991, 'I0726', 'Asep Sopiana', 'asep@smii.co.id', '$2y$12$w5NeFJygz7QWgGIDqmuRceh1bHUxpIoXC4Izn6RlSe9o2X72drhqu', '', '2024-11-03 19:07:50', '2024-11-03 19:07:50', 2, 13, 7),
(992, 'N0826', 'Ahmad Sanusi', 'ahmad@smii.co.id', '$2y$12$iFSPh.I00mAsNQTEn4qwwu2kFIsOJpAKjQsL0p2mNHUBuaKmyGU16', '', '2024-11-03 19:07:50', '2024-11-03 19:07:50', 1, 5, 7),
(993, 'A0150', 'Sumadi', 'sumadi@smii.co.id', '$2y$12$jECqV.nqzh0n6DBXlj68ce0w6dn707P0UGWkj5MZxYhfG9wfJzpQC', '', '2024-11-03 19:07:50', '2024-11-03 19:07:50', 1, 6, 7),
(994, 'F0607', 'Sudarmanta', 'sudarmanta@smii.co.id', '$2y$12$zZRFVP5.n4paTRqZaymn7e0trGJ4N9JqaZhUhctUlu18sMQmWfqSG', '', '2024-11-03 19:07:50', '2024-11-03 19:07:50', 2, 6, 7),
(995, 'H0670', 'Endra Komara', 'endra@smii.co.id', '$2y$12$YkFN1ATqOiUZ.q9vYFt33uTkRrBKR8JXy80KHgiOMyC5s.bsGkn9W', '', '2024-11-03 19:07:51', '2024-11-03 19:07:51', 7, 12, 7),
(996, 'H0674', 'Yulianto', 'yulianto@smii.co.id', '$2y$12$VIHUmmqXuhTIG16MJse3zeqs6DOTrWmb4VEJQa2vSHrEvdT.nMGNG', '', '2024-11-03 19:07:51', '2024-11-03 19:07:51', 3, 3, 7),
(997, 'I0729', 'Musyaddad', 'musyaddad@smii.co.id', '$2y$12$HexfS4soCmKP5eMlhg8Fm.SQzyU5adUHrRKGd0UtOqm8SkNOvABeS', '', '2024-11-03 19:07:51', '2024-11-03 19:07:51', 8, 10, 7),
(998, 'K0781', 'Agus Uminir', 'agus@smii.co.id', '$2y$12$LOA2rrYTm9VHb7EUfBZUM.Kf0xt/fc8lFv1DjB9WSeZEokp9qVl6y', '', '2024-11-03 19:07:51', '2024-11-03 19:07:51', 2, 11, 7),
(999, 'K0784', 'Juhardani', 'juhardani@smii.co.id', '$2y$12$37ha/jLVu2nhBXgHznsHcuXG4yMH5cvPVR3IUB13wBYm237lHK.Ja', '', '2024-11-03 19:07:51', '2024-11-03 19:07:51', 7, 7, 7),
(1000, 'K0785', 'Junaidi', 'junaidi@smii.co.id', '$2y$12$HOAROwrF1w/vTJFqtltNleNNhhjBMpHgLKZNoS50jqbUPWEcrvBrW', '', '2024-11-03 19:07:52', '2024-11-03 19:07:52', 2, 12, 7),
(1001, 'U0956', 'Madin', 'madin@smii.co.id', '$2y$12$MJgoVtPeq64O5nBlJZJDpeypp8zmJX/dO3GyD2dKLoEI7gRVpfS0S', '', '2024-11-03 19:07:52', '2024-11-03 19:07:52', 4, 10, 7),
(1002, 'U0957', 'Dwi Hastono', 'dwi@smii.co.id', '$2y$12$5fUfp3zgKqNFiOdz5jcUp.ha8OwBqutGq9CJ/E9sWN3PY2SC7JU3C', '', '2024-11-03 19:07:52', '2024-11-03 19:07:52', 4, 32, 7),
(1003, 'AC1170', 'Nein', 'nein@smii.co.id', '$2y$12$dItD/xUJwyE4TQIXIcBMYurtY1FtuYqTc3U.gYCT4aGFqS7mv8PRy', '', '2024-11-03 19:07:52', '2024-11-03 19:07:52', 7, 5, 7),
(1004, 'AC1188', 'Sultan Syahjamawi Ali', 'sultan@smii.co.id', '$2y$12$cj7A6QtSs4aJJx9HCvjrGugxyGFKIlb8dRK7vL9jAEZYb6en1mY8K', '', '2024-11-03 19:07:52', '2024-11-03 19:07:52', 4, 5, 7),
(1005, 'AD1226', 'Ubaidilah', 'ubaidilah@smii.co.id', '$2y$12$A2ZrU3GSujvRPUMudvnKDebu9P5cKp0Kqg4jDcYicDbG/Qh6HMjqq', '', '2024-11-03 19:07:53', '2024-11-03 19:07:53', 8, 11, 7),
(1006, 'AE1254', 'Fikri Irmawan', 'fikri@smii.co.id', '$2y$12$/8QBNlEU7oxutiKPgoukKO/ZpoZ94kKWQ5kxJddsxNjGQoOdZ66pC', '', '2024-11-03 19:07:53', '2024-11-03 19:07:53', 2, 7, 7),
(1007, 'AE1267', 'Dika Vauzan Sobirin', 'dika@smii.co.id', '$2y$12$LbCAJM0zHHYd18vmnhLZ.OmMJoo/tVEi44JmsGBCux0qDUNcUiBx6', '', '2024-11-03 19:07:53', '2024-11-03 19:07:53', 1, 4, 7),
(1008, 'AG1323', 'Ammar Fauzan', 'ammar@smii.co.id', '$2y$12$b.9KJTfa96.0Y04InrPGk.9H6ovmib1TiSY.Oj1ZbS1eyODl1HXTG', '', '2024-11-03 19:07:53', '2024-11-03 19:07:53', 2, 14, 7),
(1009, 'U0955', 'Danu Purboyo', 'danu@smii.co.id', '$2y$12$/q4j4w7lNp8X0lRgW43XEuumyKH7h44Llvl1FPGhdn3fidFpK5rZG', '', '2024-11-03 19:07:54', '2024-11-03 19:07:54', 3, 8, 8),
(1010, 'AB1139', 'Ellyza Kusuma Wardani', 'ellyza@smii.co.id', '$2y$12$TtRX1.7hrTo6pKRQDhA5s.Tq6uanL4Appi5q5A3jN.UnILcElRW2K', '', '2024-11-03 19:07:54', '2024-11-03 19:07:54', 3, 5, 8),
(1011, 'Z1073', 'Kunto Guritno', 'kunto@smii.co.id', '$2y$12$Q5.K2flVJFVgUAEPrp.tjuPZhu1HOCY2QbZVqBilrftV7dtUg7Oeq', '', '2024-11-03 19:07:54', '2024-11-03 19:07:54', 1, 32, 8),
(1012, 'S0900', 'Syahruzar Syam', 'syahruzar@smii.co.id', '$2y$12$OSAnHAHaV1sdEMGeEl5XfuaC1jGf.uAvHo.bMByuCgdryjYa5yqkC', '', '2024-11-03 19:07:54', '2024-11-03 19:07:54', 1, 7, 9),
(1013, 'K0769', 'Jack Gembira Sitinjak', 'jack@smii.co.id', '$2y$12$14ukq8WHEYif1fN0aceLyO7QH10wEMr5dpMYMBToMtGMckScxE8hS', '', '2024-11-03 19:07:54', '2024-11-03 19:07:54', 1, 3, 9),
(1014, 'T0918', 'Broto Wahono', 'broto@smii.co.id', '$2y$12$k5CRbS.W0IfPpS5n.JRPGetmA7Me2Pf4BrO.WeNdHEmBCLsYqHGsq', '', '2024-11-03 19:07:55', '2024-11-03 19:07:55', 1, 14, 9),
(1015, 'U0941', 'Aditiawansyah', 'aditiawansyah@smii.co.id', '$2y$12$QBmnYpPm/BvjFy0oP3O9xeB.Yb.uMKPGCktV17O.78k/HtkH8KDnO', '', '2024-11-03 19:07:55', '2024-11-03 19:07:55', 5, 12, 9),
(1016, 'AC1177', 'Khairudin', 'khairudin@smii.co.id', '$2y$12$9SeuRZtopVvx7m5obCC70u0ljIy0zIkF96Ad9HgjL1yql8eZDW5H2', '', '2024-11-03 19:07:55', '2024-11-03 19:07:55', 2, 13, 9),
(1017, 'AF1301', 'Arip Haryanto', 'arip@smii.co.id', '$2y$12$1HcA5AymCd10LShpc1cGMeH9kXjikBRjUFv.uoHCQrL4pTMKTiLii', '', '2024-11-03 19:07:55', '2024-11-03 19:07:55', 5, 12, 9),
(1018, 'X1030', 'Sapto Yogasmara', 'sapto@smii.co.id', '$2y$12$zPr3qcB/8Tocs2ceriuuTOI.dDI4UcNb4KXkSHmsQKDsDr7ia5fK.', '', '2024-11-03 19:07:55', '2024-11-03 19:07:55', 7, 10, 9),
(1019, 'AF1292', 'Arham Bisma Bahari', 'arham@smii.co.id', '$2y$12$HdlFIIcebrlDvsY0jw.xwODOO.LdpmlqKefNTBQV7BUbH2FUxA35W', '', '2024-11-03 19:07:56', '2024-11-03 19:07:56', 3, 11, 9),
(1020, 'AF1295', 'Anwar Rusady', 'anwar@smii.co.id', '$2y$12$hwwu6IdEpBUBkE3um19gnuZqSdADmcNJ5XjSOJKFED1Au2PB1JBo6', '', '2024-11-03 19:07:56', '2024-11-03 19:07:56', 4, 8, 9),
(1021, 'AF1299', 'Dewi Nurhayati', 'dewi@smii.co.id', '$2y$12$b05G3S6zl68rXmkpzczwAe75nDIZ0XT08q8xPcaLu4KSAZ23CQOoK', '', '2024-11-03 19:07:56', '2024-11-03 19:07:56', 2, 6, 9),
(1022, 'AF1302', 'Andrie Setiadi Putera', 'andrie@smii.co.id', '$2y$12$q/0D4VfbKje4KqzB7oNv9ei9L.Zj/xVOTYwTHrEikmvBfv7LyGkd.', '', '2024-11-03 19:07:56', '2024-11-03 19:07:56', 2, 3, 9),
(1023, 'AG1319', 'Albet Nego', 'albet@smii.co.id', '$2y$12$1n0qR.Uq9keyhlTDrKECW.oBfRpZIAVxjPjdBON2IIbsa.RS1IO1W', '', '2024-11-03 19:07:57', '2024-11-03 19:07:57', 7, 4, 9),
(1024, 'AG1322', 'Hery Martono', 'hery@smii.co.id', '$2y$12$6.H5fY2jGTZDInIavejhceth6eyag3qoAvwt0CDdJ3gJqf8jEOEK.', '', '2024-11-03 19:07:57', '2024-11-03 19:07:57', 3, 32, 9),
(1025, 'Z1079', 'Mifa Miftahul Chair', 'mifa@smii.co.id', '$2y$12$2EI9PSip7ibprvYqULytP.SRtb0I4NnmV6gK5knV/46vUuO1royXG', '', '2024-11-03 19:07:57', '2024-11-03 19:07:57', 7, 32, 9),
(1026, 'AA1104', 'Akhmad Sahril', 'akhmad@smii.co.id', '$2y$12$YkBenj6BikTpLP2KwYJ28.EDGpm1sZYqleY94W0.SYdsZMrfp32Fq', '', '2024-11-03 19:07:57', '2024-11-03 19:07:57', 3, 32, 9),
(1027, 'AC1165', 'Leri Christian Manafe', 'leri@smii.co.id', '$2y$12$bVyDv02sfael4QTaoJVsJub..8Iwx3Ni/px1qVQHhkmwfPzT2uws6', '', '2024-11-03 19:07:57', '2024-11-03 19:07:57', 4, 10, 9),
(1028, 'AC1168', 'Sugeng Hariyanto', 'sugeng@smii.co.id', '$2y$12$uEjLpjZnPTJlPWLH1I2bsOh5ALdqfxk5//x8E8QegTQVnIPXgK4uq', '', '2024-11-03 19:07:58', '2024-11-03 19:07:58', 7, 7, 9),
(1029, 'AD1234', 'Azwar Munif', 'azwar@smii.co.id', '$2y$12$F7es369SPrOhaPe3EPDb5udVHjAQMFQOPcS.oBut6vjopKl.JRI4.', '', '2024-11-03 19:07:58', '2024-11-03 19:07:58', 7, 5, 9),
(1030, 'AD1237', 'Dendi Heriyanto', 'dendi@smii.co.id', '$2y$12$ZmtuuiVFgWUP34LPJXqA..Xl1jJcYb.bSbVGOInYZZJV9VkSZ/wOe', '', '2024-11-03 19:07:58', '2024-11-03 19:07:58', 1, 3, 9),
(1031, 'AE1272', 'Saeful Safar', 'saeful@smii.co.id', '$2y$12$GuGD8ql5NcdTnn8dVUf8GuxkkVy.Ng95FZtqK/RqSxJADkCqsqape', '', '2024-11-03 19:07:58', '2024-11-03 19:07:58', 4, 10, 9),
(1032, 'AF1297', 'Lopu Satria Nugraha', 'lopu@smii.co.id', '$2y$12$6VUYoz5fWf4/JGbj3RuSqOTiLXz2IhzC.CcEDxoOEsfq.7BtiiOs2', '', '2024-11-03 19:07:59', '2024-11-03 19:07:59', 1, 14, 9),
(1033, 'AF1303', 'Nova Lila Sari', 'nova@smii.co.id', '$2y$12$xb7Avom5SYqjsNJGkSfTnuqdgGLyl2F5UZD7T8IQT1ZK5bstSuD5O', '', '2024-11-03 19:07:59', '2024-11-03 19:07:59', 4, 6, 9),
(1034, 'AG1310', 'Lepi Candra', 'lepi@smii.co.id', '$2y$12$RJd6fgsEoxSAUGImHgC9heXMD6JflgoWzv8XCN91LdC/wRaMq1Y0y', '', '2024-11-03 19:07:59', '2024-11-03 19:07:59', 5, 14, 9),
(1035, 'AG1316', 'Ali Mahmudi', 'ali@smii.co.id', '$2y$12$VwHjzLY5eb6BWOa5HFLpc.jgqDzFzJ9Sn3PmvJnQEyoB.PvhgxlUO', '', '2024-11-03 19:07:59', '2024-11-03 19:07:59', 1, 32, 9),
(1036, 'AG1321', 'Zuniar Usman', 'zuniar@smii.co.id', '$2y$12$TqlN/GjCAdtPMDLa3gO0mekgXubDKBr92UdgVZ6GByU47dYxd3nbW', '', '2024-11-03 19:07:59', '2024-11-03 19:07:59', 7, 4, 9),
(1037, 'AG1330', 'La Ode Saiful, S.Ip', 'la@smii.co.id', '$2y$12$7YmKb0UHtHlpl21HdjiJ7uotCN4kRuNYgSuYreCDxvfB3kTdHu0O2', '', '2024-11-03 19:08:00', '2024-11-03 19:08:00', 8, 7, 9),
(1038, 'AG1331', 'Muhammad Taufikurrahman', 'muhammad@smii.co.id', '$2y$12$PHLL2Yh0ysDEV4E/.EJzIuMGAF6Z8YX1fDh.zUxraLsuPbAkmk4De', '', '2024-11-03 19:08:00', '2024-11-03 19:08:00', 3, 10, 9),
(1039, 'AG1343', 'Rachman Fernanda', 'rachman@smii.co.id', '$2y$12$iUmfdK7sBjcl4yUDqzYlWuqqYDNlNj2rVpO6tkEugZBTwH49uU1IC', '', '2024-11-03 19:08:00', '2024-11-03 19:08:00', 2, 11, 9),
(1040, 'AG1346', 'Akhmad Naofal', 'akhmad@smii.co.id', '$2y$12$8RvIlYuL8n/eICP6V4VHBu4foFiB9lLldrk5VTsz06VADGUh55r9q', '', '2024-11-03 19:08:00', '2024-11-03 19:08:00', 4, 13, 9),
(1041, 'A0044', 'Hartono', 'hartono@smii.co.id', '$2y$12$iLAaPHUL1jfqwue83w8vzu7/fza4WRQnEXeULkuJBLgDeVFxUbxDy', '', '2024-11-03 19:08:00', '2024-11-03 19:08:00', 1, 8, 1),
(1042, 'V0988', 'Muntari', 'muntari@smii.co.id', '$2y$12$uGsMtfBCbBol6cEdqtjszO2EhUvBCURLe6WyDk6YpWWBG14azJq9q', '', '2024-11-03 19:08:01', '2024-11-03 19:08:01', 7, 7, 1),
(1043, 'AG1317', 'Ashar Herrianto', 'ashar@smii.co.id', '$2y$12$V2kB6ocqud6HyaFVFzQfdOTF0MwhHQRRF.5RV.Sd/DCor9PXO7ol6', '', '2024-11-03 19:08:01', '2024-11-03 19:08:01', 3, 13, 1),
(1044, 'AG1350', 'Adi Ardiansyah', 'adi@smii.co.id', '$2y$12$oQPMU57vcjFPUyIT/6Rj5u4TspmOLHvL3zHhRWENjs9yzIQYzu8Tu', '', '2024-11-03 19:08:01', '2024-11-03 19:08:01', 4, 3, 1),
(1045, 'A0079', 'Suseno', 'suseno@smii.co.id', '$2y$12$MyDuUPnaphmRmm9fsAKA6.H.lCgM/RlqcfszUwooeTUxVoDROEZOq', '', '2024-11-03 19:08:01', '2024-11-03 19:08:01', 5, 12, 1),
(1046, 'N0832', 'Iwan Supriyadi', 'iwan@smii.co.id', '$2y$12$kwQ67p4bJtc.Op7jxHzgNeAuvc8OvidcHoLpDlAWFQo7i/LptYS8C', '', '2024-11-03 19:08:02', '2024-11-03 19:08:02', 1, 6, 1),
(1047, 'AC1191', 'Dwi Hermanto', 'dwi@smii.co.id', '$2y$12$DjMO5j.g4a6tH/MRPOG1YO1LYLD4ydhgoeiuEE/QNkxF6oy8LIKku', '', '2024-11-03 19:08:02', '2024-11-03 19:08:02', 3, 4, 1),
(1048, 'AD1224', 'Muhammad Ilham Mawazi', 'muhammad@smii.co.id', '$2y$12$IAUl.LdKgtroCiKNFQOFIu4WG0mBNizttsfxRI7.jt1bFJ/BnVRPe', '', '2024-11-03 19:08:02', '2024-11-03 19:08:02', 5, 7, 1),
(1049, 'AG1327', 'Heribertus Dwie Nugroho', 'heribertus@smii.co.id', '$2y$12$7Z7ShbowufVmFEi23Wo/G.1XoT.ujvspJ1ZNqE1W0SJ1W8J0s1huG', '', '2024-11-03 19:08:02', '2024-11-03 19:08:02', 4, 3, 1),
(1050, 'AG1338', 'Bagus Ardiyanto', 'bagus@smii.co.id', '$2y$12$kpTaXV1IsjU.PSi.SamERuFLnixR5.Y2GsncNflwMUgCUBFAkV7Fa', '', '2024-11-03 19:08:02', '2024-11-03 19:08:02', 8, 12, 1),
(1051, 'AG1340', 'Muhamad Aldi', 'muhamad@smii.co.id', '$2y$12$WQtta7j4nf63mLT9vdkwcO6PhUcSC71IYjzkUO1RoIUwX9Y2533SK', '', '2024-11-03 19:08:03', '2024-11-03 19:08:03', 4, 6, 1),
(1052, 'AG1344', 'Husni Mubarok', 'husni@smii.co.id', '$2y$12$XAe5mkCW4WD1Pi6TjsAPZ.LkBKku1w22BcxxAVgdMwTUM7yukmKiO', '', '2024-11-03 19:08:03', '2024-11-03 19:08:03', 1, 6, 1),
(1053, 'C0375', 'Wagiono', 'wagiono@smii.co.id', '$2y$12$zufn5scYayAL/u/AP19qyettFzgd2FlfYG90adKolxeqb3ZDX19Ga', '', '2024-11-03 19:08:03', '2024-11-03 19:08:03', 6, 3, 1),
(1054, 'D0428', 'Teguh Suyono', 'teguh@smii.co.id', '$2y$12$1T7IS/XbrHH0rP/2HSNnqu1wp8zj3sQRBbxOvy6O9rAQcqrxzI1y.', '', '2024-11-03 19:08:03', '2024-11-03 19:08:03', 2, 12, 1),
(1055, 'D0438', 'Surip', 'surip@smii.co.id', '$2y$12$A2ffhzVCL2zS1kmRs8nk3utyKhVi8bLdPKFXIJSJ7k1Fn6Knad5zm', '', '2024-11-03 19:08:03', '2024-11-03 19:08:03', 7, 8, 1),
(1056, 'E0483', 'Hasanudin', 'hasanudin@smii.co.id', '$2y$12$sxGLEAcKzn.UjYMqmyL7IedAt/8k/ThrnRJvqfdIKXgWIwjkE42Qq', '', '2024-11-03 19:08:04', '2024-11-03 19:08:04', 3, 14, 1),
(1057, 'F0599', 'Ibrahim M. Saleh', 'ibrahim@smii.co.id', '$2y$12$WmGK0YWxVm8Qn1Xi6yUh1.VFR1cDG3VipIVP2sLZdMeM4YLhehzI6', '', '2024-11-03 19:08:04', '2024-11-03 19:08:04', 3, 3, 1),
(1058, 'G0646', 'Kasmanto', 'kasmanto@smii.co.id', '$2y$12$zMdyygcllg3QT68BCIOfxexalY1jHJPOoYJQoHE8xaKLM5a3FDkHa', '', '2024-11-03 19:08:04', '2024-11-03 19:08:04', 1, 3, 1),
(1059, 'H0657', 'Yohanes Winarto', 'yohanes@smii.co.id', '$2y$12$XIVCm4yqALjfTg2XHTLmMe78Tb5reG68wLQ9vMYSLQYt9fv7ColLW', '', '2024-11-03 19:08:04', '2024-11-03 19:08:04', 6, 8, 1),
(1060, 'H0688', 'Didi Winarko', 'didi@smii.co.id', '$2y$12$quU.z7e61/S004VahSmB3eB1sLhcYBhFr7oiElymEE0DAn5MlHRUC', '', '2024-11-03 19:08:05', '2024-11-03 19:08:05', 7, 6, 1),
(1061, 'L0796', 'Teguh Waluyo', 'teguh@smii.co.id', '$2y$12$tTDJG7YZmjnurMZBT5Gn1OINi1//ZbZPy3e/83ukopg50fTLpwKny', '', '2024-11-03 19:08:05', '2024-11-03 19:08:05', 2, 14, 1),
(1062, 'P0852', 'Budianto', 'budianto@smii.co.id', '$2y$12$HxPXVnIFUVVLA2sZD4taxeeyfTb0BwjRuqtRtZO80Y2/caykYMBPm', '', '2024-11-03 19:08:05', '2024-11-03 19:08:05', 7, 10, 1),
(1063, 'S0908', 'Heri Riswanto', 'heri@smii.co.id', '$2y$12$t2WxHf5IsdAKOzyv3YnrHuGWNXGuPes.Ycoc5YITYPCBizdB7QI4O', '', '2024-11-03 19:08:05', '2024-11-03 19:08:05', 7, 12, 1),
(1064, 'T0928', 'Dadang Suhana', 'dadang@smii.co.id', '$2y$12$guAUEaqisAZSQCVc9B6FCueYhDZc3t4OgzN4Ykbnv5s8zLiLhhI3C', '', '2024-11-03 19:08:05', '2024-11-03 19:08:05', 1, 32, 1),
(1065, 'T0929', 'Miplahudin', 'miplahudin@smii.co.id', '$2y$12$yMNCI12u0/s3IFQShcsOd.1eEYLL9hbLqAFZftGtV5i9QNXhidlZS', '', '2024-11-03 19:08:06', '2024-11-03 19:08:06', 3, 6, 1),
(1066, 'V0973', 'Andi Irawan', 'andi@smii.co.id', '$2y$12$w9jkfjhMoygylLcp1HOgveJNMYueT6aD15NlTLkjFuJsHhRSVcJBy', '', '2024-11-03 19:08:06', '2024-11-03 19:08:06', 7, 32, 1),
(1067, 'V0980', 'M. Yusuf M', 'm.@smii.co.id', '$2y$12$GzUacOhyClaMN7qqViwOAe4BiUv44N42QYmV/vHi3Nv8PsdLW2bn.', '', '2024-11-03 19:08:06', '2024-11-03 19:08:06', 3, 8, 1),
(1068, 'Y1051', 'Erik Zulhikman', 'erik@smii.co.id', '$2y$12$XOq2n3ZpGtWK307KAuArseMGjDdgVQslAMjbHXX5dsDrdiQs8bJHa', '', '2024-11-03 19:08:06', '2024-11-03 19:08:06', 6, 8, 1),
(1069, 'Z1077', 'Mulyadi', 'mulyadi@smii.co.id', '$2y$12$6lycDub38B9r7CdvyBmygO5SjEsyfWA7VjYRbOlOei5RKCoUswBzu', '', '2024-11-03 19:08:06', '2024-11-03 19:08:06', 2, 12, 1),
(1070, 'AC1189', 'Yogi Dimas Jaya', 'yogi@smii.co.id', '$2y$12$otZT7fZrjBn0.DYubm21m..DrITGDGHbdopW7l5mZjJHtkminjmRG', '', '2024-11-03 19:08:07', '2024-11-03 19:08:07', 5, 13, 1),
(1071, 'AG1324', 'Robi Mardi', 'robi@smii.co.id', '$2y$12$Jkz1Za.jkjEQSr5Ohel4bO0p7Hq7ioB5JCZZnEp3F10zd.dPXpczq', '', '2024-11-03 19:08:07', '2024-11-03 19:08:07', 3, 4, 1),
(1072, 'AG1328', 'Dias Putra Darmawan', 'dias@smii.co.id', '$2y$12$LtmipK9oknOqwNpuYkGmreJj5xD1MBkt25AOmqFc1Gss7LMjpXDie', '', '2024-11-03 19:08:07', '2024-11-03 19:08:07', 2, 4, 1),
(1073, 'AG1329', 'Muhammad Rizki', 'muhammad@smii.co.id', '$2y$12$O6hUoGcg.UxkobZ.SUJgwe9ojfWNqafVMSOgsRqRs0HoBrhTrJaV.', '', '2024-11-03 19:08:07', '2024-11-03 19:08:07', 6, 11, 1),
(1074, 'B0281', 'Syaiful Amri', 'syaiful@smii.co.id', '$2y$12$02m5NqJu8vbMg/YcL8/82eK9uz8Oi4.eaHlWaluLr4hQiJk2bSrDq', '', '2024-11-03 19:08:08', '2024-11-03 19:08:08', 7, 32, 1),
(1075, 'E0528', 'Heru Untung  Noviantoro', 'heru@smii.co.id', '$2y$12$LNOyCBXO3W9R9LrBL0s.f.Uq2cIdzwFBrHFiP3Bq86uCzIBtSMwI6', '', '2024-11-03 19:08:08', '2024-11-03 19:08:08', 6, 11, 1),
(1076, 'AD1230', 'Muhamad Zen Mustofa', 'muhamad@smii.co.id', '$2y$12$5.6EukGNmwCk9PFjkzouju1fhOWOepALJiQmTbu42mjmI9ofsNEJC', '', '2024-11-03 19:08:08', '2024-11-03 19:08:08', 5, 11, 1),
(1077, 'AF1289', 'Aji Nur Wijayanto', 'aji@smii.co.id', '$2y$12$g/aK2v25UjNSPbIiiX1jNO5x9JxoPXrVOLExw7H86iTuLKNE8Nbkq', '', '2024-11-03 19:08:08', '2024-11-03 19:08:08', 6, 13, 1),
(1078, 'AG1325', 'Sokhihul islam', 'sokhihul@smii.co.id', '$2y$12$NWTiLOYAjsdo3C12EZBp1OhpuJPoJbRatfBDjFyaKvTS7rzOddr.u', '', '2024-11-03 19:08:08', '2024-11-03 19:08:08', 2, 3, 1),
(1079, 'AD1214', 'Rainita Darmadi', 'rainita@smii.co.id', '$2y$12$kKK41YlSCvrFeIXcLATUruR1vUUVK5wOj.7uC8ImcTTg73nDb7eNm', '', '2024-11-03 19:08:09', '2024-11-03 19:08:09', 1, 32, 10),
(1080, 'R0890', 'Bonny Regina Sandy', 'bonny@smii.co.id', '$2y$12$TKkWsqSXZxHELAsodBZ9aOF7JC8vmaVT/KB5vbz9y0uvH.CpMbyTm', '', '2024-11-03 19:08:09', '2024-11-03 19:08:09', 7, 14, 10),
(1081, 'Y1045', 'Drajat Budiarto', 'drajat@smii.co.id', '$2y$12$VAoidqDyIdRCzQxs3Q/OsuBb2LQxuIiPjQRHg41IBk.7rOfMSP7sW', '', '2024-11-03 19:08:09', '2024-11-03 19:08:09', 3, 13, 10),
(1082, 'I0718', 'Nanik Candra Cahyani', 'nanik@smii.co.id', '$2y$12$y/W8hCeXIFpc8QsRFjroz.zmoJATyEnMU57HU0BgpXcbt8D10T202', '', '2024-11-03 19:08:09', '2024-11-03 19:08:09', 5, 11, 10),
(1083, 'I0722', 'Rita Rahayu', 'rita@smii.co.id', '$2y$12$eQR1B8V4abebMf75SBSI4OGsbbvmyp0.C3tocitP7hRVclbRYQHOa', '', '2024-11-03 19:08:09', '2024-11-03 19:08:09', 8, 13, 10),
(1084, 'P0854', 'Mirza Purnomo', 'mirza@smii.co.id', '$2y$12$MOuO48TFLgKZFByq0DrSU.7BKKo4s1.BBt9YRgNpKUnZ7zcKr8tVS', '', '2024-11-03 19:08:10', '2024-11-03 19:08:10', 8, 5, 10),
(1085, 'U0946', 'Eko Kusmaryanto', 'eko@smii.co.id', '$2y$12$fNfHh8pHln1sqdI0litHuema7PskSekqTVcaclrsOUtx.3sQEMzGm', '', '2024-11-03 19:08:10', '2024-11-03 19:08:10', 7, 6, 10),
(1086, 'F0627', 'Moh. Riyad', 'moh.@smii.co.id', '$2y$12$tTK/Z3JKEPMxFYQZXYBiBuga3PBU1nso9VaLELNw7/AnPcdSxkFXK', '', '2024-11-03 19:08:10', '2024-11-03 19:08:10', 6, 6, 10),
(1087, 'T0917', 'Vincensius Rezki', 'vincensius@smii.co.id', '$2y$12$Unu/eitU195fWoO9Lrb7EOwPvoCbu2IRdHcXbGmgU6W0SoI8ndfka', '', '2024-11-03 19:08:10', '2024-11-03 19:08:10', 5, 14, 10),
(1088, 'AB1151', 'Ratih Ayu Lestari', 'ratih@smii.co.id', '$2y$12$bEozhlVgwtYLWmLHVuV95.JK.nCRjkQ8skv2ALWnHHi3mg2O7C5cC', '', '2024-11-03 19:08:11', '2024-11-03 19:08:11', 6, 12, 10),
(1089, 'AE1274', 'Shara Cahyanie', 'shara@smii.co.id', '$2y$12$S3rdkwGS4JBEtJ3im/bdLuC4HYArDz1KUtivCDu9hvsbVSBthSExO', '', '2024-11-03 19:08:11', '2024-11-03 19:08:11', 4, 13, 10),
(1090, 'Y1046', 'Achmad Suheri', 'achmad@smii.co.id', '$2y$12$N1lVunKA0kRZ601Guy6TL.Gqy01f0ZvHYWJm8PV340pd2PJkIJY/G', '', '2024-11-03 19:08:11', '2024-11-03 19:08:11', 8, 32, 10),
(1091, 'AF1294', 'Tamara Julietta', 'tamara@smii.co.id', '$2y$12$HQ.Nd5L04c8wAd.UgdWE8eJhbpHqlCWJoOdW73yTYauLadIA5k6tu', '', '2024-11-03 19:08:11', '2024-11-03 19:08:11', 7, 3, 11),
(1092, 'R0893', 'Intan Wulan Sari', 'intan@smii.co.id', '$2y$12$mzhJ9yjRRtaQ5.L9uCxHuesIP/L4cYyYGgoi/zu97/b7jm4/6X3LC', '', '2024-11-03 19:08:11', '2024-11-03 19:08:11', 8, 10, 11),
(1093, 'S0903', 'Nahrowi', 'nahrowi@smii.co.id', '$2y$12$qCSLdg3LTS2Z3Kc2aXsNR.V1tLuTXn1gn..oo5EsDIE48kqj2mUCu', '', '2024-11-03 19:08:12', '2024-11-03 19:08:12', 8, 3, 11),
(1094, 'AF1306', 'Hilmy Fauzan', 'hilmy@smii.co.id', '$2y$12$8Y/3Xm82pdmNXd96EsgfsuaFbxzaU/L.9MC9fMyl/EwZZmexpCrEW', '', '2024-11-03 19:08:12', '2024-11-03 19:08:12', 7, 5, 11),
(1095, 'H0689', 'Suwanto', 'suwanto@smii.co.id', '$2y$12$TiK0zW7VYD1fd0lLEEiQhOsel2KyhVVADUTaqHTM0gFRfqXh0dgaK', '', '2024-11-03 19:08:12', '2024-11-03 19:08:12', 2, 7, 2),
(1096, 'K0782', 'Vitria Hartati', 'vitria@smii.co.id', '$2y$12$dkgCVAxHFCEZpl852a/qLOFqJ1ZoqmSVhWz3/WymtqOj1c.yTZhAG', '', '2024-11-03 19:08:12', '2024-11-03 19:08:12', 7, 32, 2),
(1097, 'AG1335', 'Andina Nurmalia', 'andina@smii.co.id', '$2y$12$8tB/zKrN2VdHF1bqzbe9l.1RE8FrD0B8PGqwYfECTaRt8iLKHQLhK', '', '2024-11-03 19:08:12', '2024-11-03 19:08:12', 4, 4, 2),
(1098, 'AG1339', 'Gatot Widjanarko', 'gatot@smii.co.id', '$2y$12$RZV7zCjrV4aDH.6L.jLC3uCqJ/BRh/5j.9MNg7RN.MdeJvl4zTFRe', '', '2024-11-03 19:08:13', '2024-11-03 19:08:13', 5, 11, 2),
(1099, 'E0499', 'Suparmanto', 'suparmanto@smii.co.id', '$2y$12$mPvXNDR9vzm0YFvUZCNzxu9SoEjcxiiPRQOkrP.eVrkr3dR47UYRK', '', '2024-11-03 19:08:13', '2024-11-03 19:08:13', 2, 10, 2),
(1100, 'M0809', 'Herry Latif Pujianto', 'herry@smii.co.id', '$2y$12$0cY8qTVXXyAhcPZLmK1vyOIqvr..ZLb0JFvxXGZeuC/caRJ15y8O2', '', '2024-11-03 19:08:13', '2024-11-03 19:08:13', 8, 10, 2),
(1101, 'X1022', 'Murodih', 'murodih@smii.co.id', '$2y$12$q9I613z.BtZyGiY0j/Tp5.Lci7TGm8XUg1crY2bcKHeW/05bzT2/a', '', '2024-11-03 19:08:13', '2024-11-03 19:08:13', 6, 13, 2),
(1102, 'AG1345', 'Billy Fernando Pasaribu', 'billy@smii.co.id', '$2y$12$1PXdtM4jWd4JacTAFuN2Vu7m6uVfLAmePdKHIqecc/LEM4tB8weie', '', '2024-11-03 19:08:14', '2024-11-03 19:08:14', 7, 8, 12),
(1103, 'AE1258', 'Maria Uli Fransisca  ', 'maria@smii.co.id', '$2y$12$Wfnoiz/Y7bQsDiCwxdl0fO8TLptYCovzElQMSlLnlm8SdGj8He1/O', '', '2024-11-03 19:08:14', '2024-11-03 19:08:14', 2, 12, 12),
(1104, 'U0958', 'Sri Cahyani Dwi Anggoro', 'sri@smii.co.id', '$2y$12$Tr2usRfPzkIjTw7mJ52LoOYOjKgTod8bo/fLEv/8NUHs0rOA.foAG', '', '2024-11-03 19:08:14', '2024-11-03 19:08:14', 8, 7, 13),
(1105, 'U0950', 'Rofika', 'rofika@smii.co.id', '$2y$12$uReJr4txIWEOlagNQLtN5.ZshjFh8SgQaCpMYE3DW9c0X9CLHiHWO', '', '2024-11-03 19:08:14', '2024-11-03 19:08:14', 5, 14, 13),
(1106, 'W1011', 'Mufti Allutfi', 'mufti@smii.co.id', '$2y$12$94cxFE3BTj0mla9/j9WuJ.sw5TgU13.JPk3WvZI..DbbGrN/Lwpau', '', '2024-11-03 19:08:14', '2024-11-03 19:08:14', 6, 6, 13),
(1107, 'AD1231', 'Dinur Yuwidiyanto', 'dinur@smii.co.id', '$2y$12$J2s9gmJn7D7mz95nNUJssuHAZ9RJqtAi0Ifl2luLFpzwsQ3na7ahG', '', '2024-11-03 19:08:15', '2024-11-03 19:08:15', 2, 12, 13),
(1108, 'AB1128', 'Rianto Wibisono', 'rianto@smii.co.id', '$2y$12$R5wkEs/q2zhMGzRepDssOe.L5Guex47FWORSCzhPmNsJFRlFrf7Zq', '', '2024-11-03 19:08:15', '2024-11-03 19:08:15', 3, 5, 13),
(1109, 'AE1249', 'An Nisaa Catur Pekerti', 'an@smii.co.id', '$2y$12$g4yTRQuu4Rm4B4Uq12fYQeQRBtUtOGfQcnqIDsNVZtQ3g6l6aw6SK', '', '2024-11-03 19:08:15', '2024-11-03 19:08:15', 8, 10, 13),
(1110, 'AF1304', 'Amy Rhetorica', 'amy@smii.co.id', '$2y$12$0SD8D5mgNcL7k8RdkH70T.L6CcvL26dzlxXm9eTrbhFT832k2LybS', '', '2024-11-03 19:08:15', '2024-11-03 19:08:15', 5, 13, 13),
(1111, 'Q0872', 'Novalina Saragih', 'novalina@smii.co.id', '$2y$12$GVlDekhc4.LWzng9V5Z.zeS0dhry7qyP/1eB1KrDx6F7hRaHfnZeC', '', '2024-11-03 19:08:15', '2024-11-03 19:08:15', 6, 4, 14),
(1112, 'AB1149', 'Natasha Tachjadi', 'natasha@smii.co.id', '$2y$12$CDW5/i3PJ0EeFIIcxJlOX.QDTHbOH7QCygKQ3zIUI9ezRhB5RV7Li', '', '2024-11-03 19:08:16', '2024-11-03 19:08:16', 5, 10, 14),
(1113, 'U0947', 'Sangudin', 'sangudin@smii.co.id', '$2y$12$1wByOrnEfJ2lixyOpeCrh.Jfos0t1.CiXtPVNrqYkKoob1Ke17L4K', '', '2024-11-03 19:08:16', '2024-11-03 19:08:16', 7, 6, 15),
(1114, 'C0393', 'Gusriyanto', 'gusriyanto@smii.co.id', '$2y$12$Mku6pX8GNG5q5Cj/nkxpUuZSvxw5py6NrKhhdq2OhH.5zM7n8xl1i', '', '2024-11-03 19:08:16', '2024-11-03 19:08:16', 8, 14, 15),
(1115, 'G0639', 'Achmad Saefudin', 'achmad@smii.co.id', '$2y$12$6TjMZdwEIHQgia0fT2uQo.h07I5zq0ReH87l/cFDZrpqsT/8y8qb.', '', '2024-11-03 19:08:16', '2024-11-03 19:08:16', 2, 7, 15),
(1116, 'AD1241', 'Prio Pambudi', 'prio@smii.co.id', '$2y$12$.3Am9DT5Uy7IdqU4Lf.Dmur2y/rlY.NZodNvHC51W3AI6Gyy0IjlG', '', '2024-11-03 19:08:17', '2024-11-03 19:08:17', 5, 5, 15),
(1117, 'F0585', 'Rito\'at', 'rito\'at@smii.co.id', '$2y$12$gQscIgiA.LNfdRFMMIf0/Ofm9RnaHrPUqAlk9rDoo45GufSpbF2A2', '', '2024-11-03 19:08:17', '2024-11-03 19:08:17', 8, 5, 15),
(1118, 'J0742', 'Nurul Firdaus', 'nurul@smii.co.id', '$2y$12$ai8Zjz4uvMbqNBSPIvt/2e6kivIouRP94PESE1QuPJfjah0IKd85e', '', '2024-11-03 19:08:17', '2024-11-03 19:08:17', 8, 7, 15),
(1119, 'W0999', 'Linia Maulina Sari', 'linia@smii.co.id', '$2y$12$ERplHXBQd4es5Mcx8hO69.9TVdprdYPlvSDqdmApcWTpytt9nJR1C', '', '2024-11-03 19:08:17', '2024-11-03 19:08:17', 7, 12, 15),
(1120, 'C0297', 'Iyus Suhendar', 'iyus@smii.co.id', '$2y$12$dHXs0170H/lG7dUTUrL/kO6WzHWoK.2rye/eeJUv.X6In2vbrallC', '', '2024-11-03 19:08:17', '2024-11-03 19:08:17', 3, 6, 15),
(1121, 'D0425', 'Mulud', 'mulud@smii.co.id', '$2y$12$X/dskLlqcFWqCVMO0aZGL.rByomM3o4NqEavE5xQlb4K.7.TzK45a', '', '2024-11-03 19:08:18', '2024-11-03 19:08:18', 7, 14, 15),
(1122, 'D0480', 'Tumino', 'tumino@smii.co.id', '$2y$12$m7m/562q./uEN7/mA9Smy.5q7vyJ5GIR5FvlDk86H5VSHZq7St7Y6', '', '2024-11-03 19:08:18', '2024-11-03 19:08:18', 5, 7, 15),
(1123, 'D0481', 'Tajudin', 'tajudin@smii.co.id', '$2y$12$QbpA7An5BeEbu5yKOdhJkeXSAu5qZAVNHTr2nwt5QxMjhYiiXq0YC', '', '2024-11-03 19:08:18', '2024-11-03 19:08:18', 6, 32, 15),
(1124, 'G0632', 'Sumedi', 'sumedi@smii.co.id', '$2y$12$cr0tOWs196aSdpxzjAQbyO9bNMo8vA0FEfzE.IAukmO5p4rbTwZBq', '', '2024-11-03 19:08:18', '2024-11-03 19:08:18', 2, 4, 15),
(1125, 'J0732', 'Arif Rifa\'i', 'arif@smii.co.id', '$2y$12$1LAFqpxQXkjTp7XaXbOdLeaNJyn.bJHOFndnyvDkdKlTKCKPZT7Fe', '', '2024-11-03 19:08:19', '2024-11-03 19:08:19', 5, 5, 15),
(1126, 'L0793', 'Mustakim', 'mustakim@smii.co.id', '$2y$12$4Gw7Z4zDDpBFFEKrg/Wt3.BQpz.ve4h037F//rUQRP3QaiEoXJZXW', '', '2024-11-03 19:08:19', '2024-11-03 19:08:19', 8, 6, 15),
(1127, 'Y1040', 'Lukman Hakim', 'lukman@smii.co.id', '$2y$12$WSPQljxAfrItsRSLQGam9uClV5FUN5Mtx9ERMUqhyX2H2JaKf7cP6', '', '2024-11-03 19:08:19', '2024-11-03 19:08:19', 4, 10, 15),
(1128, 'Z1072', 'Aris Suhariyanto', 'aris@smii.co.id', '$2y$12$84WqKoxyp1NdSMz1TXcbJO9AbMTS1VkpYAKHAA.wFPHv.it7ugHqG', '', '2024-11-03 19:08:19', '2024-11-03 19:08:19', 3, 14, 15),
(1129, 'AB1153', 'Sulaeman', 'sulaeman@smii.co.id', '$2y$12$IRkDq6YyG6x68Jv4PgsIYO9Rdn3wkSoUsKr14W7QHfFPyPsoTD7Xe', '', '2024-11-03 19:08:19', '2024-11-03 19:08:19', 1, 5, 15),
(1130, 'AC1195', 'Bayu Wahyudin', 'bayu@smii.co.id', '$2y$12$IVDaAynoHFEXyGgjTSqfhuzcIP68kdAQ5aY/IsBQnbyDISRzi8jt6', '', '2024-11-03 19:08:20', '2024-11-03 19:08:20', 8, 12, 15),
(1131, 'AD1211', 'Erfan Hermawan', 'erfan@smii.co.id', '$2y$12$XtvHjmC9XY5lIl7nw97qoOiLhwurpyWeDX6WOJu4FXvbkeE.EWFvK', '', '2024-11-03 19:08:20', '2024-11-03 19:08:20', 8, 8, 15),
(1132, 'AD1218', 'Tri Ariyanto', 'tri@smii.co.id', '$2y$12$rMxOAXZM6XnTDnT8EzvHEuKCA0WUBebrrRVT6QBuF30SgIHEVSMu6', '', '2024-11-03 19:08:20', '2024-11-03 19:08:20', 5, 6, 15),
(1133, 'AD1221', 'M. Anwar Fuadi', 'm.@smii.co.id', '$2y$12$n1ExuMxWzpxMW0xu6ca0MuTGxm.MyiNVurCL79EHv1ySUAz66o1Ly', '', '2024-11-03 19:08:20', '2024-11-03 19:08:20', 3, 7, 15),
(1134, 'AD1222', 'Zaenal Abidin', 'zaenal@smii.co.id', '$2y$12$tresTg9j4Coyh5ET60bDm.kyHQ4eiccuq55kKY2aoKi36We0xqlYm', '', '2024-11-03 19:08:20', '2024-11-03 19:08:20', 4, 5, 15),
(1135, 'AD1229', 'Marsono', 'marsono@smii.co.id', '$2y$12$iTzbPj2UFqcihx08ZyG0oOL9zsi2vOmHdEvoylOCTiDp3nVdFINxW', '', '2024-11-03 19:08:21', '2024-11-03 19:08:21', 4, 7, 15),
(1136, 'AD1232', 'Irsan Rifqi', 'irsan@smii.co.id', '$2y$12$BPA/PwtM8ORctx4wZniEKub8J4efe0OFa.ZCYAxgnymfuogxf6XLm', '', '2024-11-03 19:08:21', '2024-11-03 19:08:21', 5, 7, 15),
(1137, 'AE1250', 'Joko Triwibowo', 'joko@smii.co.id', '$2y$12$hfxKZw/P4gby0i6DGvPK7u8QYS9ORUi6OjShl2RxNLd81zSPXxSFG', '', '2024-11-03 19:08:21', '2024-11-03 19:08:21', 3, 8, 15),
(1138, 'AF1284', 'Abul Basri', 'abul@smii.co.id', '$2y$12$y7udD.2cZQJm2SyiJrosbO21JMNmBL4hJFBnZHMZbunDDndHSpc7C', '', '2024-11-03 19:08:21', '2024-11-03 19:08:21', 5, 11, 15),
(1139, 'AG1347', 'Aan Kurniawan', 'aan@smii.co.id', '$2y$12$TWrBmK1uEC4JiV1IXrjenexp5oFB.pulFVgjRGR.symPGzZsqK332', '', '2024-11-03 19:08:22', '2024-11-03 19:08:22', 3, 11, 15),
(1140, 'AG1349', 'Azzi Muhamad Gustian', 'azzi@smii.co.id', '$2y$12$TlIhAIHTwg0ZD2KQyZ1LdOOIt7RksaX9iLvCh25IUyCuhsWzWsY02', '', '2024-11-03 19:08:22', '2024-11-03 19:08:22', 5, 5, 15),
(1141, 'U0960', 'Ali Rido', 'ali@smii.co.id', '$2y$12$774QzPxwZrAxj7HaLHIcYuu9YS405aXIJjI/08pkEzBjZbWkGNDyy', '', '2024-11-03 19:08:22', '2024-11-03 19:08:22', 8, 32, 15),
(1142, 'Z1078', 'Ibnu Ubaedillah', 'ibnu@smii.co.id', '$2y$12$PEq8pQDUc9SMMq0jcjdot.ZYzbczjyE2kl0jczJ29NR9jrc.biafS', '', '2024-11-03 19:08:22', '2024-11-03 19:08:22', 4, 11, 15),
(1143, 'A0192', 'Haryanto Makmoer', 'haryanto@smii.co.id', '$2y$12$y6ufBoDoz4K6Qcm8Aw0N5e0FHLDoa76TgV8XRgcO6EkZsnO9ATdKi', '', '2024-11-03 19:08:22', '2024-11-03 19:08:22', 3, 8, 16),
(1144, 'AG1337', 'George Novaro Tarigan', 'george@smii.co.id', '$2y$12$ME8Fr1GJYTtBSaIinghpLOxruhEB9r4bBsqoN1WUNiPTOT62kvJxC', '', '2024-11-03 19:08:23', '2024-11-03 19:08:23', 2, 14, 16),
(1145, 'W1005', 'Yovi Susanti', 'yovi@smii.co.id', '$2y$12$sG/IxjYfDdWFd8aieugED.f9Dy6yxnpgeItLYvYCvb68V0BVkR9VK', '', '2024-11-03 19:08:23', '2024-11-03 19:08:23', 3, 5, 16),
(1146, 'AG1313', 'Gabriella Stephanie Gultom', 'gabriella@smii.co.id', '$2y$12$owwS32mlKDjnzOpKe7toTOPSl2pqCWSUCjXlo70rpXzBo/hv6nIJe', '', '2024-11-03 19:08:23', '2024-11-03 19:08:23', 1, 7, 16),
(1147, 'AE1268', 'Dinah Dzakiyyah Rasikhah', 'dinah@smii.co.id', '$2y$12$8.ORnomNJQLK.tw2d5h7SeFsBCGtqO5JkhJZ7I1RyYM6ZnmKlKRM.', '', '2024-11-03 19:08:23', '2024-11-03 19:08:23', 8, 13, 16),
(1148, 'AD1228', 'Kelfin Alamanda', 'kelfin@smii.co.id', '$2y$12$WlRcUs5as7.pMUxVLK4WQeYwgyNOKwUHjnHWXsTKQ.C77QBNgQ2Q2', '', '2024-11-03 19:08:23', '2024-11-03 19:08:23', 5, 8, 16),
(1149, 'C0291', 'Sari Widodo', 'sari@smii.co.id', '$2y$12$FjPe21iItgB94TWZ2M5N1.r7GN2ouXkP1.5HlzRZrN4n1ykxlx7Bu', '', '2024-11-03 19:08:24', '2024-11-03 19:08:24', 2, 11, 17),
(1150, 'D0432', 'Kurnaen', 'kurnaen@smii.co.id', '$2y$12$UpviSmbnf5laq/.lId8Tf.YcDtIjY/O0RVb.twvQ45/Pgsv2p037a', '', '2024-11-03 19:08:24', '2024-11-03 19:08:24', 6, 5, 17),
(1151, 'E0506', 'Anda Lumban Tobing', 'anda@smii.co.id', '$2y$12$1WimaRingDmCEyVKKibMr.dak3t.UpSs/sPWOwj1xDgz9eEe9yxxq', '', '2024-11-03 19:08:24', '2024-11-03 19:08:24', 6, 3, 17),
(1152, 'E0518', 'Gentur Budhiman', 'gentur@smii.co.id', '$2y$12$IdDcKia9t0SelkM747FQOOJd2x43WEWWYD/vkKUS.zfx8sd/J8xt2', '', '2024-11-03 19:08:24', '2024-11-03 19:08:24', 5, 32, 17),
(1153, 'E0521', 'Muh. Asyrofi', 'muh.@smii.co.id', '$2y$12$7OODedOuT2OAVfLxZejNDuG/TBJGnAtmqcGO.KtP7Hn/1cts7lBzy', '', '2024-11-03 19:08:25', '2024-11-03 19:08:25', 4, 6, 17),
(1154, 'E0522', 'Sugi Hartanto', 'sugi@smii.co.id', '$2y$12$/A8q/cNJooXcSw0ccG6.UOIqNa1H3kz1Biaj34hlq/sMOJbjSmwF.', '', '2024-11-03 19:08:25', '2024-11-03 19:08:25', 5, 6, 17),
(1155, 'E0524', 'Agus Sumardi', 'agus@smii.co.id', '$2y$12$aAWVoZJXuiPMLZisdXdne.ZFZpyUpmdlgGtRFFSn66lay7Radf/X.', '', '2024-11-03 19:08:25', '2024-11-03 19:08:25', 3, 10, 17),
(1156, 'E0540', 'Paryono', 'paryono@smii.co.id', '$2y$12$6qljDVl5dZQAYmmUjmoA8eNSCCPr2LKubC9iFwJ3VdMQm.GtHj8fC', '', '2024-11-03 19:08:25', '2024-11-03 19:08:25', 5, 11, 17),
(1157, 'H0680', 'Sudiono', 'sudiono@smii.co.id', '$2y$12$CZIYFU72BJk9JM4QYgm6SeVe0i7SzMvk3pXLOM9Ld9C86D//SvoRe', '', '2024-11-03 19:08:25', '2024-11-03 19:08:25', 1, 10, 17),
(1158, 'A0063', 'Sunardi', 'sunardi@smii.co.id', '$2y$12$8sSoM2gyt3mNOq.xtYZgfObNGW6W3toj4shPO6uWYKcErYPUTeP1i', '', '2024-11-03 19:08:26', '2024-11-03 19:08:26', 6, 13, 17),
(1159, 'A0066', 'Warno', 'warno@smii.co.id', '$2y$12$9jgwnWFK32TQwePWX/mTDOBFhPGrSUEtzfI0UYvb6LtnwG99H55aW', '', '2024-11-03 19:08:26', '2024-11-03 19:08:26', 4, 11, 17),
(1160, 'B0222', 'Urip', 'urip@smii.co.id', '$2y$12$FiXt4pa4QeKNwQ/OMrWAh.FYp7MTRuf6xtKsIaBGddF4hZauvUKpW', '', '2024-11-03 19:08:26', '2024-11-03 19:08:26', 3, 3, 17),
(1161, 'C0314', 'Sultan Agung', 'sultan@smii.co.id', '$2y$12$gq/WXaTkUEGzCTFHirudju5szhKe4QRLaLgeBMAn3CN02qTf8xCPu', '', '2024-11-03 19:08:26', '2024-11-03 19:08:26', 2, 32, 17),
(1162, 'C0315', 'Iman Agus Permana', 'iman@smii.co.id', '$2y$12$J2rxkQ9Fs9Ajwt/ku0CgTOFozvF7sgawfn2OSt5BSvkJNx2D8Hgua', '', '2024-11-03 19:08:27', '2024-11-03 19:08:27', 8, 13, 17),
(1163, 'C0321', 'Wiyono', 'wiyono@smii.co.id', '$2y$12$cByVEJ82YjDh3yfmLpfSVeAfKqtgtUAe/P6p/8PfSuOfX8LizvE.S', '', '2024-11-03 19:08:27', '2024-11-03 19:08:27', 7, 3, 17),
(1164, 'C0326', 'Marjuni Akbari', 'marjuni@smii.co.id', '$2y$12$4AcytMtp12Uw3RMwdupS2eWmz6Hbaak4xxqszCjH71K11WMDayGGO', '', '2024-11-03 19:08:27', '2024-11-03 19:08:27', 7, 32, 17),
(1165, 'C0332', 'Sumarto', 'sumarto@smii.co.id', '$2y$12$Ej1mmMYZQYGlsBxuTFTORuxhszWRolXr2pv9BdaDPP2t/1l/BDJ7i', '', '2024-11-03 19:08:27', '2024-11-03 19:08:27', 8, 10, 17),
(1166, 'C0334', 'Suparman', 'suparman@smii.co.id', '$2y$12$m0Bt3turxOyUHpnaNlSMFu1kZiy35yjmTQ2D5xha/V967iE1Iuyrm', '', '2024-11-03 19:08:27', '2024-11-03 19:08:27', 7, 5, 17),
(1167, 'C0360', 'Cecep Supriadi', 'cecep@smii.co.id', '$2y$12$vBZPXNCsjW1qMRiTUbHPGO0vHeA2lPgVsU40r9hlzcQiNq8ahHKhy', '', '2024-11-03 19:08:28', '2024-11-03 19:08:28', 7, 14, 17),
(1168, 'C0414', 'Mujianto', 'mujianto@smii.co.id', '$2y$12$1wOiZ1xppbTmfrGL/CkJo.Z5Ew9BcjIV1FyrA6sOkpFdQ.6apmjEW', '', '2024-11-03 19:08:28', '2024-11-03 19:08:28', 2, 7, 17),
(1169, 'D0470', 'Sujarwo', 'sujarwo@smii.co.id', '$2y$12$QfvE/yj0umFCRxvV1OJBVe7lJ5QdmjBuYXkMNbKZaTeJnpafMPxbi', '', '2024-11-03 19:08:28', '2024-11-03 19:08:28', 4, 4, 17),
(1170, 'D0471', 'Za\'far Aziz  Budy Andhi', 'za\'far@smii.co.id', '$2y$12$mwfQkDqDwp8G05cpxZMbYe1mMckliufZNxC8qWvNi/SdEX6.zVmF6', '', '2024-11-03 19:08:28', '2024-11-03 19:08:28', 2, 3, 17),
(1171, 'E0512', 'Sukamto', 'sukamto@smii.co.id', '$2y$12$wwoVQps4yeOgP5XLtZTPpetzO1Pr41x3qhLr/DMDYb9HRPwjlN.tK', '', '2024-11-03 19:08:28', '2024-11-03 19:08:28', 3, 10, 17),
(1172, 'E0519', 'Tito Sumantri', 'tito@smii.co.id', '$2y$12$J3Lx6OLQJPUygheiakZORuaEpgZzOjQFjk8boAoEVdSYrpCmJJJDS', '', '2024-11-03 19:08:29', '2024-11-03 19:08:29', 5, 13, 17),
(1173, 'E0552', 'Ani Saryanto', 'ani@smii.co.id', '$2y$12$SuRbqvMB9uKY4eYLK4EqWu8oW2m51xGO9pyUgocZ6X0oOPi90F4M2', '', '2024-11-03 19:08:29', '2024-11-03 19:08:29', 3, 3, 17),
(1174, 'E0554', 'Yudi Supriadi', 'yudi@smii.co.id', '$2y$12$z9qwIm3c2Xq65WR9vywvKulrH4.16bmMDGQoR5AD40uKZXGDW4vBG', '', '2024-11-03 19:08:29', '2024-11-03 19:08:29', 3, 32, 17),
(1175, 'E0557', 'Harbin Tambunan', 'harbin@smii.co.id', '$2y$12$rgiWIO6DlD9rlBIpNXLsReEcQ.3Ivq5oUTkuiYuN55FtgyA4yCaRq', '', '2024-11-03 19:08:29', '2024-11-03 19:08:29', 5, 32, 17),
(1176, 'F0604', 'Kuwatno', 'kuwatno@smii.co.id', '$2y$12$lFOt45p4HEKF7mE2ReNeNuHToCIjZCXIXEllktLCLyIoj.xqvxl0a', '', '2024-11-03 19:08:30', '2024-11-03 19:08:30', 8, 6, 17),
(1177, 'G0640', 'Yudi Windarto', 'yudi@smii.co.id', '$2y$12$xlrbrlklthb86FR8ja7Q5e043J2HzgEiFOsRlCRMrpc0HeXFyZwni', '', '2024-11-03 19:08:30', '2024-11-03 19:08:30', 4, 11, 17),
(1178, 'G0642', 'Priyadi Setiawan', 'priyadi@smii.co.id', '$2y$12$/m7utSIlj9u/TMIDFrH3Ru1FH5f4CTucjYa5L3e6YHRYeXLT4Nm/y', '', '2024-11-03 19:08:30', '2024-11-03 19:08:30', 5, 5, 17),
(1179, 'G0643', 'Suyono', 'suyono@smii.co.id', '$2y$12$jLGJOLruA8YqgfTiQOiaGen./GlPMTO0Bpfzi0kJBgrLVi7O.hswK', '', '2024-11-03 19:08:30', '2024-11-03 19:08:30', 7, 14, 17),
(1180, 'G0648', 'Kartono', 'kartono@smii.co.id', '$2y$12$oLZfQ1TJi64IVfnzUZvjDe4iYfwzzBINvl.091xfIClmHmOIf/U/m', '', '2024-11-03 19:08:30', '2024-11-03 19:08:30', 6, 4, 17),
(1181, 'G0655', 'Ali Imron', 'ali@smii.co.id', '$2y$12$z2ZLo.IDBjd1gbHmB9.aludBlrZaUlVjl13wC2mydbxm3wgnHiLvG', '', '2024-11-03 19:08:31', '2024-11-03 19:08:31', 2, 3, 17),
(1182, 'H0684', 'Dwi Haryanto', 'dwi@smii.co.id', '$2y$12$Xw6H/ETI4KKav98n6HBGZuwMVHtv7av94jA4CXymjtI4rUqDRnNwa', '', '2024-11-03 19:08:31', '2024-11-03 19:08:31', 6, 6, 17),
(1183, 'H0702', 'Agus Soleh', 'agus@smii.co.id', '$2y$12$IO3BrqIWMXTPBeTt3WpX3efrEJ1anpU.ZqBdruQ9slDInCiXzXGee', '', '2024-11-03 19:08:31', '2024-11-03 19:08:31', 2, 3, 17),
(1184, 'H0705', 'Sumantri', 'sumantri@smii.co.id', '$2y$12$SL4PrTne5q/86PoQRS2ageOEEpfMrT/UVIRTFWm/P8E8PB5qAn0SS', '', '2024-11-03 19:08:31', '2024-11-03 19:08:31', 5, 32, 17),
(1185, 'I0713', 'Muhgofal', 'muhgofal@smii.co.id', '$2y$12$p4KRGv4tVjAyCZjhLN3G/ely1A/c1WU7ggQ7wf8DstkdlHF3tLGdO', '', '2024-11-03 19:08:31', '2024-11-03 19:08:31', 2, 5, 17),
(1186, 'I0725', 'Endang Wijaya', 'endang@smii.co.id', '$2y$12$EZXJzKe4BYb0yj0rzSfX7OuOLxQ1DDMBE.OF6JlLyd2kt0XsoZU9a', '', '2024-11-03 19:08:32', '2024-11-03 19:08:32', 2, 7, 17),
(1187, 'J0754', 'Slamet Susanto', 'slamet@smii.co.id', '$2y$12$BhOyozlwBj2nJuq7cZ9osOnuNg0Tt9fikZg0xU3Wc7OjgIohFRuwC', '', '2024-11-03 19:08:32', '2024-11-03 19:08:32', 8, 14, 17),
(1188, 'J0755', 'Hary Supriyatna', 'hary@smii.co.id', '$2y$12$4duINmSky96A0U/TsyzG0e92JSgaN0KxfRnR6x9nFqX9qqnuhKV4m', '', '2024-11-03 19:08:32', '2024-11-03 19:08:32', 2, 13, 17),
(1189, 'C0295', 'Sartono', 'sartono@smii.co.id', '$2y$12$KD3P3Ae573jCV.3qn8lT9edffT4H8MSB17G5ZYj4AdDaM7ctYcRgm', '', '2024-11-03 19:08:32', '2024-11-03 19:08:32', 7, 14, 17),
(1190, 'C0296', 'Sarimin', 'sarimin@smii.co.id', '$2y$12$uoHgd7Y1GPlt5wExTRLKoe95GW1bPXqPSMFXG7roowAGR0w.fB6rS', '', '2024-11-03 19:08:33', '2024-11-03 19:08:33', 8, 3, 17),
(1191, 'D0456', 'Ahmad Zeli', 'ahmad@smii.co.id', '$2y$12$2paIIULud3/SGdTAJ88ye.hz1B/bGsTL5YXvj5Abhd/PD8H2X6/5O', '', '2024-11-03 19:08:33', '2024-11-03 19:08:33', 7, 10, 17),
(1192, 'Z1066', 'Muslih', 'muslih@smii.co.id', '$2y$12$/cGrvhwUTsZoxP7h9MhJTuXHFImap2xzUk9lVkARNe0YJdc7ulkte', '', '2024-11-03 19:08:33', '2024-11-03 19:08:33', 3, 14, 17),
(1193, 'AB1142', 'Andi Wijaya', 'andi@smii.co.id', '$2y$12$BIrsC6vIubvFhE3K5Sr0bOEhvQbDM3UUzfhV5esbV78s7XpvYlf1K', '', '2024-11-03 19:08:33', '2024-11-03 19:08:33', 4, 5, 17),
(1194, 'AB1143', 'Marzuki', 'marzuki@smii.co.id', '$2y$12$uLqtRPjy16LNqPJ11jejF.YlxoSn6l5CapfyawR4P7vC7GWM9q1hS', '', '2024-11-03 19:08:33', '2024-11-03 19:08:33', 6, 7, 17),
(1195, 'AC1178', 'Hamzah', 'hamzah@smii.co.id', '$2y$12$3GI.GnBr4N.99oBkaNYxUu9wIbdeD8Kx5rfOhjSIH0uYurnoJmRwG', '', '2024-11-03 19:08:34', '2024-11-03 19:08:34', 3, 3, 17),
(1196, 'AC1179', 'Ahmad Fauzi', 'ahmad@smii.co.id', '$2y$12$/nOG50flY.IxFn6CDM9UTu30hlcXUUEHriyGEdNtS8GxS6wQAC0W2', '', '2024-11-03 19:08:34', '2024-11-03 19:08:34', 6, 4, 17),
(1197, 'AC1180', 'Bagus Santoso', 'bagus@smii.co.id', '$2y$12$8GqWUtJbo77gopaZUsgADOmnHR.vWb6UQd9r2T11dAWrKhzp2VGVm', '', '2024-11-03 19:08:34', '2024-11-03 19:08:34', 3, 14, 17),
(1198, 'AE1251', 'Muarif', 'muarif@smii.co.id', '$2y$12$KGvJbcQ4u6Sps6zhrlkgrewBIyf2YJtCVUDmKjAI8pyepo32EcqTq', '', '2024-11-03 19:08:34', '2024-11-03 19:08:34', 3, 5, 17),
(1199, 'AE1252', 'Muhamad Sidik', 'muhamad@smii.co.id', '$2y$12$pnzEI1H9asKuBGevjUz2Le1ArT6GOGhXK3Zrhwk2u1msXBZ869ZYy', '', '2024-11-03 19:08:35', '2024-11-03 19:08:35', 6, 3, 17),
(1200, 'AE1253', 'Ahmad Danofan Rizki', 'ahmad@smii.co.id', '$2y$12$8xtGd/B4G7P.hxDMcoD3p.c2RwEwLRukylgtVuYbVYUR1OKwJx2Wa', '', '2024-11-03 19:08:35', '2024-11-03 19:08:35', 8, 13, 17),
(1201, 'AG1342', 'Raharjo pecikos dyah sutondo', 'raharjo@smii.co.id', '$2y$12$Zazmmjece1UqM/aGTF6XseWoGgJEPq9AerNZUqDcHlDIhhwkxeBim', '', '2024-11-03 19:08:35', '2024-11-03 19:08:35', 8, 12, 17),
(1202, 'D0453', 'Soleman Lungan', 'soleman@smii.co.id', '$2y$12$CE2DvvV01FS26J/6MibDqeKWw.2VPZtE3GfaJvRkHl.ogJOiD3i2W', '', '2024-11-03 19:08:35', '2024-11-03 19:08:35', 3, 6, 17),
(1203, 'D0468', 'Slamet Iswanto', 'slamet@smii.co.id', '$2y$12$Y5ZwIs/BoviSxteKv0hAGu0XyRSgi3WHmoj6opMABkP6VWeUUZiUm', '', '2024-11-03 19:08:35', '2024-11-03 19:08:35', 2, 13, 17),
(1204, 'F0606', 'Wawan Sofyan', 'wawan@smii.co.id', '$2y$12$mjE94oAL07EeQZDylXO9GeaeJf04gHA3zODMJoFj2phV/WffGOeUS', '', '2024-11-03 19:08:36', '2024-11-03 19:08:36', 4, 11, 17),
(1205, 'H0686', 'Agus Slamet Riyadi', 'agus@smii.co.id', '$2y$12$EiGU6H3oIkQdpeT0UBTQAu0g3jsEDVu.JaQixVZHCn3ZZOta4hEoC', '', '2024-11-03 19:08:36', '2024-11-03 19:08:36', 2, 6, 17),
(1206, 'AD1227', 'Andika Suhendar', 'andika@smii.co.id', '$2y$12$v6UACfDSZ1cPg7tM35n4/u9YmEaDItiNDngJO2aK1O5vOznb/njtm', '', '2024-11-03 19:08:36', '2024-11-11 19:32:37', 1, 12, 18),
(1207, 'AE1244', 'Samuel David Christoper', 'samuel@smii.co.id', '$2y$12$.juZELwbUr1Hc.UHNa0LiuS84ycQ5nHqrlK3XSF0JLyBRU76NvBJ.', '', '2024-11-03 19:08:36', '2024-11-03 19:08:36', 5, 10, 18),
(1208, 'AG1315', 'Ade Rusmana', 'ade@smii.co.id', '$2y$12$VBonDp4boQ4q/J98Wk7B4utoNrgd69NF3RGqy0s3O.AcFesrFoZAq', '', '2024-11-03 19:08:37', '2024-11-11 19:41:21', 5, 32, 18),
(1209, 'U0942', 'Muchammad Arif Fathoni', 'muchammad@smii.co.id', '$2y$12$DQ5BUqx2H6VDUNhy7WLj6uqKcdiwffSC8tWXoxtkn9oZKFGgn5y6i', '', '2024-11-03 19:08:37', '2024-11-03 19:08:37', 6, 6, 19),
(1210, 'F0569', 'Yudha Satriya', 'yudha@smii.co.id', '$2y$12$HZEolR09kFebRDrkLEf/N.gCBqoQ2AL.9aiPkrV9AH81yQTQdgVju', '', '2024-11-03 19:08:37', '2024-11-03 19:08:37', 2, 10, 19),
(1211, 'F0617', 'Irma Nurbayani', 'irma@smii.co.id', '$2y$12$KceNmA0xYdFVn3UOWD.vbeshaJv6tNyfuRDzE3v6Yi7ATv5JA0v6e', '', '2024-11-03 19:08:37', '2024-11-03 19:08:37', 7, 5, 19),
(1212, 'J0745', 'Irwan Setiawan', 'irwan@smii.co.id', '$2y$12$hlhoa1BX3HAC5ZBmwNGfquelAeIDOmOkbH0ZS2nhl7W4gjpkObyTS', '', '2024-11-03 19:08:37', '2024-11-03 19:08:37', 2, 8, 19),
(1213, 'T0934', 'Moh. Ainun Naim', 'moh.@smii.co.id', '$2y$12$nBmOyzQssMYxIl9ISIDLMO5rKTtTuXb32rSLdnNW5P.wIXKFnGekO', '', '2024-11-03 19:08:38', '2024-11-03 19:08:38', 5, 11, 19),
(1214, 'Z1054', 'Juni Asliah Batubara', 'juni@smii.co.id', '$2y$12$47ImG8Z6LTsGwJB92rzoK.uEC8N0Av5Oh4GqrbHvcuSJ/lmOOMJBm', '', '2024-11-03 19:08:38', '2024-11-03 19:08:38', 8, 32, 19),
(1215, 'E0531', 'Rahman', 'rahman@smii.co.id', '$2y$12$CpndBVgcmzpl/3pgBQlHdu34BDQVyKHkmqDRgaeKVH0CS37qkNokq', '', '2024-11-03 19:08:38', '2024-11-03 19:08:38', 6, 5, 4),
(1216, 'AG1318', 'Suryani Pratiwi Lim', 'suryani@smii.co.id', '$2y$12$KajSg5kzpiRpd4AvhBvGku0V1BLMuNuCUMD4nWdSqDBLmO8azdH2O', '', '2024-11-03 19:08:38', '2024-11-03 19:08:38', 2, 14, 4),
(1217, 'AF1305', 'Trie Widyaningsih', 'trie@smii.co.id', '$2y$12$LazIJFe1.dMnyN0TetMD6eoZPQ9TToZIna2O3.dMkX6dyfyEXbxs2', '', '2024-11-03 19:08:39', '2024-11-03 19:08:39', 3, 14, 4),
(1218, 'AG1336', 'Djamaludin', 'djamaludin@smii.co.id', '$2y$12$HfcNqfSL3vIwIxslfVML4uTuxGr5NnZ51hrYrS/XbPBbhlDL4r5GK', '', '2024-11-03 19:08:39', '2024-11-03 19:08:39', 8, 3, 4),
(1219, 'AF1308', 'Millicent Songster', 'millicent@smii.co.id', '$2y$12$fiYXsjnpELLWhv0XgdzQouTD5ZYog9VGA9e1pV9cEQJAGbNMWT3jy', '', '2024-11-03 19:08:39', '2024-11-03 19:08:39', 7, 12, 20),
(1220, 'E0539', 'Lensiyani', 'lensiyani@smii.co.id', '$2y$12$Hje/G2DOOMstL78mSnEmxePpe73DQYE1GNR0YGCtj9cSr.aYIh3ky', '', '2024-11-03 19:08:39', '2024-11-03 19:08:39', 5, 7, 20),
(1221, 'Z1068', 'Vania Deborauli Siregar', 'vania@smii.co.id', '$2y$12$W0ri55TAO46Z05IJ8FejPOHtS7bTDREF9KLGKoS18wCFC2HMm8GMy', '', '2024-11-03 19:08:39', '2024-11-03 19:08:39', 6, 14, 20),
(1222, 'W1003', 'FX Surya Budi Santosa', 'fx@smii.co.id', '$2y$12$0YQXsyEa9LMON34ApRJ6qOVkWMXze0VdilA0qpTHYnLbIqW20Dv2G', '', '2024-11-03 19:08:40', '2024-11-03 19:08:40', 7, 14, 20),
(1223, 'AF1296', 'Jeremy Louis Adisurya', 'jeremy@smii.co.id', '$2y$12$S5nHC0xuPIU9UYdY9JNxDuglmS5GZ4BYoFaEiMvV1lQv/uTTMD7OW', '', '2024-11-03 19:08:40', '2024-11-03 19:08:40', 4, 13, 20),
(1224, 'D0436', 'Edi Tri Maryanto', 'edi@smii.co.id', '$2y$12$1MkPtvJj5vVZe6QHzp1GFecqf17xv1hLtkymIFDx11btqApkEo4lu', '', '2024-11-03 19:08:40', '2024-11-03 19:08:40', 3, 14, 21),
(1225, 'E0537', 'Edy Purwanto', 'edy@smii.co.id', '$2y$12$qcMp1.8gZKClWeYFeMI7RuvBCEJgyHyukaxKLyfOnIaGeuBXtq3eq', '', '2024-11-03 19:08:40', '2024-11-03 19:08:40', 3, 32, 21),
(1226, 'S0907', 'Dian Purwandaka', 'dian@smii.co.id', '$2y$12$V3rL8nVcjghP56mtadZtg.6wf052UaFURG38XGcxPjfHBCklpGB3e', '', '2024-11-03 19:08:40', '2024-11-03 19:08:40', 7, 5, 21),
(1227, 'T0922', 'Agus Sudarmaji', 'agus@smii.co.id', '$2y$12$HuOEFutgvTFkLaiQ4j.ci.5jYdFKEKAJckKpHVHxdCrFczKE.FQm.', '', '2024-11-03 19:08:41', '2024-11-03 19:08:41', 2, 11, 21),
(1228, 'T0923', 'Juli Hadiyanto', 'juli@smii.co.id', '$2y$12$LVRQrDpN3zJpxy/nwrqn2uSuA85J0slhA2NsSvxAS82sjW/3e54tC', '', '2024-11-03 19:08:41', '2024-11-03 19:08:41', 5, 8, 21),
(1229, 'U0938', 'Umar Wira Hadi Kusuma', 'umar@smii.co.id', '$2y$12$wsVNMsWNOwDZlK/kHM0fseqfP2RneKt6rgiA.ct9l5iaLe.fwQBF6', '', '2024-11-03 19:08:41', '2024-11-03 19:08:41', 5, 6, 21),
(1230, 'AG1348', 'Adiona Eka Saputra', 'adiona@smii.co.id', '$2y$12$L2BiZR/e92/MvsbE7iEQGupAf53JW4SCeTbeOxkweiG74Wtn./r/G', '', '2024-11-03 19:08:41', '2024-11-03 19:08:41', 8, 8, 21),
(1231, 'AC1157', 'Dedy Yuda Tri Artanto', 'dedy@smii.co.id', '$2y$12$yzTnmLZw/WDrvZm7d7/2Ru/YMy44zGFsn3l6m5um6mru.CcYehh0u', '', '2024-11-03 19:08:42', '2024-11-03 19:08:42', 1, 32, 21),
(1232, 'Q0881', 'Muyarni', 'muyarni@smii.co.id', '$2y$12$BGQQkMuT3swj6g9mH0cV9OVnkwbIVFYP/ZwcJ/v3NcBYroITVd2Ee', '', '2024-11-03 19:08:42', '2024-11-03 19:08:42', 5, 4, 22),
(1233, 'U0939', 'Trancy Chandra', 'trancy@smii.co.id', '$2y$12$NOCGBJBinp7PVEaylQSNiurwuejbieG10UQNAdfpmp2PzCrm14LFW', '', '2024-11-03 19:08:42', '2024-11-03 19:08:42', 6, 6, 22),
(1234, 'U0954', 'Suroto', 'suroto@smii.co.id', '$2y$12$0ftR5WdLSDTzk0Z0cGpY5OrsXG2w.43.nmnuWFXRhA4RefDsOF59u', '', '2024-11-03 19:08:42', '2024-11-03 19:08:42', 7, 10, 22),
(1235, 'AE1263', 'Irfan Raditya Hendraputra', 'irfan@smii.co.id', '$2y$12$HMDESLf.g33ommDZKRK.I..znkLMySl9AAWVERekXWHWprXHpImju', '', '2024-11-03 19:08:42', '2024-11-03 19:08:42', 4, 10, 22),
(1236, 'AE1264', 'Elia Herlina Dwiyanti', 'elia@smii.co.id', '$2y$12$I.w/zw.QkinGRgseFbNf8eWlV6.jjSNOYQnkrWhloY1GxFKqn4Rne', '', '2024-11-03 19:08:43', '2024-11-03 19:08:43', 3, 11, 22),
(1237, 'Y1050', 'Nahason Haria', 'nahason@smii.co.id', '$2y$12$.UJyGv/CmHTFjIm3Q54Nku1muhnqN26D5OkZUzAhz8SamkBanotxu', '', '2024-11-03 19:08:43', '2024-11-03 19:08:43', 1, 7, 23),
(1238, 'A0187', 'Sulis Setianingsih', 'sulis@smii.co.id', '$2y$12$QpFN.e/vDSRgsm2UqVQbpuleUMUSKATvbIM453j1K11tPbozxLbSW', '', '2024-11-03 19:08:43', '2024-11-03 19:08:43', 4, 13, 23),
(1239, 'AB1150', 'Finka Thalia Yosepine', 'finka@smii.co.id', '$2y$12$BuY2F1J7HAh77FHShDxEGepHW7SVdQoXumQOhyL6luDbRY0EwD4Cq', '', '2024-11-03 19:08:43', '2024-11-03 19:08:43', 4, 11, 23),
(1240, 'AC1156', 'Ayu Untari Putri', 'ayu@smii.co.id', '$2y$12$jEE1zWO8uC7PguTmnlSvauB.55yW9E2f2PRlY7wEkt0rtPjUjHOT.', '', '2024-11-03 19:08:44', '2024-11-03 19:08:44', 8, 6, 24),
(1241, 'X1017', 'Putri Wulandari', 'putri@smii.co.id', '$2y$12$Dia3be62zM2/mgeC9h1Y0.ToyMH6TJYwZwUqfMn4lTUu3lASFWOYK', '', '2024-11-03 19:08:44', '2024-11-03 19:08:44', 7, 3, 24),
(1242, 'AE1277', 'Tommy Christian', 'tommy@smii.co.id', '$2y$12$L/UHIEu09xf9MC0oL4Qkf.JbWjImt/MWbhAumJVscsMZD1wsjFSYq', '', '2024-11-03 19:08:44', '2024-11-03 19:08:44', 2, 7, 24),
(1243, 'Q0858', 'Reginald Iskandar', 'reginald@smii.co.id', '$2y$12$2chHn56jXVyxMfA8RzH4f.NjV6dS2REG16T2Kf37A4Id40u/dDDDi', '', '2024-11-03 19:08:44', '2024-11-03 19:08:44', 6, 5, 25),
(1244, 'F0609', 'Rodikin', 'rodikin@smii.co.id', '$2y$12$WEHkf0roYbl0dCwNmFmw..6laj4FumQoFRvYvQfY1VPrrll2LS9Wq', '', '2024-11-03 19:08:44', '2024-11-03 19:08:44', 7, 6, 25),
(1245, 'Q0860', 'Munkus Whisnu Dwi Saputra', 'munkus@smii.co.id', '$2y$12$QZWm0dOQADmsZifGv6qe6.bE4/HzNcEjxvoa/gdLBgQZEYmCPE8ZO', '', '2024-11-03 19:08:45', '2024-11-03 19:08:45', 6, 8, 25),
(1246, 'U0945', 'Chandra Humanita', 'chandra@smii.co.id', '$2y$12$DK84CidfXQmZzmuByD21P.aWNGjTj70yOMuPRaR58a8Lu18ie7NdS', '', '2024-11-03 19:08:45', '2024-11-03 19:08:45', 3, 4, 25),
(1247, 'H0682', 'Nia Maulina', 'nia@smii.co.id', '$2y$12$LGrEW8RnKFVJJm1ezW5QdOicj5g5DtQtwltUOElxQvcTRwVmGK5lO', '', '2024-11-03 19:08:45', '2024-11-03 19:08:45', 1, 11, 25),
(1248, 'V0961', 'Rury Pratama', 'rury@smii.co.id', '$2y$12$LaiefUFx5Cst4s8AA2yH3eC/sK8Rpr/hleBqdmS9ttfuRDzRUDcai', '', '2024-11-03 19:08:45', '2024-11-03 19:08:45', 3, 5, 25),
(1249, 'AB1117', 'Dhani Irfantoro', 'dhani@smii.co.id', '$2y$12$EXAmoj/g2elT8gIlZpKgPehY225OP5qZlNGOK1D.ZXCl.XGRJmNKi', '', '2024-11-03 19:08:45', '2024-11-03 19:08:45', 4, 6, 25),
(1250, 'AB1118', 'Martin Paulus Sinaga', 'martin@smii.co.id', '$2y$12$Es580UT38zabpHdPWiqQE.jSxaYuALFM.UUQmecfwZm39AKer2Gwu', '', '2024-11-03 19:08:46', '2024-11-03 19:08:46', 1, 14, 25),
(1251, 'AA1095', 'Christoforus Kevin', 'christoforus@smii.co.id', '$2y$12$kOcRjVHuKmNI2H0s6k080e9P2NSxcxwI3NeRBX1AgVfsRlihfMKsq', '', '2024-11-03 19:08:46', '2024-11-03 19:08:46', 5, 8, 25),
(1252, 'AB1133', 'Rizal Anwar', 'rizal@smii.co.id', '$2y$12$P3Q/RvWzFt.K4yk6QO2kg.KMSWQzS8CP/5yFo.LmR.LXQBMN6020a', '', '2024-11-03 19:08:46', '2024-11-03 19:08:46', 4, 14, 25),
(1253, 'AB1135', 'Panca Setiawan', 'panca@smii.co.id', '$2y$12$U1x/oIHLsZqVVFe07f7IjeZkEYKNQQ068/m/LJ2hYzV7Pnsj/og.q', '', '2024-11-03 19:08:46', '2024-11-03 19:08:46', 4, 4, 25),
(1254, 'AB1141', 'Nugraha Amrul Fahlevi Lubis', 'nugraha@smii.co.id', '$2y$12$O4w.1BNwLrF36DPJCkV4ouZWuNOFKy4at2upHpLXjUFcwchOPda/G', '', '2024-11-03 19:08:47', '2024-11-03 19:08:47', 5, 5, 25),
(1255, 'AB1148', 'Clara Adelina', 'clara@smii.co.id', '$2y$12$xXxGZvWBVblIqqKwaoiT3O7FNEixrvF/cYfLIP/L8degdKJyiwpRu', '', '2024-11-03 19:08:47', '2024-11-03 19:08:47', 6, 4, 25);
INSERT INTO `users` (`id`, `nik`, `name`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `department_id`, `position_id`, `section_id`) VALUES
(1256, 'AD1205', 'Zen Ekasari', 'zen@smii.co.id', '$2y$12$866slxlpUzgDI.y0k6yPhuUi6zUVKumT1MOlw8m1Zh4F7lEg.cPxG', '', '2024-11-03 19:08:47', '2024-11-03 19:08:47', 3, 14, 25),
(1257, 'AE1256', 'Putri Yashi Nabilah', 'putri@smii.co.id', '$2y$12$z.g4JlQCkCfDZgdN/deDR.vWYUrUI3km6xFQ.OmsyFnokQfT3eicW', '', '2024-11-03 19:08:47', '2024-11-03 19:08:47', 6, 11, 25),
(1258, 'AF1287', 'Sonny Pratama Mandira', 'sonny@smii.co.id', '$2y$12$Q2L0jnmVUAVm46JzBH2TJuUituagb.QrAVqWv.Igy.iheP5tIItB2', '', '2024-11-03 19:08:47', '2024-11-03 19:08:47', 2, 3, 25),
(1259, 'AG1334', 'Jeltrin Kembuan', 'jeltrin@smii.co.id', '$2y$12$5utQudjmCKRKKeSd39V.gOjLdW09I5IzDdDGtdaOKJsraMMpEYieK', '', '2024-11-03 19:08:48', '2024-11-03 19:08:48', 1, 11, 25),
(1260, 'K0761', 'Soebianto Halim', 'soebianto@smii.co.id', '$2y$12$tZQzQ4xc7cqcm3670BpKhumJ/UfAXNxQNxCteMDwDDw617YhcMU2u', '', '2024-11-03 19:08:48', '2024-11-03 19:08:48', 7, 5, 26),
(1261, 'F0590', 'Antony Horianto', 'antony@smii.co.id', '$2y$12$MQ7IfdEcXLJQ8sQ1rAfn0OuVORNS5oM9swYLZUNqVzSBIz49GwQ2.', '', '2024-11-03 19:08:48', '2024-11-03 19:08:48', 4, 3, 26),
(1262, 'K0778', 'Jumhasrifel', 'jumhasrifel@smii.co.id', '$2y$12$oFu8EwUie9Dvu3eElOAzD.UOMvK.UcvgJL98P4clz3gRqZm5gu6eO', '', '2024-11-03 19:08:48', '2024-11-03 19:08:48', 3, 13, 26),
(1263, 'S0895', 'Misno', 'misno@smii.co.id', '$2y$12$jNwTvm1pEtqIH3KR9nvAge7ztu6AyWyXH1I47SvT5LOfTYp0/K9m.', '', '2024-11-03 19:08:49', '2024-11-03 19:08:49', 6, 7, 26),
(1264, 'Y1042', 'Chien Siang', 'chien@smii.co.id', '$2y$12$/BDhM1YdB9RQypd3mdPFDeZRcFCirAsChiDenktSCQw0r9.ij3uim', '', '2024-11-03 19:08:49', '2024-11-03 19:08:49', 1, 12, 26),
(1265, 'AF1291', 'Fredy Salim', 'fredy@smii.co.id', '$2y$12$r.Ab0xdElaWbuB85znAP6.SUnMIpZV./FLlJRgzDUq7Rj4LlTWw2.', '', '2024-11-03 19:08:49', '2024-11-03 19:08:49', 5, 10, 26),
(1266, 'AF1307', 'Alfons Edward Sugito Palondongan', 'alfons@smii.co.id', '$2y$12$ZgPQb69JdFmXyf2jbVu7/uiWDsmRQY3azgHMiFMPuPUcwZhRynFve', '', '2024-11-03 19:08:49', '2024-11-03 19:08:49', 1, 11, 26),
(1267, 'F0584', 'Budy Kristanto', 'budy@smii.co.id', '$2y$12$LJCfXS6kr8jEyYf7zFyLvekUm.XEaqKCQXT8ezm58sqAwBgii9I4S', '', '2024-11-03 19:08:49', '2024-11-03 19:08:49', 6, 13, 26),
(1268, 'K0771', 'Santo Salim', 'santo@smii.co.id', '$2y$12$wbWcQiDGKFfTGqxjnWTT7uEPbZ/uOzy9hGouvNo8fd2URPp9AILR6', '', '2024-11-03 19:08:50', '2024-11-03 19:08:50', 3, 6, 26),
(1269, 'Q0883', 'Molek Susilawati', 'molek@smii.co.id', '$2y$12$Pgtp9078Jon0QItUnQZ9fuc9SSRQHTZCsU19EXIEBiXZ3ByWiI.HW', '', '2024-11-03 19:08:50', '2024-11-03 19:08:50', 7, 7, 26),
(1270, 'V0981', 'Nyimas Mariam', 'nyimas@smii.co.id', '$2y$12$RKh1TFfIS68gjzzsQTS0XeHEr94vZzO.0Ch2gilg9b3knUs6zVq3K', '', '2024-11-03 19:08:50', '2024-11-03 19:08:50', 4, 8, 26),
(1271, 'W1002', 'Agus Sujana', 'agus@smii.co.id', '$2y$12$wcM30HY8URfEu90K/s9mWek8PUWY1mSG6ZpYu9nf2/B6FrP7z6eIq', '', '2024-11-03 19:08:50', '2024-11-03 19:08:50', 6, 32, 26),
(1272, 'AA1088', 'Yudha Nugraha', 'yudha@smii.co.id', '$2y$12$NTGDnnR3pzbuG.zLvTEr6OmKtzqJwUSQ0x7mDa/jQeuUXw7fa2UI6', '', '2024-11-03 19:08:51', '2024-11-03 19:08:51', 1, 32, 26),
(1273, 'AA1098', 'Siswadi', 'siswadi@smii.co.id', '$2y$12$kYmBU2Et8DPjR2bVlr7pe.PR4opioyqleKG6CXOGzQ24Fmp5YdcK.', '', '2024-11-03 19:08:51', '2024-11-03 19:08:51', 4, 32, 26),
(1274, 'AA1108', 'Wilson Macmiland', 'wilson@smii.co.id', '$2y$12$MIwgZsoa.7i/v88iOOhbwORpAs/q9X7Rd6B4Js0vKQphGfUE0IBq2', '', '2024-11-03 19:08:51', '2024-11-03 19:08:51', 4, 13, 26),
(1275, 'AC1167', 'Dedi Mangampu Tua', 'dedi@smii.co.id', '$2y$12$sOKWE09wkmC5LZzmZevlHORm8pHmGZ28JU113sbHxNT1uNyvg8eA.', '', '2024-11-03 19:08:51', '2024-11-03 19:08:51', 5, 3, 26),
(1276, 'AC1174', 'Franies Matriyanto Yohakim Tandawuya', 'franies@smii.co.id', '$2y$12$IwzW.IzqTO4f7kqczz2d7eM2Do7Jh8gHk3ga9cJfGDyTiC2LsmGj.', '', '2024-11-03 19:08:51', '2024-11-03 19:08:51', 3, 32, 26),
(1277, 'AD1235', 'Federich Arswendo Perwira Negara', 'federich@smii.co.id', '$2y$12$dbFbCX1QI562cmKVsI6oDOoi1QS6xYCXee2hy59WzGNP8LGB0YE82', '', '2024-11-03 19:08:52', '2024-11-03 19:08:52', 5, 32, 26),
(1278, 'AD1239', 'Andrey Hermawan', 'andrey@smii.co.id', '$2y$12$tYnAriv6rFpcwZlUsR9f9uvKuig6WNK7D/IKIaTfsIIX1AT.n7LyO', '', '2024-11-03 19:08:52', '2024-11-03 19:08:52', 3, 10, 26),
(1279, 'AE1261', 'Noor Kurnia Andrean', 'noor@smii.co.id', '$2y$12$W8iCqG/CsqCinX6ASpmQg.XcCc/GnmSFPwRQvj6fP2gtRQW6iQI/y', '', '2024-11-03 19:08:52', '2024-11-03 19:08:52', 2, 11, 26),
(1280, 'AG1312', 'Andrea Aji Asmara', 'andrea@smii.co.id', '$2y$12$YXlnU1t0gMJt3dcpDV6lwuszz.B9R1DpLjGziso/6T2EL6az/6zSu', '', '2024-11-03 19:08:52', '2024-11-03 19:08:52', 7, 3, 26),
(1281, 'AG1314', 'Achmad Fauzi', 'achmad@smii.co.id', '$2y$12$rtTazEQeSoHRmilByTvjP.RQeN2gr5VBfuznhD65YIT76sz1HsjH.', '', '2024-11-03 19:08:52', '2024-11-03 19:08:52', 6, 7, 26),
(1282, 'AA1100', 'Yandri Fahmi', 'yandri@smii.co.id', '$2y$12$PGWOm1F29bJpzz1kJgBUpuE5DrQSUaDpAojer0VaYpsgDwtQtqwca', '', '2024-11-03 19:08:53', '2024-11-03 19:08:53', 3, 8, 26),
(1283, 'AA1112', 'Kevin Wijaya', 'kevin@smii.co.id', '$2y$12$tJMsCegyU92Od1RPlV2OuO2xi9nzwdO4f0ig2qkWxJvGHcP1RLsKK', '', '2024-11-03 19:08:53', '2024-11-03 19:08:53', 6, 7, 26),
(1284, 'AB1123', 'Suhadi', 'suhadi@smii.co.id', '$2y$12$kfwTwIiZduJGWSnou/lNVuOGH0OdCn6X5hwlaQx6g38PSFlroImpa', '', '2024-11-03 19:08:53', '2024-11-03 19:08:53', 3, 6, 26),
(1285, 'AD1236', 'Hendro Prayetno', 'hendro@smii.co.id', '$2y$12$nJsCxQ9sB4JJzPp/fP4mJO3bkyo5Z9p4EQmp6p6FtbH8sRWeWL3pC', '', '2024-11-03 19:08:53', '2024-11-03 19:08:53', 3, 12, 26),
(1286, 'AF1281', 'Muhamad Faiq Renaldiandadinata', 'muhamad@smii.co.id', '$2y$12$MoM2rqi5xQqyrRLP6JMGbuktFlFqGuXer36nMxw654y1t2IIoa9C6', '', '2024-11-03 19:08:54', '2024-11-03 19:08:54', 5, 12, 26),
(1287, 'AF1286', 'Teni Muhamad Rijal', 'teni@smii.co.id', '$2y$12$XKKwXHEfG8xLBrrFQnw3T.Ump8X0tE2ikHNo8g.FrEBaFTrGNRSOa', '', '2024-11-03 19:08:54', '2024-11-03 19:08:54', 4, 6, 26),
(1288, 'AG1326', 'Dadang Achmad Fadoli', 'dadang@smii.co.id', '$2y$12$hKAEVkX4ZRk52Xzl.9U.v..AwNsO8T33bG5h.OSN.1vmjhY.g2Dk2', '', '2024-11-03 19:08:54', '2024-11-03 19:08:54', 8, 14, 26),
(1289, 'D0437', 'Budi Adimulyo', 'budi.adimulyo@smii.co.id', '$2y$12$HPu3cJNfg17djAqcqt5oBejC87htglbtEEBhL6h4MxV0/bEAgBOGW', NULL, '2024-11-03 19:24:25', '2024-11-03 19:24:25', 4, 17, 7),
(1290, 'X1031', 'Edie Hirman', 'edie.hirman@smii.co.id', '$2y$12$j19kkk4T6lzBnmY1oXGVG.sXIBKJtqYHNbxFM4H0vKGZc6iwp8Rie', NULL, '2024-11-05 07:49:04', '2024-11-05 07:49:04', 2, 3, 18),
(1291, 'Z1058', 'Ronal Katili', 'ronal.katili@smii.co.id', '$2y$12$GOrGJTQFKhCbEpiC3q1LZ.b56IBsum3i8uPSmYuOhxIx50yO2VANa', NULL, '2024-11-05 07:58:58', '2024-11-05 07:58:58', 7, 30, 24),
(1292, 'C0346', 'Payaman Pandiangan', 'payaman.pandiangan@smii.co.id', '$2y$12$inPbxapC05JedKUKn3B4a.45PMqgaQg/YPySXdz0XhNXlndLeK07i', NULL, '2024-11-05 08:00:10', '2024-11-05 08:00:10', 5, 36, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approvers`
--
ALTER TABLE `approvers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approvers_section_id_foreign` (`section_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_dep_head_id_foreign` (`dep_head_id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ideas_slug_unique` (`slug`),
  ADD KEY `ideas_user_id_foreign` (`user_id`),
  ADD KEY `ideas_category_id_foreign` (`category_id`);

--
-- Indexes for table `idea_approvals`
--
ALTER TABLE `idea_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idea_approvals_idea_id_foreign` (`idea_id`),
  ADD KEY `idea_approvals_approval_id_foreign` (`approval_id`);

--
-- Indexes for table `idea_files`
--
ALTER TABLE `idea_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idea_files_idea_id_foreign` (`idea_id`);

--
-- Indexes for table `idea_likes`
--
ALTER TABLE `idea_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idea_likes_idea_id_foreign` (`idea_id`),
  ADD KEY `idea_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positions_department_id_foreign` (`department_id`),
  ADD KEY `positions_level_id_foreign` (`level_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD KEY `users_section_id_foreign` (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approvers`
--
ALTER TABLE `approvers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `idea_approvals`
--
ALTER TABLE `idea_approvals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `idea_files`
--
ALTER TABLE `idea_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `idea_likes`
--
ALTER TABLE `idea_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1293;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approvers`
--
ALTER TABLE `approvers`
  ADD CONSTRAINT `approvers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_dep_head_id_foreign` FOREIGN KEY (`dep_head_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ideas`
--
ALTER TABLE `ideas`
  ADD CONSTRAINT `ideas_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `ideas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `idea_approvals`
--
ALTER TABLE `idea_approvals`
  ADD CONSTRAINT `idea_approvals_idea_id_foreign` FOREIGN KEY (`idea_id`) REFERENCES `ideas` (`id`);

--
-- Constraints for table `idea_files`
--
ALTER TABLE `idea_files`
  ADD CONSTRAINT `idea_files_idea_id_foreign` FOREIGN KEY (`idea_id`) REFERENCES `ideas` (`id`);

--
-- Constraints for table `idea_likes`
--
ALTER TABLE `idea_likes`
  ADD CONSTRAINT `idea_likes_idea_id_foreign` FOREIGN KEY (`idea_id`) REFERENCES `ideas` (`id`),
  ADD CONSTRAINT `idea_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `positions_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
