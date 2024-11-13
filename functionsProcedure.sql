SELECT * FROM employees

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees
$$

SELECT emp_count()

CREATE OR REPLACE FUNCTION delete_emp_by_id(parameter_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = parameter_emp_id
$$

SELECT delete_emp_by_id(29)

CREATE PROCEDURE remove_emp()
LANGUAGE plpgsql
AS
$$
    BEGIN   
        DELETE FROM employees WHERE employee_id = 31;
    END
$$;

CALL remove_emp()

CREATE PROCEDURE remove_emp_var()
LANGUAGE plpgsql
AS
$$
DECLARE
test_var INT;
    BEGIN   
        SELECT employee_id INTO test_var from employees WHERE employee_id = 33;
        DELETE FROM employees WHERE employee_id = test_var;
    END
$$;

CALL remove_emp_var()

CREATE PROCEDURE remove_employee_by_id(parameter_employee_id int)
LANGUAGE plpgsql
AS
$$
DECLARE
test_var INT;
    BEGIN   
        SELECT employee_id INTO test_var from employees WHERE employee_id = parameter_employee_id;
        DELETE FROM employees WHERE employee_id = test_var;
        RAISE NOTICE 'Employee removed successfully';
    END
$$;

CALL remove_employee_by_id(27)