
USE lapiz_rojo;

-- RELACION PRODUCTO - CATEGORIA
ALTER TABLE producto
ADD CONSTRAINT fk_producto_categoria
FOREIGN KEY (id_categoria)
REFERENCES categoria (id_categoria);


-- RELACION VENTA - FORMA DE PAGO
ALTER TABLE venta
ADD CONSTRAINT fk_venta_forma_pago
FOREIGN KEY (id_forma_pago)
REFERENCES forma_pago (id_forma_pago);


-- RELACIONES DETALLE VENTA - VENTA Y PRODUCTO
ALTER TABLE detalle_venta
ADD CONSTRAINT fk_detalle_venta_venta
FOREIGN KEY (id_venta)
REFERENCES venta (id_venta);

ALTER TABLE detalle_venta
ADD CONSTRAINT fk_detalle_venta_producto
FOREIGN KEY (producto_vendido)
REFERENCES producto (id_producto);


-- RELACION AJUSTE INVENTARIO - PRODUCTO
ALTER TABLE ajuste_inventario
ADD CONSTRAINT fk_ajuste_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACION COMPRA - PROVEEDOR
ALTER TABLE compra
ADD CONSTRAINT fk_compra_proveedor
FOREIGN KEY (id_proveedor)
REFERENCES proveedor (id_proveedor);


-- RELACIONES DETALLE COMPRA - COMPRA Y PRODUCTO
ALTER TABLE detalle_compra
ADD CONSTRAINT fk_detalle_compra_compra
FOREIGN KEY (id_compra)
REFERENCES compra (id_compra);

ALTER TABLE detalle_compra
ADD CONSTRAINT fk_detalle_compra_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACION INVENTARIO - PRODUCTO
ALTER TABLE inventario
ADD CONSTRAINT fk_inventario_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACION MOVIMIENTO INVENTARIO - PRODUCTO
ALTER TABLE movimiento_inventario
ADD CONSTRAINT fk_movimiento_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACIONES DEVOLUCION - VENTA Y PRODUCTO
ALTER TABLE devolucion
ADD CONSTRAINT fk_devolucion_venta
FOREIGN KEY (id_venta)
REFERENCES venta (id_venta);

ALTER TABLE devolucion
ADD CONSTRAINT fk_devolucion_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACION UNIDAD MEDIDA - PRODUCTO
ALTER TABLE unidad_medida
ADD CONSTRAINT fk_unidad_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACION PRESENTACION PRODUCTO - PRODUCTO
ALTER TABLE presentacion_producto
ADD CONSTRAINT fk_presentacion_producto
FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);


-- RELACION TELEFONO PROVEEDOR - PROVEEDOR
ALTER TABLE telefono_proveedor
ADD CONSTRAINT fk_telefono_proveedor
FOREIGN KEY (id_proveedor)
REFERENCES proveedor (id_proveedor);


-- RELACION DIRECCION PROVEEDOR - PROVEEDOR
ALTER TABLE direccion_proveedor
ADD CONSTRAINT fk_direccion_proveedor
FOREIGN KEY (id_proveedor)
REFERENCES proveedor (id_proveedor);