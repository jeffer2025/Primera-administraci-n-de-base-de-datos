-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 00:18:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_escuelita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre_grado` varchar(50) NOT NULL,
  `seccion` varchar(5) NOT NULL,
  `aula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre_grado`, `seccion`, `aula`) VALUES
(1, 'Primer Grado', 'A', 'Aula 1'),
(2, 'Primer Grado', 'B', 'Aula 2'),
(3, 'Segundo Grado', 'A', 'Aula 3'),
(4, 'Segundo Grado', 'B', 'Aula 4'),
(5, 'Tercer Grado', 'A', 'Aula 5'),
(6, 'Tercer Grado', 'B', 'Aula 6'),
(7, 'Cuarto Grado', 'A', 'Aula 7'),
(8, 'Cuarto Grado', 'B', 'Aula 8'),
(9, 'Quinto Grado', 'A', 'Aula 9'),
(10, 'Quinto Grado', 'B', 'Aula 10'),
(11, 'Sexto Grado', 'A', 'Aula 11'),
(12, 'Sexto Grado', 'B', 'Aula 12'),
(13, 'Séptimo Grado', 'A', 'Aula 13'),
(14, 'Séptimo Grado', 'B', 'Aula 14'),
(15, 'Séptimo Grado', 'C', 'Aula 15'),
(16, 'Octavo Grado', 'A', 'Aula 16'),
(17, 'Octavo Grado', 'B', 'Aula 17'),
(18, 'Octavo Grado', 'C', 'Aula 18'),
(19, 'Noveno Grado', 'A', 'Aula 19'),
(20, 'Noveno Grado', 'B', 'Aula 20'),
(21, 'Noveno Grado', 'C', 'Aula 21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL,
  `id_profesor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 'Lenguaje y Literatura', 1),
