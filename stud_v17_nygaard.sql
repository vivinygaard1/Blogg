-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24. Apr, 2017 13:22 PM
-- Server-versjon: 10.1.20-MariaDB
-- PHP Version: 7.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stud_v17_nygaard`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(512) NOT NULL,
  `author_email` varchar(512) NOT NULL,
  `author_password` varchar(512) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_email`, `author_password`, `date_created`) VALUES
(1, 'admin4', 'admin4@gmail.com', '$2y$10$3oMm5m3Dx0KccBTwfBe7gOpNUOKhM2T3WePwePdwDAFPCS0a3pEEm', '2017-04-22 14:20:12');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `is_enable` int(11) NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `deleted_comment`
--

CREATE TABLE `deleted_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `tags` varchar(512) NOT NULL,
  `content` text NOT NULL,
  `banner` varchar(512) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `tags`, `content`, `banner`, `date_created`) VALUES
(1, 1, 'Tesla tilbakekaller 53.000 biler', 'Elbil, Tesla', 'Elbilprodusenten Tesla tilbakekaller 53.000 biler, melder selskapet torsdag kveld norsk tid.\r\n\r\nIfølge en pressemelding fra selskapet er det en «potensiell produksjonsfeil med den elektriske parkeringsbremsen», og både Model S og -X skal være berørt.\r\n\r\nTesla opplyser at tilbakekallingen gjelder over hele verden, og bilene som er berørt er de som er bygget mellom februar og oktober i fjor.\r\nSelskapet skriver også at de ikke tror problemet vil føre til sikkerhetsutfordringer, og at det ikke har blitt rapportert om noen ulykker eller skader relatert til problemet.\r\n\r\nTesla anslår at kun fem prosent av bilene som tilbakekalles er berørt, men at de velger å være på den sikre siden, da det er vanskelig å vite akkurat hvilke biler det gjelder.\r\n\r\nSamtidig gjør de det klart at dette ikke vil ha noen økonomiske konsekvenser for selskapet, da produsenten vil ta kostnaden.\r\n\r\nSelve skiftet av parkeringsbremsen vil ta under 45 minutter.\r\n\r\nTesla-aksjen falt umiddelbart rundt seks dollar da nyheten ble kjent.', 'Tesla2.jpg', '2017-04-22 14:37:31'),
(2, 1, 'Skoda og Audi med nye elbiler', 'Elbil, Skoda, Audi', 'Her ser du Vision E, konseptet på Skodas kommende elbil. Den vises i Shanghai, er litt større enn Octavia, er langt på vei selvkjørende – og lanseres i 2020. Også Audi viser en ny elbil i Shanghai.\r\n\r\nFor noen uker siden kunne du på BilNorge lese om Vision E, det batterielektriske konseptet Skoda har tatt med seg til Shanghai-utstillingen for å verdensvise bilen der.\r\n\r\nNå er Skodas elbil-konsept offisielt.\r\nVision E er Skodas første helelektriske bilmodell og inneholder to elmotorer slik at den firehjulsdrevne bilen får 306 hk i samlet effekt.\r\n\r\nSkoda har ikke sagt noe om hvor raskt Vision E tar deg fra stillestående til 100 km/t, men med så mye motorkraft vil dette utvilsomt være på Tesla-nivå. Toppfarten begrenses til 180 km/t.\r\n\r\nLangt viktigere er rekkevidden, som Skoda oppgir til 500 kilometer. 500 kilometer målt etter NEDC-standarden betyr 350–400 kilometer bruksrekkevidde i den varme årstiden. Men for å oppnå en slik rekkevidde må batteripakken være på minimum 60 kWh som er identisk med batteriet i Opels Ampera-e.', 'Audi.jpg', '2017-04-22 14:42:23');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(120) NOT NULL,
  `user_email` varchar(120) NOT NULL,
  `user_password` varchar(120) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `date_created`) VALUES
(1, '', '', '$2y$10$3oMm5m3Dx0KccBTwfBe7gOpNUOKhM2T3WePwePdwDAFPCS0a3pEEm', '2017-04-22 14:15:48'),
(2, '', '', '$2y$10$FSo/hzmM1f4IyP90QgOfGenZjimY8e0Qnj3IRg9.hShp6dzLK05wK', '2017-04-22 15:17:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `deleted_comment`
--
ALTER TABLE `deleted_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deleted_comment`
--
ALTER TABLE `deleted_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
