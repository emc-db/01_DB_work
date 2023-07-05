-- Strukturen:

/* Kommentar 1: Block */
# Zeilenkommentar 1
-- Zeilenkommentar 1


# DB boo löschen, wenn vorhanden
DROP DATABASE IF EXISTS boo;


# neu anlegen
CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

# Tabelle anlegen:

USE boo;
DROP TABLE IF EXISTS test;

CREATE TABLE IF NOT EXISTS test
(
 name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
    );
    
    # alle Tabellen in der DB anzeigen
    SHOW TABLES;

# Struktur der Tabelle zeigen
DESCRIBE test;

# Daten in Tabelle füllen
INSERT INTO test(name,age) VALUES ("Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test VALUES ();

# Inhalte der Tabelle anzeigen lassen
SELECT * FROM test;
