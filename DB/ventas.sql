-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 29-10-2025 a las 15:11:23
-- Versión del servidor: 10.6.5-MariaDB
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

DROP TABLE IF EXISTS `caja`;
CREATE TABLE IF NOT EXISTS `caja` (
  `caja_id` int(5) NOT NULL AUTO_INCREMENT,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL,
  PRIMARY KEY (`caja_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`caja_id`, `caja_numero`, `caja_nombre`, `caja_efectivo`) VALUES
(1, 1, 'Caja Principal', '0.00'),
(2, 2, 'perfect', '1200.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria_id` int(7) NOT NULL AUTO_INCREMENT,
  `categoria_nombre` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `categoria_ubicacion` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(1, 'Videojuegos', 'Tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cliente_id` int(10) NOT NULL AUTO_INCREMENT,
  `cliente_tipo_documento` varchar(20) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_numero_documento` varchar(35) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_nombre` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_apellido` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_provincia` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_ciudad` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_direccion` varchar(70) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_telefono` varchar(20) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `cliente_email` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_tipo_documento`, `cliente_numero_documento`, `cliente_nombre`, `cliente_apellido`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_telefono`, `cliente_email`) VALUES
(1, 'Otro', 'N/A', 'Publico', 'General', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(2, 'Pasaporte', '1234-BLABLALA', 'Jorji', 'Costava', 'Cobrastan', 'Escal', 'Aprobaciudad', '123456789', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `empresa_id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_nombre` varchar(90) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `empresa_telefono` varchar(20) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `empresa_email` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `empresa_direccion` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `empresa_nombre`, `empresa_telefono`, `empresa_email`, `empresa_direccion`) VALUES
(1, 'gualmart', '23453462', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `producto_id` int(20) NOT NULL AUTO_INCREMENT,
  `producto_codigo` varchar(77) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_nombre` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_stock_total` int(25) NOT NULL,
  `producto_tipo_unidad` varchar(20) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_marca` varchar(35) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_modelo` varchar(35) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_estado` varchar(20) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_foto` varchar(500) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `categoria_id` int(7) NOT NULL,
  PRIMARY KEY (`producto_id`),
  KEY `categoria_id` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock_total`, `producto_tipo_unidad`, `producto_precio_compra`, `producto_precio_venta`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_foto`, `categoria_id`) VALUES
(1, '43265737386', 'Metal Gear Solid Delta', 3, 'Unidad', '1200.00', '1500.00', 'Konami', 'Playstation', 'Habilitado', '43265737386_38.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_id` int(7) NOT NULL AUTO_INCREMENT,
  `usuario_nombre` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_apellido` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_email` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_usuario` varchar(30) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_clave` varchar(535) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_foto` varchar(200) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `caja_id` int(5) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `caja_id` (`caja_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_foto`, `caja_id`) VALUES
(1, 'Administrador', 'Principal', '', 'Administrador', '$2y$10$Jgm6xFb5Onz/BMdIkNK2Tur8yg/NYEMb/tdnhoV7kB1BwIG4R05D2', '', 1),
(2, 'Goro', 'Akechi', 'undesirable@phansite.com', 'Crow', '$2y$10$OF8fk3z7akuPVrKqdIEMDO1EIVXTMCsuoDlcxJX4iQU7ADisrE8Cu', 'Goro_59.png', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
  `venta_id` int(30) NOT NULL AUTO_INCREMENT,
  `venta_codigo` varchar(200) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `usuario_id` int(7) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `caja_id` int(5) NOT NULL,
  PRIMARY KEY (`venta_id`),
  UNIQUE KEY `venta_codigo` (`venta_codigo`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `caja_id` (`caja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

DROP TABLE IF EXISTS `venta_detalle`;
CREATE TABLE IF NOT EXISTS `venta_detalle` (
  `venta_detalle_id` int(100) NOT NULL AUTO_INCREMENT,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `venta_codigo` varchar(200) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_id` int(20) NOT NULL,
  PRIMARY KEY (`venta_detalle_id`),
  KEY `venta_id` (`venta_codigo`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
