CREATE TABLE detalle_ventas_por_cliente (
    id_venta_cliente INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_venta DATE,
    importe_total DECIMAL(10,2),
    cantidad_productos INT,
    ultima_compra DATE,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

insert into detalle_ventas_por_cliente (id_cliente, importe_total, cantidad_productos, ultima_compra) values (2, 56.36, 6, '2023-03-02 20:02:39');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (14, 50.16, 8, '2024-08-18 02:59:30');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (6, 199.25, 1, '2023-10-01 16:38:58');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (6, 201.01, 13, '2024-03-03 00:24:07');
insert into  detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (13, 361.28, 17, '2024-03-30 01:26:47');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (4, 392.98, 7, '2023-11-23 22:12:09');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (13, 311.15, 14, '2024-05-20 14:58:23');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (6, 333.34, 8, '2024-08-27 08:50:54');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (10, 174.71, 14, '2024-06-10 12:01:05');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (9, 133.79, 10, '2023-10-19 19:51:28');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (14, 145.52, 9, '2024-06-30 01:49:27');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (3, 69.22, 7, '2024-08-02 23:47:38');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (3, 221.45, 1, '2023-10-25 15:19:46');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (15, 91.59, 10, '2024-01-09 16:27:12');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (5, 80.39, 11, '2024-07-22 07:50:21');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (14, 232.67, 13, '2024-04-12 22:23:10');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (10, 220.79, 12, '2024-02-09 20:22:17');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (14, 200.21, 5, '2023-12-06 22:46:14');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (7, 238.48, 10, '2024-02-25 03:50:03');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (7, 376.74, 10, '2024-06-09 23:01:49');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (15, 322.99, 15, '2023-10-26 21:21:26');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (15, 183.67, 19, '2024-03-06 04:30:43');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (12, 182.97, 9, '2024-02-16 19:13:20');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (6, 315.42, 18, '2024-07-07 20:06:49');
insert into detalle_ventas_por_cliente  (id_cliente, importe_total, cantidad_productos, ultima_compra) values (3, 287.33, 19, '2023-12-13 12:41:17');