use reto_sql_classroom;

CREATE TABLE clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR (75) NOT NULL,
password VARCHAR(100) NOT NULL, 
address VARCHAR (255) NOT NULL,
phone INT NOT NULL,
create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

CREATE TABLE pedidos (
id INT AUTO_INCREMENT PRIMARY KEY,  
cliente_id INT NOT NULL, 
FOREIGN KEY (cliente_id) REFERENCES clientes(id), 
create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE zapatillas (
id INT AUTO_INCREMENT PRIMARY KEY,  
genero ENUM ("H", "M", "Unisex") DEFAULT "Unisex" NOT NULL,
modelo VARCHAR(255) NOT NULL,
color VARCHAR(50) NOT NULL,
talla INT NOT NULL,
precio INT NOT NULL 
);

CREATE TABLE pedido_zapatilla(
id INT AUTO_INCREMENT PRIMARY KEY,  
pedido_id INT NOT NULL, 
FOREIGN KEY (pedido_id) REFERENCES pedidos(id), 
zapatilla_id INT NOT NULL, 
FOREIGN KEY (zapatilla_id) REFERENCES zapatillas(id)
);

CREATE TABLE cliente_zapatilla(
id INT AUTO_INCREMENT PRIMARY KEY,  
cliente_id INT NOT NULL, 
FOREIGN KEY (cliente_id) REFERENCES clientes(id), 
zapatilla_id INT NOT NULL, 
FOREIGN KEY (zapatilla_id) REFERENCES zapatillas(id)
);


