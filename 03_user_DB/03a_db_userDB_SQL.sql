# USER TAB.Version 1

# table users
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, -- id
    userName VARCHAR(20) NOT NULL UNIQUE, -- eindeutiger User
    familyName VARCHAR(20) NOT NULL, -- Name
    firstName VARCHAR(20) NOT NULL -- Vorname
);

# Struktur
DESCRIBE boo.users;
