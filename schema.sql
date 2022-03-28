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

----

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    age int,
    date_of_graduation date
);

CREATE TABLE specializations (
    species_id int,
    vets_id int,
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);

CREATE TABLE visits (
    animals_id int,
    vets_id int,
    date_of_visit date,
    CONSTRAINT fk_animals FOREIGN KEY(animals_id) REFERENCES animals(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX visits_animals_id  ON visits(animals_id);
CREATE INDEX visits_vets_id  ON visits(vets_id);
CREATE INDEX owners_id  ON owners(email DESC);


