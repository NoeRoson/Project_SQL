USE videoclub;

-- Q1. ¿Cuáles son las 5 películas más largas?
-- Para ello utilizamos un GROUP_CONCAT junto a DISTINCT para agrupar los títulos de la misma duración, ya que si no, obteníamos títulos repetidos.

SELECT f.length, GROUP_CONCAT(DISTINCT f.title) AS titles
FROM film AS f
LEFT JOIN old_HDD AS o 
ON f.film_id = o.film_id
GROUP BY f.length
ORDER BY f.length DESC
LIMIT 1;

-- Q2. ¿Cuál es la categoría de película que más se alquila?

SELECT c.name AS category, COUNT(rental_id) AS times
FROM category AS c
LEFT JOIN old_HDD AS o
ON c.category_id = o.category_id
LEFT JOIN inventory AS i
ON o.film_id = i.film_id
LEFT JOIN rental AS r
ON i.inventory_id = r.inventory_id
GROUP BY c.category_id, c.name
ORDER BY times DESC
LIMIT 1;


-- Q3. ¿Cuáles son los clientes que más películas han alquilado?
-- Usamos (*) para contar todas las filas de la tabla 'rental'.
SELECT customer_id AS customer, COUNT(*) AS times
FROM rental AS r
GROUP BY r.customer_id
ORDER BY times DESC
LIMIT 5;


-- Q4. ¿Cuál es la duración promedio de los alquileres?

SELECT AVG(days_rented) AS dias_promedio
FROM rental AS r;


-- Q5. ¿Cuáles son las películas más alquiladas de la actriz Grace Mostel?

SELECT o.title AS GraceMostel_films, COUNT(rental_id) AS times_rented
FROM old_HDD AS o
LEFT JOIN inventory AS i
ON o.film_id = i.film_id
LEFT JOIN rental AS r
ON i.inventory_id = r.inventory_id
WHERE o.name = 'GRACE MOSTEL'
GROUP BY o.title
ORDER BY times_rented DESC
LIMIT 5;


-- Q6. ¿Qué películas de Joe Swank incluyen comentarios?

SELECT f.title AS JoeSwank_comments
FROM film AS f
LEFT JOIN old_HDD AS o
ON f.film_id = o.film_id
WHERE o.name = 'JOE SWANK' AND f.commentaries = 1;
  






