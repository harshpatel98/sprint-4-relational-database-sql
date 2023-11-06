/*
Harsh Patel
May 5,2023
*/
USE vinylrecordshop;
DELETE FROM artist WHERE artistId < 30;

LOAD DATA LOCAL INFILE '"C:\Users\Harsh Patel\Documents\1Wiley\C348 Data Engineering\Assignments\Python\Lesson 7\vinylrecordshop-data\artist.csv"'
INTO TABLE vinylrecordshop.artist 
FIELDS TERMINATED BY ',';