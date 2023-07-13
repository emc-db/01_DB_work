DROP DATABASE IF EXISTS pharm;

CREATE DATABASE IF NOT EXISTS pharm;
USE pharm;
CREATE TABLE Hersteller(
HerstellerID INTEGER PRIMARY KEY,
Name VARCHAR (300)    
);

INSERT INTO Hersteller VALUES
(1,'Bayer'),
(2, 'GSK'),
(3, 'Merck');

SELECT * FROM Hersteller;

CREATE TABLE Wirkstoff (
WirkstoffID INTEGER PRIMARY KEY,
Bezeichnung VARCHAR (300)
);

INSERT INTO Wirkstoff VALUES
(1, 'ASS'),
(2, 'EDTA'),
(3, 'DMSO'),
(4, 'OXC'),
(5, 'NAL');

# SHOW TABLES;
# SELECT * FROM Wirkstoff;

CREATE TABLE Arzneimittel (
AMID INTEGER PRIMARY KEY,
Bezeichnung VARCHAR  (300),
HerstellerID
Preis
    rezeptpflichtig BOOLEAN
);

INSERT INTO Arzneimittel VALUES

(1, 'Aspirin', 1, 7.99,),
(2, 'EDTA-Kapseln', 2, 4.99,),
(3, 'Obnitix', 3, 19.99,)
(4, 'Targin', 1, 14.00,)


CREATE TABLE Arzneimittelwirkstoffe(


)
