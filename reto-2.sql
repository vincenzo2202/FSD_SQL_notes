use reto_2;  

CREATE TABLE cursos (
  id INT AUTO_INCREMENT PRIMARY KEY, 
  profesor_id INT NOT NULL

);
 
CREATE TABLE profesores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  curso_id INT NOT NULL,
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

ALTER TABLE cursos
ADD FOREIGN KEY (profesor_id) REFERENCES profesores(id);

 
