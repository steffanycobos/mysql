/* VIEWS */

CREATE VIEW ventas_por_cliente AS
SELECT c.nombre, COUNT(*) AS total_pedidos_cliente
FROM clienteventas_por_cliente c
INNER JOIN compra p ON c.id_cliente = p.id_cliente
GROUP BY c.nombre;


CREATE VIEW ventas_por_producto AS
SELECT 
    p.nombre,
    SUM(dc.cantidad) AS cantidad_vendida,
    SUM(dc.cantidad * p.precio) AS total_vendido
FROM detalles_compra dc
INNER JOIN producto p ON dc.id_producto = p.id_producto
GROUP BY p.nombre;

CREATE VIEW productos_por_proveedor AS
SELECT p.nombre AS producto, pr.nombre AS proveedor, pr.telefono AS telefono_proveedor, pr.email AS email_proveedor
FROM producto p
INNER JOIN proveedores pr ON p.id_proveedor = pr.id_proveedor;
 select * from productos_por_proveedor;
 
CREATE VIEW productos_mas_vendidos_por_categoria AS
SELECT
    p.categoria,
    p.nombre AS producto,
    SUM(dc.cantidad) AS cantidad_vendida
FROM
    detalles_compra dc
INNER JOIN producto p ON dc.id_producto = p.id_producto
GROUP BY
    p.categoria, p.nombre
ORDER BY
    p.categoria, cantidad_vendida DESC;

CREATE VIEW pedidos_entregados AS
SELECT id_pedido, id_compra, pago_forma
FROM pedido WHERE estado_pedido= 'Entregado';