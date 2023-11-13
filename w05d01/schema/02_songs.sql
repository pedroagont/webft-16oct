DROP TABLE IF EXISTS songs;

CREATE TABLE
    songs (
        id SERIAL PRIMARY KEY,
        album_id INT REFERENCES albums (id),
        track_number INT,
        song_name VARCHAR(50),
        rating FLOAT
    );