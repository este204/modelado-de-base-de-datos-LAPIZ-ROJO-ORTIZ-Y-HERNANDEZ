
DROP DATABASE IF EXISTS lapiz_rojo;
CREATE DATABASE lapiz_rojo;
USE lapiz_rojo;

-- 1. EMPLEADO

CREATE TABLE empleado (
    id_empleado INT NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    contrasena VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,

    CONSTRAINT pk_empleado PRIMARY KEY (id_empleado),
    CONSTRAINT uq_empleado_usuario UNIQUE (usuario)
) ENGINE=InnoDB;


-- 2. CATEGORIA

CREATE TABLE categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,

    CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
) ENGINE=InnoDB;


-- 3. PRODUCTO

CREATE TABLE producto (
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    color VARCHAR(45) NOT NULL,
    stock_minimo INT NOT NULL,
    estado TINYINT(1) NOT NULL,
    id_categoria INT NOT NULL,

    CONSTRAINT pk_producto PRIMARY KEY (id_producto),
    CONSTRAINT ck_producto_stock CHECK (stock_minimo >= 0)
) ENGINE=InnoDB;


-- 4. VENTA

CREATE TABLE venta (
    id_venta INT NOT NULL AUTO_INCREMENT,
    total DECIMAL(10,2) NOT NULL,
    fecha DATETIME NOT NULL,
    dinero_recibido DECIMAL(10,2) NOT NULL,
    dinero_devuelto DECIMAL(10,2) NOT NULL,
    id_forma_pago INT NOT NULL,

    CONSTRAINT pk_venta PRIMARY KEY (id_venta),
    CONSTRAINT ck_venta_total CHECK (total >= 0),
    CONSTRAINT ck_venta_dinero CHECK (dinero_recibido >= 0),
    CONSTRAINT ck_venta_devuelto CHECK (dinero_devuelto >= 0)
    
) ENGINE=InnoDB;


-- 5. DETALLE VENTA

CREATE TABLE detalle_venta (
    id_detalle_venta INT NOT NULL AUTO_INCREMENT,
    numero_venta VARCHAR(45) NOT NULL,
    producto_vendido INT NOT NULL,
    presentacion_producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    id_venta INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,

    CONSTRAINT pk_detalle_venta PRIMARY KEY (id_detalle_venta),
    CONSTRAINT ck_detalle_cantidad CHECK (cantidad > 0),
    CONSTRAINT ck_detalle_subtotal CHECK (subtotal >= 0),
    CONSTRAINT ck_precio_unitario CHECK (precio_unitario >= 0)
) ENGINE=InnoDB;


-- 6. AJUSTE DE INVENTARIO

CREATE TABLE ajuste_inventario (
    id_ajuste_inventario INT NOT NULL AUTO_INCREMENT,
    fecha DATETIME NOT NULL,
    motivo_ajuste VARCHAR(150) NOT NULL,
    cantidad_anterior INT NOT NULL,
    cantidad_registrada INT NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_ajuste_inventario PRIMARY KEY (id_ajuste_inventario),
    CONSTRAINT ck_ajuste_anterior CHECK (cantidad_anterior >= 0),
    CONSTRAINT ck_ajuste_registrada CHECK (cantidad_registrada >= 0)
) ENGINE=InnoDB;


-- 7. PROVEEDOR

CREATE TABLE proveedor (
    id_proveedor INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(45) NOT NULL,
    correo VARCHAR(45) NOT NULL,
    nombre VARCHAR(45) NOT NULL,

    CONSTRAINT pk_proveedor PRIMARY KEY (id_proveedor),
    CONSTRAINT uq_proveedor_nombre UNIQUE (nombre),
    CONSTRAINT uq_proveedor_correo UNIQUE (correo)
) ENGINE=InnoDB;


-- 8. COMPRA

CREATE TABLE compra (
    id_compra INT NOT NULL AUTO_INCREMENT,
    fecha DATETIME NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    id_proveedor INT NOT NULL,

    CONSTRAINT pk_compra PRIMARY KEY (id_compra),
    CONSTRAINT ck_compra_total CHECK (total >= 0)
) ENGINE=InnoDB;


-- 9. DETALLE COMPRA

