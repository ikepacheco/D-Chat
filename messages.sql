-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2024 a las 00:14:56
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `messages`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `Id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `message` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`Id`, `user`, `message`, `fecha`) VALUES
(1, 'demon', 'oiek', '2024-02-27 03:39:22'),
(2, 'demon', 'este es un testeo medio largo a ver si esta bug', '2024-02-27 03:39:22'),
(3, 'demon', 'asdfas', '2024-02-27 03:39:22'),
(4, 'demon', 'testeo 2', '2024-02-27 03:39:22'),
(5, 'demon', 'aaaaaa', '2024-02-27 03:39:22'),
(6, 'demon', 'a', '2024-02-27 03:39:22'),
(7, 'demon', 'asdf', '2024-02-27 03:39:22'),
(8, 'demon', 'asdf', '2024-02-27 03:39:22'),
(9, 'demon', 'asdf', '2024-02-27 03:39:22'),
(10, 'demon', 'sadf', '2024-02-27 03:39:22'),
(11, 'demon', 'sadf', '2024-02-27 03:39:22'),
(12, 'demon', 'sadf', '2024-02-27 03:39:22'),
(13, 'demon', 'asdf', '2024-02-27 03:39:22'),
(14, 'demon', 'asdf', '2024-02-27 03:39:22'),
(15, 'demon', 'asdfasdf', '2024-02-27 03:39:22'),
(16, 'demon', 'asdfasdf', '2024-02-27 03:39:22'),
(17, 'demon', 'a3fa3wf', '2024-02-27 03:39:22'),
(18, 'demon', 'asdfasdf', '2024-02-27 03:39:22'),
(19, 'demon', 'a', '2024-02-27 03:39:22'),
(20, 'demon', 'fasdfasdf', '2024-02-27 03:39:22'),
(21, 'demon', 'teste', '2024-02-27 03:43:44'),
(22, 'demon', 'a', '2024-02-27 03:57:26'),
(23, 'demon', 'asdf', '2024-02-27 04:00:28'),
(24, 'demon', 'ayayaya ????', '2024-02-27 04:02:13'),
(25, 'demon', '❤️', '2024-02-27 04:08:26'),
(26, 'demon', '', '2024-02-27 04:10:28'),
(27, 'demon', '', '2024-02-27 04:10:44'),
(28, 'demon', '????', '2024-02-27 04:11:40'),
(29, 'demon', '????', '2024-02-27 04:14:42'),
(30, 'demon', '🙂', '2024-02-27 04:17:22'),
(31, 'demon', '😆', '2024-02-27 04:18:49'),
(32, 'demon', '😊', '2024-02-27 04:18:52'),
(33, 'demon', '😁', '2024-02-27 04:18:57'),
(34, 'demon', '❤️', '2024-02-27 04:24:47'),
(35, 'demon', '\'😁\': \'\\u{1F601}\',             \'😊\': \'\\u{1F60A}\',             \'😆\': \'\\u{1F606}\',             \'😜\': \'\\u{1F609}\',             \'😘\': \'\\u{1F618}\',             \'😛\': \'\\u{1F61B}\',             \'😜\': \'\\u{1F61C}\',             \'🤑\': \'\\u{1F911}\',             \'😑\': \'\\u{1F611}', '2024-02-27 04:24:59'),
(36, 'demon', 'asdf', '2024-02-27 04:34:10'),
(37, 'demon', 'asdf', '2024-02-27 04:34:10'),
(38, 'demon', 'asdf', '2024-02-27 04:34:10'),
(39, 'demon', 'asd', '2024-02-27 04:34:11'),
(40, 'demon', 'fas', '2024-02-27 04:34:11'),
(41, 'demon', 'df', '2024-02-27 04:34:11'),
(42, 'demon', 'sadf', '2024-02-27 04:34:11'),
(43, 'demon', 'asdf', '2024-02-27 04:34:11'),
(44, 'demon', 'asdf', '2024-02-27 04:34:11'),
(45, 'demon', 'asd', '2024-02-27 04:34:12'),
(46, 'demon', 'fas', '2024-02-27 04:34:12'),
(47, 'demon', 'df', '2024-02-27 04:34:12'),
(48, 'demon', 'asdf', '2024-02-27 04:34:12'),
(49, 'demon', 'asdf', '2024-02-27 04:34:12'),
(50, 'demon', 'ag', '2024-02-27 04:34:13'),
(51, 'demon', '3', '2024-02-27 04:34:13'),
(52, 'demon', 'g', '2024-02-27 04:34:13'),
(53, 'demon', '345h', '2024-02-27 04:34:13'),
(54, 'demon', '34', '2024-02-27 04:34:13'),
(55, 'demon', 'h3', '2024-02-27 04:34:13'),
(56, 'demon', 'g', '2024-02-27 04:34:14'),
(57, 'demon', '2h', '2024-02-27 04:34:14'),
(58, 'demon', '2341', '2024-02-27 04:34:14'),
(59, 'demon', 't', '2024-02-27 04:34:14'),
(60, 'demon', '12r', '2024-02-27 04:34:15'),
(61, 'demon', '12f', '2024-02-27 04:34:15'),
(62, 'demon', '12f', '2024-02-27 04:34:15'),
(63, 'demon', '12f', '2024-02-27 04:34:16'),
(64, 'demon', 'y5haseyasetaset', '2024-02-27 04:34:17'),
(65, 'demon', 'asdfasfd', '2024-02-27 04:35:28'),
(66, 'demon', 'dfasdfasdf', '2024-02-27 04:35:33'),
(67, 'demon', 'alo', '2024-02-27 04:35:46'),
(68, 'demon', 'a', '2024-02-27 04:42:27'),
(69, 'demon', 's', '2024-02-27 04:43:44'),
(70, 'demon', 'sdf', '2024-02-27 04:45:20'),
(71, 'asd', 'holis', '2024-02-27 04:47:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
