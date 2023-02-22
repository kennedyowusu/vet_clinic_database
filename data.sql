/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon','2020-02-03', 0, false, 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (2, 'Gabumon', '2018-11-15', 2, TRUE, 8);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', '2021-01-07', 1, FALSE, 15.04);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (4, 'Devimon', '2017-05-12', 5, TRUE, 11);

/* We populate the animals table with more data using an approach where I don't have to repeat myself alot */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
 ('Charmander', '2022-02-08', 0, 'FALSE', -11),
 ('Plantmon', '2021-11-15', 2, 'TRUE', -5.7), 
 ('Squirtle', '1993-04-02', 3, 'FALSE', -12.13), 
 ('Angemon', '2005-06-12', 1, 'TRUE', -45),
 ('Boarmon', '2005-06-07', 7, 'TRUE', 20.4), 
 ('Blossom', '1998-08-13', 3, 'TRUE', 17), 
 ('Ditto', '2022-05-14', 4, 'TRUE', 22)
