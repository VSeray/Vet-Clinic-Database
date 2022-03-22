/*Queries that provide answers to the questions from all projects.*/

--Find all animals whose name ends in "mon".
SELECT * from animals WHERE name LIKE '%mon';

--List the name of all animals born between 2016 and 2019.
SELECT name from animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-31-12';

--List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT name from animals WHERE neutered=true AND escape_attempts<3;

--List date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth from animals WHERE name='Agumon' OR name='Pickachu'; 

--List name and escape attempts of animals that weigh more than 10.5kg
SELECT name,escape_attempts from animals WHERE weight_kg>10.5;

--Find all animals that are neutered.
SELECT * from animals WHERE neutered=true;

--Find all animals not named Gabumon.
SELECT * from animals WHERE NOT name='Gabumon';

--Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;
UPDATE animals SET species='unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

SELECT * FROM animals;
UPDATE animals SET species='pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
BEGIN;
DELETE FROM animals;
ROLLBACK;
COMMIT; 
SELECT * FROM animals;
BEGIN;
DELETE FROM animals WHERE date_of_birth > '01-01-2022';
SELECT * FROM animals;
SAVEPOINT deleted_ditto;
UPDATE animals SET weight_kg = -1 * weight_kg;
SELECT * FROM animals;
ROLLBACK TO deleted_ditto;
SELECT * FROM animals;
UPDATE animals SET weight_kg = -1 * weight_kg WHERE weight_kg < 0;
--above Update will not works, explanations in PR
COMMIT;
SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals;
--neutered Boarmon with 7 escape_attempts

SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth >= '01-01-1990' AND date_of_birth <= '12-31-2000' GROUP BY species;