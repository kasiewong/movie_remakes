CREATE TABLE movies_all (
    movie_id VARCHAR NOT NULL PRIMARY KEY,
    title_movie VARCHAR NOT NULL,
    year_movie VARCHAR NOT NULL,
    type_movie VARCHAR NOT NULL
);

CREATE TABLE originals (
    movie_id VARCHAR NOT NULL PRIMARY KEY REFERENCES movies_all(movie_id),
    title_original VARCHAR NOT NULL,
    year_original VARCHAR NOT NULL,
    imdb_id_original VARCHAR
);

CREATE TABLE remakes (
    movie_id VARCHAR NOT NULL PRIMARY KEY REFERENCES movies_all(movie_id),
    title_remakes VARCHAR NOT NULL,
    year_remakes VARCHAR NOT NULL,
    imdb_id_remakes VARCHAR
);

CREATE TABLE remakes_originals (
    id SERIAL PRIMARY KEY,
    movie_id_remakes VARCHAR NOT NULL REFERENCES remakes(movie_id),
	movie_id_original VARCHAR NOT NULL REFERENCES originals(movie_id)
);

CREATE TABLE imdb (
    movie_id VARCHAR NOT NULL PRIMARY KEY,
    title_movie VARCHAR NOT NULL,
    year_movie VARCHAR NOT NULL,
    rated VARCHAR, 
	runtime VARCHAR, 
	genre VARCHAR, 
	director VARCHAR, 
	writer VARCHAR, 
	actors VARCHAR, 
	plot VARCHAR, 
	language VARCHAR, 
	country VARCHAR, 
	awards VARCHAR, 
	metacritic_rating INT, 
	imdb_rating float(1), 
	imdb_votes INT,
	imdb_id VARCHAR
);
