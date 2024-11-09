CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('IT Support'),
('Customer Service'),
('Product Development'),
('Legal'),
('Administration'),
('Research and Development'),
('Operations'),
('Procurement'),
('Quality Assurance'),
('Logistics'),
('Training and Development'),
('Public Relations'),
('Facilities Management'),
('Risk Management'),
('Compliance'),
('Data Analytics');

INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES 
('Alice Johnson', 1, 55000.00, '2021-01-15'),
('Bob Smith', 2, 63000.00, '2020-03-10'),
('Charlie Brown', 3, 47000.00, '2019-07-22'),
('Diana Prince', 4, 58000.00, '2021-04-18'),
('Evan Davis', 5, 72000.00, '2018-11-05'),
('Fiona Clark', 6, 49000.00, '2022-06-09'),
('George Miller', 7, 76000.00, '2019-02-14'),
('Hannah White', 8, 65000.00, '2021-09-30'),
('Ian Thomas', 9, 68000.00, '2020-12-21'),
('Jane Green', 10, 54000.00, '2021-05-25'),
('Kyle Scott', 1, 51000.00, '2020-10-01'),
('Laura King', 2, 53000.00, '2018-04-17'),
('Mike Adams', 3, 78000.00, '2019-09-10'),
('Nina Lewis', 4, 69000.00, '2021-02-11'),
('Oscar Harris', 5, 48000.00, '2019-12-05'),
('Paula Young', 6, 74000.00, '2020-03-20'),
('Quinn Turner', 7, 81000.00, '2022-01-13'),
('Rachel Evans', 8, 52000.00, '2021-07-15'),
('Steve Clark', 9, 73000.00, '2020-11-10'),
('Tina Baker', 10, 59000.00, '2019-05-29');


SELECT * FROM departments

SELECT * FROM employees

-- inner join to retrieve employee and department information
SELECT * FROM employees
JOIN departments ON employees.department_id = departments.department_id

SELECT * FROM employees
JOIN departments USING(department_id)

-- show department name with average salary
SELECT department_name, round(avg(salary)) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name

-- count employees in each department
SELECT department_name, count(*) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name

-- Find the department name with the Highest average salary
SELECT department_name, (round(avg(salary))) as salary FROM employees
JOIN departments USING (department_id)
GROUP BY department_name
ORDER BY salary DESC
LIMIT 1

-- count employees hired each year
SELECT extract(YEAR FROM hire_date) as hire_year, count(*) FROM employees
GROUP BY hire_year


INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
(1, '2022-01-15', 250.75),
(2, '2021-01-17', 120.00),
(3, '2024-01-20', 320.50),
(1, '2022-02-10', 150.25),
(2, '2023-02-15', 80.00),
(3, '2010-02-18', 230.60),
(1, '2018-03-01', 540.90),
(2, '2022-03-05', 330.75),
(3, '2023-03-15', 410.00),
(4, '2020-03-25', 75.50);

DROP Table orders

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
)

-- Find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers

SELECT customer_id, count(*) FROM orders
GROUP BY customer_id HAVING count(order_id) > 2

-- Find the total amount of orders placed each month in the year 2022
SELECT extract(month FROM order_date) as month, sum(total_amount) FROM orders
WHERE extract(year from order_date) = 2022
GROUP BY month
