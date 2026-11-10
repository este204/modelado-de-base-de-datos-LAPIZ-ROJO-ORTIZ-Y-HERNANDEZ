
USE lapiz_rojo;


-- 1. EMPLEADO


INSERT INTO empleado (usuario, contrasena, cargo)
VALUES
('carlos.m', 'demo_hash_01', 'Administrador'),
('laura.g', 'demo_hash_02', 'Vendedor'),
('andres.p', 'demo_hash_03', 'Vendedor'),
('maria.r', 'demo_hash_04', 'Vendedor'),
('juan.d', 'demo_hash_05', 'Vendedor'),
('sofia.c', 'demo_hash_06', 'Vendedor'),
('pedro.l', 'demo_hash_07', 'Vendedor'),
('valentina.s', 'demo_hash_08', 'Vendedor'),
('camilo.t', 'demo_hash_09', 'Administrador'),
('daniela.f', 'demo_hash_10', 'Vendedor');



-- 2. CATEGORIA


INSERT INTO categoria (nombre)
VALUES
('Cuadernos'),
('Escritura'),
('Papeleria'),
('Arte y dibujo'),
('Oficina'),
('Escolar'),
('Manualidades'),
('Tecnologia'),
('Archivo'),
('Empaque');



-- 3. PROVEEDOR


INSERT INTO proveedor (descripcion, correo, nombre)
VALUES
('Distribuidor de cuadernos', 'ventas@norma.com.co', 'Norma'),
('Proveedor de utiles escolares', 'contacto@pelikan.com.co', 'Pelikan'),
('Distribuidor de lapices', 'ventas@fabercastell.com', 'Faber Castell'),
('Proveedor de papel', 'pedidos@papeles.com.co', 'Papeles Colombia'),
('Distribuidor de oficina', 'ventas@ofix.com.co', 'Ofix'),
('Proveedor de materiales artisticos', 'contacto@artes.com.co', 'ArteColor'),
('Distribuidor de tecnologia', 'ventas@tecnopapeleria.com', 'TecnoPapeleria'),
('Proveedor de carpetas', 'pedidos@archivos.com.co', 'Archivo Total'),
('Distribuidor de productos escolares', 'ventas@escolar.com.co', 'Escolar SAS'),
('Proveedor de empaques', 'contacto@empaques.com.co', 'Empaques del Valle');



-- 4. FORMA DE PAGO


INSERT INTO forma_pago (metodo_pago)
VALUES
('Efectivo'),
('Tarjeta debito'),
('Tarjeta credito'),
('Transferencia bancaria'),
('Nequi'),
('Daviplata'),
('PSE'),
('Codigo QR'),
('Consignacion'),
('Otro');



-- 5. PRODUCTO


INSERT INTO producto
(nombre, descripcion, marca, color, stock_minimo, estado, id_categoria)
VALUES
('Cuaderno argollado', 'Cuaderno de 100 hojas', 'Norma', 'Azul', 10, 1, 1),
('Lapiz HB', 'Lapiz de grafito HB', 'Faber Castell', 'Amarillo', 20, 1, 2),
('Borrador nata', 'Borrador para escritura', 'Pelikan', 'Blanco', 15, 1, 3),
('Caja de colores', 'Caja de 12 colores', 'Faber Castell', 'Multicolor', 10, 1, 4),
('Resma de papel', 'Papel blanco tamaño carta', 'Propal', 'Blanco', 5, 1, 5),
('Regla de 30 cm', 'Regla plastica escolar', 'Norma', 'Transparente', 10, 1, 6),
('Cartulina', 'Cartulina de diferentes tamaños', 'ArteColor', 'Verde', 15, 1, 7),
('Lazo', 'Lazo vendido por metros', 'ArteColor', 'Varios', 5, 1, 7),
('Carpeta plastica', 'Carpeta tamaño oficio', 'Ofix', 'Rojo', 10, 1, 9),
('Cuerda', 'Cuerda vendida por metros', 'ArteColor', 'Natural', 5, 1, 7);



-- 6. VENTA


INSERT INTO venta
(total, fecha, dinero_recibido, dinero_devuelto, id_forma_pago)
VALUES
(5000.00, '2026-10-01 09:00:00', 10000.00, 5000.00, 1),
(12000.00, '2026-10-01 10:30:00', 20000.00, 8000.00, 2),
(9000.00, '2026-10-02 11:00:00', 10000.00, 1000.00, 5),
(15000.00, '2026-10-02 14:00:00', 20000.00, 5000.00, 3),
(8000.00, '2026-10-03 08:30:00', 10000.00, 2000.00, 1),
(25000.00, '2026-10-03 12:00:00', 50000.00, 25000.00, 4),
(6000.00, '2026-10-04 09:45:00', 10000.00, 4000.00, 6),
(18000.00, '2026-10-04 15:00:00', 20000.00, 2000.00, 7),
(11000.00, '2026-10-05 10:00:00', 20000.00, 9000.00, 8),
(30000.00, '2026-10-05 16:00:00', 50000.00, 20000.00, 3);



