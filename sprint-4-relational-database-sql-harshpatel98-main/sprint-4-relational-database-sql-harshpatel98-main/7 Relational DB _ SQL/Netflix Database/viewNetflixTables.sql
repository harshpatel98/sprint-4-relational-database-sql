SELECT movie.title, rating.ratingName
FROM movie
JOIN rating ON movie.ratingId = rating.ratingId;

SELECT *
FROM movie
WHERE releaseDate < '2005-01-01';

-- add limit so it doesnt show more than the limit amout LIMIT 10;
SELECT title
FROM movie
WHERE genreId = (SELECT genreId FROM genre WHERE genreName = 'Action')
  AND releaseDate > '2000-01-01';

SELECT m.title, r.ratingName
FROM movie m
JOIN rating r ON m.ratingId = r.ratingId
WHERE r.ratingName > 7;

SELECT *
FROM actor
WHERE DATEDIFF(CURDATE(), birthdate) > 45 * 365;


-- Update the rating for a specific movie
UPDATE movie
JOIN rating ON movie.ratingId = rating.ratingId
SET rating.ratingName = 8.0
WHERE movie.title IN ('John Wick 4', '300');


SELECT m.title, r.ratingName
FROM movie m
JOIN rating r ON m.ratingId = r.ratingId;

