CREATE DEFINER=`root`@`localhost` FUNCTION `valor_compra`(id_compra INT) RETURNS int
    READS SQL DATA
BEGIN
  DECLARE valor_total INT;
  SELECT SUM(p.precio * dc.cantidad) INTO valor_total
  FROM detalles_compra dc
  INNER JOIN producto p ON dc.id_producto = p.id_producto
  WHERE dc.id_compra = id_compra;
  RETURN valor_total;
END