(2, 'Matemática y Datos', 2),
(3, 'Ciencia y Tecnología', 3),
(4, 'Ciudadanía y Valores', 4),
(5, 'Inglés', 5),
(6, 'Educación Física y Deportes', 6),
(7, 'Lenguaje y Literatura', 7),
(8, 'Matemática y Datos', 8),
(9, 'Ciencia y Tecnología', 9),
(10, 'Ciudadanía y Valores', 10),
(11, 'Inglés', 11),
(12, 'Educación Física y Deportes', 12),
(13, 'Lenguaje y Literatura', 13),
(14, 'Matemática y Datos', 14),
(15, 'Ciencia y Tecnología', 15),
(16, 'Ciudadanía y Valores', 16),
(17, 'Inglés', 17),
(18, 'Educación Física y Deportes', 18),
(19, 'Lenguaje y Literatura', 19),
(20, 'Matemática y Datos', 20),
(21, 'Ciencia y Tecnología', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `nombre`, `apellido`, `telefono`, `email`) VALUES
(1, 'José', 'Alvarenga', '7123-4567', 'jose.alvarenga@edu.sv'),
(2, 'María', 'Henríquez', '6154-8921', 'maria.henriquez@edu.sv'),
(3, 'Manuel', 'Pleitez', '7845-1236', 'manuel.pleitez@edu.sv'),
(4, 'Ana', 'Quintanilla', '6021-5478', 'ana.quintanilla@edu.sv'),
(5, 'Carlos', 'Melgar', '7589-6321', 'carlos.melgar@edu.sv'),
(6, 'Glenda', 'Villalobos', '7210-4589', 'glenda.villalobos@edu.sv'),
(7, 'Roberto', 'Orellana', '6412-7895', 'roberto.orellana@edu.sv'),
(8, 'Sandra', 'Menjívar', '7985-6123', 'sandra.menjivar@edu.sv'),
(9, 'Luis', 'Chicas', '6102-3498', 'luis.chicas@edu.sv'),
(10, 'Patricia', 'Zelaya', '7025-8961', 'patricia.zelaya@edu.sv'),
(11, 'Francisco', 'Palacios', '7741-2589', 'francisco.palacios@edu.sv'),
(12, 'Beatriz', 'Cortez', '6301-4785', 'beatriz.cortez@edu.sv'),
(13, 'Walter', 'Guadrón', '7520-3694', 'walter.guadron@edu.sv'),
(14, 'Elena', 'Interiano', '6201-9584', 'elena.interiano@edu.sv'),
(15, 'Jorge', 'Lovo', '7814-2536', 'jorge.lovo@mined.edu.sv'),
(16, 'Rosa', 'Funes', '7036-1425', 'rosa.funes@edu.sv'),
(17, 'Mauricio', 'Carcamo', '6147-8523', 'mauricio.carcamo@edu.sv'),
(18, 'Carmen', 'Benítez', '7412-5896', 'carmen.benitez@edu.sv'),
(19, 'Óscar', 'Maldonado', '7963-2514', 'oscar.maldonado@.edu.sv'),
(20, 'Silvia', 'Rivas', '6014-7896', 'silvia.rivas@edu.sv'),
(21, 'Héctor', 'Chávez', '7258-9631', 'hector.chavez@edu.sv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutores`
--

CREATE TABLE `tutores` (
  `id_tutor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono_principal` varchar(20) NOT NULL,
  `telefono_secundario` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tutores`
--

INSERT INTO `tutores` (`id_tutor`, `nombre`, `apellido`, `telefono_principal`, `telefono_secundario`, `email`, `direccion`) VALUES
(1, 'Juan', 'Pérez', '7021-3344', '2225-1122', 'juan.perez@gmail.com', 'Barrio El Centro, Avenida Guandique, Usulután'),
(2, 'María', 'García', '6102-4455', NULL, 'maria.gomez@hotmail.com', 'Colonia Sergio Torres, Pasaje 3, Usulután'),
(3, 'Carlos', 'López', '7541-6677', '2335-4411', 'carlos.lopez@yahoo.com', 'Residencial Prados de Usulután, Casa #14, Usulután'),
(4, 'Ana', 'Martínez', '7982-8899', NULL, 'ana.martinez@outlook.com', 'Barrio El Calvario, Calle Grimaldi, Usulután'),
(5, 'Luis', 'Rodríguez', '6013-0011', '2510-9988', 'luis.rod@gmail.com', 'Colonia La Poza, Pasaje Los Almendros, Usulután'),
(6, 'Marta', 'Hernández', '7244-2233', NULL, 'marta.hernandez@live.com', 'Barrio San Jacinto, Calle Asilo de Ancianos, Usulután'),
(7, 'Jorge', 'Flores', '7655-4466', '2441-3322', 'jorge.flores@gmail.com', 'Colonia Los Pilotos, Avenida Santiago, Usulután'),
(8, 'Elena', 'Gómez', '6166-7788', NULL, 'elena.gomez@gmail.com', 'Barrio Concepción, Calle Antigua a Santa María, Usulután'),
(9, 'Pedro', 'Vásquez', '7077-9900', '2884-5566', 'pedro.vasquez@hotmail.com', 'Colonia El Cocal, Pasaje Principal, Usulután'),
(10, 'Rosa', 'Cruz', '7388-1122', NULL, 'rosa.cruz@gmail.com', 'Cantón La Presa, Caserío Los Cruz, Usulután'),
(11, 'Miguel', 'Ramírez', '6299-3344', '2661-7788', 'miguel.ramirez@yahoo.com', 'Colonia Villa de Jesús, Pasaje 2, Usulután'),
(12, 'Juana', 'Sánchez', '7111-5566', NULL, 'juana.sanchez@gmail.com', 'Colonia El Espino, Calle Principal, Usulután'),
(13, 'Roberto', 'Díaz', '7422-7788', '2669-1100', 'roberto.diaz@gmail.com', 'Colonia Los Ángeles, Avenida Principal, Usulután'),
(14, 'Margarita', 'Reyes', '6033-9900', NULL, 'margarita.reyes@hotmail.com', 'Barrio La Parroquia, Calle Gerson Calito, Usulután'),
(15, 'José', 'Morales', '7544-1133', '2332-8877', 'jose.morales@gmail.com', 'Cantón Palo Galán, Caserío El Centro, Usulután'),
(16, 'Francisca', 'Gutierrez', '7755-3355', NULL, 'francisca.g@gmail.com', 'Colonia El Molino, Pasaje 5, Usulután'),
(17, 'Antonio', 'Castro', '6166-5577', '2288-4411', 'antonio.castro@yahoo.com', 'Colonia Las Flores, Pasaje Los Claveles, Usulután'),
(18, 'Teresa', 'Romero', '7077-7799', NULL, 'teresa.romero@gmail.com', 'Cantón Ojo de Agua, Usulután'),
(19, 'David', 'Alvarado', '7288-9911', '2311-5522', 'david.alvarado@gmail.com', 'Colonia Paraíso 2, Pasaje Los Cipreses, Usulután'),
(20, 'Isabel', 'Meza', '6399-1122', NULL, 'isabel.meza@hotmail.com', 'Colonia San José, Calle Principal, Usulután'),
(21, 'Francisco', 'Ayala', '7411-3344', '2245-6677', 'francisco.ayala@gmail.com', 'Urbanización Doña Mimí, Casa #8, Usulután'),
(22, 'Carmen', 'Escobar', '7122-5566', NULL, 'carmen.escobar@gmail.com', 'Colonia Ciudades Hermanas, Pasaje Norte, Usulután'),
(23, 'Manuel', 'Miranda', '7633-7788', '2555-1144', 'manuel.miranda@yahoo.com', 'Colonia Paraíso 1, Usulután'),
(24, 'Antonia', 'Castillo', '6044-9900', NULL, 'antonia.castillo@gmail.com', 'Barrio San Jacinto, Calle Principal, Usulután'),
(25, 'Guillermo', 'Fuentes', '7555-1122', '2998-3344', 'guillermo.f@gmail.com', 'Colonia Vista Hermosa, Pasaje Los Pinos, Usulután');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_profesor` (`id_profesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `tutores`
--
ALTER TABLE `tutores`
  ADD PRIMARY KEY (`id_tutor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tutores`
--
ALTER TABLE `tutores`
  MODIFY `id_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
