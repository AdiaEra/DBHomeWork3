--1 название и год выхода альбомов, вышедших в 2018 году:
SELECT title, year_of_release FROM album
WHERE year_of_release = 2018;

--2 название и продолжительность самого длительного трека:
SELECT title, duration
FROM track
WHERE duration = (SELECT MAX(duration) FROM track)

--или так:
select title, duration from track
order by duration desc
limit 1

--3 название треков, продолжительность которых не менее 3,5 минуты:
SELECT title FROM track
WHERE duration >= 210

--4 названия сборников, вышедших в период с 2018 по 2020 год включительно:
SELECT title FROM collection
WHERE year_of_release BETWEEN 2018 AND 2020

--5 исполнители, чье имя состоит из 1 слова:
SELECT name_nickname FROM performer
WHERE name_nickname NOT LIKE '% %'

--6 название треков, которые содержат слово «мой» или «my»:
SELECT title FROM track
WHERE title ILIKE '%my%' OR title ILIKE '%мой%'
