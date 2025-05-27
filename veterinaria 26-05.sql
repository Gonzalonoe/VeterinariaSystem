-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2025 a las 21:50:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `Id` int(11) NOT NULL,
  `Id_Turno` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Motivo` text DEFAULT NULL,
  `Diagnostico` text DEFAULT NULL,
  `Tratamiento` text DEFAULT NULL,
  `ArchivoAdjunto` varchar(255) DEFAULT NULL,
  `Id_Mascota` int(11) DEFAULT NULL,
  `Id_Veterinario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`Id`, `Id_Turno`, `Fecha`, `Motivo`, `Diagnostico`, `Tratamiento`, `ArchivoAdjunto`, `Id_Mascota`, `Id_Veterinario`) VALUES
(1, NULL, '2025-05-13 00:00:00', 'Desparacitar', 'Se desparacita, perro en buen estadoooo', 'pastilla antiparacitaria cr456', '256707d9-21be-4e83-b0b1-023e63bc774d.txt', 2, 1),
(2, 1, '2025-05-13 00:00:00', 'Desparacitar', 'Se desparacito excelentementeeeee', 'pastilla nº123', '/archivos/503648ef-9834-4a07-b2c8-a107285b3f7a.png', 2, 1),
(3, NULL, '2025-05-12 00:00:00', 'Sangrado Nasal', 'Falta de agua y mucho calor, deshidratacion', 'Suero, observacion de 1 dia en el consultorio', '', 2, 1),
(4, NULL, '2025-05-12 00:00:00', 'Decaimiento', 'Falta de vitamina B12', 'Se sugiere darle la pastilla B12Pro hasta nuevo aviso, debe volver la semana que viene.', '', 3, 1),
(5, NULL, '2025-05-12 00:00:00', 'Falta de apetito', 'El perro se encontraba con malestar etomacal debido a haber comido algo indebido', 'pastilla nr567', '', 3, 1),
(6, NULL, '2025-05-12 00:00:00', 'aaa', 'aaa', 'aaa', '', 2, 1),
(7, NULL, '2025-05-15 00:00:00', 'gg', 'gg', 'gg', '', 2, 1),
(8, NULL, '2025-05-15 00:00:00', 'ttt', 'ttt', 'ttt', '', 2, 1),
(9, NULL, '2025-05-16 00:00:00', 'ff', 'ff', 'ff', '/archivos/53a5e0fd-b156-42b8-bb46-7e242b67b079.txt', 3, 1),
(11, 2, '2025-05-14 00:00:00', 'Vacunacion', 'SZSZSZSSSSSSSSSZ', 'sssss', '', 2, 3),
(12, 9, '2025-05-17 00:00:00', 'ver veterinario', 'esta estable', 'seguir con medicacion', '', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `Id` int(11) NOT NULL,
  `DNI` int(15) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Clave` varchar(255) NOT NULL,
  `Rol` int(11) NOT NULL,
  `Estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`Id`, `DNI`, `Nombre`, `Apellido`, `Telefono`, `Email`, `Clave`, `Rol`, `Estado`) VALUES
(1, 42508965, 'Martin', 'Norton', '2615166023', 'martinnorton07@gmail.com', '', 0, 0),
(2, 41256325, 'Emilia', 'Andrada', '2626262626', 'emi@and.com', '', 0, 1),
(5, 123456, 'dueno', 'dueno', '2665449787', 'dueno@dueno.com', '', 0, 1),
(6, 654321, 'Julian', 'Juarez', '262626', 'jj@jj.com', '', 0, 1),
(7, 41504069, 'Catalina', 'Rosso', '2665114898', 'cata@rosso.com', '', 0, 1),
(11, 123456789, 'Dueno', 'Dueno', '66655558888', 'dueno@dueno2.com', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Especie` varchar(50) DEFAULT NULL,
  `Raza` varchar(50) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Peso` int(11) DEFAULT NULL,
  `Sexo` varchar(50) DEFAULT NULL,
  `Id_Dueno` int(11) DEFAULT NULL,
  `Estado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`Id`, `Nombre`, `Especie`, `Raza`, `Edad`, `Peso`, `Sexo`, `Id_Dueno`, `Estado`) VALUES
(2, 'Tobi', 'Canino', 'Callejero', 4, 50, 'Macho', 1, 1),
(3, 'Carlitos', 'Canino', 'Ovejero Aleman', 7, 30, 'Macho', 2, 1),
(5, 'shijui', 'Felino', 'Mestizo', 5, 60, 'Macho', 2, 1),
(6, 'Blanquito', 'Felino', 'Mestizo', 2, 50, 'Macho', 2, 0),
(7, 'Pichi', 'Canino', 'Border collie', 2, 28, 'Macho', 6, 1),
(8, 'Oreo', 'Felino', 'Albinegro', 3, 5, 'Macho', 7, 1),
(10, 'trali', 'Felino', 'Callejero', 9, 90, 'Macho', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Id` int(11) NOT NULL,
  `Id_Mascota` int(11) DEFAULT NULL,
  `Motivo` varchar(500) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`Id`, `Id_Mascota`, `Motivo`, `Fecha`, `Hora`, `Estado`) VALUES
