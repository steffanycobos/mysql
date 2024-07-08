CREATE DATABASE mi_tienda;

CREATE TABLE cliente(
id_cliente INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
apelllido VARCHAR(50) NOT NULL,
email VARCHAR (50) NOT NULL UNIQUE,
direccion VARCHAR(50) NOT NULL
);
CREATE TABLE proveedores(
id_proveedor INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL
);


CREATE TABLE producto(
id_producto INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
precio INT NOT NULL,
stock INT NOT NULL,
id_proveedor INT, 
FOREIGN KEY  (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE compra(
id_compra INT PRIMARY KEY auto_increment,
id_cliente INT,
id_producto INT,
precio_totla INT,
FOREIGN KEY  (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY  (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE pedido(
id_pedido INT PRIMARY KEY auto_increment,
id_compra INT NOT NULL,
fecha_pedido datetime NOT NULL,
estado VARCHAR(50) NOT NULL,
FOREIGN KEY  (id_compra) REFERENCES compra(id_compra)
);
