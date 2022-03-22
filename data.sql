/* Populate database with sample data. */

--Animal: His name is Agumon. He was born on Feb 3rd, 2020, and currently weighs 10.23kg. He was neutered and he has never tried to escape.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Agumon',
        '2020-2-3',
        0,
        true,
        10.23
        );

--Animal: Her name is Gabumon. She was born on Nov 15th, 2018, and currently weighs 8kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Gabumon',
        '2018-11-15',
        2,
        true,
        8.0
        );

--Animal: His name is Pikachu. He was born on Jan 7th, 2021, and currently weighs 15.04kg. He was not neutered and he has tried to escape once.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Pikachu',
        '2021-1-7',
        1,
        false,
        15.04
        );

--Animal: Her name is Devimon. She was born on May 12th, 2017, and currently weighs 11kg. She is neutered and she has tried to escape 5 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Devimon',
        '2017-5-12',
        5,
        true,
        11.0
        );

--Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Charmander',
        '2020-2-8',
        0,
        false,
        -11.0
        );

--Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Plantmon',
        '2022-11-15',
        2,
        true,
        -5.7
        );

--Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Squirtle',
        '1993-4-2',
        3,
        false,
        -12.13
        );

--Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Angemon',
        '2005-6-12',
        1,
        true,
        -45.0
        );

--Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Boarmon',
        '2005-6-7',
        7,
        true,
        20.4
        );

--Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Blossom',
        '1998-10-13',
        3,
        true,
        17.0
        );

--Animal: His name is Ditto. He was born on May 14th, 2022, and currently weighs 22kg. He is neutered and he has tried to escape 4 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Ditto',
        '2022-05-14',
        4,
        true,
        22.0
        );

--OWNERS TABLE DATA

--Sam Smith 34 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Sam Smith',
        34
        );

--Jennifer Orwell 19 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Jennifer Orwell',
        19
        );

--Bob 45 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Bob',
        45
        );

--Melody Pond 77 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Melody Pond',
        77
        );

--Dean Winchester 14 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Dean Winchester',
        14
        );

--Jodie Whittaker 38 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Jodie Whittaker',
        38
        );

--SPECIES TABLE DATA

--Pokemon
INSERT INTO species (
    name
    ) VALUES (
        'Pokemon'
        );

--Digimon
INSERT INTO species (
    name
    ) VALUES (
        'Digimon'
        );

--Modify inserted animals so it includes the species_id value:

--All other animals are Pokemon
UPDATE animals SET species_id = 1;
--If the name ends in "mon" it will be Digimon
UPDATE animals SET species_id = 2 WHERE id=1;
UPDATE animals SET species_id = 2 WHERE id=2;
UPDATE animals SET species_id = 2 WHERE id=3;
UPDATE animals SET species_id = 2 WHERE id=4;
UPDATE animals SET species_id = 2 WHERE id=7;

--Modify your inserted animals to include owner information (owner_id):
--Sam Smith owns Agumon.
UPDATE animals SET owners_id = 1 WHERE name='Agumon';

--Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals SET owners_id = 2 WHERE name='Gabumon';
UPDATE animals SET owners_id = 2 WHERE name='Pikachu';

--Bob owns Devimon and Plantmon.
UPDATE animals SET owners_id = 3 WHERE name='Devimon';
UPDATE animals SET owners_id = 3 WHERE name='Plantmon';

--Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals SET owners_id = 4 WHERE name='Charmander';
UPDATE animals SET owners_id = 4 WHERE name='Squirtle';
UPDATE animals SET owners_id = 4 WHERE name='Blossom';

--Dean Winchester owns Angemon and Boarmon. 
UPDATE animals SET owners_id = 5 WHERE name='Angemon';       
UPDATE animals SET owners_id = 5 WHERE name='Boarmon'; 