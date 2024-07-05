-- Задание 2 пункт 1 сокращенно 2.1
SELECT title, duration
FROM tracks 
WHERE duration = (SELECT max(duration) FROM tracks );

-- 2.2
SELECT title
FROM tracks 
WHERE duration >= '00:03:30';

-- 2.3
SELECT title
FROM collections
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-01-01';

-- 2.4
SELECT nickname 
FROM performers
WHERE nickname LIKE ('% %');

-- 2.5
SELECT title 
FROM tracks 
WHERE (title LIKE ('my %')) OR (title LIKE ('% my')) OR (title LIKE ('% my %'));

-- Задание 3 пункт 1 сокращенно 3.1
SELECT g2.title,  count(performer_id) 
FROM genresperformers g
JOIN genres g2 ON g.genre_id = g2.genre_id 
GROUP BY g.genre_id, g2.title 
ORDER BY g.genre_id 

-- 3.2
SELECT COUNT(track_id)
FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31' 

-- 3.3
SELECT a.title, AVG(duration) 
FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
GROUP BY a.title 

-- 3.4
SELECT p.nickname 
FROM albums a 
JOIN albumsperformers a2 ON a.album_id = a2.album_id 
JOIN performers p ON a2.album_id = p.performer_id 
WHERE year_of_release NOT BETWEEN '2020-01-01' AND '2020-12-31' 

-- 3.5 Исполнитель BONES
SELECT c.title 
FROM collections c 
JOIN trackscollections t ON c.collection_id = t.collection_id
JOIN tracks t2 ON t2.track_id = t.track_id 
JOIN albums a ON a.album_id = t2.album_id 
JOIN albumsperformers a2 ON a.album_id = a2.album_id 
JOIN performers p ON a2.performer_id = p.performer_id 
WHERE p.nickname = 'BONES'
