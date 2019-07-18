-- Creating tables
CREATE TABLE users
(user_id SERIAL PRIMARY KEY, username TEXT NOT NULL, email TEXT NOT NULL);

CREATE TABLE products
(product_id SERIAL PRIMARY KEY, product_name TEXT NOT NULL, price NUMERIC NOT NULL);

CREATE TABLE orders
(order_id SERIAL PRIMARY KEY, product_id INTEGER REFERENCES products(product_id));

-- Filling tables
INSERT INTO users (username, email)
VALUES ('katanaToad', 'toadyG@theHype.org'), ('Yoshi', 'greenMachine@nintendo.org'), ('dolphinishim', 'slicker@OSHIN.net');

INSERT INTO products (product_name, price)
VALUES ('toadShrooms', 50.99), ('literallyAnything', 0.55), ('BirdStrike', 1900);

INSERT INTO orders (product_id)
VALUES (1), (2), (3);

--Running Queries against data
SELECT * FROM orders WHERE order_id = 1;

SELECT * FROM orders;

SELECT SUM(products.price), order_id
FROM products
JOIN orders ON (orders.product_id = products.product_id)
GROUP BY orders.order_id;

--add a foreign key reference from orders to users
ALTER TABLE users
ADD column order_id INTEGER REFERENCES orders(order_id);

UPDATE users
SET order_id = 1
WHERE user_id = 1;

UPDATE users
SET order_id = 2
WHERE user_id = 2;

UPDATE users
SET order_id = 3
WHERE user_id = 3;

--update the orders table to link a user to each order
ALTER TABLE orders
ADD column user_id INTEGER REFERENCES users(user_id); 

UPDATE orders
SET user_id = 1
WHERE order_id = 1;

UPDATE orders
SET user_id = 2
WHERE order_id = 2;

UPDATE orders
SET user_id = 3
WHERE order_id = 3;

--Run queries against your data.
--  get all orders for a user.
--  get how many orders each user has.
SELECT * FROM orders
WHERE orders.user_id = 1;

SELECT COUNT(*), username, user_id FROM users
JOIN orders ON (users.user_id = orders.user_id)
GROUP BY users.user_id;