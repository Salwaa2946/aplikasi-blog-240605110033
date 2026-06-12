-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2026 at 01:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `hari_tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`) VALUES
(17, 32, 18, 'Maudy Ayunda, Perjalanan Hidupnya sebagai Sosok Inspiratif Generasi Muda', 'Ayunda Faza Maudya, yang sekarang dikenal sebagai Maudy Ayunda, lahir di Jakarta pada tanggal 19 Desember 1994. Sejak kecil, ia telah menunjukkan bakatnya dalam seni, terutama dalam bidang musik dan akting. Karier bernyanyinya dimulai sejak usia dini dan terus berkembang pesat hingga ia berhasil merilis banyak lagu hits yang dikenal luas oleh masyarakat Indonesia, seperti \"Perahu Kertas\", \"Tahu Diri\", dan \"Cinta Datang Terlambat\". Tidak hanya menyanyi, Maudy juga berhasil membuktikan dirinya sebagai aktris berbakat lewat perannya dalam sejumlah film layar lebar.\r\nMaudy menyelesaikan pendidikan dasar dan pendidikan menengah di British School Jakarta, sebuah sekolah internasional bergengsi yang menggunakan kurikulum Inggris. Lingkungan pendidikan yang kompetitif ini turut membentuk karakter dan kedisiplinannya sejak dini. Kemudian, ia melanjutkan bangku perkuliahannya di Universitas Oxford, Inggris, dan mengambil jurusan Philosophy, Politics, and Economics (PPE) — sebuah program yang dikenal sangat selektif dan hanya menerima mahasiswa dengan kemampuan akademik dan intelektual tertinggi. Fakta bahwa Maudy berhasil diterima di Oxford sambil tetap aktif berkarya di industri hiburan Indonesia menjadi bukti nyata bahwa prestasi akademik dan karier seni bisa berjalan beriringan.\r\nUntuk jenjang master, Maudy diterima di Universitas Stanford, Amerika Serikat — salah satu universitas terbaik dan paling bergengsi di dunia. Di sana, ia mengambil dua program sekaligus, yaitu Master of Business Administration (MBA) dan Master of Education (M.Ed), sebuah pencapaian luar biasa yang tidak banyak orang mampu lakukan. Keputusannya untuk melanjutkan studi ke Stanford menjadi inspirasi bagi banyak generasi muda Indonesia untuk tidak hanya mengejar mimpi dan karier, tetapi juga pendidikan tinggi.\r\nDi luar dunia akademik dan hiburan, Maudy Ayunda juga dikenal sebagai sosok yang aktif menyuarakan pentingnya pendidikan bagi perempuan Indonesia. Ia kerap hadir dalam berbagai forum nasional maupun internasional sebagai pembicara yang memotivasi anak muda untuk berani bermimpi besar. Kiprahnya yang multidimensi — sebagai penyanyi, aktris, akademisi, sekaligus inspirator — menjadikan Maudy Ayunda sebagai salah satu figur publik paling berpengaruh di Indonesia.', '6a2ba9b8e97db.png', 'Senin, 27 April 2026 | 15:23'),
(18, 29, 17, 'Perkembangan Teknologi Web di Era Digital', 'Perkembangan teknologi web saat ini sangat pesat, terutama dengan hadirnya berbagai framework modern seperti React, Vue, dan Laravel. Teknologi ini mempermudah pengembang dalam membangun aplikasi web yang dinamis dan responsif. React, yang dikembangkan oleh Meta (Facebook), memungkinkan pembuatan antarmuka pengguna yang interaktif melalui konsep komponen yang dapat digunakan kembali (reusable components). Vue.js, di sisi lain, dikenal karena kemudahan belajarnya dan fleksibilitasnya, menjadikannya pilihan populer bagi pengembang pemula maupun berpengalaman. Sementara Laravel hadir sebagai framework PHP yang menyediakan struktur kode yang rapi dan berbagai fitur bawaan seperti autentikasi, routing, dan manajemen database.\r\nSelain framework front-end dan back-end, perkembangan teknologi web juga ditandai dengan meluasnya penggunaan arsitektur berbasis API. Pendekatan seperti RESTful API dan GraphQL memungkinkan aplikasi web untuk berkomunikasi dengan server secara efisien dan fleksibel. Konsep Progressive Web App (PWA) juga semakin populer karena memungkinkan website untuk berperilaku layaknya aplikasi mobile, termasuk kemampuan bekerja secara offline dan mengirim notifikasi push kepada pengguna.\r\nKonsep keamanan dalam pengembangan web juga semakin diperhatikan seiring meningkatnya ancaman siber. Penggunaan prepared statement menjadi standar dalam penulisan query database untuk mencegah serangan SQL Injection, di mana penyerang mencoba memanipulasi perintah SQL melalui input pengguna. Sanitasi output untuk mencegah XSS (Cross-Site Scripting) juga tidak kalah penting, yaitu teknik membersihkan data yang akan ditampilkan agar tidak mengandung skrip berbahaya yang bisa dieksekusi oleh browser pengguna. Selain keduanya, pengembang web modern juga diwajibkan memahami konsep HTTPS, CORS, CSRF protection, dan pengelolaan sesi yang aman.\r\nKe depan, teknologi web akan terus berevolusi dengan hadirnya kecerdasan buatan (AI) yang semakin terintegrasi dalam aplikasi web, mulai dari chatbot, rekomendasi konten berbasis machine learning, hingga pemrosesan bahasa alami. Pengembang web masa kini dituntut untuk terus belajar dan beradaptasi dengan perubahan teknologi yang terjadi begitu cepat agar tetap relevan di industri yang kompetitif ini.', '6a286b25158f3.png', 'Senin, 27 April 2026 | 15:23'),
(20, 30, 20, 'Tips Meningkatkan Produktivitas dalam Belajar', 'Produktivitas dalam belajar sangat dipengaruhi oleh manajemen waktu dan lingkungan belajar yang kondusif. Salah satu cara untuk meningkatkan produktivitas adalah dengan membuat jadwal belajar yang teratur. Dengan memiliki jadwal yang jelas, seseorang akan terbiasa masuk ke \"mode belajar\" pada waktu-waktu tertentu, sehingga otak pun akan lebih siap untuk menyerap informasi secara optimal. Teknik seperti Time Blocking — di mana setiap blok waktu dalam hari dialokasikan untuk aktivitas tertentu — terbukti efektif membantu banyak pelajar dan profesional dalam menjaga fokus dan konsistensi.\r\nSelain itu, penting juga untuk menghindari distraksi seperti media sosial saat belajar. Penelitian menunjukkan bahwa otak manusia membutuhkan waktu rata-rata 23 menit untuk kembali fokus penuh setelah terganggu oleh notifikasi atau distraksi digital. Oleh karena itu, mematikan notifikasi, menggunakan aplikasi pemblokir situs selama sesi belajar, atau meletakkan ponsel di tempat yang tidak mudah dijangkau dapat meningkatkan kualitas belajar secara signifikan. Teknik Pomodoro juga bisa menjadi solusi efektif, yaitu belajar selama 25 menit penuh tanpa gangguan, kemudian istirahat singkat selama 5 menit sebelum kembali ke sesi berikutnya.\r\nLingkungan fisik tempat belajar juga memiliki pengaruh besar terhadap produktivitas. Ruangan yang bersih, memiliki pencahayaan yang cukup, sirkulasi udara yang baik, dan minim kebisingan akan membantu otak untuk lebih mudah berkonsentrasi. Beberapa orang justru lebih produktif belajar di perpustakaan atau kafe dengan suara latar yang ringan (ambient noise) dibandingkan di kamar yang terlalu hening — hal ini bergantung pada preferensi dan tipe kepribadian masing-masing individu.\r\nAspek fisik dan mental juga tidak boleh diabaikan. Tidur yang cukup, konsumsi makanan bergizi, dan olahraga teratur secara langsung memengaruhi kemampuan kognitif dan daya ingat. Otak yang cukup istirahat akan jauh lebih efisien dalam memproses dan menyimpan informasi baru. Dengan menggabungkan disiplin, konsistensi, lingkungan yang mendukung, dan gaya hidup sehat, hasil belajar akan menjadi jauh lebih optimal dan', '6a2ab8a22f8f9.png', 'Senin, 27 April 2026 | 15:25'),
(36, 29, 19, 'Pentingnya Literasi Digital bagi Mahasiswa Kategori', 'Di era digital saat ini, literasi digital menjadi kemampuan yang sangat penting bagi mahasiswa. Kemampuan ini mencakup pemahaman terhadap teknologi, keamanan data, serta etika dalam menggunakan internet. Secara lebih luas, literasi digital tidak hanya sekadar mampu mengoperasikan perangkat teknologi, tetapi juga mencakup kemampuan untuk mengevaluasi informasi secara kritis, memahami privasi digital, serta memanfaatkan berbagai platform digital untuk tujuan produktif dan edukatif.\r\nMahasiswa yang memiliki literasi digital yang baik mampu membedakan informasi yang valid dari hoaks dan berita palsu yang kian marak beredar di media sosial. Kemampuan berpikir kritis ini sangat penting di tengah arus informasi yang begitu deras, di mana tidak semua konten yang tersebar di internet dapat dipercaya begitu saja. Selain itu, literasi digital juga mencakup pemahaman tentang hak cipta digital, penggunaan sumber referensi yang etis, serta pentingnya menjaga jejak digital yang positif karena aktivitas online seseorang bisa berdampak jangka panjang terhadap reputasi pribadi maupun profesional.\r\nMahasiswa diharapkan mampu memanfaatkan teknologi secara bijak, baik untuk pembelajaran maupun pengembangan diri. Berbagai platform pembelajaran online seperti Coursera, edX, dan YouTube kini menyediakan ribuan kursus gratis dari universitas terkemuka di seluruh dunia, dan mahasiswa yang melek digital akan mampu memaksimalkan sumber belajar ini jauh melampaui batas kurikulum kampus. Kemampuan menggunakan alat kolaborasi digital seperti Google Workspace, Notion, atau platform manajemen proyek juga menjadi nilai tambah yang sangat dihargai oleh dunia kerja modern.\r\nDengan literasi digital yang baik, mahasiswa dapat lebih siap menghadapi tantangan di dunia kerja yang semakin bergantung pada teknologi. Banyak perusahaan kini mensyaratkan kompetensi digital sebagai kualifikasi dasar dalam proses rekrutmen, mulai dari kemampuan analisis data, pemahaman media sosial untuk keperluan bisnis, hingga kesadaran terhadap keamanan siber. Oleh karena itu, perguruan tinggi dan mahasiswa sendiri perlu bersinergi untuk menjadikan literasi digital sebagai bagian tak terpisahkan dari proses pendidikan di Indonesia.', '6a2ab9f3dbc63.png', 'Rabu, 10 Juni 2026 | 02:07'),
(42, 36, 25, 'Keindahan Pantai Balekambang Malang yang Memukau', 'Pantai Balekambang merupakan salah satu destinasi wisata unggulan di Kabupaten Malang yang dikenal dengan keindahan alamnya yang memukau. Pantai ini sering disebut sebagai \"Tanah Lot-nya Jawa Timur\" karena adanya pura yang berdiri di atas batu karang di tengah laut. Pura yang dimaksud adalah Pura Amerta Jati, sebuah tempat suci umat Hindu yang berdiri kokoh di atas pulau karang kecil bernama Pulau Ismoyo. Selain itu, jembatan yang menghubungkan daratan dengan pura menjadi daya tarik tersendiri bagi wisatawan, terutama saat air surut ketika pengunjung bisa berjalan menyeberangi jembatan sambil menikmati pemandangan laut yang luas di kedua sisinya.\r\nPasir putih yang bersih serta deburan ombak yang menenangkan membuat Pantai Balekambang cocok dijadikan tempat untuk bersantai bersama keluarga. Garis pantainya yang panjang, mencapai sekitar tiga kilometer, memberikan ruang yang cukup luas bagi wisatawan untuk bermain, berjalan santai, atau sekadar duduk menikmati angin laut. Keindahan matahari terbenam di Pantai Balekambang juga menjadi momen yang paling banyak diabadikan oleh pengunjung, di mana langit memerah berpadu dengan siluet pura di tengah laut menciptakan pemandangan yang benar-benar memesona.\r\nFasilitas yang tersedia juga cukup lengkap, mulai dari area parkir yang luas, penginapan dengan berbagai pilihan harga, hingga warung makan yang menyajikan hidangan laut segar hasil tangkapan nelayan setempat. Beberapa penginapan bahkan menawarkan pemandangan langsung ke arah pantai sehingga wisatawan bisa menikmati suasana laut sejak pagi hari. Selain itu, terdapat pula area perkemahan bagi wisatawan yang ingin merasakan pengalaman bermalam di tepi pantai di bawah hamparan bintang.\r\nUntuk menuju Pantai Balekambang, wisatawan dari Kota Malang perlu menempuh jarak sekitar 65 kilometer ke arah selatan, atau sekitar 1,5 hingga 2 jam perjalanan menggunakan kendaraan pribadi. Meskipun akses jalan menuju pantai sudah cukup baik, sebagian rute melewati kawasan perbukitan dengan tikungan tajam sehingga disarankan untuk berkendara dengan hati-hati. Pantai Balekambang buka setiap hari dan paling ramai dikunjungi pada akhir pekan serta musim liburan sekolah.', '6a2aba36e6e22.png', 'Kamis, 11 Juni 2026 | 20:37'),
(46, 36, 25, 'Pesona Kawah Ijen Banyuwangi, Surga Tersembunyi di Ujung Timur Jawa', 'Kawah Ijen merupakan salah satu destinasi wisata alam paling menakjubkan di Indonesia yang terletak di perbatasan Kabupaten Banyuwangi dan Kabupaten Bondowoso, Jawa Timur. Gunung berapi aktif ini menyimpan keajaiban alam yang sulit ditemukan di tempat lain di dunia, menjadikannya magnet bagi wisatawan lokal maupun mancanegara yang haus akan pengalaman alam yang luar biasa. Kawah Ijen berada pada ketinggian sekitar 2.386 meter di atas permukaan laut, dan untuk mencapai bibir kawah, pengunjung perlu mendaki jalur sepanjang kurang lebih tiga kilometer dengan medan yang cukup menantang namun terbayar tuntas oleh pemandangan yang tersaji di puncaknya.\r\nDaya tarik utama Kawah Ijen yang paling terkenal di dunia adalah fenomena blue fire atau api biru, sebuah fenomena langka yang hanya dapat dijumpai di dua tempat di seluruh dunia, salah satunya di Kawah Ijen ini. Api biru tersebut bukanlah api biasa melainkan nyala dari gas belerang yang keluar dari celah-celah batuan kawah dan terbakar saat bersentuhan dengan udara, menghasilkan lidah api berwarna biru elektrik yang memukau. Fenomena ini hanya bisa disaksikan pada malam hari hingga dini hari sebelum matahari terbit, sehingga sebagian besar wisatawan memilih untuk mendaki mulai pukul 01.00 hingga 02.00 dini hari agar tiba di kawah tepat waktu. Pemandangan api biru yang menari-nari di tengah kegelapan malam dengan latar belakang bintang-bintang di langit adalah pengalaman yang benar-benar tidak terlupakan sepanjang hayat.\r\nSelain fenomena api biru, Kawah Ijen juga memiliki danau kawah berwarna toska kehijauan yang sangat indah sekaligus menjadi danau asam terbesar di dunia. Warna unik danau ini berasal dari kandungan asam sulfat dan asam klorida yang sangat tinggi, dengan tingkat keasaman (pH) yang mendekati nol — jauh lebih asam dibandingkan cuka dapur biasa. Meskipun berbahaya jika disentuh langsung, dari kejauhan danau ini tampak begitu cantik dengan warna hijau kebiruan yang kontras dengan bebatuan abu-abu di sekelilingnya. Luas danau kawah ini mencapai sekitar 5.466 hektare dengan kedalaman rata-rata 200 meter, menjadikannya salah satu pemandangan geologi paling spektakuler di Asia Tenggara.\r\nKawah Ijen juga tidak bisa dilepaskan dari kisah perjuangan para penambang belerang tradisional yang setiap harinya memikul beban belerang padat hingga 70–90 kilogram dari dasar kawah ke pos penimbangan di atas. Mereka menuruni jalur kawah yang curam dan penuh gas beracun hanya dengan perlindungan seadanya, bahkan banyak yang tidak menggunakan masker gas yang memadai. Aktivitas penambangan ini telah berlangsung selama puluhan tahun secara turun-temurun dan menjadi potret nyata kerja keras serta ketangguhan masyarakat lokal yang mencari nafkah di tengah kondisi alam yang ekstrem. Wisatawan yang berkunjung ke Kawah Ijen sering kali terharu menyaksikan perjuangan para penambang ini, dan tidak sedikit yang memberikan apresiasi berupa pembelian oleh-oleh berupa kerajinan tangan berbahan belerang yang dijual di sekitar kawasan wisata.\r\nUntuk mengunjungi Kawah Ijen, wisatawan dari Kota Banyuwangi dapat menempuh perjalanan sekitar 1,5 hingga 2 jam menuju Paltuding, yaitu pos pendakian utama yang berada di kaki gunung. Dari Paltuding, pendakian menuju bibir kawah memakan waktu sekitar 1,5 hingga 2 jam dengan tingkat kesulitan sedang. Wisatawan sangat disarankan untuk membawa jaket tebal karena suhu di puncak bisa turun hingga 5–10 derajat Celsius, terutama pada dini hari. Masker gas atau setidaknya masker kain juga wajib dibawa untuk melindungi saluran pernapasan dari paparan gas belerang yang bisa terasa menyengat di sekitar kawah. Pemandu lokal tersedia di Paltuding bagi wisatawan yang ingin mendaki dengan lebih aman dan mendapat penjelasan mendalam tentang sejarah serta kondisi geologi Kawah Ijen.\r\nKawasan wisata Kawah Ijen telah dikelola dengan baik oleh Balai Besar Konservasi Sumber Daya Alam (BBKSDA) Jawa Timur dan terus mengalami peningkatan fasilitas dari tahun ke tahun. Tersedia area parkir yang luas, toilet umum, warung makan, serta penginapan di sekitar kawasan Paltuding. Bagi wisatawan yang ingin menikmati dua pengalaman sekaligus, Kawah Ijen sering dikombinasikan dengan kunjungan ke Taman Nasional Baluran atau Pantai Pulau Merah yang juga terletak di Kabupaten Banyuwangi, menjadikan perjalanan ke ujung timur Pulau Jawa ini sebagai petualangan wisata alam yang benar-benar lengkap dan tak terlupakan.', '6a2ba9f351aaa.jpg', 'Jumat, 12 Juni 2026 | 13:40');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES
(17, 'Teknologi', 'Perkembangan teknologi saat ini'),
(18, 'Sosok inspiratif', 'Sosok yang mengisnpirasi'),
(19, 'Pendidikan', 'Pentingnya pendidikan'),
(20, 'Motivasi', 'Motivasi untuk kita'),
(25, 'Wisata Alam', 'Rekomendasi wisata alam di pulau Jawa');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `user_name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES
(29, 'JEROME', 'POLIN', 'jerome.polin', '$2y$10$zjeVsMKAo7/Z/BZynucDk.L7NP9Ck9iUSqVFntjRZHPOJAr29iVlW', '1780848269_JEROME POLIN.png'),
(30, 'NAJWA', 'SIHAB', 'inisihab', '$2y$10$RjZJv/agt.NtaJn6wXZKF.RYSCX7NW95P9/4O7UkNjpHPHWma1/8W', '1780844099_NAJWA SIHAB.png'),
(32, 'MAUDY', 'AYUNDA', 'maudyy.aynd', '$2y$10$/iRlLfXJ1PWC9sDU3vL0WeaBkHai6bFxPNbfix2da26KSHybeUyTi', '1780844087_MAUDY AYUNDA.png'),
(36, 'Salwa', 'Zakia', 'salwa.zakia', '$2y$12$S8yOYHc75iWWxy3Za82CFOGzL7o1JSrKNG8tf272h4rf2RcWZD8i.', '6a2baa3db3cb1.png');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ITKkAGyCfoIZFhnYdRiFzXXhio6XhvN79tIppYxF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 Edg/149.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFJVRlhvQnRIZzZ2eEhFVGF5ZkVDcGZ0cFU1YXpkMENVSHQ1WEFtbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9iZXJhbmRhIjtzOjU6InJvdXRlIjtzOjEyOiJwdWJsaWsuaW5kZXgiO319', 1781247525);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`, `email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Salwa', 'Zakia', 'salwa.zakia', '$2y$12$YC8vVB0mLk3JYJO4iunq1eVLBkAnpWQbnnjpRlPNHVV0LIZ/w7sH2', 'me.jpg', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_penulis` (`id_penulis`),
  ADD KEY `fk_artikel_kategori` (`id_kategori`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nama_kategori` (`nama_kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_name` (`user_name`);

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
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
