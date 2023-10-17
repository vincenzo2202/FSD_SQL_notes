use practica_clase;

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR (75) NOT NULL,
password VARCHAR(100) NOT NULL,
role ENUM ("admin", "user", "super_admin") DEFAULT "user" NOT NULL,
create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE practica_clase.users
ADD UNIQUE (email); 

CREATE TABLE films (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
genre VARCHAR(50) NOT NULL, 
user_id INT NOT NULL, 
FOREIGN KEY (user_id) REFERENCES users(id),
create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE film_user(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,  
film_id INT NOT NULL ,
UNIQUE (user_id,film_id),
FOREIGN KEY (film_id) REFERENCES films(id),
FOREIGN KEY (user_id) REFERENCES users(id)
);