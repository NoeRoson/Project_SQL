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
SELECT
FROM
LEFT JOIN
ON
GROUP BY
ORDER BY
LIMIT 1


-- Q3. ¿Cuáles son los clientes que más películas han alquilado?




-- Q4. ¿Cuál es la duración promedio de los alquileres?




-- Q5. ¿Cuáles son las películas en las que sale la actriz....?





-- Q6. ¿Qué películas incluyen comentarios?





-- Q7. ¿Qué vendedor atendió a más clientes?