/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(20),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);

ALTER TABLE animals ADD species varchar(20);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(20),
    age int
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(20)
);

--MODIFY ANIMALS TABLE

ALTER TABLE animals
DROP COLUMN id;

ALTER TABLE animals
ADD id SERIAL PRIMARY KEY;

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
    ADD species_id int,
    ADD CONSTRAINT species_id FOREIGN KEY(species_id) REFERENCES species(id);

ALTER TABLE animals ADD owners_id int, ADD CONSTRAINT owners_id FOREIGN KEY(owners_id) REFERENCES owners(id);