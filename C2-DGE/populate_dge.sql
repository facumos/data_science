-- Clear existing data (if any)
DELETE FROM registro_eventos;
DELETE FROM evento;
DELETE FROM establecimiento;
DELETE FROM expositores;
DELETE FROM tipo_establecimiento;
DELETE FROM tipo_publico;

-- Insert audience types
INSERT INTO tipo_publico (id_tipo_publico, descript) VALUES
(1, 'Alumnos nivel inicial'),
(2, 'Alumnos nivel primario'),
(3, 'Alumnos nivel secundario'),
(4, 'Docentes'),
(5, 'Administrativos'),
(6, 'Padres'),
(7, 'Público general');

-- Insert establishment types
INSERT INTO tipo_establecimiento (id_tipo_establecimiento, descipt) VALUES
(1, 'Educativo nivel inicial'),
(2, 'Educativo nivel básico'),
(3, 'Educativo nivel secundario'),
(4, 'Educativo nivel terciario'),
(5, 'Educativo nivel universitario'),
(6, 'Centro comunitario');

-- Insert speakers
INSERT INTO expositores (id_expositor, nombre, apellido) VALUES
(1, 'María', 'González'),
(2, 'Carlos', 'López'),
(3, 'Ana', 'Martínez'),
(4, 'Juan', 'Rodríguez'),
(5, 'Lucía', 'Fernández'),
(6, 'Pedro', 'Sánchez');

-- Insert events
INSERT INTO evento (id_evento, titulo, id_expositor, tematica, id_tipo_publico) VALUES
(1, 'Taller de robótica educativa', 1, 'Introducción a la programación para niños', 2),
(2, 'Charla sobre seguridad en internet', 2, 'Uso responsable de redes sociales', 3),
(3, 'Capacitación docente en TIC', 3, 'Herramientas digitales para el aula', 4),
(4, 'Orientación vocacional', 4, 'Elección de carreras profesionales', 3),
(5, 'Primeros auxilios para padres', 5, 'Manejo de emergencias en el hogar', 6),
(6, 'Concierto didáctico', 6, 'Música clásica para jóvenes', 3),
(7, 'Taller de educación sexual integral', 1, 'ESI para adolescentes', 3),
(8, 'Charla sobre nutrición infantil', 5, 'Alimentación saludable', 2);

-- Insert establishments
INSERT INTO establecimiento (id_establecimiento, nombre_establecimiento, direccion, telefono, email, id_tipo_establecimiento) VALUES
(1, 'Jardín Municipal N°1', 'Av. San Martín 123', 1145678901, 'jardin1@muni.edu.ar', 1),
(2, 'Escuela Primaria N°15', 'Belgrano 456', 1145678902, 'ep15@edu.gov.ar', 2),
(3, 'Colegio Nacional Secundario', 'Sarmiento 789', 1145678903, 'cns@edu.gov.ar', 3),
(4, 'Instituto Superior de Formación', 'Mitre 101', 1145678904, 'isf@edu.gov.ar', 4),
(5, 'Centro Comunitario Barrial', 'Pueyrredón 202', 1145678905, 'centro@comunidad.org', 6),
(6, 'Universidad Tecnológica', 'Rivadavia 303', 1145678906, 'info@untec.edu.ar', 5);

-- Insert event records (with some in second semester 2023 and some with >100 attendees)
INSERT INTO registro_eventos (fecha, id_evento, id_establecimiento, cant_publico) VALUES
-- First semester 2023 (won't appear in query b)
('2023-05-10', 1, 1, 25),
('2023-06-15', 2, 2, 35),

-- Second semester 2023 (will appear in query b)
('2023-07-20', 3, 3, 45),
('2023-08-12', 4, 4, 120),  -- >100 attendees (will appear in query d)
('2023-09-05', 5, 5, 85),
('2023-10-18', 6, 6, 150),  -- >100 attendees (will appear in query d)
('2023-11-22', 7, 1, 110),  -- >100 attendees (will appear in query d)
('2023-12-07', 8, 2, 65),

-- Other events to show most viewed event (query c)
('2023-08-25', 1, 3, 180),  -- Most attended (180)
('2023-09-15', 2, 4, 90),
('2023-10-30', 3, 5, 75),
('2023-11-10', 4, 6, 130),
('2023-12-15', 5, 1, 40);