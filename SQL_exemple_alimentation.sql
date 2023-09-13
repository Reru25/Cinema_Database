--This script aliments database with false information for demonstration purposes.
--Made for mariaDB on mysql.


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