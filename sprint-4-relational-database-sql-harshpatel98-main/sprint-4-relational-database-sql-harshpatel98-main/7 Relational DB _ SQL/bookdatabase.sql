Drop DATABASE IF EXISTS bookdatabase;
CREATE DATABASE bookdatabase;
USE bookdatabase;

create table author(
	authorId int auto_increment,
    firstName varchar(25),
    lastName varchar(50),
    gender varchar(1),
    dateOfBrith datetime,
    dateOfDeath datetime,
    constraint pk_author
		primary key (authorId)
);

create table book(
	bookId int auto_increment,
    title varchar(100),
    publicationDate datetime,
    constraint pk_book
		primary key (bookId)    
);

create table formatBook(
	formatId int auto_increment,
    formatName varchar(12),
	constraint pk_formatBook
		primary key (formatId)
);

create table genre(
	genreId int auto_increment,
    genreName varchar(25),
    constraint pk_genre
		primary key (genreId)
);

create table authorBook (
	authorId int,
    bookId int,
    constraint pk_authorBook
		primary key (authorID, bookId),
	constraint fk_authorBook_author
		foreign key (authorId)
		references author(authorId),
	constraint fk_authorBook_book
		foreign key (bookId)
        references book(bookId)
);

create table bookFormat(
	bookId int,
    formatId int,
    price double,
    quantityOnHand int,
    constraint pk_bookFormat
		primary key (bookId, formatId),
	constraint fk_bookFormat_book
		foreign key (bookId)
        references book(bookId),
	constraint fk_bookFormate_formatBook
		foreign key (formatId)
        references formatBook(formatId)
);

create table bookgenre(
	bookId int,
    genreId int,
    constraint pk_bookgenre
		primary key (bookId, genreId),
	constraint fk_bookgenre_book
		foreign key (bookId)
        references book(bookId),
	constraint fk_bookgenre_genre
		foreign key (genreId)
        references genre(genreId)
);


show tables;
describe bookgenre;






