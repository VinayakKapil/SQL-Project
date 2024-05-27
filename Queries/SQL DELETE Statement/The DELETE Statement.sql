## Remove the department number 10 record from the “departments” table.


use employees;


DELETE FROM departments
WHERE
    dept_no = 'd010';