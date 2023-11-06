Drop DATABASE IF EXISTS vinylrecordshop;
CREATE DATABASE vinylrecordshop;
USE vinylrecordshop;

CREATE TABLE album(
	albumId int auto_increment,
    albumTitle varchar(100) not null,
    label varchar(50),
    releaseDate DATE,
    price DECIMAL(5,2),
    CONSTRAINT pk_album
		PRIMARY KEY(albumID)
);

create table artist(
	artistId int auto_increment,
    artistFirstName varchar(25),
    artistLastName varchar(50),
    constraint pk_artist
		PRIMARY KEY(artistID)
);

create table band(
	bandId int auto_increment,
    bandName varchar(50),
	constraint pk_artist
		PRIMARY KEY(bandID)
);

create table song(
	songId int auto_increment,
    songTitle varchar(100) not null,
    videoURL varchar(100),
    bandId int not null,
    constraint pf_song
		primary key (songId),
	constraint fk_song
		foreign key (bandId)
        references band(bandId)
);

create table songAlbum (
	songId int,
    albumId int,
    constraint pk_songAlbum
		primary key	(songId, albumId),
	constraint fk_songAlbum_song
		foreign key (songId)
        references song(songId),
	constraint fk_songAlbum_album
		foreign key (albumId)
        references album(albumId)
);

create table bandArtist(
	bandId int,
    artistId int,
    constraint pk_bandartist
		primary key (bandId, artistId),
	constraint fk_bandartist_band
		foreign key (bandId)
        references band(bandId),
	constraint dk_bandArtist_artist
		foreign key (artistId)
        references artist(artistId)
	
);

show tables;
describe band;


