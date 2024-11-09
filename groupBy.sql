SELECT * FROM students

SELECT country, count(*) FROM students
    GROUP BY country

SELECT country, count(*) FROM students
    GROUP BY country

SELECT country, avg(age) FROM students
    GROUP BY country
        HAVING avg(age) > 22

-- Count students born in each year

SELECT EXTRACT(YEAR FROM dob) AS YEAR, count(*) FROM students
    GROUP BY year