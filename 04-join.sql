-- TABLE REFERENCE
SELECT movies.title, movies.genre_id , 
genres.id as id_genero, genres.name
FROM movies, genres
WHERE movies.genre_id = genres.id
AND genres.name = "Drama";

-- INNER JOIN

SELECT movies.title, movies.genre_id , 
genres.id as id_genero, genres.name
FROM genres
INNER JOIN movies ON movies.genre_id = genres.id
AND genres.name = "Drama";

-- DOBLE INNER JOIN 
SELECT DISTINCT a.first_name, a.last_name 
FROM actors a
INNER JOIN actor_movie am ON a.id = am.actor_id
INNER JOIN movies m ON m.id = am.movie_id
WHERE m.title LIKE "Toy%";




