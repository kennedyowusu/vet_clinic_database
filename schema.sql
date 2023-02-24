-- DAY ONE TASK STARTS HERE

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

-- DAY ONE TASK ENDS HERE

-- DAY TWO TASK STARTS HERE

ALTER TABLE animals ADD COLUMN species VARCHAR(255);

-- DAY TWO TASK ENDS HERE


-- DAY THREE TASK STARTS HERE

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

ALTER TABLE animals 
    DROP COLUMN species;
ALTER TABLE animals
    ADD species_id INT;
ALTER TABLE animals
    ADD owner_id INT;

ALTER TABLE animals 
    ADD foreign key (species_id) references species(id);
ALTER TABLE animals 
    ADD foreign key (owner_id) references owners(id);

    -- DAY FOUR TASK STARTS HERE

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INTEGER,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    vet_id INTEGER REFERENCES vets(id),
    species_id INTEGER REFERENCES species(id),
    UNIQUE(vet_id, species_id)
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES animals(id),
    vet_id INTEGER REFERENCES vets(id),
    visit_date DATE NOT NULL
);

-- DAY FOUR TASK ENDS HERE