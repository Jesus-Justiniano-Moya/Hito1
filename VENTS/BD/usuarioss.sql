-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2021 a las 05:04:02
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarioss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cli` int(11) NOT NULL,
  `nom_user` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ape_user` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telf_user` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `dni_user` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `sex_user` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `direc_user` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cli`, `nom_user`, `ape_user`, `telf_user`, `dni_user`, `sex_user`, `direc_user`) VALUES
(1, 'Chuan', 'Picon', '987654321', '12345678', 'M', 'Jr. Crespo Castillo #674'),
(2, 'Daniel', 'Cortez', '987532321', '12323478', 'M', 'Jr. Abtao #233'),
(3, 'Laura', 'Bernachea', '987643221', '12544267', 'F', 'Jr. Ayancocha #323');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_de_pedido`
--

CREATE TABLE `detalle_de_pedido` (
  `id_DdP` int(11) NOT NULL,
  `distrito` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_de_pedido`
--

INSERT INTO `detalle_de_pedido` (`id_DdP`, `distrito`) VALUES
(1, 'Huánuco'),
(2, 'Huánuco'),
(3, 'Amarilis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pe` int(11) NOT NULL,
  `nom_pe` varchar(60) NOT NULL,
  `Estado_pe` int(11) NOT NULL,
  `Precio_pe` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pe`, `nom_pe`, `Estado_pe`, `Precio_pe`) VALUES
(1, 'Pedido 001', 0, '50'),
(2, 'Pedido 002', 0, '20'),
(3, 'Pedido 003', 0, '60');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_pro` int(11) NOT NULL,
  `tipo_pro` varchar(60) NOT NULL,
  `marca_pro` varchar(60) NOT NULL,
  `precio_pro` char(10) NOT NULL,
  `detalle_pro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_pro`, `tipo_pro`, `marca_pro`, `precio_pro`, `detalle_pro`) VALUES
(1, 'Fragil', 'Peru', '50', 'Vasos de vidrio'),
(2, 'Fragil', 'Phillips', '20', 'Focos LED'),
(3, 'Fragil', 'Queirolo', '60', 'Caja de Vino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id_ti` int(11) NOT NULL,
  `nom_ti` varchar(60) NOT NULL,
  `nom_prop_ti` varchar(60) NOT NULL,
  `direc_ti` varchar(45) NOT NULL,
  `telf_ti` varchar(9) NOT NULL,
  `rubro_ti` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id_ti`, `nom_ti`, `nom_prop_ti`, `direc_ti`, `telf_ti`, `rubro_ti`) VALUES
(1, 'Plaza Vea', 'Juan Pancho Gutierritos', 'Jr. Crespo Castillo #674', '987654321', 'Hogar'),
(2, 'Tottus', 'Sushi Alvarado Morales', 'Jr. Dos de Mayo #674', '987654321', 'Ferreteria'),
(3, 'Casa de Vino', 'Wyski Champan  Rikolino', 'Jr. Abtao #674', '987654321', 'Licoreria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioss`
--

CREATE TABLE `usuarioss` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DNI` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `sexo` text COLLATE utf8_unicode_ci NOT NULL,
  `cargo` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarioss`
--

INSERT INTO `usuarioss` (`id`, `usuario`, `password`, `email`, `nombre`, `apellidos`, `DNI`, `telefono`, `sexo`, `cargo`, `estado`) VALUES
(12, 'Jesus', '$2y$10$0EwdmIo6xw0ZrkgoV7JW2.CwmKZQcnVyWQPVq6FW7BLS/q72p7Ehi', 'Prueba1@gmail.com', 'Jesus', 'Justiniano Moya', 73443836, 980578519, 'Masculino', 'administrador', ''),
(13, 'Angel', '$2y$10$/WysVQyaUh7uiM.qy0IFW.xx/WFsn.9Tw0z.ZSKTJX9oi1aYbQDPq', 'a1@gmail.com', 'Angel', 'Justiniano Moya', 73443836, 980578519, 'Masculino', 'administrador', ''),
(14, 'Pedro', '$2y$10$3POdgG8jgKT9Cq6P0iP9Hefs7glLSmkb7OnKOYYrm3X9bnDFwNqHG', 'p2@gmail.com', 'Pedro', 'Infante Gonzales', 73443836, 980578519, 'Masculino', 'administrador', ''),
(15, 'Repartidor1', '$2y$10$r3ePAVtBjxlSLgXZ0INSd./p0RpfDXow.8d6o.VUGfF8MKfXzcZw2', 'rep1@gmail.com', 'Juan', 'diego de la cruz', 73443836, 980578519, 'Masculino', 'repartidor', ''),
(16, 'User1', '$2y$10$UQD66.prdWuKZ9IS9x8sD.AFqKURoRamC5Xi.ocZevDvIOxU07K..', 'user1@gmail.com', 'Dayana', 'Estoquial Ramires', 73443836, 980578519, 'Femenino', 'usuario', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cli`);

--
-- Indices de la tabla `detalle_de_pedido`
--
ALTER TABLE `detalle_de_pedido`
  ADD PRIMARY KEY (`id_DdP`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pe`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_pro`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id_ti`);

--
-- Indices de la tabla `usuarioss`
--
ALTER TABLE `usuarioss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_de_pedido`
--
ALTER TABLE `detalle_de_pedido`
  MODIFY `id_DdP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id_ti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarioss`
--
ALTER TABLE `usuarioss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
