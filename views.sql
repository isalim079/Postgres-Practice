-- //? View advantage
-- //* Simplifying complex queries
-- //* Improved security
-- //* Enhanced data abstraction

SELECT * from employees

CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name

SELECT department_name, avg(salary) FROM employees GROUP BY department_name

SELECT * FROM dept_avg_salary

CREATE VIEW department_with_R
AS
SELECT employee_name, salary, department_name FROM employees
WHERE department_name IN
(SELECT department_name FROM employees WHERE department_name LIKE '%R%')

SELECT * FROM department_with_r

