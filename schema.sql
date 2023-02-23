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


-- DAY THREE TASK STARTS HERE

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INTEGER
);
