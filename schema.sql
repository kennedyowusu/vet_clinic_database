/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id NOT NULL PRIMARY KEY,
    name  VARCHAR(30) NOT NULL,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg Decimal
);

/* Add a column with the name species and of type string to the animals table. */
ALTER TABLE animals ADD COLUMN species VARCHAR(30);