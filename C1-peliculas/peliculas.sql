-- Tabla películas
CREATE TABLE Peliculas (
    id_pelicula INT,
    titulo VARCHAR(100) NOT NULL,
    anio_estreno INT NOT NULL,
    codigo_imdb VARCHAR(20) UNIQUE,  
    idioma VARCHAR(50) NOT NULL,
    duracion_min INT NOT NULL CHECK (duracion_min > 0),
    productora VARCHAR(100),
    PRIMARY KEY (id_pelicula)
);

-- Tabla Directores
CREATE TABLE Directores (
    id_director INT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_director)
);

-- Tabla intermedia Película_Director (N:M)
CREATE TABLE Pelicula_Director (
    id_pelicula INT,
    id_director INT,
    PRIMARY KEY (id_pelicula, id_director),
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula),
    FOREIGN KEY (id_director) REFERENCES Directores(id_director)
);