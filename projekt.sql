-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 12:53 AM
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
  `nickname_user` varchar(30) DEFAULT NULL,
  `email_user` varchar(50) DEFAULT NULL,
  `password_user` varchar(200) DEFAULT NULL,
  `prestige_user` int(11) DEFAULT NULL,
  `data_registration_user` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nickname_user`, `email_user`, `password_user`, `prestige_user`, `data_registration_user`) VALUES
(1, 'admin', NULL, 'admin', 100, '0000-00-00 00:00:00'),
(2, 'm@mail.pl', 'm@mail.pl', '$2y$10$q7RmNGU/yciVxSEET14dHOGotJ48TxkyfdkFr31LZ/dfRIMTplFDi', 0, '0000-00-00 00:00:00'),
(3, 'm@mail.pl', 'm@mail.pl', '$2y$10$R0Uw3BWPKHSHoFTnjuZzWe3hRXEyx4qxn3DxHr69GHC87JgGdXep.', 0, '0000-00-00 00:00:00'),
(4, 'afas', 'szymodfhn@balhduk.pl', '$2y$10$owI3FxUz3VBQjhtCcTrwaudt51K6WcD4xPPreYWPBQdYsdR.XaqAa', 0, '0000-00-00 00:00:00'),
(5, 'afas', 'szymodfhn@balhduk.pl', '$2y$10$MGLMXY.z./2w2EUqiKeDAuIbCOrQ/J2.Y/BuI4z6KQ6ZUnwcsJKJq', 0, '0000-00-00 00:00:00'),
(6, 'afas', 'szymodfhn@balhduk.pl', '$2y$10$5V3K8i9z8HnQ3Byk2En1O.llFgU7Z83ve7B5JP0k0tyby9TpIdvLW', 0, '2026-03-29 16:49:07'),
(7, 'afas', 'szymodfhn@balhduk.pl', '$2y$10$fll9fTypIPv.yNGey6dOKeuMd/R6e/r9m/Aj3MXFYgIzKMp8U5AZy', 0, '2026-03-29 17:11:01'),
(8, 'tui', 'szymodfhn@balhduk.pl', '$2y$10$AtGJcykcjuytuPTmGC/DIe/kRzF2pdtyA6KRyLISu1JtCzzA/9bSi', 0, '2026-03-29 17:48:06'),
(9, '1er', 'szymodfhn@balhduk.pl', '$2y$10$p6.gN9LvYDQMQ./U17n/R..RWhbBK5m0ExsNwGdU7jKFVMygOW3RS', 0, '2026-03-29 17:50:57'),
(10, 'tui', 'szymodfhn@balhduk.pl', '$2y$10$HdpOUY9ubWIX5gMSzrgXz.khF/FlFinlEFUr3rciV2NR7ncFc2Jnm', 0, '2026-03-29 17:51:54'),
(11, 'tui', 'szymodfhn@balhduk.pl', '$2y$10$oApOgJfDh8Wtod07AFS5YegyC2ykPoq.YP4cnxC2AY0XMGH.p9H3.', 0, '2026-03-29 17:54:55'),
(12, 'tui', 'szymodfhn@balhduk.pl', '$2y$10$Wtv9SHYyuwq1Mb1hsNhqVOi5f5gpWdNfvmdQAlJCkLMF84lCotNJ.', 0, '2026-03-29 17:55:14'),
(13, 'm@mail.pl', 'szymodfhn@balhduk.pl', '$2y$10$NirY4fJn5g93gPSgi0gU8uY3WjdSp8DjOmeAX8bDIXu3DXaIjrZfa', 0, '2026-03-29 19:36:50'),
(14, 'yellow', 'n@mail.pl', '$2y$10$abHVyJumN8/ofnGOWQZeX.bFBL0UCvJ8Spcb8Md1MA58EejsvXDHG', 0, '2026-03-29 22:28:46'),
(15, 'afas', 'szgbaluk@gmail.com', '$2y$10$KShqP7DDA/6M0oGOU.WtBOxYM2pBfgh1JlM65umqASJdvSXK6xODe', 0, '2026-03-29 22:32:18');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
