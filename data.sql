-- DAY ONE TASK STARTS HERE

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, true, 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, true, 8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, true, 11);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
 (1, 'Charmander', '2022-02-08', 0, FALSE, -11),
 (2, 'Plantmon', '2021-11-15', 2, TRUE, -5.7), 
 (3, 'Squirtle', '1993-04-02', 3, FALSE, -12.13), 
 (4, 'Angemon', '2005-06-12', 1, TRUE, -45),
 (5, 'Boarmon', '2005-06-07', 7, TRUE, 20.4), 
 (6, 'Blossom', '1998-08-13', 3, TRUE, 17), 
 (7, 'Ditto', '2022-05-14', 4, TRUE, 22);

-- DAY ONE TASK ENDS HERE

-- DAY TWO TASK STARTS HERE

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES
('Charmander', '2020-02-08', 0, false, -11, 'Unknown'),
('Plantmon', '2021-11-15', 2, true, -5.7, 'Unknown'),
('Squirtle', '1993-04-02', 3, false, -12.13, 'Unknown'),
('Angemon', '2005-06-12', 1, true, -45, 'Unknown'),
('Boarmon', '2005-06-07', 7, true, 20.4, 'Unknown'),
('Blossom', '1998-10-13', 3, true, 17, 'Unknown'),
('Ditto', '2022-05-14', 4, true, 22, 'Unknown');

-- DAY TWO TASK ENDS HERE

-- DAY THREE TASK STARTS HERE

INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES ('Pokemon'), ('Digimon');


UPDATE animals
SET species_id = 
  CASE 
    WHEN name LIKE '%mon' THEN (SELECT id FROM species WHERE name = 'Digimon') 
    ELSE (SELECT id FROM species WHERE name = 'Pokemon') 
  END;


ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
ADD COLUMN species_id INTEGER REFERENCES species(id);

ALTER TABLE animals
ADD COLUMN owner_id INTEGER REFERENCES owners(id);

UPDATE animals
SET species_id = (CASE WHEN name LIKE '%mon' THEN 2 ELSE 1 END);

UPDATE animals
SET owner_id = (CASE
       WHEN name = 'Agumon' THEN 1
       WHEN name IN ('Gabumon', 'Pikachu') THEN 2
       WHEN name IN ('Devimon', 'Plantmon') THEN 3
       WHEN name IN ('Charmander', 'Squirtle', 'Blossom') THEN 4
       WHEN name IN ('Angemon', 'Boarmon') THEN 5
       ELSE NULL
   END);

-- DAY TWO TASK ENDS HERE