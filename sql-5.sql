#Select all the actors with the first name ‘Scarlett’.

SELECT * FROM Actor 
WHERE first_name= 'SCARLETT';

#How many films (movies) are available for rent and how many films have been rented?

SELECT * FROM inventory;
SELECT * FROM rental;


#What's the average movie duration expressed in format (hours, minutes)?

SELECT AVG(length) FROM film;

SELECT 115/60.0 AS hours;


#How many distinct (different) actors' last names are there?

SELECT COUNT(DISTINCT last_name) AS different_last_names FROM Actor;

#Since how many days has the company been operating (check DATEDIFF() function)?


#Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.


ALTER TABLE rental
ADD weekend date not null;

ALTER TABLE rental
ADD workday date not null;


#Get release years.

SELECT release_year FROM film;



#Get all films with ARMAGEDDON in the title.

SELECT * FROM film
WHERE title contains 'ARMAGEDDON'; 


#Get all films which title ends with APOLLO.

SELECT * FROM film
WHERE title ends with 'APOLLO';


#Get 10 the longest films.
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;


#How many films include Behind the Scenes content?

SELECT * FROM film
SELECT FROM film.title WHERE special_features CONTAINS'Behind the Scenes'; 


