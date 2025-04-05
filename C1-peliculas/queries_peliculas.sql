-- a) Generar un listado donde para cada película se indique: título, duración, código IMDB y 
--nombre de la productora
SELECT titulo,duracion_min,codigo_imdb,productora 
FROM Peliculas;

-- b) Listar los títulos de las películas que contengan en su título la palabra “JURASSIC” y que
--hayan sido estrenadas después de 2000.
SELECT titulo
FROM Peliculas
WHERE titulo LIKE '%JURASSIC%' AND anio_estreno > 2000;

-- c) Listar los nombres de los idiomas en los que están disponibles 
--las películas (sin repeticiones).
SELECT DISTINCT idioma
FROM Peliculas;

--d) Generar el mismo listado que en la opción anterior pero con una sentencia SELECT diferente.
SELECT idioma AS 'Idioma'
FROM Peliculas
GROUP BY idioma;

--e) Indicar el nombre del director que ha dirigido la mayor cantidad de películas en inglés.
SELECT d.nombre,d.apellido, p.idioma, COUNT(p.id_pelicula) as cant_peliculas
FROM Directores d
JOIN Pelicula_Director pd ON pd.id_director = d.id_director
JOIN Peliculas p on p.id_pelicula = pd.id_pelicula
GROUP by p.idioma
HAVING p.idioma = 'English'
ORDER By COUNT(p.id_pelicula) DESC
LIMIT 1;
