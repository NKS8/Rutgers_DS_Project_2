
-- Returns the Name of the Netflix performer and Netflix 
-- movie/show they appear in
SELECT p.performer, tmdb.title
FROM performers AS p
INNER JOIN tmdb ON p.movie_id = tmdb.pulled_id;

--All other movies Netflix star Selena Gomez has acted in
SELECT p.performer, af.title
FROM performers AS p, actor_films AS af
WHERE af.performer = p.performer AND p.performer = 'Selena Gomez'
ORDER BY p.performer;


-- Returns Netflix film/ TV show and the realase date(s)
SELECT n.title, tmdb.release_date
FROM netflix AS n, tmdb
WHERE n.title = tmdb.title;


