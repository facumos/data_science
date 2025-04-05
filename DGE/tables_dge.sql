CREATE TABLE tipo_publico(
    id_tipo_publico INT,
    descript VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_tipo_publico));

CREATE TABLE tipo_establecimiento(
    id_tipo_establecimiento INT,
    descipt VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_tipo_establecimiento));

CREATE TABLE expositores(
    id_expositor INT,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_expositor));

CREATE TABLE evento(
    id_evento INT,
    titulo VARCHAR(100) NOT NULL,
    id_expositor INT NOT NULL,
    tematica VARCHAR(200),
    id_tipo_publico INT NOT NULL,
    PRIMARY KEY(id_evento),
    FOREIGN KEY(id_expositor) REFERENCES expositores,
    FOREIGN KEY(id_tipo_publico) REFERENCES tipo_publico);

CREATE TABLE establecimiento(
    id_establecimiento INT,
    nombre_establecimiento VARCHAR(50) NOT NULL,
    direccion VARCHAR(50),
    telefono INT,
    email VARCHAR(50),
    id_tipo_establecimiento INT NOT NULL,
    PRIMARY KEY(id_establecimiento),
    FOREIGN KEY(id_tipo_establecimiento) REFERENCES tipo_establecimiento);

CREATE TABLE registro_eventos(
    fecha DATE NOT NULL,
    id_evento INT NOT NULL,
    id_establecimiento INT NOT NULL,
    cant_publico INT NOT NULL,

    PRIMARY KEY(fecha,id_evento,id_establecimiento),
    FOREIGN KEY(id_establecimiento) REFERENCES establecimiento,

    CONSTRAINT restrict_evento UNIQUE (fecha,id_evento,id_establecimiento));