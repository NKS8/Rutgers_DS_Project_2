
CREATE TABLE netflix (
	title VARCHAR,
	genre VARCHAR,
	premeire VARCHAR,
	runtime INT,
	imdb Decimal,
	lang VARCHAR
);



CREATE TABLE performers(
	identification INT,
	movie_id INT,
	performer VARCHAR,
	gender INT
);

CREATE TABLE tmdb (
	identification INT,
	pulled_id INT,
	title VARCHAR,
	release_date date,
	budget INT,
	revenue INT,
	profit INT
);

DROP TABLE actor_films;

CREATE TABLE actor_films (
	numb INT,
	title VARCHAR,
	performer VARCHAR
);

ALTER TABLE actor_films
DROP COLUMN numb;


SELECT * FROM actor_films;
