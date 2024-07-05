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