CREATE TABLE detalle_compra (
    id_detalle_compra INT NOT NULL AUTO_INCREMENT,
    subtotal DECIMAL(10,2) NOT NULL,
    cantidad_solicitada INT NOT NULL,
    cantidad_recibida INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    id_compra INT NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_detalle_compra PRIMARY KEY (id_detalle_compra),
    CONSTRAINT ck_compra_cantidad_solicitada CHECK (cantidad_solicitada > 0),
    CONSTRAINT ck_compra_cantidad_recibida CHECK (cantidad_recibida >= 0),
    CONSTRAINT ck_compra_precio CHECK (precio_unitario >= 0),
    CONSTRAINT ck_compra_subtotal CHECK (subtotal >= 0)
) ENGINE=InnoDB;


-- 10. INVENTARIO

CREATE TABLE inventario (
    id_inventario INT NOT NULL AUTO_INCREMENT,
    cantidad_disponible INT NOT NULL,
    fecha_actualizacion DATETIME NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_inventario PRIMARY KEY (id_inventario),
    CONSTRAINT uq_inventario_producto UNIQUE (id_producto),
    CONSTRAINT ck_inventario_cantidad_disponible CHECK (cantidad_disponible >= 0)
) ENGINE=InnoDB;


-- 11. MOVIMIENTO INVENTARIO

CREATE TABLE movimiento_inventario (
    id_movimiento_inventario INT NOT NULL AUTO_INCREMENT,
    motivo_movimiento VARCHAR(100) NULL,
    tipo_movimiento TINYINT(1) NOT NULL,
    cantidad INT NOT NULL,
    fecha DATETIME NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_movimiento_inventario PRIMARY KEY (id_movimiento_inventario),
    CONSTRAINT ck_movimiento_cantidad CHECK (cantidad > 0)
) ENGINE=InnoDB;


-- 12. DEVOLUCION

CREATE TABLE devolucion (
    id_devolucion INT NOT NULL AUTO_INCREMENT,
    motivo_devolucion VARCHAR(100) NOT NULL,
    fecha DATETIME NOT NULL,
    cantidad INT NOT NULL,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_devolucion PRIMARY KEY (id_devolucion),
    CONSTRAINT ck_devolucion_cantidad CHECK (cantidad > 0)
) ENGINE=InnoDB;


-- 13. UNIDAD DE MEDIDA

CREATE TABLE unidad_medida (
    id_unidad_medida INT NOT NULL AUTO_INCREMENT,
    nombre_unidad VARCHAR(45) NOT NULL,
    precio_metro DECIMAL(10,2) NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_unidad_medida PRIMARY KEY (id_unidad_medida),
    CONSTRAINT ck_unidad_precio CHECK (precio_metro >= 0)
) ENGINE=InnoDB;


-- 14. PRESENTACION PRODUCTO

CREATE TABLE presentacion_producto (
    id_presentacion_producto INT NOT NULL AUTO_INCREMENT,
    nombre_presentacion VARCHAR(45) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_presentacion_producto PRIMARY KEY (id_presentacion_producto),
    CONSTRAINT ck_presentacion_precio CHECK (precio >= 0),
    CONSTRAINT ck_presentacion_cantidad CHECK (cantidad > 0)
) ENGINE=InnoDB;


-- 15. TELEFONO PROVEEDOR

CREATE TABLE telefono_proveedor (
    id_telefono_proveedor INT NOT NULL AUTO_INCREMENT,
    telefono VARCHAR(45) NOT NULL,
    id_proveedor INT NOT NULL,

    CONSTRAINT pk_telefono_proveedor PRIMARY KEY (id_telefono_proveedor),
    CONSTRAINT uq_telefono_proveedor UNIQUE (telefono)
) ENGINE=InnoDB;


-- 16. DIRECCION PROVEEDOR

CREATE TABLE direccion_proveedor (
    id_direccion_proveedor INT NOT NULL AUTO_INCREMENT,
    direccion VARCHAR(45) NOT NULL,
    barrio VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NOT NULL,
    id_proveedor INT NOT NULL,

    CONSTRAINT pk_direccion_proveedor PRIMARY KEY (id_direccion_proveedor)
) ENGINE=InnoDB;

-- 17. forma de pago

CREATE TABLE forma_pago(
	id_forma_pago INT NOT NULL AUTO_INCREMENT,
    metodo_pago VARCHAR(30) NOT NULL,
    
    CONSTRAINT pk_forma_pago PRIMARY KEY (id_forma_pago)
) engine=InnoDB;
