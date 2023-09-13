//made for mariaDB on mysql.


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





INSERT INTO 
	movies(name)
VALUES 
	('Fast and curious'),
    ('Prider man'),
    ('Bad man'),
    ('Man man');

INSERT INTO 
    cinemas(name)
VALUES 
    ('Ocean view'),
    ('fun films'),
    ('not so fun films');

INSERT INTO 
    clients(firstName,lastName,mail)
VALUES 
    ('Jon','Doe','john@gmail.com'),
    ('Damien','Lebrun','redred@gmail.com'),
    ('Chingin','Guanko','chinginredgmail.com'),
    ('Dmitry','Potapov','yellowblueorange@gmail.com');

INSERT INTO 
    prices(ticketType,price)
VALUES 
    ('Plein tarif','9.20'),
    ('Etudiant','7.60'),
    ('Moins de 14 ans','5.90');

INSERT INTO 
    sessions(movieId,cinemaId,date,places,room)
VALUES 
    ('1','2','2023-09-14 12:15:00','250','206 A'),
    ('2','2','2023-09-14 12:15:00','250','106 B'),
    ('1','3','2023-09-24 14:30:00','250','206 A'),
    ('2','3','2023-09-24 14:30:00','250','106 B');


INSERT INTO 
    reservations(clientId,sessionId,priceId)
VALUES 
    ('1','1','1'),
    ('2','1','2'),
    ('4','4','1');