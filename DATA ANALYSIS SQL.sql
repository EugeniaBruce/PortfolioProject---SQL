 DVD RENTAL DATA ANALYSIS
 
-Tool: POSTGRESQL
--Task: Use PostgreSQL to analyze data and identify 
  trends and pattern for a DVD rental
- Skills used: Joins,Aggregate Functions.....
- Results.....

--Customer information showing full name and email address 

SELECT first_name,last_name,email FROM customer;

--Show list of film ratings available 
SELECT DISTINCT rating FROM film;

--Identify email address of Nancy Thomas
SELECT email FROM customer
WHERE first_name = 'Nancy'and last_name = 'Thomas';

--First 10 customers that made payment
SELECT customer_id, payment_date FROM payment
ORDER BY payment_date ASC
LIMIT 10;

--Identify movies that are 50 minutes or less in duration
SELECT COUNT (title) FROM film
 WHERE length <= 50;
 
 --Number of payment transactions greater than 4$
 SELECT COUNT (amount) FROM payment
 WHERE amount > 4;
 
--How many actors with first name starting with P
 SELECT COUNT(first_name) FROM actor
 WHERE first_name LIKE 'P%';

--How many films have a rating of R and a replacement cost between $5 and $15
SELECT COUNT (rating) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

--How many payments did each staff member handle
SELECT staff_id,COUNT(payment_id) FROM payment
GROUP BY staff_id;

--Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2
SELECT customer_id, sum(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING sum(amount) >=110;

--How many films begin with the letter J?
SELECT COUNT (title) FROM film
WHERE title LIKE 'J%';

--SELECT first_name,last_name FROM customer
--WHERE first_name LIKE 'E%' AND address_id < 500
--ORDER BY customer_id DESC;
--SELECT district,email from customer
--INNER JOIN address ON address.address_id = customer.address_id
--WHERE district = 'California'
--SELECT title,first_name,last_name FROM film_actor 
--INNER JOIN actor ON film_actor.actor_id = actor.actor_id
--INNER JOIN film ON film_actor.film_id = film.film_id
--WHERE first_name = 'Nick'
--AND last_name = 'Wahlberg';
--SELECT DISTINCT  title, description FROM film
--INNER JOIN inventory ON film.film_id = inventory.film_id
--WHERE inventory.store_id =2;
--SELECT 
--SUM (CASE rating 
 --WHEN 'R' THEN 1 ELSE 0
 --END) AS r,
 --SUM (CASE rating 
 --WHEN 'PG' THEN 1 ELSE 0
 --END) AS pg,
 --SUM (CASE rating 
 --WHEN 'PG-13' THEN 1 ELSE 0
 --END) AS pg13
 --FROM film;
 --SELECT customer_id,
 --CASE WHEN (customer_id <=100) THEN 'Premium'
 --WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
 --ELSE 'Normal'
 --END AS customer_class
 --FROM customer;
 --SELECT customer_id,payment_date,amount FROM payment
 --WHERE amount > 5
 --AND payment_date >='2007-03-01';
--SELECT COUNT (rental_rate) AS number_of_films,
--MAX(rental_rate) AS highest_rental_rate,
--MIN(rental_rate) AS lowest_rental_rate,
--ROUND(AVG(rental_rate),2) AS average_rental_rate
--FROM film;
--SELECT COUNT (customer_id) FROM payment
--GROUP BY customer_id
--HAVING COUNT(customer_id) >=40;
 --SELECT film.film_id,title,inventory_id,store_id FROM film
 --LEFT JOIN inventory ON inventory.film_id = film.film_id
-- WHERE inventory.film_id IS NULL;
--SELECT inventory_id,store_id,
--title,rating,rental_rate,replacement_cost 
--FROM film INNER JOIN inventory 
--ON inventory.film_id =film.film_id;
--SELECT  DISTINCT rental_duration  FROM film
--ORDER BY rental_duration;
--SELECT title,rental_rate,length FROM film
--ORDER BY length;











	
	
	
	
	
	
 
 
 
 
 
 
 
 
 




