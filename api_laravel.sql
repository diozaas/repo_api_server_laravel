-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 27 Jan 2019 pada 13.47
-- Versi Server: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukus`
--

CREATE TABLE `bukus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sampul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bukus`
--

INSERT INTO `bukus` (`id`, `sampul`, `nama`, `pengarang`, `tahun_terbit`, `isbn`, `created_at`, `updated_at`) VALUES
(1, '8a05a4481da92a9a043c4f2260e8e550.jpg', 'Mock Turtle, capering.', 'Francesca Brown', '1984', '9789504002529', '2019-01-26 16:10:34', '2019-01-26 16:10:34'),
(2, 'eea84d181dd584dbe6d489ac60b08fdc.jpg', 'Bill,\' thought Alice,).', 'Jace Senger I', '2008', '9784216838930', '2019-01-26 16:10:55', '2019-01-26 16:10:55'),
(3, '5a20a3819d7ed2a1098a77f251e22ae8.jpg', 'Alice, (she had grown.', 'Joelle Leannon', '2014', '9785533453639', '2019-01-26 16:11:14', '2019-01-26 16:11:14'),
(4, '8be42763479b3c0a2b0e82b3db30b7b1.jpg', 'The Knave of Hearts, he.', 'Watson Mueller', '1982', '9789804436994', '2019-01-26 16:11:34', '2019-01-26 16:11:34'),
(5, '0fc3628321b307a44607574840bc2fea.jpg', 'Alice; \'I must be.', 'Murray Parker', '1972', '9780546460926', '2019-01-26 16:12:04', '2019-01-26 16:12:04'),
(6, 'aa8cc251258da080dc593414138355ca.jpg', 'Rabbit angrily. \'Here!.', 'Ubaldo Lindgren', '1990', '9794026859902', '2019-01-26 16:12:21', '2019-01-26 16:12:21'),
(7, '58e141e57b83a79eaee3c2d1ef979484.jpg', 'Queen! The Queen!\' and.', 'Prof. Vicenta Lindgren II', '1990', '9783508066501', '2019-01-26 16:12:39', '2019-01-26 16:12:39'),
(8, 'f21a2e5adff8f00fb8ed7d411aaf2a11.jpg', 'I said "What for?"\'.', 'Prof. Alva Lubowitz', '1982', '9780184161124', '2019-01-26 16:13:03', '2019-01-26 16:13:03'),
(9, '759fd4652f5ab42f6988767559eeeeb5.jpg', 'Alice, \'to pretend to.', 'Agustin Ernser III', '1974', '9790533746643', '2019-01-26 16:13:15', '2019-01-26 16:13:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_26_221809_create_bukus_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukus`
--
ALTER TABLE `bukus`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
