-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2026 at 04:23 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `body` text NOT NULL,
  `mark` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `date_comment` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `postname` varchar(30) NOT NULL,
  `id_author` int(11) NOT NULL,
  `body` text NOT NULL,
  `category` varchar(20) NOT NULL,
  `public_status` tinyint(1) NOT NULL,
  `mark` int(11) NOT NULL,
  `date_create` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_post`, `postname`, `id_author`, `body`, `category`, `public_status`, `mark`, `date_create`) VALUES
(1, 'Prawda', 3, 'Każdy człowiek ma wartość prawdziwą: prawdę, ogląd świata. Nie znaczy to, że prawda, przez duże P, jest względna. Nic podobnego. Ona jest fragmentarycznie odczuwana z wielu stron i posiada w sobie nieprzebrane sposoby akcentacji. A jednak, jest jedna.', 'Postmodernizm', 3, 0, '2026-03-28'),
(2, 'Prawda', 3, 'Każdy człowiek ma wartość prawdziwą: prawdę, ogląd świata. Nie znaczy to, że prawda, przez duże P, jest względna. Nic podobnego. Ona jest fragmentarycznie odczuwana z wielu stron i posiada w sobie nieprzebrane sposoby akcentacji. A jednak, jest jedna.', 'Postmodernizm', 0, 0, '2026-03-28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nickname_user` varchar(30) NOT NULL,
  `email_user` varchar(40) NOT NULL,
  `password_user` varchar(40) NOT NULL,
  `prestige_user` int(11) NOT NULL,
  `date_registration` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nickname_user`, `email_user`, `password_user`, `prestige_user`, `date_registration`) VALUES
(1, 'yellowAdmin', 'szymon.baluk@ckziusk.pl', 'Komputer1x', 100, '2026-03-28 19:02:33');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
