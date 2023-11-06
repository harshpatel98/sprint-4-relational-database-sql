Drop DATABASE IF EXISTS moviesdatabase;
CREATE DATABASE moviesdatabase;
USE moviesdatabase;

create table genre(
	genreId int auto_increment not null,
    genreName varchar(30),
    constraint pk_genre
		primary key (genreId)
);

create table director(
	directorId int auto_increment not null,
    firstName varchar(30),
    lastName varchar(30),
    birthdate datetime,
    constraint pk_director
		primary key (directorId)  
);

create table rating(
	ratingId int auto_increment not null,
    ratingName varchar(5),
    constraint pk_rating
		primary key (ratingId)
);

create table actor(
	actorId int auto_increment,
    firstName varchar(30),
    lastName varchar(30),
    birthdate datetime,
    constraint pk_actor
		primary key (actorId)
);

create table movie (
	movieId int auto_increment,
    genreId int not null, #foreign key
    directorId int, #foreign key
    ratingId int , #foreign key
    title varchar(128) not null,
    releaseDate datetime,
    
    constraint pk_movie
		primary key (movieId),
	constraint fk_movie_genre
		foreign key (genreId)
        references genre(genreId),
	constraint fk_movie_director
		foreign key (directorId)
        references director(directorId),
	constraint fk_movie_rating
		foreign key (ratingId)
        references rating(ratingId)
);

create table castMembers(
	castMemberId int auto_increment,
    actorId int, #foreign key
    movieId int, #foreign key
    memberRole varchar(50),
    constraint pk_castMembers
		primary key (castMemberId),
	constraint pk_castMembers_actor
		foreign key (actorId)
        references actor(actorId),
	constraint pk_castMembers_movie
		foreign key (movieId)
        references movie(movieId)
);



