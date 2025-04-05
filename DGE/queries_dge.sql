-- a
SELECT nombre_establecimiento,direccion,telefono 
FROM establecimiento
ORDER BY nombre_establecimiento ASC;

-- b
SELECT DISTINCT e.titulo
FROM evento e
JOIN registro_eventos re on re.id_evento = e.id_evento
WHERE re.fecha BETWEEN '2023-07-01' AND '2023-12-31';

-- c
SELECT DISTINCT e.titulo, SUM(re.cant_publico) AS cant_p_total -- Agrego la suma para verificar
FROM evento e
JOIN registro_eventos re on re.id_evento = e.id_evento
GROUP BY e.titulo
ORDER by SUM(re.cant_publico) DESC;
--LIMIT 1;

 -- d
SELECT DISTINCT e.titulo, re.cant_publico  -- Le agrego la cantidad de público para verificar
FROM evento e
JOIN registro_eventos re ON re.id_evento = e.id_evento
WHERE re.cant_publico > 100;