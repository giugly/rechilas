-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2021 a las 18:41:53
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

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
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id_album` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Interprete` varchar(50) NOT NULL,
  `Disquera` varchar(50) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id_album`, `Nombre`, `Interprete`, `Disquera`, `link`) VALUES
(18, 'The New Abnormal', 'The Strokes', 'Cult Records', 'https://youtube.com/playlist?list=OLAK5uy_mIPgAqJi0-TwDIDkX8x0jvBb9TqXTEdVw'),
(19, 'Ahora', 'Luca Bocci', 'Indie Folks', 'https://www.youtube.com/playlist?list=OLAK5uy_mHlQ2G3Z1BE8K9oClWEzXqe5jNQBLaFnY'),
(20, 'Fuego Artificial', 'Las Ligas Menores', 'Discos Laptra', 'https://open.spotify.com/album/3e2SVjsf68I0bdnMxjIRPR?si=MWpxr5w9SXmwb46ZOXzyhw'),
(21, 'Lover', 'Taylor Swift', 'Fulled By Ramen', 'https://open.spotify.com/album/1NAmidJlEaVgA3MpcPFYGq?si=DnOj045XSlGWEYPWP5jZ2g');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id_artista` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Origen` varchar(50) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id_artista`, `Nombre`, `Genero`, `Origen`, `link`) VALUES
(15, 'Soda Stereo', 'Rock', 'Argentina', 'https://www.youtube.com/channel/UC_MAancGcA0YeACrpSwokhQ'),
(16, 'The Smiths', 'Post Punk', 'Inglaterra', 'https://www.youtube.com/channel/UC-sdfo_ho6Nq3OH8RUHBrNg'),
(17, 'Tobogan Andaluz', 'Indie Rock', 'Argentina', 'https://open.spotify.com/artist/5CQkSfQ3zzYAojW7qa35RC?si=OyfJaCFYRiSpUMfKs_9HgA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Interprete` varchar(50) NOT NULL,
  `Genero` varchar(30) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_cancion`, `Nombre`, `Interprete`, `Genero`, `link`) VALUES
(34, 'Hot tea', 'Half Alive', 'Dance Pop', 'https://www.youtube.com/watch?v=NRfCFf-vlEk'),
(35, 'Kill The Director', 'The Wombats', 'New Wave', 'https://www.youtube.com/watch?v=DU9dgtLsz90'),
(38, 'Nothing', 'Rex Orange County', 'Dream Pop', 'https://www.youtube.com/watch?v=oaC0maySz-c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `correo` varchar(50) NOT NULL,
  `Apodo` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `Artista_favorito` varchar(50) NOT NULL,
  `Playlists` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`correo`, `Apodo`, `clave`, `Artista_favorito`, `Playlists`) VALUES
('brillitos@gmail.com', 'brillitos', 'sopita3000', 'GRLwood', 5),
('cuchu@gmail.com', 'cuchufli', 'catlover3', 'Mitski', 3),
('mon@gmail.com', 'Mon', 'venti-san98', 'Mitskii', 14),
('sha@gmail.com', 'Sha', 'Italia03', 'Men I Trust', 1),
('sopita666@gmail.com', 'Sopa', 'pijlover', '31 minutos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarixs`
--

CREATE TABLE `usuarixs` (
  `correo` varchar(50) NOT NULL,
  `apodo` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarixs`
--

INSERT INTO `usuarixs` (`correo`, `apodo`, `clave`) VALUES
('bennett@gmail.com', 'benny', 'razor657'),
('giu@hotmail.com', 'giuu', 'mequieromatar'),
('mirna@gmail.com', 'mirna', 'gatitos'),
('montse@gmail.com', 'mon', 'perritos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id_album`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`correo`);

--
-- Indices de la tabla `usuarixs`
--
ALTER TABLE `usuarixs`
  ADD PRIMARY KEY (`correo`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
