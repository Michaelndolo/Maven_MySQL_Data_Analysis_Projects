USE mavenmovies;

/*
1. We will need a list of all staff members including their first and last names, 
email adress, and store identification number where they work.
*/

SELECT first_name, 
	last_name, 
	email, 
	store_id 
FROM staff;

/*
2. We will need separate counts of inventory items held at each of your two stores.
*/

SELECT store_id,
      COUNT(inventory_id) AS num_of_inventory_items
FROM inventory
GROUP BY store_id;

/*
3. We will need a count of active customers for each of your stores. Separately please.
*/

SELECT store_id,
      COUNT( CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS count_of_active_cutomers
FROM customer
GROUP BY store_id;

/*
4. In order to assses the liability of a data breach, 
we will need you to provide a count of all cutomers email adresses stored in the database.
*/

SELECT COUNT(email) AS Count_of_emails
FROM customer;

/*
5. We are interested in how diverse your film offering is as a means of understanding how likely 
to keep customers engaged in the future. Please provide a count of unique film titles you have in
inventory at each store and then provide a count of unique categories of films you provide.
*/

SELECT store_id,
     COUNT(DISTINCT film_id) AS unique_films
FROM inventory
GROUP BY store_id;

SELECT COUNT(DISTINCT category_id) AS unique_categories
FROM film_category;

/*
6. We would like to understand the replecement cost of your films.
Please provide the replacement cost for the film that is least expensive to replace,
the most expensive to replace, and the average of all films you carry.
*/

SELECT 
  MIN(replacement_cost) AS least_expensive_to_replace,
  MAX(replacement_cost) AS most_expensive_to_replace,
  AVG(replacement_cost) AS average_replacement_cost
FROM film;

/*
7. We are interested in having you put payment monitoring systems and maximum payment 
processing restrictions in place in order to minimize the future risk of fraud by your staff.
Please provide the average payment you process, as well as the maximum payment you have processed.
*/

SELECT AVG(amount) AS average_payment,
       MAX(amount) AS maximum_payment
FROM payment;

/*
8. We would like to better understand what your customer base looks like.
Please provide a list of all customer identification values, with count of rentals
they have made all-time, with your highest volume customers at the top of the list
*/

SELECT customer_id,
      COUNT(rental_id) AS count_of_rentals
FROM rental
GROUP BY customer_id
ORDER BY count_of_rentals DESC;

