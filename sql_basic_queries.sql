-- 1. Display all available tables in the Sakila database
SHOW TABLES;

-- 2. Retrieve all the data from the tables `actor`, `film` and `customer`
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns:
-- 3.1 Titles of all films from the `film` table
SELECT title FROM film;

-- 3.2 List of languages used in films, aliased as `language`
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the `staff` table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5. Counting records:
-- 5.1 Number of stores
SELECT COUNT(*) AS store_count FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS employee_count FROM staff;

-- 5.3 Number of films available for rent and number of films rented
SELECT COUNT(DISTINCT film_id) AS available_films FROM inventory;
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Filtering:
-- 7.1 Actors with first name "SCARLETT"
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 BONUS: Movies with "ARMAGEDDON" in title and duration > 100 minutes
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Number of films with Behind the Scenes content--
SELECT COUNT(*) AS behind_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
