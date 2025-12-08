INSERT INTO PAIS (codigo_iso, nombre, moneda, poblacion) VALUES
('US', 'Estados Unidos', 'USD', 340102000),
('ES', 'España', 'EUR', 49337356),
('FR', 'Francia', 'EUR', 68635943),
('JP', 'Japón', 'JPY', 123890000),
('DE', 'Alemania', 'EUR', 83577140),
('SG', 'Singapur', 'SGB', 340102000),
('CN', 'China', 'CNY', 49337356),
('AU', 'Australia', 'AUD', 68635943),
('CH', 'Suiza', 'CHF', 123890000),
('HK', 'Hong Kong', 'HKD', 83577140);

INSERT INTO PROVEEDOR (nif, nombre) VALUES
('A0000000A', 'Distribuciones Alimex'),
('B1111111B', 'Proveedor Global Foods'),
('C2222222C', 'Frutas del Mediterráneo'),
('D3333333D', 'Carnes Premium SA'),
('E4444444E', 'Lácteos del Norte'),
('F5555555F', 'Chorizos Sánchez SA'),
('G6666666G', 'Casa Tarradellas'),
('H7777777H', NULL),
('I8888888I', NULL),
('J9999999J', NULL);

INSERT INTO TELEFONO (numero, nifProveedor) VALUES
('+34 611 234 567', 'A0000000A'),
('+49 160 12345678', 'A0000000A'),
('+34 633 111 222', 'B1111111B'),
('+33 75566 77 88', 'B1111111B'),
('+39 331 555 4444', 'C2222222C'),
('+44 7700 900123', 'D3333333D'),
('+52 55 1234 5678', 'E4444444E'),
('+81 90 1234 5678', 'F5555555F'),
('+61 412 345 678', 'G6666666G'),
('+46 70 123 45 67', 'J9999999J');

INSERT INTO PROVEER (nifProveedor, isoPais) VALUES
('A0000000A', 'ES'),
('A0000000A', 'FR'),
('B1111111B', 'US'),
('B1111111B', 'JP'),
('C2222222C', 'DE'),
('D3333333D', 'CN'),
('E4444444E', 'ES'),
('F5555555F', 'US'),
('G6666666G', 'AU'),
('J9999999J', 'CN');

INSERT INTO RECETA (id_receta, nombre) VALUES
(1, 'Cheeseburger'),
(2, 'Tortilla de Patatas'),
(3, 'Coq au Vin'),
(4, 'Tonkotsu Ramen'),
(5, 'Bratwurst'),
(6, 'Laksa'),
(7, 'Kung Pao Chicken'),
(8, 'Australian Meat Pie'),
(9, 'Fondue'),
(10, 'Dim Sum');

INSERT INTO INGREDIENTE (nombre, idReceta) VALUES
('Carne picada', 1),
('Queso cheddar', 1),
('Patata', 2),
('Huevo', 2),
('Vino tinto', 3),
('Huesos de cerdo', 4),
('Fideos ramen', 4),
('Salchicha alemana', 5),
('Repollo fermentado', 5),
('Jengibre', 10);

INSERT INTO USAR (idReceta, isoPais) VALUES
(1, 'US'),
(1, 'ES'),
(2, 'ES'),
(3, 'FR'),
(4, 'JP'),
(5, 'DE'),
(6, 'SG'),
(7, 'CN'),
(8, 'AU'),
(9, 'CH');

INSERT INTO CLIENTE_FIDELIZADO (dni, nombre, fecha_nacimiento) VALUES
('00000000A', 'John Smith', '1985-03-12'),
('11111111B', 'Carlos Pérez', '1990-07-25'),
('22222222C', 'Marie Dubois', '1978-11-04'),
('33333333D', 'Hiroshi Tanaka', '2000-02-18'),
('44444444E', 'Lukas Müller', '1995-06-30'),
('55555555F', 'Wei Zhang', '1988-09-14'),
('66666666G', 'Olivia Brown', '1975-12-22'),
('77777777H', 'Sofia Rossi', '1992-01-09'),
('88888888I', 'Amira Hassan', '1983-08-03'),
('99999999J', 'Jackie Chan', '1998-04-27');

