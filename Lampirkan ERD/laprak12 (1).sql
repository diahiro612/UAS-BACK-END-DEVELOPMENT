-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 05:37 PM
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
-- Database: `laprak12`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `mata_kuliah` varchar(50) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai_mahasiswa`
--

INSERT INTO `nilai_mahasiswa` (`id`, `nama_mahasiswa`, `mata_kuliah`, `nilai`) VALUES
(1, 'Andi', 'Matematika', 85),
(2, 'Budi', 'Fisika', 90),
(3, 'Citra', 'Kimia', 88);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'thoriq', 'thoriq@gmail.com', 'default.webp', '$2y$10$XjwxVnHYCGU4S6zr/MquAu95q.cblOBmBKJcSEc6.mPg0CfNWs8sO', 2, 1, 1734442688),
(2, 'Firman Asharudin', 'Firman@gmail.com', 'default.webp', '$2y$10$9gEwc1nFLyYRbVAGwtV0OeLkY0V/0rM.yXRNMnpfY0Tjs8JDN/Dni', 2, 1, 1734442895),
(3, 'Naufal', 'Naufal@gmail.com', 'default.webp', '$2y$10$iatMFhlTiMPDytzwLXXCgu.Jp2xNs0uR8qKSxhK8MUWAyBiOE5ZR.', 2, 1, 1734443295),
(4, 'Hiro', 'Hiro@gmail.com', 'default.webp', '$2y$10$a8PwCQb6xV7RHAb1ck2g0O8/BvA0kplqtCDAs7HdICJQgUomQVnJq', 2, 1, 1734443553),
(5, 'ivan', 'ivan@gmail.com', 'default.webp', '$2y$10$MJl9/g.rFZOcd84o6pkT8eK7WVhJL6f5xJFhzr8vQqYLSsWvuIpKq', 2, 1, 1734590503),
(6, 'admin', 'admin@gmail.com', 'default.webp', '$2y$10$/mxzfaL4rNEb3y4uy1BIUO1Asq2shokECVUe7TBLS0Ho.54Lw9a9a', 2, 1, 1734591098),
(8, 'syafiq', 'syafiq@gmail.com', 'default.webp', '$2y$10$dKJvCDqxv8jLbJiYKYGOIe.YZC52dDZ5FhEg8aAMIltbHVYPh26Vi', 2, 1, 1734593485);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
