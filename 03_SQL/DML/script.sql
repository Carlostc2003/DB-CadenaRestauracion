INSERT INTO PAIS (codigo_iso, nombre, moneda, poblacion) VALUES
('US', 'Estados Unidos', 'USD', 340102000),
('ES', 'España', 'EUR', 49337356),
('FR', 'Francia', 'EUR', 68635943),
('JP', 'Japón', 'JPY', 123890000),
('DE', 'Alemania', 'EUR', 83577140);

INSERT INTO PROVEEDOR (nif, nombre) VALUES
('A1234567B', 'Distribuciones Alimex'),
('B7654321C', 'Proveedor Global Foods'),
('C1122334D', 'Frutas del Mediterráneo'),
('D9988776E', 'Carnes Premium SA'),
('E5566778F', 'Lácteos del Norte');

INSERT INTO TELEFONO (numero, nifProveedor) VALUES
('+34 611 234 567', 'A1234567B'),
('+49 160 12345678', 'A1234567B'),
('+34 633 111 222', 'B7654321C'),
('+33 75566 77 88', 'B7654321C'),
('+39 331 555 4444', 'C1122334D');

INSERT INTO PROVEER (nifProveedor, isoPais) VALUES
('A1234567B', 'ES'),
('A1234567B', 'FR'),
('B7654321C', 'US'),
('B7654321C', 'JP'),
('C1122334D', 'DE');

INSERT INTO RECETA (id_receta, nombre) VALUES
(1, 'Paella Valenciana'),
(2, 'Pizza Margherita'),
(3, 'Sushi de Salmón'),
(4, 'Tacos al Pastor'),
(5, 'Curry de Pollo');

INSERT INTO INGREDIENTE (nombre, idReceta) VALUES
('Arroz', 1),
('Pollo', 1),
('Pollo', 2),
('Tomate', 2),
('Arroz', 3);

INSERT INTO USAR (idReceta, isoPais) VALUES
(1, 'ES'),
(1, 'DE'),
(2, 'FR'),
(3, 'JP'),
(4, 'US');

INSERT INTO CLIENTE_FIDELIZADO (dni, nombre, fecha_nacimiento) VALUES
('12345678A', 'Carlos Pérez', '1990-05-12'),
('87654321B', 'Ana Gómez', '1985-11-03'),
('11223344C', 'Luis Martínez', '2000-01-25'),
('44332211D', 'María Fernández', '1995-07-19'),
('55667788E', 'Jorge Ramírez', '1978-09-30');

INSERT INTO POSEER (dniCliente, isoPais) VALUES
('12345678A', 'ES'),
('12345678A', 'US'),
('87654321B', 'FR'),
('11223344C', 'JP'),
('44332211D', 'DE');

INSERT INTO LOCAL (id_local, nombre, ciudad, calle, numero, codigo_postal) VALUES
(1, 'CCPlazaMayor_P1_L01', 'Madrid', 'Plaza Mayor', '1', '28012'),
(2, 'GranVia_P2_L15', 'Madrid', 'Gran Vía', '15', '28013'),
(3, 'CCTimesSquare_P1_L05', 'New York', 'Broadway', '5', '10036'),
(4, 'CentroHistorico_P1_L08', 'Ciudad de México', 'Av. Juárez', '8', '06000'),
(5, 'Copacabana_P2_L12', 'Rio de Janeiro', 'Av. Atlântica', '12', '22010');

INSERT INTO ESTAR (idLocal, isoPais) VALUES
(1, 'ES'),
(2, 'ES'),
(3, 'US'),
(4, 'FR'),
(5, 'DE');

INSERT INTO PEDIDO (numero_pedido, idLocal, fecha, nombre_cliente, dniCliente, total_precio) VALUES
(1, 1, '2025-12-07 12:00:00', 'Juan Pérez', '12345678A', 45.50),
(2, 1, '2025-12-07 13:30:00', 'María López', '87654321B', 32.75),
(1, 3, '2025-12-07 14:15:00', 'Carlos', NULL, 27.20),
(1, 4, '2025-12-07 15:45:00', 'Ana Ruiz', NULL, 50.00),
(2, 4, '2025-12-07 16:20:00', 'Pedro Sánchez', '11223344C', 38.90);

