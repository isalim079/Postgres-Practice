CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2003-05-12', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Physics', 'jane.smith@example.com', '2001-08-21', 'A-', 'Canada'),
('Tom', 'Brown', 19, 'A', 'Chemistry', 'tom.brown@example.com', '2004-01-10', 'B+', 'UK'),
('Lucy', 'Davis', 21, 'C', 'Biology', 'lucy.davis@example.com', '2002-11-30', 'AB-', 'Australia'),
('Mike', 'Wilson', 23, 'B', 'History', 'mike.wilson@example.com', '2000-07-05', 'O+', 'USA'),
('Emma', 'Clark', 18, 'A', 'Computer Science', 'emma.clark@example.com', '2005-04-15', 'A+', 'New Zealand'),
('Sam', 'Martinez', 20, 'B', 'Economics', 'sam.martinez@example.com', '2003-09-19', 'B-', 'Spain'),
('Olivia', 'Garcia', 22, 'A', 'Mathematics', 'olivia.garcia@example.com', '2001-03-22', 'O-', 'Mexico'),
('Sophia', 'Taylor', 19, 'A', 'Physics', 'sophia.taylor@example.com', '2004-02-28', 'A+', 'Germany'),
('Liam', 'Lee', 21, 'C', 'Chemistry', 'liam.lee@example.com', '2002-06-17', 'B+', 'China'),
('Mia', 'Harris', 20, 'B', 'Biology', 'mia.harris@example.com', '2003-10-01', 'AB+', 'Japan'),
('Noah', 'Thompson', 23, 'A', 'History', 'noah.thompson@example.com', '2000-12-12', 'O-', 'France'),
('Amelia', 'White', 19, 'C', 'Computer Science', 'amelia.white@example.com', '2004-05-07', 'A-', 'South Africa'),
('Ethan', 'Walker', 18, 'B', 'Economics', 'ethan.walker@example.com', '2005-11-03', 'B-', 'Brazil'),
('Isabella', 'Hall', 21, 'A', 'Mathematics', 'isabella.hall@example.com', '2002-08-29', 'O+', 'India');

SELECT * FROM students ORDER BY dob ASC;


SELECT DISTINCT country from students;


SELECT * FROM students
WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students
WHERE country = 'USA' OR country = 'Australia'

SELECT * FROM students
WHERE (country = 'USA' OR country = 'Australia') and age = 20

SELECT * FROM students
WHERE age > 20 AND course = 'History'

SELECT * FROM students
WHERE age != 23 

SELECT upper(first_name) from students;


SELECT concat(first_name, ' ', last_name) as NAME from students;

SELECT avg(age) from students

SELECT max(age) from students

SELECT min(age) from students

SELECT sum(age) from students

SELECT count(*) from students

SELECT * from students

SELECT max(length(first_name)) from students

SELECT * from students
    WHERE NOT country = 'USA'

    SELECT * from students
        WHERE email = 'tom.brown@example.com'

SELECT * from students
    WHERE email IS NULL

SELECT * FROM students

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Break', 'Smith', 20, 'A', 'Mathematics', NULL, '2003-05-12', 'O+', 'BD')

SELECT email from students

SELECT COALESCE(email, 'Email not provided') from students;

DELETE from students
WHERE student_id = 17

UPDATE students
SET student_id = 16
WHERE student_id = 18


SELECT * FROM students
WHERE country = 'USA' OR country = 'UK'

SELECT * FROM students WHERE country IN('USA', 'UK', 'Canada')  /* handle multiple OR */

SELECT * FROM students WHERE country NOT IN('USA', 'UK', 'Canada')  /* Data will shown except these */

SELECT * from students WHERE age BETWEEN 19 AND 22

SELECT dob FROM students
    WHERE dob BETWEEN '2000-01-01' AND '2005-01-01' ORDER BY dob    /* date of birth = dob */

SELECT * from students
    WHERE first_name LIKE '%am';    /* In the end of first name where am is available will be shown */

SELECT * from students
    WHERE first_name LIKE '__%a';    

SELECT * from students
    WHERE first_name LIKE '___a';    

SELECT * from students
    WHERE first_name LIKE '__a_';    

SELECT * from students
    WHERE first_name ILIKE 'A%';    /* ILIKE means case in sensitive. Only LIKE is case sensitive */

SELECT * FROM students LIMIT 5 OFFSET 5     /* OFFSET means it will show data except 1st 5.*/

SELECT * FROM students LIMIT 5 OFFSET 5 * 0     /* 1 to 5 data will show */

SELECT * FROM students LIMIT 5 OFFSET 5 * 1     /* 6 to 10 will show */

SELECT * FROM students LIMIT 5 OFFSET 5 * 2     /* By using limit and offset we can make pagination */

SELECT * FROM students;

DELETE FROM students
    WHERE grade = 'C' AND country = 'Australia'

UPDATE students
    set email = 'default@mail.com'
    WHERE student_id = 16

UPDATE students
    set email = 'default@mail.com', age = 30
    WHERE student_id = 16