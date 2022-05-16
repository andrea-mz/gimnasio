drop database if exists gimnasio;
create database gimnasio charset utf8mb4;
use gimnasio;

CREATE TABLE 'actividades' (
  'abreviatura' varchar(255) NOT NULL,
  'nombre' varchar(255) NOT NULL,
  PRIMARY KEY ('id')
)

INSERT INTO `actividades` (`abreviatura`, `nombre`) VALUES
('ACF', 'Acondicionamiento Físico'),
('AQG', 'Aquagym'),
('BDS', 'Bodystep'),
('BOX', 'Boxeo'),
('CIR', 'Ciclo Indoor'),
('COR', 'Core'),
('GAP', 'G.A.P.'),
('HIT', 'HIIT'),
('KGX', 'Kickboxing'),
('PIL', 'Pilates'),
('STR', 'Stretch'),
('TKD', 'Taekwondo'),
('TRX', 'TRX'),
('YOG', 'Yoga'),
('ZUM', 'Zumba');

CREATE TABLE `servicios` (
  `id` int(3) auto_increment primary key,
  `nombre` varchar(255) NOT NULL
) 

INSERT INTO `servicios` (`id`, `nombre`) VALUES
(1, 'Entrenador personal'),
(2, 'Monitores profesionales'),
(3, 'Nutricionista'),
(4, 'Sala Fitness'),
(5, 'Material deportivo en buen estado'),
(6, 'Salas de uso libre');

CREATE TABLE `usuarios` (
  `id` int(11) auto_increment,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  PRIMARY KEY (id, usuario)
) 

INSERT INTO `reservas` (`id`, `usuario`, `email`, `contrasena`) VALUES
(1, 'albamenz', 'albamenz@example.es', 'password'),
(2, 'juanpri', 'juanpri@example.es', 'password'),
(3, 'carlitosthyn', 'carlitosthyn@example.es', 'password'),
(4, 'alfonsogonz', 'alfonsogonz@example.es', 'password'),
(5, 'carmentrm', 'carmentrm@example.es', 'password'),
(6, 'antoniono', 'antoniono@example.es', 'password'),
(7, 'rosabalz', 'rosabalz@example.es', 'password'),
(8, 'marcosini', 'marcosini@example.es', 'password'),
(9, 'alberttvvd', 'alberttvvd@example.es', 'password'),;
(10, 'mariajunj', 'mariajunj@example.es', 'password'),
(11, 'nhmsvbgfggd', 'nhmsvbgfggd@example.es', 'password'),
(12, 'saramartin', 'saramartin@example.es', 'password'),
(13, 'danialways', 'danialways@example.es', 'password'),
(14, 'jesuszarracina', 'jesuszarracina@example.es', 'password'),
(15, 'aliciadominguez', 'aliciadominguez@example.es', 'password'),
(16, 'lfnesjvsvxd', 'lfnesjvsvxd@example.es', 'password'),
(17, 'jorgelop', 'jorgelop@example.es', 'password'),
(18, 'laurakiju', 'laurakiju@example.es', 'password');

CREATE TABLE `reservas` (
  `id` int(11) auto_increment,
  `id_act` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_act) REFERENCES actividades(abreviatura),
  FOREIGN KEY (usuario) REFERENCES usuarios(usuario)
) 

INSERT INTO `reservas` (`id`, `id_act`, `usuario`, `fecha`) VALUES
(1, 'KGX', '', '05/01/2022'),
(2, 'ACF', '', '08/02/2022'),
(3, 'PIL', '', '24/04/2022'),
(4, 'BOX', '', '07/01/2022'),
(5, 'ZUM', '', '15/01/2022'),
(6, 'BDS', '', '30/03/2022');
