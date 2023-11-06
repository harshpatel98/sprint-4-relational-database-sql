DROP DATABASE IF EXISTS moviesdatabase;
CREATE DATABASE moviesdatabase;
USE moviesdatabase;

CREATE TABLE genre (
    genreId INT AUTO_INCREMENT NOT NULL,
    genreName VARCHAR(30),
    CONSTRAINT pk_genre 
		PRIMARY KEY (genreId)
);

CREATE TABLE director (
    directorId INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    birthdate DATETIME,
    CONSTRAINT pk_director 
		PRIMARY KEY (directorId)
);

CREATE TABLE rating (
    ratingId INT AUTO_INCREMENT NOT NULL,
    ratingName DOUBLE,
    CONSTRAINT pk_rating 
		PRIMARY KEY (ratingId)
);

CREATE TABLE actor (
    actorId INT AUTO_INCREMENT,
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    birthdate DATETIME,
    CONSTRAINT pk_actor 
		PRIMARY KEY (actorId)
);

CREATE TABLE movie (
    movieId INT AUTO_INCREMENT,
    genreId INT NOT NULL,
    directorId INT,
    ratingId INT,
    title VARCHAR(128) NOT NULL,
    duration DOUBLE,
    releaseDate DATETIME,
    CONSTRAINT pk_movie 
		PRIMARY KEY (movieId),
    CONSTRAINT fk_movie_genre 
		FOREIGN KEY (genreId) 
		REFERENCES genre(genreId),
    CONSTRAINT fk_movie_director 
		FOREIGN KEY (directorId)
        REFERENCES director(directorId),
    CONSTRAINT fk_movie_rating 
		FOREIGN KEY (ratingId) 
        REFERENCES rating(ratingId)
);