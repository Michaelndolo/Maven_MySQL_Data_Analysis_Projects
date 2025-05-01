SET SQL_MODE = 'TRADITIONAL,ALLOW_INVALID_DATES,ONLY_FULL_GROUP_BY';

SET GLOBAL max_allowed_packet = 1073741824;

SELECT @@max_allowed_packet;

-- Selecting the database to use
USE mavenmovies;

-- THE SELECT CLAUSE
SELECT first_name, 
	last_name, 
    email
FROM customer;

-- THE DISTINCT CLAUSE
SELECT DISTINCT rental_duration
FROM film;

-- The WHERE clause
SELECT *
FROM payment
WHERE customer_id <= 100;

-- WHERE & AND STATEMENTS
SELECT *
FROM payment
WHERE customer_id <= 100 AND amount >=5 AND payment_date >= "2006-01-01";

-- WHERE & OR STATEMENTS
SELECT *
FROM payment
WHERE amount >=5
OR customer_id= 42
OR customer_id= 53
OR customer_id= 60
OR customer_id= 75;

-- WHERE & IN STATEMENTS
SELECT *
FROM payment
WHERE amount >=5
OR customer_id IN(42,53,60,75);

-- THE LIKE OPERATOR
SELECT title, 
	special_features
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

-- THE GROUP BY CLAUSE
SELECT rental_duration, 
	COUNT(title) AS Films_with_this_rental_duration
FROM film
GROUP BY rental_duration;

-- AGGREGATE FUNCTIONS
SELECT replacement_cost,
      COUNT(film_id) AS num_of_films,
      MIN(rental_rate) AS cheapest_rental,
      MAX(rental_rate) AS Most_expensive_rental,
      AVG(rental_rate) AS Avg_rental
FROM film
GROUP BY replacement_cost;

-- THE HAVING CLAUSE
SELECT customer_id, 
	COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING total_rentals <15;

-- THE ORDER BY CLAUSE
SELECT title, 
	length, 
	rental_rate
FROM film
ORDER BY length DESC;







