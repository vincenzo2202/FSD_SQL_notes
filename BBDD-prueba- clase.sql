CREATE DATABASE IF NOT EXISTS datata
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

use datata;

CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL 
);

CREATE TABLE Departamentos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL 
);

CREATE TABLE Libros (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
price float (10) NOT NULL,
departamento_id INT(10) NOT NULL,
FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
); 

CREATE TABLE libros_pedidos (
id INT AUTO_INCREMENT PRIMARY KEY,
id_libro INT NOT NULL,
FOREIGN KEY (id_libro) REFERENCES libros(id),
id_pedido INT NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedidos(id)
);

CREATE TABLE 
