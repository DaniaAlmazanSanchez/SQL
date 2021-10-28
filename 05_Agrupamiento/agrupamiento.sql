/*COUNT*/
SELECT COUNT(film_id) FROM film WHERE rental_duration=3;
SELECT rental_duration, COUNT(film_id)  AS "total" FROM film WHERE rental_duration=7;

/*GROUP*/
/*Grupo ordenado por renta_id de mayor-menor*/
SELECT rental_duration, COUNT(film_id)  AS "TOTAL" FROM film GROUP BY rental_duration ORDER BY rental_id DESC;
/*ordenar de forma ascendente*/
SELECT rental_duration, COUNT(film_id)  AS "TOTAL" FROM film GROUP BY rental_duration ORDER BY TOTAL ASC;

/*obtener el primedio*/
SELECT AVG(replacement_cost) AS "PROMEDI" FROM film;
/*suma total de costo*/
SELECT SUM(replacement_cost) AS "costo total" FROM film;
