--This SQL script initializes a database named 'cinema_database' and creates whole structure. 
--Made for mariaDB on mysql.


CREATE DATABASE cinema_database;


CREATE TABLE clients(
  id INT(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(30) NOT NULL,
  lastName VARCHAR(30) NOT NULL,
  mail VARCHAR(320) NOT NULL
);

CREATE TABLE prices(
  id INT(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ticketType VARCHAR(30) NOT NULL,
  price DECIMAL(5,2) NOT NULL
);

CREATE TABLE movies(
  id INT(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE cinemas (
  id INT(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE sessions(
  id INT(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  movieId INT(50) NOT NULL,
  cinemaId INT(50) NOT NULL,
  date DATETIME NOT NULL,
  places INT(10) NOT NULL,
  placesLeft INT(10) NOT NULL DEFAULT places,
  room VARCHAR(50) NOT NULL,
  FOREIGN KEY (movieId) REFERENCES movies(id),
  FOREIGN KEY (cinemaId) REFERENCES cinemas(id)
);

CREATE TABLE reservations(
  id INT(50) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  clientId INT(50) NOT NULL,
  sessionId INT(50) NOT NULL,
  priceId INT(50) NOT NULL,
  FOREIGN KEY (clientId) REFERENCES clients(id),
  FOREIGN KEY (sessionId) REFERENCES sessions(id),
  FOREIGN KEY (priceId) REFERENCES prices(id)
);




