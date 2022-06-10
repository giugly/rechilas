-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2022 a las 01:16:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rechilas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `artistx` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `link` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_cancion`, `nombre`, `artistx`, `genero`, `link`) VALUES
(1, 'shy away', 'twenty one pilots', 'pop rock', 'https://www.youtube.com/watch?v=3sO-Y1Zbft4'),
(3, 'Trsites Ojos', 'Ramona', 'Pop Alternativo', 'https://www.youtube.com/watch?v=AH4kKnNuHh0'),
(4, 'Poder', 'Luca Bocci', 'Rock Alternativo', 'https://www.youtube.com/watch?v=KOUEqjuyDWQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarixs`
--

CREATE TABLE `usuarixs` (
  `correo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contra` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarixs`
--

INSERT INTO `usuarixs` (`correo`, `usuario`, `contra`) VALUES
('giulialopezmdo@gmail.com', 'giuuuugly', 'meqieromorir'),
('harvey@gmail.com', 'harvey', 'harvey'),
('tomillo@gmail.com', 'millo', '6666666'),
('wally@gmail.com', 'wally', 'wally');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`);

--
-- Indices de la tabla `usuarixs`
--
ALTER TABLE `usuarixs`
  ADD PRIMARY KEY (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
