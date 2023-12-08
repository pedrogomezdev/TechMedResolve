CREATE TABLE `TMRA_Supervisor` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `n_empleado_fk` integer,
  `equipo_a_supervisar` integer,
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Equipo` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombreEquipo` varchar(100),
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Tecnico` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `n_empleado_fk` integer,
  `categoria` varchar(25),
  `especialidad` varchar(255),
  `precio_hora` float,
  `nPartesAsignados` integer,
  `id_equipo_fk` integer,
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Parte` (
  `orden_trabajo` integer PRIMARY KEY AUTO_INCREMENT,
  `criticidad` varchar(25),
  `estado` varchar(25),
  `fecha_inicio` date,
  `fecha_fin` date,
  `horas_duracion` integer,
  `descripcion_averia` text,
  `foto_averia` integer,
  `descripcion_reparacion` text,
  `gastos_extra_reparacion` float,
  `precio` float,
  `firma_tecnico` integer,
  `id_tecnico_fk` integer,
  `id_empleado_hospital_fk` integer,
  `id_maquina_fk` integer,
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Maquina` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `estado` varchar(25),
  `marca` varchar(50),
  `modelo` varchar(50),
  `n_serie` varchar(10),
  `descripcion` text,
  `notas_adicionales` text,
  `foto` integer,
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Mensaje` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `n_empleado_remitente_fk` integer,
  `n_empleado_destinatario_fk` integer,
  `asunto` text,
  `cuerpo_mensaje` text,
  `fecha_envio` date,
  `activo_remitente` boolean DEFAULT true,
  `activo_destinatario` boolean DEFAULT true
);

CREATE TABLE `TMRA_Empleado_Hospital` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `n_empleado_fk` integer,
  `puesto` varchar(25),
  `area` varchar(255),
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Empleado` (
  `n_empleado` integer PRIMARY KEY AUTO_INCREMENT,
  `tipo_empleado_fk` integer,
  `nombre` varchar(50),
  `primer_apellido` varchar(50),
  `segundo_apellido` varchar(50),
  `telefono` varchar(15),
  `telefono_emergencia` varchar(15),
  `email` varchar(255),
  `username` varchar(255),
  `horario_trabajo` varchar(75),
  `fotografia` integer,
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Tipo_Empleado` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(25),
  `esta_activo` boolean DEFAULT true
);

CREATE TABLE `TMRA_Tecnico_Realiza_Actualizacion` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `id_tecnico_fk` integer,
  `id_actualizacion_fk` integer
);

CREATE TABLE `TMRA_Actualizacion_Parte` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `comentario` text,
  `fecha` date,
  `horas_trabajadas` integer,
  `orden_trabajo_parte_fk` integer
);

ALTER TABLE `TMRA_Tecnico` ADD FOREIGN KEY (`id_equipo_fk`) REFERENCES `TMRA_Equipo` (`id`);

ALTER TABLE `TMRA_Parte` ADD FOREIGN KEY (`id_tecnico_fk`) REFERENCES `TMRA_Tecnico` (`id`);

ALTER TABLE `TMRA_Parte` ADD FOREIGN KEY (`id_maquina_fk`) REFERENCES `TMRA_Maquina` (`id`);

ALTER TABLE `TMRA_Parte` ADD FOREIGN KEY (`id_empleado_hospital_fk`) REFERENCES `TMRA_Empleado_Hospital` (`id`);

ALTER TABLE `TMRA_Empleado` ADD FOREIGN KEY (`tipo_empleado_fk`) REFERENCES `TMRA_Tipo_Empleado` (`id`);

ALTER TABLE `TMRA_Supervisor` ADD FOREIGN KEY (`equipo_a_supervisar`) REFERENCES `TMRA_Equipo` (`id`);

ALTER TABLE `TMRA_Mensaje` ADD FOREIGN KEY (`n_empleado_remitente_fk`) REFERENCES `TMRA_Empleado` (`n_empleado`);

ALTER TABLE `TMRA_Mensaje` ADD FOREIGN KEY (`n_empleado_destinatario_fk`) REFERENCES `TMRA_Empleado` (`n_empleado`);

ALTER TABLE `TMRA_Supervisor` ADD FOREIGN KEY (`n_empleado_fk`) REFERENCES `TMRA_Empleado` (`n_empleado`);

ALTER TABLE `TMRA_Tecnico` ADD FOREIGN KEY (`n_empleado_fk`) REFERENCES `TMRA_Empleado` (`n_empleado`);

ALTER TABLE `TMRA_Empleado_Hospital` ADD FOREIGN KEY (`n_empleado_fk`) REFERENCES `TMRA_Empleado` (`n_empleado`);

ALTER TABLE `TMRA_Tecnico_Realiza_Actualizacion` ADD FOREIGN KEY (`id_actualizacion_fk`) REFERENCES `TMRA_Actualizacion_Parte` (`id`);

ALTER TABLE `TMRA_Tecnico_Realiza_Actualizacion` ADD FOREIGN KEY (`id`) REFERENCES `TMRA_Tecnico` (`id`);

ALTER TABLE `TMRA_Actualizacion_Parte` ADD FOREIGN KEY (`orden_trabajo_parte_fk`) REFERENCES `TMRA_Parte` (`orden_trabajo`);
