CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers (
	performer_id SERIAL PRIMARY KEY,
	nickname VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS genresperformers (
	genre_id INTEGER REFERENCES genres(genre_id),
	performer_id INTEGER REFERENCES performers(performer_id) ,
	CONSTRAINT pk1 PRIMARY KEY (genre_id, performer_id) 
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	year_of_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS albumsperformers (
	album_id INTEGER REFERENCES albums(album_id),
	performer_id INTEGER REFERENCES performers(performer_id),
	CONSTRAINT pk2 PRIMARY KEY (album_id, performer_id) 
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY key ,
	title VARCHAR(100) NOT NULL,
	duration interval NOT NULL,  
	album_id INTEGER NOT NULL REFERENCES albums(album_id) 
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,  
	year_of_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS trackscollections (
	collection_id INTEGER REFERENCES collections(collection_id),
	track_id INTEGER REFERENCES tracks(track_id),
	CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id) 
);
