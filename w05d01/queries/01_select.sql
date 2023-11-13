SELECT
    *
FROM
    albums;

SELECT
    *
FROM
    songs;

SELECT
    COUNT(*)
FROM
    albums;

SELECT
    COUNT(*)
FROM
    songs;

SELECT
    *
FROM
    albums
    JOIN songs ON albums.id = songs.album_id;

SELECT
    albums.album_name,
    COUNT(songs.id) AS num_songs
FROM
    albums
    JOIN songs ON albums.id = songs.album_id
GROUP BY
    albums.album_name;

SELECT
    albums.album_name,
    COUNT(songs.id) AS num_songs
FROM
    albums
    JOIN songs ON albums.id = songs.album_id
GROUP BY
    albums.album_name
HAVING
    COUNT(songs.id) > 10;

SELECT
    *
FROM
    albums
    LEFT JOIN songs ON albums.id = songs.album_id;

SELECT
    *
FROM
    albums
    LEFT JOIN songs ON albums.id = songs.album_id
WHERE
    songs.album_id IS NULL;

SELECT
    AVG(rating)
FROM
    songs
WHERE
    album_id = 1;