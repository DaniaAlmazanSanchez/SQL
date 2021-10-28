/*JOINS*/
/*CIONSULTAR INFORMACIÓN DE 2 TABLAS*/
SELECT *FROM actor,film_text;
/*multiplica tablas*/
SELECT count(actor.actor_id) FROM actor,film_actor;

SELECT  city_id,city,country from city INNER JOIN country ON city.country_id=country.country_id;
SELECT COUNT(actor.actor_id) FROM actor,film_actor;

/*nombre de la pelicula y nombre del actor*/
SELECT film_id,first_name,last_name,title FROM Film INNER JOIN actor WHERE first_name="JULIA"and last_name="FAWCETT";

/*Muestra todos los datos*/
SELECT film.film_id,actor.first_name,actor.last_name,title FROM film INNER JOIN  film_actor on film.film_id=film_actor.film_id
INNER JOIN actor ON actor.actor_id=film_actor.actor_id
ORDER BY actor.first_name ASC;