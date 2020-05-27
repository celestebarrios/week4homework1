--Pre-Check data list
SELECT *
FROM store;

SELECT customer_id
FROM rental;


--(1)How many actors are there with the last name ‘Wahlberg’?
SELECT last_name, actor_id
FROM actor
WHERE last_name LIKE 'Wahlberg';

--(2)How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


--(3)What film does the store have the most of? (search in inventory)
SELECT MAX(film_id)
FROM inventory;

--(4)How many customers have the last name ‘William’?
SELECT customer_id, last_name
FROM customer
WHERE last_name LIKE 'William';
--(5)What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id) 
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

--(6)How many different district names are there?
SELECT COUNT(district)
FROM address;

--(7)What film has the most actors in it? (use film_actor table and get film_id)
SELECT MAX(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY film_id;

--(8)From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(customer_id)
FROM customer
WHERE last_name LIKE '__%es' and store_id =1;

--(9)How many payment amounts (4.99, 5.99, etc.) 
--had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT rental_id, COUNT(amount)
FROM payment
WHERE rental_id BETWEEN 380 AND 430
GROUP BY rental_id
HAVING COUNT(amount) > 250;


--(10) Within the film table, 
--how many rating categories are there? 
--And what rating has the most
--movies total?

-SELECT COUNT(rating), MAX(film_id)
FROM film
GROUP BY film_id
ORDER BY rating;