INSERT INTO POSEER (dniCliente, isoPais) VALUES
('00000000A', 'US'),
('11111111B', 'ES'),
('22222222C', 'FR'),
('33333333D', 'JP'),
('44444444E', 'DE'),
('55555555F', 'CN'),
('66666666G', 'US'),
('77777777H', 'AU'),
('88888888I', 'SG'),
('99999999J', 'HK');

INSERT INTO LOCAL (id_local, nombre, ciudad, calle, numero, codigo_postal) VALUES
(1, 'Central Deli', 'New York', '5th Avenue', '101', '10001'),
(2, 'La Tapita', 'Madrid', 'Calle Gran Vía', '15', '28013'),
(3, 'Bistro Parisien', 'París', 'Rue de Rivoli', '8', '75001'),
(4, 'Sakura Sushi', 'Tokio', 'Shibuya', '22', '150002'),
(5, 'Pokemon Cafe', 'Osaka', 'Dotonbori', '1234', '80331'),
(6, 'Dragon Wok', 'Beijing', 'Wangfujing', '10', '10006'),
(7, 'Harbour Cafe', 'Sydney', 'George Street', '55', '02000'),
(8, 'Laksa House', 'Singapur', 'Orchard Road', '77', '238841'),
(9, 'Alpine Fondue', 'Zúrich', 'Bahnhofstrasse', '12', '08001'),
(10, 'Dim Sum Corner', 'Hong Kong', 'Nathan Road', '30', '999077');

INSERT INTO ESTAR (idLocal, isoPais) VALUES
(1, 'US'),
(2, 'ES'),
(3, 'FR'),
(4, 'JP'),
(5, 'JP'),
(6, 'CN'),
(7, 'AU'),
(8, 'SG'),
(9, 'CH'),
(10, 'HK');

INSERT INTO PEDIDO (numero_pedido, idLocal, fecha, nombre_cliente, dniCliente, total_precio) VALUES
(1, 1, '2025-12-08 12:30:00', 'John Smith', '00000000A', 25.50),
(2482, 2, '2025-12-08 13:00:00', 'Carlos Pérez', '11111111B', 40.00),
(3, 3, '2025-12-18 13:15:00', 'Marie Dubois', '22222222C', 32.75),
(41, 4, '2025-12-08 13:45:00', 'Hiroshi Tanaka', '33333333D', 28.90),
(5, 5, '2025-12-28 14:30:00', 'Lukas Müller', '44444444E', 35.20),
(42, 6, '2025-12-08 14:30:00', 'Anna Lee', NULL, 22.50),
(2, 7, '2025-12-24 15:00:00', 'Michael Scott', NULL, 27.80),
(1, 8, '2025-12-15 15:20:00', 'Siti Aminah', NULL, 30.00),
(93, 9, '2025-12-15 15:20:00', 'Hans Keller', NULL, 45.00),
(13, 10, '2025-12-08 16:10:00', 'Li Wei', NULL, 38.60);

INSERT INTO TRABAJADOR (dni, nombre, dniCliente) VALUES
('10101010A', 'James Wilson', NULL),
('21212121B', 'Paco Paquetes', NULL),
('32323232C', 'Takashi Yamamoto', NULL),
('43434343D', 'Lukas Fischer', NULL),
('54545454E', 'Mei Chen', NULL),
('65656565F', 'Olivia Brown', NULL),
('76767676G', 'Emma Rossi', NULL),
('87878787H', 'Bruce Lee', NULL),
('00000000A', 'John Smith', '00000000A'),
('11111111B', 'Carlos Pérez', '11111111B');

INSERT INTO TRABAJAR (idLocal, dniTrabajador) VALUES
(1, '10101010A'),
(2, '21212121B'),
(3, '32323232C'),
(4, '43434343D'),
(5, '43434343D'),
(6, '65656565F'),
(7, '76767676G'),
(8, '87878787H'),
(1, '00000000A'),
(2, '11111111B');

INSERT INTO LIMPIEZA (dniTrabajador) VALUES
('10101010A'),
('21212121B'),
('32323232C'),

