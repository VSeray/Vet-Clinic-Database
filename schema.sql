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