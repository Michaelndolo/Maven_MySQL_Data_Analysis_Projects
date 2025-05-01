-- INNER JOIN
SELECT store_id,
	   inventory_id,
       title,
       description
FROM film
     INNER JOIN inventory
		ON film.film_id = inventory.film_id;
        
-- LEFT JOIN
SELECT title, 
      COUNT(actor_id) AS number_of_actors  
FROM film
      LEFT JOIN film_actor 
          ON film.film_id = film_actor.film_id
GROUP BY title;
        
-- BRIDGING UNRELATED TABLES
SELECT first_name, last_name, title 
FROM actor
INNER JOIN film_actor 
      ON film_actor.actor_id = actor.actor_id 
INNER JOIN film
      ON film.film_id = film_actor.film_id;
      
-- MULTI-CONDITION JOINS
SELECT DISTINCT title, description 
FROM film
INNER JOIN inventory
      ON inventory.film_id = film.film_id 
      AND store_id = 2;
      
-- THE UNION OPERATOR
SELECT 'advisor' AS type,
       first_name, 
       last_name 
FROM advisor
UNION 
SELECT 'staff' AS type,
       first_name, 
       last_name 
FROM staff;
