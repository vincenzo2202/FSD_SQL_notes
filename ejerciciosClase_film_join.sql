SELECT id,email FROM USERS;
SELECT * FROM users;
SELECT * FROM films;

SELECT * FROM USERS WHERE users.id = 1;

-- recuperar todos los usuarios con sus peliculas 

select users.*, films.id as films_id , films.title
from users 
inner join films 
on users.id = films.user_id
where users.id = 3; 


-- recuperar todos los usuarios que no tienen peliculas 

select users.*
from users 
left join films 
on users.id = films.user_id
where films.user_id is null;


-- relacion de 3 tablas

select users.*,films.*
from users
join film_user
on users.id = film_user.user_id
join films 
on film_user.film_id = films.id
where users.id = 5;