INSERT INTO LIMPIAR (dniTrabajador, idLocal) VALUES
('10101010A', 1),
('10101010A', 5),
('21212121B', 2),
('21212121B', 4),
('32323232C', 3),
('32323232C', 6),
('32323232C', 4),
('32323232C', 7),
('10101010A', 6),
('21212121B', 8);

INSERT INTO COCINERO (dniTrabajador) VALUES
('10101010A'),
('43434343D'),
('54545454E'),
('65656565F');

INSERT INTO COCINAR (dniTrabajador, numPedido, idLocal, fecha) VALUES
('10101010A', 50, 1, '2025-12-08 12:30:00'),
('10101010A', 51, 1, '2025-12-08 12:30:00'),
('43434343D', 41, 4, '2025-12-08 15:00:00'),
('43434343D', 41, 4, '2025-12-08 16:00:00'),
('54545454E', 3, 3, '2025-12-18 13:15:00'),
('54545454E', 93, 9, '2025-12-15 15:20:00'),
('65656565F', 42, 6, '2025-12-08 14:30:00'),
('65656565F', 13, 10, '2025-12-08 16:10:00'),
('10101010A', 1, 5, '2025-12-08 12:50:00'),
('43434343D', 5, 7, '2025-12-28 14:50:00');

INSERT INTO CAJERO (dniTrabajador) VALUES
('21212121B'),
('54545454E'),
('65656565F'),
('76767676G'),
('87878787H');

INSERT INTO ATENDER (dniTrabajador, numPedido, idLocal, fecha) VALUES
('21212121B', 1, 1, '2025-12-08 12:30:00'),
('21212121B', 2482, 2, '2025-12-08 13:00:00'),
('54545454E', 3, 3, '2025-12-18 13:15:00'),
('54545454E', 41, 4, '2025-12-08 13:45:00'),
('65656565F', 5, 5, '2025-12-28 14:30:00'),
('65656565F', 42, 6, '2025-12-08 14:30:00'),
('76767676G', 2, 7, '2025-12-24 15:00:00'),
('76767676G', 1, 8, '2025-12-15 15:20:00'),
('87878787H', 93, 9, '2025-12-15 15:20:00'),
('87878787H', 13, 10, '2025-12-08 16:10:00');

INSERT INTO ENCARGADO (dniTrabajador) VALUES
('00000000A'),
('11111111B'),
('76767676G'),
('87878787H');

INSERT INTO TRABAJO (idLocal, dniTrabajador, fecha) VALUES
(1, '00000000A', '2025-12-08 09:00:00'),
(1, '00000000A', '2025-12-08 14:00:00'),
(2, '11111111B', '2025-12-08 10:00:00'),
(2, '11111111B', '2025-12-08 15:00:00'),
(7, '76767676G', '2025-12-08 11:00:00'),
(7, '76767676G', '2025-12-08 16:00:00'),
(8, '87878787H', '2025-12-08 09:30:00'),
(8, '87878787H', '2025-12-08 13:30:00'),
(1, '00000000A', '2025-12-09 09:00:00'),
(2, '11111111B', '2025-12-09 10:00:00');

INSERT INTO INCIDENCIA (id_incidencia, descripcion) VALUES
(1, 'Cliente se queja de la demora en la entrega'),
(2, 'Producto entregado con defecto'),
(3, 'Pedido incompleto'),
(4, 'Confusión con la factura'),
(5, 'Falta de stock de un ingrediente'),
(6, 'Problema con la máquina de café'),
(7, 'Enfriador de bebidas no funciona'),
(8, 'Empleado ausente sin aviso'),
(9, 'Limpieza insuficiente del local'),
(10, 'Error en la preparación de la receta');


INSERT INTO REGISTRAR (idLocal, dniTrabajador, idIncidencia) VALUES
(1, '00000000A', 1),
(1, '00000000A', 6),
(2, '11111111B', 2),
(2, '11111111B', 4),
(3, '76767676G', 3),
(3, '76767676G', 9),
(4, '87878787H', 5),
(4, '87878787H', 7),
(1, '00000000A', 10),
(2, '11111111B', 8);
