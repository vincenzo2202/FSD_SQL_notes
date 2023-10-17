use retos_sql;

CREATE TABLE socios(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (50) NOT NULL,
dni VARCHAR (10) NOT NULL,
address VARCHAR(255) NOT NULL,
number INT(12) NOT NULL
 );

 -- INTRODUCIR VALORES EN LA TABLA 
INSERT INTO socios VALUES (DEFAULT, "Andres","5151515D","Calle Nisu 14", 333333333);
INSERT INTO socios VALUES 
  (DEFAULT, "Vincenzo","20202020D","Calle Alav 14", 333333333),
  (DEFAULT, "Pepito","30303030D","Calle Nisu 10", 666666666);

 
-- PARA BUSCAR VALORES EN LA TABLA
 SELECT name, address FROM socios
 WHERE address LIKE "%Nisu%" ; 

 -- PARA BORRAR DE LA FILAS 
 DELETE FROM socios 
 WHERE id = 3;
 
 SELECT concat(id,"-",name) as socios from socios;
 

CREATE TABLE libros (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL,
editorial VARCHAR(255) NOT NULL,
año DATE NOT NULL
);


INSERT INTO libros VALUES(DEFAULT, "EL quijote", "Salamandra", "1950-06-25");

INSERT INTO libros VALUES
(DEFAULT, "50 Sombras", "Planeta", "2010-04-15"),
(DEFAULT, "Valeria", "chinchunchan", "2023-04-05");

DELETE FROM libros 
WHERE id = 3;

SELECT titulo,editorial,id FROM libros
WHERE titulo LIKE "%jote";

UPDATE libros 
SET editorial = "loquetuquieras" 
WHERE id = 1;

CREATE TABLE libros_socios (
id INT AUTO_INCREMENT PRIMARY KEY,
socio_id INT NOT NULL,
FOREIGN KEY (socio_id) REFERENCES socios(id),
libro_id INT NOT NULL,
FOREIGN KEY (libro_id) REFERENCES libros(id),
fecha_prestamo DATE NOT NULL,
fecha_devolucion DATE
);
 