-- FUNCIONES DE ALTERACIÓN
-- CADENA DE CARACTERES
SELECT CONCAT(first_name, " " ,last_name) AS nombre_completo
FROM actors;

SELECT title, REPLACE(title, "Harry", "Seba" ) 
FROM movies
WHERE title LIKE "Harry%";

SELECT title FROM movies
WHERE LENGTH(title) > 20;

SELECT title, length,
COALESCE(length, 0) 
FROM movies;

SELECT TRIM('  SQL Tutorial  ');

-- NUMERICOS
SELECT COUNT(title), MAX(rating), MIN(awards) FROM movies;
SELECT PI();
SELECT TRUNCATE(RAND()*(10-5)+5, 2) ;

-- FECHA
SELECT SECOND(NOW());
SELECT NOW();
SELECT EXTRACT(DAY_HOUR FROM NOW());
SELECT DATEDIFF(end_date, release_date) FROM series;
SELECT title, ROUND(DATEDIFF(NOW(), end_date) / 365) FROM series;
SELECT DATE_ADD(NOW(), INTERVAL 3600 SECOND), DATE_SUB(NOW(), INTERVAL 3600 SECOND);
SELECT DATE_FORMAT(release_date, "%d/%M/%Y") FROM movies;

-- AVANZADAS
SELECT title, awards, 
IF( awards > 5, 
"Mui premiada" , 
"Es terriblemente mala" ) 
FROM movies;

SELECT title, rating,
	CASE
		WHEN rating < 4 THEN "MUY MALA"
		WHEN rating BETWEEN 4 AND 6 THEN "REGULAR CON SODA"
		WHEN rating BETWEEN 6 AND 9 THEN "BUENA"
        ELSE "PERFECTA"
	END AS calificacion
FROM movies;
