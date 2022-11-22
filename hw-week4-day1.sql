-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- ANSWER = 2


-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- ANSWER: 4803


-- 3. What film does the store have the most of? (search in inventory table)

Select film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- ANSWER: check code a lot with 8


-- 4. How many customers have the last name ‘William’?

SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- Answer: 0


-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

-- Answer: id 1


-- 6. How many different distinct names are there?

SELECT COUNT(DISTINCT name)
from category;

--ANSWER: 16


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, COUNT(film_actor)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_actor) DESC;

--Answer: film_id 508 has the most with 15 actors.


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

-- ANSWER: 13 have a last name ending with -es.


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT customer_id, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY customer_id
HAVING COUNT(amount) > 250;

-- ANSWER: NONE ?


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;
ORDER BY: COUNT(rating) DESC;

-- ANSWER 1: 5 categories beacuse NULL has 0 movies
-- ANSWER 2: PG-13


