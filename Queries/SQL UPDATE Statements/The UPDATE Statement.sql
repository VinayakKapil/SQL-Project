## Change the “Business Analysis” department name to “Data Analysis”.


use employees;


UPDATE departments
SET
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';