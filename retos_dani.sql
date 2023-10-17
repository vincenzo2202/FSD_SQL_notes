use retos_dani;

-- Select the names of all the products in the store.
SELECT name FROM retos_dani.products;

-- Select the names and the prices of all the products in the store.
SELECT name, Price FROM retos_dani.products;

-- Select the name of the products with a price less than or equal to $200.
SELECT id, name, Price
FROM retos_dani.products
WHERE Price <= 200;

-- Select all the products with a price between $60 and $120.

SELECT id, name, Price
FROM retos_dani.products
WHERE Price between 60 and 120;

-- Select the name and price in cents (i.e., the price must be multiplied by 100).
SELECT  name, Price*100
FROM retos_dani.products;

-- . Compute the average price of all the products. 
 SELECT AVG(price)
FROM products;

-- Compute the average price of all products with manufacturer code equal to 2. 
 SELECT AVG(price)
FROM products
WHERE provider_id = 2;

-- Compute the number of products with a price larger than or equal to $180
SELECT id, name, Price
FROM retos_dani.products
WHERE Price >= 180;

-- Select the name and price of all products with a price larger than or equal to $180, 
-- and sort first by price (in descending order), and then by name (in ascending order).

SELECT name, Price
FROM products
WHERE Price >= 180 ORDER BY Price DESC;

SELECT name, Price
FROM products
WHERE Price >= 180 ORDER BY name asc;




