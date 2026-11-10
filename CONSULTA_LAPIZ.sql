USE lapiz_rojo;

SELECT * FROM empleado;
SELECT * FROM categoria;
SELECT * FROM producto;
SELECT * FROM venta;
SELECT * FROM detalle_venta;
SELECT * FROM ajuste_inventario;
SELECT * FROM proveedor;
SELECT * FROM compra;
SELECT * FROM detalle_compra;
SELECT * FROM inventario;
SELECT * FROM movimiento_inventario;
SELECT * FROM devolucion;
SELECT * FROM unidad_medida;
SELECT * FROM presentacion_producto;
SELECT * FROM telefono_proveedor;
SELECT * FROM direccion_proveedor;
SELECT * FROM forma_pago;


SELECT 'compra', COUNT(*) FROM compra
