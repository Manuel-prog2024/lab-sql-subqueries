USE sakila;
-- Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
-- Find the common column to join film and inventory tables >> film_id. 
-- and use a condition to find film_id where film.title = 'Hunchback Impossible'.  
SELECT COUNT(inventory.inventory_id) AS number_copies
FROM inventory
WHERE inventory.film_id = (SELECT film_id FROM film WHERE title='Hunchback Impossible');
-- SELECT film_id FROM film WHERE title='Hunchback Impossible'; 


-- List all films whose length is longer than the average length of all the films in the Sakila database.
-- give the average length of all the films >> SELECT AVG(length) FROM film  = 115. 
SELECT film_id, title, length
FROM film
WHERE length >  (SELECT AVG(length) FROM film);

-- Use a subquery to display all actors who appear in the film "Alone Trip".
-- 3 tables (actor, film_actor and film) and 2 joins (actor_id and film_id) 
SELECT film.film_id as f_f, film_actor.film_id as fa_f, actor.actor_id as a_a, film_actor.actor_id as fa_a, film.title, actor.first_name, actor.last_name
FROM actor
JOIN film_actor
ON actor.actor_id = film_actor.actor_id
JOIN film 
ON film_actor.film_id = film.film_id
WHERE film.title = 'Alone Trip';


-- Bonus
-- Sales have been lagging among young families, and you want to target family movies for a promotion. 
-- Identify all movies categorized as family films.


-- Retrieve the name and email of customers from Canada using both subqueries and joins. 
-- To use joins, you will need to identify the relevant tables and their primary and foreign keys.

-- Determine which films were starred by the most prolific actor in the Sakila database. 
-- A prolific actor is defined as the actor who has acted in the most number of films. 
-- First, you will need to find the most prolific actor and then use that actor_id 
-- to find the different films that he or she starred in.


-- Find the films rented by the most profitable customer in the Sakila database. 
-- You can use the customer and payment tables to find the most profitable customer, i.e., 
-- the customer who has made the largest sum of payments.



-- Retrieve the client_id and the total_amount_spent of those clients 
-- who spent more than the average of the total_amount spent by each client. 
-- You can use subqueries to accomplish this.