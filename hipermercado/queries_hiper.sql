-- a
SELECT nombre, unidad_medida
FROM producto
WHERE nombre LIKE '%CAFE%';

-- b
SELECT p.nombre, p.unidad_medida, l.cant_unidades, l.fecha_caducidad
FROM producto p
JOIN lote l ON l.id_producto = p.id_producto
WHERE l.fecha_caducidad < CURRENT_DATE;

-- c
SELECT d.nombre, d.ubicacion, d.distancia_hiper_km,SUM(p.nombre LIKE '%TOMATES EN LATA%') AS cantidad -- Agregados para verificacion
FROM deposito d
JOIN lote l ON l.id_deposito = d.id_deposito
JOIN producto p ON p.id_producto = l.id_producto
GROUP BY d.nombre
HAVING SUM(p.nombre LIKE '%TOMATES EN LATA%') >= 2
ORDER BY d.distancia_hiper_km ASC
LIMIT 1;

-- d
SELECT p.nombre, p.stock_minimo, SUM(l.cant_unidades) AS cant_real
FROM producto p
JOIN lote l ON l.id_producto = p.id_producto
GROUP BY p.nombre
HAVING SUM(l.cant_unidades) < p.stock_minimo;
