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

#SELECT * FROM Hersteller;

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
HerstellerID INTEGER,
Preis VARCHAR (250),
rezeptpflichtig BOOLEAN
    );
    
    ALTER TABLE Arzneimittel
    ADD CONSTRAINT Herst_FK FOREIGN KEY (HerstellerID) REFERENCES Hersteller(HerstellerID)
    
    
INSERT INTO Arzneimittel VALUES

(1, 'Aspirin', 1, '7.99 €', false),
(2, 'EDTA-Kapseln', 2, '4.99 €', false),
(3, 'Obnitix', 3, '19.99 €', true),
(4, 'Targin', 1, '14.99', true);


CREATE TABLE Arzneimittelwirkstoffe(
    AMID INTEGER NOT NULL,
    WirkstoffID INTEGER NOT NULL,
    Menge VARCHAR (250),
    
    PRIMARY KEY (AMID , WirkstoffID)
);

ALTER TABLE Arzneimittelwirkstoffe
ADD CONSTRAINT AM_FK FOREIGN KEY (AMID) REFERENCES Arzneimittel(AMID),
ADD CONSTRAINT Wirk_FK FOREIGN KEY (WirkstoffID) REFERENCES Wirkstoff(WirkstoffID);

INSERT INTO Arzneimittelwirkstoffe VALUES
(1, 1, '100mg'),
(2, 2, '10mg'),
(3, 3, '2µM'),
(4, 4, '1g'),
(4, 5, '1:100');

SELECT * FROM Arzneimittelwirkstoffe;