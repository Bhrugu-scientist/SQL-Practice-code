USE employees;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
			SELECT * FROM employees
            LIMIT 1000;
END $$


CALL employees.select_employees();





##----------------------------------------------------------------


USE employees;

DROP PROCEDURE IF EXISTS avg_salary

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
				SELECT 
					e.first_name, 
                    e.last_name, 
                    e.emp_no, 
                    AVG(s.salary)
                FROM 
					employees AS e
                JOIN 
					salaries AS s
                ON e.emp_no = s.emp_no
                ;
END $$

CALL employees.avg_salary()