(1, 2, 'Desparacitar', '2025-05-13', '19:00:00', 1),
(2, 2, 'Vacunacion', '2025-05-14', '15:00:00', 1),
(4, 3, 'Se le rompio una uña', '2025-05-12', '15:00:00', 1),
(5, 5, 'Vacunacion', '2025-05-15', '09:00:00', 1),
(6, 5, 'Vacunacion', '2025-06-07', '11:00:00', 1),
(7, 3, 'Desparacitar', '2025-06-13', '09:00:00', 1),
(8, 3, 'aaa', '2026-06-13', '09:00:00', 1),
(9, 7, 'ver veterinario', '2025-05-17', '11:00:00', 1),
(10, 3, 'Desparacitar', '2025-06-15', '09:00:00', 1),
(11, 3, 'Vacunacion', '2025-07-23', '09:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Clave` varchar(255) NOT NULL,
  `Avatar` varchar(500) DEFAULT NULL,
  `Rol` int(11) NOT NULL,
  `Id_Veterinario` int(3) DEFAULT NULL,
  `Id_Dueno` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Email`, `Clave`, `Avatar`, `Rol`, `Id_Veterinario`, `Id_Dueno`) VALUES
(1, 'Administrador', 'Sistema', 'admin@admin.com', 'YhL9oPKnyaajrQrRbVDiN+eR5ojEyYrJbTVa/tMhPbw=', '/Uploads/Avatars\\avatar_1.jpg', 1, NULL, NULL),
(5, 'Martin', 'Norton', 'martinnorton07@gmail.com', '6ep4IErBPJtHEtg5h83VYALBbadwsx0FiuVvClFUC1c=', NULL, 2, NULL, NULL),
(8, 'Emilia', 'Andrada', 'emi@and.com', 'tT60cpLLdgvMkc62Ve810HsLy6bKauCc4vCD0glBkWE=', '/Uploads/Avatars\\avatar_8.jpg', 3, NULL, NULL),
(10, 'dueno', 'dueno', 'dueno@dueno.com', 'LtDoCkVs5MCdBpcWHydof6pKahSqZHi1XwniQwEt4Js=', NULL, 3, NULL, NULL),
(11, 'Catalina', 'Rosso', 'cata@rosso.com', '/9j5UIB5c1+e2jiLxYQihzFsrmIeKGD4uznUx1+Thak=', '/Uploads/Avatars\\avatar_11.jpg', 3, NULL, NULL),
(13, 'Dueno', 'Dueno', 'dueno@dueno2.com', 'ltt7+aP8JvPs6MSqLKeWhY3fhGdnBjp1+b3NwZ8DhOM=', NULL, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `DNI` int(20) NOT NULL,
  `Matricula` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Clave` varchar(255) NOT NULL,
  `Rol` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `veterinario`
--

INSERT INTO `veterinario` (`Id`, `Nombre`, `Apellido`, `DNI`, `Matricula`, `Email`, `Clave`, `Rol`, `Estado`) VALUES
(1, 'Gonzalo', 'Noe', 43565988, '21564', 'gonzavete@gmail.comm', '', 0, 1),
(3, 'Martin', 'Norton', 42508965, '212154', 'martinnorton07@gmail.com', '', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mascota` (`Id_Mascota`),
  ADD KEY `Id_Veterinario` (`Id_Veterinario`),
  ADD KEY `Id_Turno` (`Id_Turno`);

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Dni` (`DNI`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Dueno` (`Id_Dueno`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Mascota` (`Id_Mascota`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`),
  ADD KEY `FK_Usuario_Veterinario` (`Id_Veterinario`),
  ADD KEY `FK_Usuarios_Dueno` (`Id_Dueno`);

--
-- Indices de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `dueno`
--
ALTER TABLE `dueno`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`Id_Mascota`) REFERENCES `mascota` (`Id`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`Id_Veterinario`) REFERENCES `veterinario` (`Id`),
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`Id_Turno`) REFERENCES `turno` (`Id`);

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`Id_Dueno`) REFERENCES `dueno` (`Id`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `turno_ibfk_1` FOREIGN KEY (`Id_Mascota`) REFERENCES `mascota` (`Id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_Usuario_Veterinario` FOREIGN KEY (`Id_Veterinario`) REFERENCES `veterinario` (`Id`),
  ADD CONSTRAINT `FK_Usuarios_Dueno` FOREIGN KEY (`Id_Dueno`) REFERENCES `dueno` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
