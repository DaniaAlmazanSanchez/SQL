/*OPERADORES LOGICOS
O      OR
Y      AND
NO     NOT

*/
/*OPERADORES DE COMPARACION:
igual         =
distinto      !=
menor         <
mayor         >
mayor igual   >=
menor igual   <=
entre         between A and B
en            in
es nulo       is null
no nulo       not null
como          like
no es como    not like
*/

/*COMODINES
Cualquier cantidad de caracteres : %
Un caracter desconocido: _
*/


/*seleccionar por id*/
SELECT *FROM tabla WHERE id=5;

/*Selecciona por id mayor a un numero*/
SELECT *FROM actor WHERE actor_id>65;

/**seleccionar campos*/
SELECT actor_id,first_name,last_name FROM actor WHERE actor_id >63;

/*sleccionar elementos con id pares*/
SELECT *FROM actor WHERE actor_id %2=0;

/*Operdor AND*/
SELECT *FROM actor WHERE first_name ='CHRIS' AND actor_id=50;


/*comodines*/
/*%a Al inicio que targa los nombres que terminen con a*/
SELECT *FROM actor WHERE first_name LIKE "%a";
/*%a Al final que contenga una a*/
SELECT *FROM actor WHERE first_name LIKE "a%";
/*todos los elemntos que contengan una a */
SELECT *FROM actor WHERE first_name LIKE "%a%";
/*todos los ementos que contengan un a o empiecen con e*/
SELECT *FROM actor WHERE first_name LIKE "%a%" OR last_name LIKE "e%";