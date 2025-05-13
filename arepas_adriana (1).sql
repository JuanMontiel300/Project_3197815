-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2024 a las 21:29:27
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.27

SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arepas adriana`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(10) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `TELEFONO` varchar(10) NOT NULL,
  `CORREO` varchar(20) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL,
  `CODIGO` int(10) NOT NULL
) ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `CORREO`, `DIRECCION`, `CODIGO`) VALUES
(1110174687, 'Juan Sebastian', 'Montiel Quimbayo', '3162914315', 'montielsebastian555@', 'calle 40 sur 72g 23', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_EMPLEADO` int(10) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `CARGO` varchar(20) NOT NULL,
  `FECHA_DE_NACIMIENTO` date NOT NULL,
  `TELEFONO` varchar(10) NOT NULL,
  `CORREO` varchar(20) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `CODIGO` int(10) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `INGREDIENTES` varchar(80) NOT NULL,
  `TAMAÑO` varchar(20) NOT NULL,
  `CANTIDAD` int(10) NOT NULL,
  `PRECIO` int(10) NOT NULL,
  `ID_CLIENTE` int(10) NOT NULL
) ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`CODIGO`, `NOMBRE`, `INGREDIENTES`, `TAMAÑO`, `CANTIDAD`, `PRECIO`, `ID_CLIENTE`) VALUES
(0, 'AREPA CON QUESO', 'ARINA, QUESO, MANTEQUILLA, AGUA, ACEITE, SAL', '', 20, 2000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `INT` int(10) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `TELEFONO` varchar(10) NOT NULL,
  `UBICACION` varchar(20) NOT NULL,
  `CORREO` varchar(20) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_completo`, `correo`, `usuario`, `contrasena`) VALUES
(1, 'sanchez diaz', 'sanchezdiazjuansebastian038@gmail.com', 'SebastiÃ¡n 23', '222222'),
(2, 'juan sebastian Montiel', 'montielsebastian555@gmail.com', 'montiel 273', '666666');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_EMPLEADO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`INT`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