INSERT INTO TRABAJADOR (dni, nombre, dniCliente) VALUES
('12345678A', 'Carlos Pérez', '12345678A'),
('87654321B', 'Ana Gómez', '87654321B'),
('11223344C', 'Luis Martínez', '11223344C'),
('44332211D', 'María Fernández', '44332211D'),
('55667788E', 'Jorge Ramírez', '55667788E'),
('66778899F', 'Laura Torres', NULL),
('77889900G', 'Miguel Ruiz', NULL),
('88990011H', 'Elena Díaz', NULL),
('99001122I', 'David Moreno', NULL),
('00112233J', 'Patricia López', NULL);

INSERT INTO TRABAJAR (idLocal, dniTrabajador) VALUES
(1, '12345678A'),
(2, '87654321B'),
(2, '11223344C'),
(3, '44332211D'),
(3, '55667788E'),
(4, '66778899F'),
(4, '77889900G'),
(5, '88990011H'),
(1, '99001122I'),
(2, '99001122I'),
(5, '00112233J');

INSERT INTO LIMPIEZA (dniTrabajador) VALUES
('12345678A'),
('87654321B'),
('11223344C');

INSERT INTO LIMPIAR (dniTrabajador, idLocal) VALUES
('12345678A', 1),
('12345678A', 2),
('11223344C', 1),
('11223344C', 3),
('87654321B', 2);

INSERT INTO COCINERO (dniTrabajador) VALUES
('44332211D'),
('55667788E'),
('66778899F');

INSERT INTO COCINAR (dniTrabajador, numPedido, idLocal, fecha) VALUES
('44332211D', 1, 1, '2025-12-07 12:23:15'),
('55667788E', 1, 3, '2025-12-07 13:47:42'),
('66778899F', 1, 4, '2025-12-07 14:11:08'),
('44332211D', 2, 1, '2025-12-07 12:23:16'),
('44332211D', 2, 4, '2025-12-07 12:23:17');

INSERT INTO CAJERO (dniTrabajador) VALUES
('77889900G'),
('88990011H'),
('99001122I'),
('00112233J');

INSERT INTO ATENDER (dniTrabajador, numPedido, idLocal, fecha) VALUES
('77889900G', 1, 1, '2025-12-07 12:15:23'),
('88990011H', 1, 3, '2025-12-07 12:45:10'),
('99001122I', 1, 4, '2025-12-07 13:05:48'),
('99001122I', 2, 1, '2025-12-07 13:05:48'),
('00112233J', 2, 4, '2025-12-07 14:10:33');

INSERT INTO ENCARGADO (dniTrabajador) VALUES
('12345678A'),
('87654321B'),
('44332211D'),
('99001122I'),
('55667788E');

INSERT INTO TRABAJO (idLocal, dniTrabajador, fecha) VALUES
(1, '12345678A', '2025-12-01 09:00:00'),
(2, '87654321B', '2025-12-02 10:30:00'),
(3, '44332211D', '2025-12-03 14:15:00'),
(1, '55667788E', '2025-12-04 08:45:00'),
(5, '55667788E', '2025-12-05 11:20:00');

INSERT INTO INCIDENCIA (id_incidencia, descripcion) VALUES
(1, 'Fallo en la caja registradora del local 1'),
(2, 'Retraso en la entrega de ingredientes del proveedor A1234567B'),
(3, 'Avería en el horno del local 3'),
(4, 'Confusión en la preparación del pedido 5'),
(5, 'Problema de limpieza en el local 2');

INSERT INTO REGISTRAR (idLocal, dniTrabajador, idIncidencia) VALUES
(1, '12345678A', 1),
(1, '87654321B', 2),
(3, '44332211D', 3),
(5, '55667788E', 4),
(5, '55667788E', 5);
