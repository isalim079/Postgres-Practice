INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES 
('Alice Johnson', 'Engineering', 70000.00, '2021-01-15'),
('Bob Smith', 'Marketing', 65000.00, '2020-03-10'),
('Charlie Brown', 'Engineering', 72000.00, '2019-07-22'),
('Diana Prince', 'Sales', 58000.00, '2021-04-18'),
('Evan Davis', 'Human Resources', 60000.00, '2018-11-05'),
('Fiona Clark', 'Finance', 74000.00, '2022-06-09'),
('George Miller', 'Engineering', 81000.00, '2019-02-14'),
('Hannah White', 'Marketing', 53000.00, '2021-09-30'),
('Ian Thomas', 'Sales', 67000.00, '2020-12-21'),
('Jane Green', 'Finance', 76000.00, '2021-05-25'),
('Kyle Scott', 'Human Resources', 50000.00, '2020-10-01'),
('Laura King', 'Sales', 55000.00, '2018-04-17'),
('Mike Adams', 'Engineering', 84000.00, '2019-09-10'),
('Nina Lewis', 'Finance', 69000.00, '2021-02-11'),
('Oscar Harris', 'Marketing', 62000.00, '2019-12-05'),
('Paula Young', 'Sales', 75000.00, '2020-03-20'),
('Quinn Turner', 'Engineering', 88000.00, '2022-01-13'),
('Rachel Evans', 'Human Resources', 58000.00, '2021-07-15'),
('Steve Clark', 'Finance', 78000.00, '2020-11-10'),
('Tina Baker', 'Marketing', 55000.00, '2019-05-29'),
('Uma Patel', 'Engineering', 85000.00, '2022-02-20'),
('Victor Blake', 'Sales', 63000.00, '2020-04-22'),
('Wendy Chen', 'Finance', 71000.00, '2021-11-30'),
('Xander Jones', 'Human Resources', 64000.00, '2019-03-10'),
('Yara Singh', 'Marketing', 58000.00, '2018-07-25'),
('Zach Lee', 'Engineering', 92000.00, '2021-10-08'),
('Amy Morris', 'Finance', 74000.00, '2019-06-12'),
('Brian Cook', 'Sales', 68000.00, '2021-12-15'),
('Catherine Grant', 'Marketing', 61000.00, '2020-08-05'),
('Daniel Lopez', 'Human Resources', 54000.00, '2019-09-27');

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES 
('John Doe', 'HR', 55000.00, '2021-06-15'),
('Sarah Brown', 'HR', 60000.00, '2020-11-10'),
('Michael Lee', 'HR', 65000.00, '2019-02-22');



CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

SELECT * FROM employees

-- Retrieve all employees whose salary is greater than highest salary of the HR department

-- max salary
SELECT department_name, salary from employees
WHERE department_name = 'HR'
ORDER BY salary DESC
LIMIT 1

SELECT max(salary) FROM employees WHERE department_name = 'HR'

-- //! SELECT * from employees WHERE salary > 65000

SELECT * from employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR')

SELECT *, (SELECT sum(salary) FROM employees) FROM employees

SELECT department_name, sum(salary) FROM employees GROUP BY department_name

SELECT * FROM -- this is outer/main query
(SELECT department_name, sum(salary) FROM employees GROUP BY department_name) AS sum_dept_salary -- this is sub query
