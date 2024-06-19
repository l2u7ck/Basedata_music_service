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

--ALTER TABLE albums ADD CHECK (year_of_release >= DATE('1990-01-01') AND year_of_release <= DATE(NOW()));

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	year_of_release DATE NOT NULL,
	CHECK (year_of_release >= DATE('1990-01-01') AND year_of_release <= DATE(NOW()))	
);

CREATE TABLE IF NOT EXISTS albumsperformers (
	album_id INTEGER REFERENCES albums(album_id),
	performer_id INTEGER REFERENCES performers(performer_id),
	CONSTRAINT pk2 PRIMARY KEY (album_id, performer_id) 
);

--ALTER TABLE tracks ADD CHECK (duration >= INTERVAL '20' SECOND AND duration <= INTERVAL '1' HOUR);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY key ,
	title VARCHAR(100) NOT NULL,
	duration INTERVAL  NOT NULL,
	CHECK (duration >= INTERVAL '20' SECOND AND duration <= INTERVAL '1' HOUR),
	album_id INTEGER NOT NULL REFERENCES albums(album_id) 
);

--ALTER TABLE collections ADD CHECK (year_of_release >= DATE('1990-01-01') AND year_of_release <= DATE(NOW()));

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,  
	year_of_release DATE NOT NULL,
    CHECK (year_of_release > DATE('1990-01-01') AND year_of_release <= DATE(NOW()))
);

CREATE TABLE IF NOT EXISTS trackscollections (
	collection_id INTEGER REFERENCES collections(collection_id),
	track_id INTEGER REFERENCES tracks(track_id),
	CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id) 
);
