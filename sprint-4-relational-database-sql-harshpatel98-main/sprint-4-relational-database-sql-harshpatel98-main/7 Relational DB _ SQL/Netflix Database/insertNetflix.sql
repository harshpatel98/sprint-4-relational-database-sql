-- Insert genres
INSERT INTO genre (genreName) VALUES ('Action');
INSERT INTO genre (genreName) VALUES ('Drama');
INSERT INTO genre (genreName) VALUES ('Crime');

-- Insert directors
INSERT INTO director (firstName, lastName, birthdate) VALUES ('Chad', 'Stahelski', '1968-09-20');
INSERT INTO director (firstName, lastName, birthdate) VALUES ('Zack', 'Snyder', '1966-03-01');
INSERT INTO director (firstName, lastName, birthdate) VALUES ('Curtis', 'Hanson', '1945-03-24');
INSERT INTO director (firstName, lastName, birthdate) VALUES ('Steven', 'Soderbergh', '1963-01-14');
INSERT INTO director (firstName, lastName, birthdate) VALUES ('Francis', 'Ford Coppola', '1939-04-07');

-- Insert ratings
-- Insert ratings
INSERT INTO rating (ratingName) VALUES (7.0);
INSERT INTO rating (ratingName) VALUES (8.2);
INSERT INTO rating (ratingName) VALUES (7.6);
INSERT INTO rating (ratingName) VALUES (7.2);
INSERT INTO rating (ratingName) VALUES (7.7);
INSERT INTO rating (ratingName) VALUES (9.2);


-- Insert actors
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Keanu', 'Reeves', '1964-09-02');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Halle', 'Berry', '1966-08-14');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Gerard', 'Butler', '1969-11-13');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Lena', 'Headey', '1973-10-03');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Eminem', 'Mathers', '1972-10-17');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Brittany', 'Murphy', '1977-11-10');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('George', 'Clooney', '1961-05-06');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Brad', 'Pitt', '1963-12-18');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Marlon', 'Brando', '1924-07-03');
INSERT INTO actor (firstName, lastName, birthdate) VALUES ('Al', 'Pacino', '1940-04-25');

-- Insert movies with the desired ratings
-- Insert movies with the desired ratings
INSERT INTO movie (genreId, directorId, ratingId, title, duration, releaseDate)
VALUES
  ((SELECT genreId FROM genre WHERE genreName = 'Action'),
   (SELECT directorId FROM director WHERE firstName = 'Chad' AND lastName = 'Stahelski'),
   (SELECT ratingId FROM rating WHERE ratingName = 8.2),
   'John Wick 4', 120, '2023-08-25'),
  ((SELECT genreId FROM genre WHERE genreName = 'Action'),
   (SELECT directorId FROM director WHERE firstName = 'Zack' AND lastName = 'Snyder'),
   (SELECT ratingId FROM rating WHERE ratingName = 7.6),
   '300', 117, '2006-03-09'),
  ((SELECT genreId FROM genre WHERE genreName = 'Drama'),
   (SELECT directorId FROM director WHERE firstName = 'Curtis' AND lastName = 'Hanson'),
   (SELECT ratingId FROM rating WHERE ratingName = 7.2),
   '8 Mile', 110, '2002-11-08'),
  ((SELECT genreId FROM genre WHERE genreName = 'Crime'),
   (SELECT directorId FROM director WHERE firstName = 'Steven' AND lastName = 'Soderbergh'),
   (SELECT ratingId FROM rating WHERE ratingName = 7.7),
   "Ocean's 11", 116, '2001-12-07'),
  ((SELECT genreId FROM genre WHERE genreName = 'Crime'),
   (SELECT directorId FROM director WHERE firstName = 'Francis' AND lastName = 'Ford Coppola'),
   (SELECT ratingId FROM rating WHERE ratingName = 9.2),
   'The Godfather', 175, '1972-03-24');

-- Fetch the updated movie table
SELECT * FROM movie;
