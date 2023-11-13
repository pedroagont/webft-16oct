DROP TABLE IF EXISTS albums;

CREATE TABLE
    albums (
        id SERIAL PRIMARY KEY,
        album_name VARCHAR(50),
        artist_name VARCHAR(50),
        release_date DATE
    );