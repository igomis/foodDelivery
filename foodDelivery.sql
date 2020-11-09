-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Temps de generació: 09-11-2020 a les 10:47:30
-- Versió del servidor: 8.0.21
-- Versió de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `foodDelivery`
--
CREATE DATABASE IF NOT EXISTS `foodDelivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `foodDelivery`;

-- --------------------------------------------------------

--
-- Estructura de la taula `foodPlates`
--

CREATE TABLE `foodPlates` (
  `id` int NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ingredients` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL,
  `idProvider` int NOT NULL,
  `available` tinyint(1) NOT NULL,
  `preu` int NOT NULL,
  `image` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `idUser` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `idFoodPlate` int NOT NULL,
  `quantity` tinyint NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `providers`
--

CREATE TABLE `providers` (
  `id` int NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Bolcament de dades per a la taula `providers`
--

INSERT INTO `providers` (`id`, `name`, `email`) VALUES
(1, 'Pastamania', 'ignasi.gomis.mullor@gmail.com'),
(2, 'Pizzanella', 'igomis@cipfpbatoi.es');

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `user` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rol` tinyint NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Bolcament de dades per a la taula `users`
--

INSERT INTO `users` (`user`, `password`, `email`, `rol`) VALUES
('admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'igomis@cipfpbatoi.es', 1);

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `foodPlates`
--
ALTER TABLE `foodPlates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foodPlates_providers` (`idProvider`);

--
-- Índexs per a la taula `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_users` (`idUser`),
  ADD KEY `orders_foodPlates` (`idFoodPlate`);

--
-- Índexs per a la taula `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `foodPlates`
--
ALTER TABLE `foodPlates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `foodPlates`
--
ALTER TABLE `foodPlates`
  ADD CONSTRAINT `foodPlates_providers` FOREIGN KEY (`idProvider`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriccions per a la taula `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_foodPlates` FOREIGN KEY (`idFoodPlate`) REFERENCES `foodPlates` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_users` FOREIGN KEY (`idUser`) REFERENCES `users` (`user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
