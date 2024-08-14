DELIMITER //
CREATE PROCEDURE insertar_cliente(IN p_nombre VARCHAR(50), IN p_apellido VARCHAR(50), p_email VARCHAR(50), p_telefono VARCHAR(20), p_direccion VARCHAR(50))
BEGIN
    INSERT INTO cliente (nombre, apellido, email, telefono, direccion)
    VALUES (p_nombre, p_apellido, p_email, p_telefono, p_direccion);
    END; 
    
    
CREATE PROCEDURE actualizar_producto( id_producto INT, nuevo_nombre VARCHAR(50), nuevo_descripcion VARCHAR(100), nuevo_categoria VARCHAR(50), nuevo_precio INT, nuevo_stock INT, nuevo_id_proveedor INT)
BEGIN
    UPDATE producto
    SET 
        nombre= nuevo_nombre,
        descripcion= nuevo_descripcion,
        categoria= nuevo_categoria,
        precio = nuevo_precio,
        stock = nuevo_stock,
        id_proveedor= nuevo_id_proveedor
    WHERE id_producto = id_producto;
END; //




 