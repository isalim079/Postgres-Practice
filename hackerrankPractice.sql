INSERT INTO STATION (CITY, STATE) VALUES 
('New York', 'NY'),
('Los Angeles', 'CA'),
('Chicago', 'IL'),
('Houston', 'TX'),
('Phoenix', 'AZ'),
('Philadelphia', 'PA'),
('San Antonio', 'TX'),
('San Diego', 'CA'),
('Dallas', 'TX'),
('San Jose', 'CA');


CREATE TABLE STATION (
    ID SERIAL UNIQUE PRIMARY KEY,
    CITY VARCHAR(21),
    STATE VARCHAR(2)
)

SELECT * FROM station

(SELECT city, length(city) as length from station
ORDER BY length ASC, city ASC
LIMIT 1)
(SELECT city, length(city) as length from station
ORDER BY length DESC, city ASC)

(
    SELECT CITY, LENGTH(CITY) AS name_length
    FROM STATION
    ORDER BY LENGTH(CITY) ASC, CITY ASC
    FETCH FIRST 1 ROW ONLY
)
UNION ALL
(
    SELECT CITY, LENGTH(CITY) AS name_length
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY ASC
    FETCH FIRST 1 ROW ONLY
);