-- 7. COMPRA


INSERT INTO compra (fecha, total, id_proveedor)
VALUES
('2026-09-20 09:00:00', 30000.00, 1),
('2026-09-21 10:00:00', 50000.00, 2),
('2026-09-22 11:00:00', 20000.00, 3),
('2026-09-23 08:30:00', 40000.00, 4),
('2026-09-24 14:00:00', 35000.00, 5),
('2026-09-25 09:30:00', 45000.00, 6),
('2026-09-26 10:30:00', 60000.00, 7),
('2026-09-27 12:00:00', 25000.00, 8),
('2026-09-28 15:00:00', 30000.00, 9),
('2026-09-29 16:00:00', 20000.00, 10);


-- 8. INVENTARIO
-- =============================================

INSERT INTO inventario
(cantidad_disponible, fecha_actualizacion, id_producto)
VALUES
(45, '2026-10-05 17:00:00', 1),
(100, '2026-10-05 17:00:00', 2),
(80, '2026-10-05 17:00:00', 3),
(35, '2026-10-05 17:00:00', 4),
(25, '2026-10-05 17:00:00', 5),
(50, '2026-10-05 17:00:00', 6),
(60, '2026-10-05 17:00:00', 7),
(20, '2026-10-05 17:00:00', 8),
(40, '2026-10-05 17:00:00', 9),
(30, '2026-10-05 17:00:00', 10);


-- 9. DETALLE VENTA

INSERT INTO detalle_venta
(numero_venta, producto_vendido, presentacion_producto,
 cantidad, subtotal, id_venta, precio_unitario)
VALUES
('V001', 1, 'Cuaderno unidad', 1, 5000.00, 1, 5000.00),
('V002', 2, 'Lapiz unidad', 1, 12000.00, 2, 12000.00),
('V003', 3, 'Borrador unidad', 1, 9000.00, 3, 9000.00),
('V004', 4, 'Caja de colores', 1, 15000.00, 4, 15000.00),
('V005', 5, 'Resma unidad', 1, 8000.00, 5, 8000.00),
('V006', 6, 'Regla unidad', 1, 25000.00, 6, 25000.00),
('V007', 7, 'Cartulina unidad', 1, 6000.00, 7, 6000.00),
('V008', 8, 'Memoria USB unidad', 1, 18000.00, 8, 18000.00),
('V009', 9, 'Carpeta unidad', 1, 11000.00, 9, 11000.00),
('V010', 10, 'Bolsa unidad', 1, 30000.00, 10, 30000.00);


-- 10. DETALLE COMPRA

INSERT INTO detalle_compra
(subtotal, cantidad_solicitada, cantidad_recibida,
 precio_unitario, id_compra, id_producto)
VALUES
(30000.00, 10, 10, 3000.00, 1, 1),
(50000.00, 10, 10, 5000.00, 2, 2),
(20000.00, 10, 10, 2000.00, 3, 3),
(40000.00, 10, 10, 4000.00, 4, 4),
(35000.00, 10, 10, 3500.00, 5, 5),
(45000.00, 10, 10, 4500.00, 6, 6),
(60000.00, 10, 10, 6000.00, 7, 7),
(25000.00, 10, 10, 2500.00, 8, 8),
(30000.00, 10, 10, 3000.00, 9, 9),
(20000.00, 10, 10, 2000.00, 10, 10);


-- 11. AJUSTE DE INVENTARIO

INSERT INTO ajuste_inventario
(fecha, motivo_ajuste, cantidad_anterior,
 cantidad_registrada, id_producto)
VALUES
('2026-10-01 08:00:00', 'Diferencia en conteo', 40, 45, 1),
('2026-10-01 08:10:00', 'Ingreso no registrado', 90, 100, 2),
('2026-10-01 08:20:00', 'Correccion de inventario', 75, 80, 3),
('2026-10-01 08:30:00', 'Producto encontrado', 30, 35, 4),
('2026-10-01 08:40:00', 'Diferencia en conteo', 20, 25, 5),
('2026-10-01 08:50:00', 'Correccion de inventario', 45, 50, 6),
('2026-10-01 09:00:00', 'Ingreso no registrado', 55, 60, 7),
('2026-10-01 09:10:00', 'Diferencia en conteo', 15, 20, 8),
('2026-10-01 09:20:00', 'Producto encontrado', 35, 40, 9),
('2026-10-01 09:30:00', 'Correccion de inventario', 25, 30, 10);


