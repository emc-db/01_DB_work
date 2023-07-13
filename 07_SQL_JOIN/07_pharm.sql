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
(1, 'Aspirin'),
(2, 'EDTA'),
(3, 'TAH'),
(4, 'OXC'),
(5, 'INS');

SHOW TABLES;
SELECT * FROM Wirkstoff;

