-- Insert directors (15 directors)
INSERT INTO Directores (id_director, nombre, apellido) VALUES
(1, 'Steven', 'Spielberg'),
(2, 'James', 'Cameron'),
(3, 'Christopher', 'Nolan'),
(4, 'Quentin', 'Tarantino'),
(5, 'Martin', 'Scorsese'),
(6, 'Clint', 'Eastwood'),
(7, 'Ridley', 'Scott'),
(8, 'Peter', 'Jackson'),
(9, 'Tim', 'Burton'),
(10, 'Alfonso', 'Cuarón'),
(11, 'Guillermo', 'del Toro'),
(12, 'Alejandro', 'Iñárritu'),
(13, 'Steven', 'Soderbergh'),
(14, 'David', 'Fincher'),
(15, 'Wes', 'Anderson');

-- Insert movies (20 movies with various languages and directors)
INSERT INTO Peliculas (id_pelicula, titulo, anio_estreno, codigo_imdb, idioma, duracion_min, productora) VALUES
-- English movies
(1, 'Jurassic Park', 1993, 'tt0107290', 'English', 127, 'Universal Pictures'),
(2, 'Jurassic World', 2015, 'tt0369610', 'English', 124, 'Universal Pictures'),
(3, 'Jurassic World: Fallen Kingdom', 2018, 'tt4881806', 'English', 128, 'Universal Pictures'),
(4, 'The Dark Knight', 2008, 'tt0468569', 'English', 152, 'Warner Bros.'),
(5, 'Inception', 2010, 'tt1375666', 'English', 148, 'Warner Bros.'),
(6, 'Pulp Fiction', 1994, 'tt0110912', 'English', 154, 'Miramax'),
(7, 'The Shawshank Redemption', 1994, 'tt0111161', 'English', 142, 'Castle Rock Entertainment'),

-- Spanish movies
(8, 'El Laberinto del Fauno', 2006, 'tt0457430', 'Spanish', 118, 'Warner Bros.'),
(9, 'Roma', 2018, 'tt6155172', 'Spanish', 135, 'Netflix'),

-- French movies
(10, 'Amélie', 2001, 'tt0211915', 'French', 122, 'Union Générale Cinématographique'),
(11, 'The Artist', 2011, 'tt1655442', 'French', 100, 'La Petite Reine'),

-- Japanese movies
(12, 'Rashomon', 1950, 'tt0042876', 'Japanese', 88, 'Daiei Film'),
(13, 'Seven Samurai', 1954, 'tt0047478', 'Japanese', 207, 'Toho'),

-- Other English movies for director count
(14, 'Schindler''s List', 1993, 'tt0108052', 'English', 195, 'Universal Pictures'),
(15, 'Saving Private Ryan', 1998, 'tt0120815', 'English', 169, 'DreamWorks'),
(16, 'E.T. the Extra-Terrestrial', 1982, 'tt0083866', 'English', 115, 'Universal Pictures'),
(17, 'Jaws', 1975, 'tt0073195', 'English', 124, 'Universal Pictures'),
(18, 'The Terminal', 2004, 'tt0362227', 'English', 128, 'DreamWorks'),
(19, 'Catch Me If You Can', 2002, 'tt0264464', 'English', 141, 'DreamWorks'),
(20, 'Minority Report', 2002, 'tt0181689', 'English', 145, '20th Century Fox');

-- Create movie-director relationships
INSERT INTO Pelicula_Director (id_pelicula, id_director) VALUES
-- Steven Spielberg directed many English films
(1, 1), (2, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1),

-- Other directors
(3, 3), (4, 3), (5, 3), (6, 4), (7, 6), (8, 11), (9, 10), (10, 9), (11, 13), (12, 5), (13, 5);