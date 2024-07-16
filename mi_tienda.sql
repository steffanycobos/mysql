DROP DATABASE IF EXISTS mi_tienda;

CREATE DATABASE mi_tienda;
USE mi_tienda;
CREATE TABLE cliente(
id_cliente INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
apelllido VARCHAR(50) NOT NULL,
email VARCHAR (50) NOT NULL UNIQUE,
telefono VARCHAR (20) NOT NULL,
direccion VARCHAR(50) NOT NULL
);
CREATE TABLE proveedores(
id_proveedor INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
telefono VARCHAR (20) NOT NULL,
email VARCHAR (50) NOT NULL,
direccion VARCHAR(100) NOT NULL
);


CREATE TABLE producto(
id_producto INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
categoria VARCHAR(50) NOT NULL,
precio INT UNSIGNED NOT NULL,
stock INT UNSIGNED NOT NULL,
id_proveedor INT, 
FOREIGN KEY  (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE compra(
id_compra INT PRIMARY KEY auto_increment,
id_cliente INT,
id_producto INT,
precio_total INT UNSIGNED,
FOREIGN KEY  (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY  (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE pedido(
id_pedido INT PRIMARY KEY auto_increment,
id_compra INT NOT NULL,
fecha_pedido datetime NOT NULL,
pago_forma ENUM ('Crédito','Débito','Efectivo/Depósito'),
estado_pedido ENUM('En Espera', 'Enviado', 'Entregado') NOT NULL,
FOREIGN KEY  (id_compra) REFERENCES compra(id_compra)
);
