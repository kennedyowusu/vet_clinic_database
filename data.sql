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


-- Set the species_id based on the animal name
UPDATE animals
SET species_id = (
  SELECT id FROM species WHERE name = 'Digimon'
)
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = (
  SELECT id FROM species WHERE name = 'Pokemon'
)
WHERE species_id IS NULL;

-- Set the owner_id based on the animal name
UPDATE animals AS a
SET owner_id = o.id
FROM owners AS o
WHERE a.name = 'Agumon' AND o.full_name = 'Sam Smith';

UPDATE animals AS a
SET owner_id = o.id
FROM owners AS o
WHERE a.name IN ('Gabumon', 'Pikachu') AND o.full_name = 'Jennifer Orwell';

UPDATE animals AS a
SET owner_id = o.id
FROM owners AS o
WHERE a.name IN ('Devimon', 'Plantmon') AND o.full_name = 'Bob';

UPDATE animals AS a
SET owner_id = o.id
FROM owners AS o
WHERE a.name IN ('Charmander', 'Squirtle', 'Blossom') AND o.full_name = 'Melody Pond';

UPDATE animals AS a
SET owner_id = o.id
FROM owners AS o
WHERE a.name IN ('Angemon', 'Boarmon') AND o.full_name = 'Dean Winchester';


-- DAY THREE TASK ENDS HERE

-- DAY FOUR TASK STARTS HERE

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES (1, 1),
(2, 2),
(3, 1),
(4, 2);

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES
(1, 1, '2020-05-24'),
(1, 3, '2020-07-22'),
(2, 4, '2021-02-02'),
(3, 2, '2020-01-05'),
(3, 2, '2020-03-08'),
(3, 2, '2020-05-14'),
(4, 2, '2021-05-04'),
(5, 4, '2021-02-24'),
(6, 1, '2019-12-21'),
(6, 1, '2020-08-10'),
(6, 2, '2021-04-07'),
(7, 3, '2019-09-29'),
(8, 4, '2020-10-03'),
(8, 4, '2020-11-04'),
(9, 2, '2019-01-24'),
(9, 2, '2019-05-15'),
(9, 2, '2020-02-27'),
(9, 2, '2020-08-03'),
(10, 3, '2020-05-24'),
(10, 1, '2021-01-11');

-- DAY FOUR TASK ENDS HERE