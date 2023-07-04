-- Strukturen:

/* Kommentar 1: Block */
# Zeilenkommentar 1
-- Zeilenkommentar 1

# Datenbanken auf Server anzeigen:
SHOW DATABASES;

# DB boo löschen, wenn vorhanden
DROP DATABASE IF EXISTS boo;

SHOW DATABASES;

# neu anlegen
CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

# Tabelle anlegen:

USE boo;

CREATE TABLE test
(
 name VARCHAR(20),
    age INT 
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
