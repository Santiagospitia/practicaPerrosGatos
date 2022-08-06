-- Database: mande_db

-- DROP DATABASE mande_db;

CREATE DATABASE mande_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

\c mande_db

CREATE TABLE PType(
	pTypeId SERIAL PRIMARY KEY,
	pType VARCHAR(60),
	breed VARCHAR(60),
	pTypeDescription VARCHAR(60) DEFAULT ' '
);

CREATE TABLE Pet(
    petId SERIAL PRIMARY KEY,
    petName VARCHAR(20),
    age VARCHAR(20),
    pTypeId INT,
    CONSTRAINT fk_id_type
        FOREIGN KEY (pTypeId)
        REFERENCES PType(pTypeId)
);

CREATE TABLE Toy(
    toyId SERIAL PRIMARY KEY,
    tName VARCHAR(60),
    color VARCHAR(60),
    petId INT,
    CONSTRAINT fk_id_pet
        FOREIGN KEY (petId)
        REFERENCES Pet(petId)
);