-- 12. MOVIMIENTO INVENTARIO

INSERT INTO movimiento_inventario
(motivo_movimiento, tipo_movimiento, cantidad, fecha, id_producto)
VALUES
('Entrada por compra', 1, 10, '2026-10-01 08:00:00', 1),
('Salida por venta', 0, 1, '2026-10-01 09:00:00', 2),
('Entrada por compra', 1, 10, '2026-10-02 08:00:00', 3),
('Salida por venta', 0, 1, '2026-10-02 14:00:00', 4),
('Entrada por compra', 1, 10, '2026-10-03 08:00:00', 5),
('Salida por venta', 0, 1, '2026-10-03 12:00:00', 6),
('Entrada por compra', 1, 10, '2026-10-04 08:00:00', 7),
('Salida por venta', 0, 1, '2026-10-04 15:00:00', 8),
('Entrada por compra', 1, 10, '2026-10-05 08:00:00', 9),
('Salida por venta', 0, 1, '2026-10-05 16:00:00', 10);


-- 13. DEVOLUCION

INSERT INTO devolucion
(motivo_devolucion, fecha, cantidad, id_venta, id_producto)
VALUES
('Producto defectuoso', '2026-10-06 09:00:00', 1, 1, 1),
('Producto equivocado', '2026-10-06 09:30:00', 1, 2, 2),
('Error en la compra', '2026-10-06 10:00:00', 1, 3, 3),
('Producto defectuoso', '2026-10-06 10:30:00', 1, 4, 4),
('Cambio de producto', '2026-10-06 11:00:00', 1, 5, 5),
('Producto defectuoso', '2026-10-06 11:30:00', 1, 6, 6),
('Producto equivocado', '2026-10-06 12:00:00', 1, 7, 7),
('Error en la compra', '2026-10-06 12:30:00', 1, 8, 8),
('Cambio de producto', '2026-10-06 13:00:00', 1, 9, 9),
('Producto defectuoso', '2026-10-06 13:30:00', 1, 10, 10);


-- 14. UNIDAD DE MEDIDA

INSERT INTO unidad_medida
(nombre_unidad, precio_metro, id_producto)
VALUES
('Metro', 1800.00, 8),
('Metro', 3000.00, 10);


-- 15. PRESENTACION PRODUCTO


INSERT INTO presentacion_producto
(nombre_presentacion, precio, descripcion, cantidad, id_producto)
VALUES
('Cuaderno individual', 5000.00, 'Cuaderno de 100 hojas', 1, 1),
('Lapiz individual', 1200.00, 'Lapiz HB individual', 1, 2),
('Borrador individual', 900.00, 'Borrador blanco', 1, 3),
('Caja de 12 colores', 15000.00, 'Presentacion escolar', 12, 4),
('Resma completa', 8000.00, 'Resma de 500 hojas', 500, 5),
('Regla individual', 2500.00, 'Regla de 30 centimetros', 1, 6),
('Cartulina pliego', 8000.00, 'Cartulina tamaño pliego', 1, 7),
('Cartulina medio pliego', 4000.00, 'Mitad de una cartulina de pliego', 1, 7),
('Cartulina octavo', 1000.00, 'Octava parte de una cartulina de pliego', 1, 7),
('Carpeta individual', 1100.00, 'Carpeta plastica oficio', 1, 9);


-- 16. TELEFONO PROVEEDOR

INSERT INTO telefono_proveedor (telefono, id_proveedor)
VALUES
('3001112233', 1),
('3002223344', 2),
('3003334455', 3),
('3004445566', 4),
('3005556677', 5),
('3006667788', 6),
('3007778899', 7),
('3008889900', 8),
('3011112233', 9),
('3012223344', 10);


-- 17. DIRECCION PROVEEDOR


INSERT INTO direccion_proveedor
(direccion, barrio, ciudad, id_proveedor)
VALUES
('Calle 10 # 15-20', 'Centro', 'Bogota', 1),
('Carrera 20 # 30-15', 'Chapinero', 'Bogota', 2),
('Calle 25 # 40-10', 'San Fernando', 'Cali', 3),
('Carrera 15 # 22-30', 'Granada', 'Cali', 4),
('Calle 50 # 10-25', 'Laureles', 'Medellin', 5),
('Carrera 45 # 60-12', 'El Poblado', 'Medellin', 6),
('Calle 8 # 12-40', 'San Nicolas', 'Cali', 7),
('Carrera 30 # 18-50', 'Teusaquillo', 'Bogota', 8),
('Calle 70 # 20-15', 'Barrios Unidos', 'Bogota', 9),
('Carrera 12 # 35-60', 'Centro', 'Palmira', 10);
