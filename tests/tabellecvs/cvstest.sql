
DROP DATABASE IF EXISTS tabelle;

CREATE DATABASE IF NOT EXISTS tabelle;


DROP TABLE IF EXISTS tabelle.patente;

CREATE TABLE IF NOT EXISTS tabelle.patente
(
    id INT NOT NULL PRIMARY KEY,        -- ID
    bundesland VARCHAR(50) NOT NULL,   -- Bundesland
    2001 INT(5) NOT NULL          -- Jahreszahl
    
);

/* Struktur */
DESCRIBE tabelle.patente;

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "tests/tabellecvs/patent.csv"
INTO TABLE tabelle.patente
FIELDS TERMINATED BY ";" 
LINES TERMINATED BY "\n" 
IGNORE 1 ROWS
;

SELECT * FROM tabelle.patente;





