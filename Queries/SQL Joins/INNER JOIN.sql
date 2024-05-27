## Extract a list containing information about all managers’ employee number, first and last name, department number, and hire date. 

use employees;


SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;