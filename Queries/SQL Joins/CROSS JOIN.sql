## Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.

use employees;


SELECT
    dm.*,
    d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm  
WHERE
    d.dept_no = 'd009'  
ORDER BY d.dept_no;




## Return a list with the first 10 employees with all the departments they can be assigned to.

SELECT
    e.*,
    d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name;