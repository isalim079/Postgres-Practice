-- Active: 1730383117258@@127.0.0.1@5432@ph

CREATE TABLE person2(id SERIAL PRIMARY KEY, name VARCHAR(50) NOT NULL);
SELECT * from person2;
ALTER TABLE person2
add COLUMN email VARCHAR(25) NOT NULL