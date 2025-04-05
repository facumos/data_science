-- Insert products (4 items)
INSERT INTO producto (id_producto, nombre, unidad_medida, stock_minimo, perecedero) VALUES
(1, 'CAFE MOLIDO PREMIUM', 'kg', 100, FALSE),
(2, 'TOMATES EN LATA 400G', 'un', 200, TRUE),
(3, 'AZUCAR BLANCA', 'kg', 150, FALSE),
(4, 'LECHE ENTERA 1L', 'lt', 80, TRUE);

-- Insert warehouses (3 locations)
INSERT INTO deposito (id_deposito, nombre, ubicacion, distancia_hiper_km) VALUES
(1, 'Depósito Central', 'Av. Principal 500', 1.5),
(2, 'Depósito Norte', 'Calle Norte 1200', 5.2),
(3, 'Depósito Sur', 'Av. Sur 780', 8.0);

-- Insert lots (10 entries with focus on query requirements)
INSERT INTO lote (id_lote, id_producto, id_deposito, cant_unidades, fecha_ingreso, fecha_caducidad) VALUES
(1, 1, 1, 50, '2023-10-15', NULL),
(2, 1, 2, 40, '2023-11-20', NULL),
(3, 1, 3, 30, '2023-12-10', NULL),

(4, 2, 1, 100, '2023-09-01', '2024-06-01'),  -- Will appear in expired query if current date > 2024-06-01
(5, 2, 2, 80, '2023-10-15', '2024-07-15'),
(6, 2, 3, 70, '2023-11-20', '2024-08-20'),

(7, 3, 1, 60, '2023-08-15', NULL),  -- No cumple con el mínimo
(8, 3, 2, 40, '2023-09-20', NULL),

(9, 4, 1, 30, '2023-12-01', '2023-12-15'),  -- Expired
(10, 4, 3, 40, '2023-12-10', '2023-12-20'), -- No cumple con el minimo

-- Central Depot (2 lots - will be selected as closest with ≥2 lots)
(11, 2, 1, 120, '2023-10-15', '2024-10-15'),
(12, 2, 1, 80, '2023-11-20', '2024-11-20'),

-- North Depot (1 lot - doesn't meet count requirement)
(13, 2, 2, 100, '2023-12-10', '2024-12-10'),

-- South Depot (2 lots - meets count but farther)
(14, 2, 3, 90, '2023-09-01', '2024-09-01'),
(15, 2, 3, 70, '2023-10-01', '2024-10-01'),

-- Additional TOMATES
(16, 3, 2, 100, '2024-09-01', '2025-06-01'),  
(17, 3, 1, 80, '2024-10-15', '2025-07-15');   

