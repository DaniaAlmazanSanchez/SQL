SELECT *FROM category; 
/*Filtrar peliculas que sean de una categoria*/
/*IN y OR trae elemntos seccionados*/
SELECT *FROM film WHERE film_id=1 OR film_id=2 OR film_id=3;
/*Es mas corto*/
SELECT *FROM film WHERE film_id IN(1,2,3);

SELECT *FROM film WHERE film_id IN(SELECT film_id FROM film_category WHERE  category_id=5);
/**/
SELECT film_id FROM film_category WHERE category_id=5;
/*betweem rango*/
SELECT *FROM film WHERE film_id BETWEEN 1 AND 10;
