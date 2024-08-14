CREATE DEFINER=`root`@`localhost` FUNCTION `verificar_stock`(id_producto INT, cantidad INT) RETURNS bit(1)
    READS SQL DATA
BEGIN
  DECLARE stock_actual INT;
  SELECT stock INTO stock_actual FROM producto WHERE id_producto = id_producto;
  IF cantidad > stock_actual
    THEN RETURN 0;
  ELSE
    RETURN 1;
  END IF;
END