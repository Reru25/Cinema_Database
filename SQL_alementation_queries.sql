--This is a list of queries which can be used to add information into tables.
--made for mariaDB on mysql.

--add movie
INSERT INTO 
	movies(name)
VALUES 
	('name')

--add cinema name
INSERT INTO 
    cinemas(name)
VALUES 
    ('name')

--add client
INSERT INTO 
    clients(firstName,lastName,mail)
VALUES 
    ('first name','last name','e mail')

--add price
INSERT INTO 
    prices(ticketType,price)
VALUES 
    ('type of ticket','price')

--add session
INSERT INTO 
    sessions(movieId,cinemaId,date,places,room)
VALUES 
    ('movie id','cinema id','yyyy-mm-dd hh-mm-ss','total amount of places','room'),


--add reservation
INSERT INTO 
    reservations(clientId,sessionId,priceId)
VALUES 
    ('client id','session id','price id')
