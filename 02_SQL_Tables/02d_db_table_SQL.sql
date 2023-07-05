-- Strukturen:

/* Kommentar 1: Block */
# Zeilenkommentar 1
-- Zeilenkommentar 1



/*      

    Tabelle mit id als PRIMARY KEY --> 

    KEINE Duplikate moeglich

    AUTO_INCREMENT ++

    DEFAULT-Werte eintragen

*/
# DB boo löschen, wenn vorhanden
DROP DATABASE IF EXISTS boo;


# neu anlegen
CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

# Tabelle anlegen:

USE boo;
DROP TABLE IF EXISTS test;

# für Eindeutigkeit Schlüsselwerte bilden
CREATE TABLE IF NOT EXISTS test
(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(20) NOT NULL  DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
    );
    
    # alle Tabellen in der DB anzeigen
    SHOW TABLES;

# Struktur der Tabelle zeigen
DESCRIBE test;

# Daten in Tabelle füllen
INSERT INTO test(id,name,age) VALUES (DEFAULT,"Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");




INSERT INTO test(id,age,name) VALUES (DEFAULT, 35,"Alonzo");
INSERT INTO test(id,age,name) VALUES (DEFAULT, 35,"Alonzo");

# Inhalte der Tabelle anzeigen lassen
SELECT * FROM test;
