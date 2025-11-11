-- ==========================================
-- Base de datos: unievents
-- ==========================================

CREATE DATABASE IF NOT EXISTS unievents CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE unievents;

-- --------------------------------------------------------

--
-- Table structure for table `estatus_evento`
--

CREATE TABLE `estatus_evento` (
  `idEstatus_evento` int(2) NOT NULL,
  `estatus` varchar(20) NOT NULL,
  `num_solicitud` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `estatus_evento`
--

INSERT INTO `estatus_evento` (`idEstatus_evento`, `estatus`, `num_solicitud`) VALUES
(1, 'aceptado', 161),
(2, 'aceptado', 162),
(4, 'aceptado', 164),
(5, 'aceptado', 165),
(6, 'aceptado', 168),
(7, 'aceptado', 159),
(8, 'aceptado', 169),
(10, 'aceptado', 173),
(11, 'aceptado', 175),
(12, 'aceptado', 177),
(13, 'aceptado', 178),
(14, 'aceptado', 180),
(15, 'aceptado', 181),
(16, 'aceptado', 185);

-- --------------------------------------------------------

--
-- Table structure for table `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(5) NOT NULL,
  `rol_puesto` int(2) NOT NULL,
  `num_solicitud` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `puesto`
--

INSERT INTO `puesto` (`idPuesto`, `rol_puesto`, `num_solicitud`) VALUES
(14, 1, 161),
(15, 2, 161),
(16, 4, 161),
(17, 5, 162),
(18, 7, 162),
(19, 1, 163),
(20, 3, 163),
(21, 6, 163),
(22, 4, 165),
(23, 7, 165),
(24, 4, 164),
(25, 5, 164),
(26, 7, 168),
(27, 1, 169),
(28, 2, 159),
(29, 3, 159),
(30, 4, 159),
(31, 1, 173),
(32, 2, 173),
(33, 3, 173),
(34, 4, 173),
(35, 5, 173),
(36, 6, 173),
(37, 7, 173),
(38, 1, 177),
(39, 2, 177),
(40, 3, 177),
(41, 4, 177),
(42, 5, 177),
(43, 6, 177),
(44, 7, 177),
(45, 1, 178),
(46, 2, 178),
(47, 4, 178),
(48, 5, 178),
(49, 4, 180),
(50, 5, 180),
(51, 1, 175),
(52, 2, 175),
(53, 3, 175),
(54, 4, 175),
(55, 5, 175),
(56, 6, 175),
(57, 7, 175),
(58, 1, 181),
(59, 2, 181),
(60, 3, 181),
(61, 4, 181),
(62, 5, 181),
(63, 6, 181),
(64, 7, 181);

-- --------------------------------------------------------

--
-- Table structure for table `solicitud`
--

CREATE TABLE `solicitud` (
  `num_solicitud` int(5) NOT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `depto_solicitante_nombre` varchar(45) DEFAULT NULL,
  `nombre_evento` varchar(25) DEFAULT NULL,
  `fecha_evento` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `lugar` varchar(70) DEFAULT NULL,
  `equipo_audio` varchar(25) DEFAULT NULL,
  `difusion_interna` varchar(20) DEFAULT NULL,
  `difusion_externa` varchar(20) DEFAULT NULL,
  `difusion_fecha_inicio` date DEFAULT NULL,
  `difusion_fecha_termino` date DEFAULT NULL,
  `diseno` varchar(15) DEFAULT NULL,
  `impresion` varchar(12) DEFAULT NULL,
  `num_copias` int(4) DEFAULT NULL,
  `toma_fotografias` varchar(2) DEFAULT NULL,
  `maestro_ceremonia` varchar(2) DEFAULT NULL,
  `display` varchar(2) DEFAULT NULL,
  `texto_display` varchar(50) DEFAULT NULL,
  `num_control` int(8) NOT NULL,
  `evento_status` varchar(10) DEFAULT NULL,
  `evento_solicitante_nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solicitud`
--

INSERT INTO `solicitud` (`num_solicitud`, `fecha_elaboracion`, `depto_solicitante_nombre`, `nombre_evento`, `fecha_evento`, `hora_inicio`, `hora_fin`, `lugar`, `equipo_audio`, `difusion_interna`, `difusion_externa`, `difusion_fecha_inicio`, `difusion_fecha_termino`, `diseno`, `impresion`, `num_copias`, `toma_fotografias`, `maestro_ceremonia`, `display`, `texto_display`, `num_control`, `evento_status`, `evento_solicitante_nombre`) VALUES
(156, '2025-04-22', 'Depto. Ing. Sistemas', 'Hackatec', '2025-05-04', '08:00:00', '11:00:00', 'Auditorio Tecnológico', 'No', 'No', 'No', '2025-05-05', '2025-05-10', 'No', 'No', 0, '1', '0', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(159, '2025-04-29', 'Depto. Ciencias Básicas', 'Sitec 2026', '2025-05-09', '10:00:00', '11:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-05-10', '2025-05-13', 'No', 'No', 0, '0', '0', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(160, '2025-04-29', 'Depto. Servicios Escolares', 'Graduación 2025', '2025-04-30', '08:30:00', '12:00:00', 'Gimnasio', 'Instal. Equipo Audio', 'Volante', 'Pagina Web', '2025-05-05', '2025-05-16', 'No', 'Diploma', 500, '1', '1', '0', '¡Enhorabuena!', 21051426, 'Aceptado', 'Jose Enrique Vazquez Garcia'),
(161, '2025-04-30', 'Depto. Recursos materiales y servicios', 'Toma de Protesta', '2025-05-13', '10:00:00', '11:00:00', 'Auditorio Vinculación', 'Microfono Podium', 'Correo Electrónico', 'Pagina Web', '2025-05-14', '2025-05-22', 'No', 'Banner', 0, '1', '1', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(162, '2025-05-01', 'Depto. Educación a Distancia', 'Reciclatec', '2025-05-16', '10:00:00', '11:00:00', 'Jardines', 'Micro Diadema', 'Oficios', 'Radio', '2025-05-17', '2025-05-24', 'Tríptico', 'No', 0, '1', '0', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(163, '2025-05-01', 'Depto. Ciencias Básicas', 'Graduación 2026', '2025-05-20', '10:30:00', '12:30:00', 'Estadio', 'Microfono Podium', 'Correo Electrónico', 'Radio', '2025-05-21', '2025-05-30', 'Poster', 'No', 0, '1', '1', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(164, '2025-05-01', 'Depto. Vinculacion', 'prueba', '2025-05-02', '08:00:00', '08:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-05-03', '2025-05-06', 'No', 'No', 0, '0', '0', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(165, '2025-05-01', 'Depto. Ing. Sistemas', 'Game Day 3', '2025-06-01', '10:00:00', '12:30:00', 'Auditorio Ing. Ricardo Peart', 'No', 'No', 'No', '2025-06-02', '2025-06-05', 'No', 'No', 0, '1', '0', '0', NULL, 21051412, 'Aceptado', 'Daniela Guadalupe Escobedo Hernandez'),
(166, '2025-05-01', 'Depto. Ciencias Básicas', 'Sitec 2027', '2025-05-13', '08:00:00', '08:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-05-17', '2025-05-22', 'No', 'No', 0, '0', '1', '0', NULL, 21051412, 'Rechazado', 'Daniela Guadalupe Escobedo Hernandez'),
(167, '2025-05-06', 'Depto. Ciencias Básicas', 'prueba123', '2025-05-06', '11:30:00', '12:30:00', 'Plazoleta Media Luna', 'No', 'No', 'No', '2025-05-14', '2025-05-23', 'No', 'No', 0, '0', '0', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(168, '2025-05-06', 'Depto. Centro de Idiomas', 'prueba123', '2025-05-07', '08:00:00', '08:30:00', 'Plazoleta Techada', 'No', 'No', 'No', '2025-05-09', '2025-05-16', 'No', 'No', 0, '1', '0', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(169, '2025-05-06', 'Depto. Centro de Idiomas', 'Acreditación Inglés', '2025-05-07', '11:30:00', '12:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-05-18', '2025-05-30', 'No', 'No', 0, '1', '1', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(170, '2025-05-06', 'Depto. Vinculacion', 'prueba456', '2025-05-06', '11:00:00', '11:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-05-12', '2025-05-16', 'No', 'No', 0, '1', '1', '0', NULL, 95050415, 'Pendiente', 'Ramon Rocamontes de la Peña'),
(171, '2025-05-06', 'Depto. Ciencias Básicas', 'Examen de Alemán', '2025-05-07', '10:30:00', '12:00:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-05-08', '2025-05-10', 'No', 'No', 0, '1', '1', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(172, '2025-05-06', 'Depto. Ciencias Básicas', 'Computo en la nube', '2025-06-03', '08:00:00', '10:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'No', '2025-06-04', '2025-06-07', 'No', 'No', 0, '1', '1', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(173, '2025-05-07', 'Depto. Ing. Sistemas', 'Hackatec 2', '2025-05-08', '08:00:00', '08:30:00', 'Auditorio Ing. Ricardo Peart', 'No', 'No', 'No', '2025-05-09', '2025-05-13', 'No', 'No', 0, '1', '0', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(174, '2025-05-07', 'Depto. Ing Mecatrónica', 'Visita Magna', '2025-06-03', '08:30:00', '10:00:00', 'Auditorio Tecnológico', 'No', 'Oficios', 'Pagina Web', '2025-06-04', '2025-06-10', 'Poster', 'Banner', 0, '1', '1', '1', 'Aprende a innovar', 95050415, 'Pendiente', 'Ramon Rocamontes de la Peña'),
(175, '2025-05-08', 'Depto. de Calidad', 'Restaura tu aula', '2025-05-21', '10:00:00', '11:30:00', 'Plazoleta Media Luna', 'Instal. Equipo Audio', 'Volante', 'Radio', '2025-05-22', '2025-05-30', 'No', 'Diploma', 10, '1', '1', '0', NULL, 21051412, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(176, '2025-05-08', 'Depto. Recursos Humanos', 'Mercatec', '2025-05-25', '10:30:00', '12:00:00', 'Jardines', 'Instal. Equipo Audio', 'Correo Electrónico', 'TV', '2025-05-26', '2025-05-29', 'Poster', 'No', 0, '1', '1', '0', 'Venta de artículos', 21051412, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(177, '2025-05-08', 'Depto. Centro de Idiomas', 'Examen de Coreano', '2025-05-09', '08:00:00', '08:30:00', 'Gimnasio', 'Microfono Alámbrico', 'Correo Electrónico', 'Redes Sociales', '2025-05-09', '2025-05-13', 'Folleto', 'Diploma', 15, '1', '0', '0', NULL, 21051412, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(178, '2025-05-13', 'Depto. Vinculacion', 'Cuidatec125', '2025-05-15', '08:00:00', '12:00:00', 'Plazoleta Media Luna', 'Instal. Equipo Audio', 'Oficios', 'Redes Sociales', '2025-05-16', '2025-05-19', 'Lona', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(179, '2025-05-13', 'Depto. Recursos Humanos', 'prueba123', '2025-05-14', '08:00:00', '08:30:00', 'Auditorio Segundo Rodriguez', 'No', 'No', 'Pagina Web', '2025-05-15', '2025-05-16', 'No', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(180, '2025-05-20', 'Depto. Ciencias Básicas', 'ExpoEmpleo', '2025-05-24', '09:30:00', '10:30:00', 'Plazoleta Techada', 'No', 'No', 'Pagina Web', '2025-05-25', '2025-05-28', 'No', 'No', 0, '0', '1', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(181, '2025-05-20', 'Depto. Ciencias Básicas', 'Hackatec 2025', '2025-05-29', '11:00:00', '12:30:00', 'Auditorio Vinculación', 'Microfono Alámbrico', 'Oficios', 'Prensa Escrita', '2025-05-30', '2025-06-05', 'Poster', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(182, '2025-05-23', 'Depto. Ciencias Básicas', 'Reciclatec', '2025-05-25', '09:30:00', '11:00:00', 'Plazoleta Media Luna', 'Microfono Alámbrico', 'Oficios', 'Radio', '2025-05-26', '2025-05-28', 'No', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(183, '2025-05-26', 'Depto. Ciencias Básicas', 'ExpoEmpleo', '2025-05-26', '10:00:00', '11:30:00', 'Auditorio Segundo Rodriguez', 'No', 'Volante', 'Radio', '2025-05-27', '2025-05-29', 'No', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(184, '2025-05-26', 'Depto. Ciencias Básicas', 'ExpoEmpleo', '2025-05-26', '11:00:00', '12:00:00', 'Auditorio Segundo Rodriguez', 'No', 'Correo Electrónico', 'Prensa Escrita', '2025-05-27', '2025-05-29', 'Lona', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña'),
(185, '2025-05-26', 'Depto. Ciencias Básicas', 'ExpoEmpleo', '2025-06-04', '10:00:00', '12:30:00', 'Auditorio Vinculación', 'No', 'Volante', 'Redes Sociales', '2025-06-05', '2025-06-07', 'Invitacion', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Aceptado', 'Ramon Rocamontes de la Peña'),
(186, '2025-05-26', 'Depto. Educación a Distancia', 'Reciclatec', '2025-06-09', '08:30:00', '10:00:00', 'Auditorio Segundo Rodriguez', 'Micro Diadema', 'Volante', 'Prensa Escrita', '2025-06-10', '2025-06-13', 'Poster', 'Banner', 0, '1', '1', '0', NULL, 95050415, 'Rechazado', 'Ramon Rocamontes de la Peña');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `num_control` int(8) NOT NULL,
  `contraseña` varchar(16) NOT NULL,
  `correo_ins` varchar(27) NOT NULL,
  `nombres_usuarios` varchar(20) NOT NULL,
  `apellido_paterno` varchar(15) NOT NULL,
  `apellido_materno` varchar(15) NOT NULL,
  `rol_usuario` tinyint(2) NOT NULL,
  `idPuesto` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`num_control`, `contraseña`, `correo_ins`, `nombres_usuarios`, `apellido_paterno`, `apellido_materno`, `rol_usuario`, `idPuesto`) VALUES
(21051412, 'BangtanBTS13$$', 'L21051412@saltillo.tecnm.mx', 'Daniela Guadalupe', 'Escobedo', 'Hernandez', 3, 0),
(21051426, 'kldjkYDH54$#', 'L21051426@saltillo.tecnm.mx', 'Jose Enrique', 'Vazquez', 'Garcia', 3, 0),
(81963741, 'n4y3L1&&3sp1T14', 'L81963741@saltillo.tecnm.mx', 'Nayeli Alejandra', 'Espitia', 'Hernandez', 2, 4),
(82468320, 'R0c10%$4nCH3z', 'L82468320@saltillo.tecnm.mx', 'Rocío', 'Sanchez', 'Martinez', 2, 6),
(83597018, '1R41s#&P3r3Zz', 'L83597018@saltillo.tecnm.mx', 'Irais Sarahi', 'Morales', 'Vazquez', 2, 7),
(84061015, '3sQu1v3L#$', 'L84061015@saltillo.tecnm.mx', 'Daniel', 'Esquivel', 'Torres', 2, 7),
(84061050, 'B3rn4RD0#&$', 'L84061050@saltillo.tecnm.mx', 'Bernardo', 'Delgado', 'Solis', 2, 3),
(85073015, 'p4bL0&&lu1S', 'L85073015@saltillo.tecnm.mx', 'Pablo Luis', 'Davila', 'Hernandez', 2, 2),
(85073879, 'g4RC1a#M3z4', 'L85073879@saltillo.tecnm.mx', 'Cesar Ivan', 'García', 'Meza', 2, 5),
(85092915, 'Cu7B3Rt0_#69', 'L85092915@saltillo.tecnm.mx', 'Cutberto', 'Escobedo', 'Hernandez', 2, 1),
(88091715, 'F3rn4ND4#26', 'L88091715@saltillo.tecnm.mx', 'Maria Fernanda', 'Escobedo', 'Hernandez', 2, 4),
(88120115, '4L4n#_D4vil4', 'L88120115@saltillo.tecnm.mx', 'Alan Alejandro', 'Davila', 'Hernandez', 2, 5),
(88120170, 'M3l3nD3Z#%23', 'L88120170@saltillo.tecnm.mx', 'Ruben', 'Melendez', 'Rodriguez', 2, 5),
(89612073, 'Ju4nC4Rl0$$', 'L89612073@saltillo.tecnm.mx', 'Juan Carlos', 'Antonio', 'Aviles', 2, 1),
(90852642, 'S4nd0V4L#JU4n', 'L90852642@saltillo.tecnm.mx', 'Juan', 'Manuel ', 'Sandoval', 2, 6),
(94780134, '3SM3r4lD412#$', 'L94780134@saltillo.tecnm.mx', 'Esmeralda', 'Chiariglione', 'Bianchi', 2, 3),
(95050415, 'R0c4Montes%', 'L95050415@saltillo.tecnm.mx', 'Ramon', 'Rocamontes', 'de la Peña', 1, 0),
(97042214, 's2R4Gp3%76', 'L97042214@saltillo.tecnm.mx', 'Sara Guadalupe', 'Hernandez', 'Roman', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estatus_evento`
--
ALTER TABLE `estatus_evento`
  ADD PRIMARY KEY (`idEstatus_evento`),
  ADD KEY `num_solicitud` (`num_solicitud`);

--
-- Indexes for table `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idPuesto`),
  ADD KEY `fk_puesto_solicitud` (`num_solicitud`);

--
-- Indexes for table `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`num_solicitud`,`num_control`),
  ADD UNIQUE KEY `num_solicitud` (`num_solicitud`),
  ADD UNIQUE KEY `num_solicitud_2` (`num_solicitud`),
  ADD KEY `fk_Solicitud_Usuarios1_idx` (`num_control`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `num_control` (`num_control`),
  ADD UNIQUE KEY `correo_ins` (`correo_ins`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estatus_evento`
--
ALTER TABLE `estatus_evento`
  MODIFY `idEstatus_evento` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idPuesto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `num_solicitud` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `estatus_evento`
--
ALTER TABLE `estatus_evento`
  ADD CONSTRAINT `estatus_evento_ibfk_1` FOREIGN KEY (`num_solicitud`) REFERENCES `solicitud` (`num_solicitud`);

--
-- Constraints for table `puesto`
--
ALTER TABLE `puesto`
  ADD CONSTRAINT `fk_puesto_solicitud` FOREIGN KEY (`num_solicitud`) REFERENCES `solicitud` (`num_solicitud`);

--
-- Constraints for table `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_Solicitud_Usuarios1` FOREIGN KEY (`num_control`) REFERENCES `usuarios` (`num_control`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

