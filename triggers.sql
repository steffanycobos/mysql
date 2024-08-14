/*CREACION TRIGGERS*/

DELIMITER $$
CREATE TRIGGER actualizar_stock
AFTER INSERT ON detalles_compra
FOR EACH ROW
BEGIN
  UPDATE producto
  SET stock = stock - NEW.cantidad
  WHERE id_producto = NEW.id_producto;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER validacion_email
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
  IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'cliente' AND COLUMN_NAME = 'email' AND COLUMN_TYPE LIKE '%char') OR
     NEW.email NOT REGEXP '^[^@]+@[^@]+\.[^@]+$' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Correo electrónico inválido.';
  END IF;
END $$
DELIMITER ;

