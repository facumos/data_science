CREATE TABLE producto(
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    unidad_medida VARCHAR(10) NOT NULL,
    stock_minimo INT NOT NULL CHECK (stock_minimo > 0),
    perecedero BOOL NOT NULL
);

CREATE TABLE deposito(
    id_deposito INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    distancia_hiper_km NUMERIC(3,1) NOT NULL CHECK (distancia_hiper_km >= 0)
);

CREATE TABLE lote(
    id_lote INT PRIMARY KEY,
    id_producto INT NOT NULL REFERENCES producto(id_producto),
    id_deposito INT NOT NULL REFERENCES deposito(id_deposito),
    cant_unidades INT NOT NULL CHECK (cant_unidades > 0),
    fecha_ingreso DATE NOT NULL,
    fecha_caducidad DATE,
    CONSTRAINT chk_fechas CHECK (fecha_caducidad IS NULL OR fecha_caducidad >= fecha_ingreso)
);
