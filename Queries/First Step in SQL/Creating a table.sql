## Create the “customers” table in the “sales” database. Let it contain the following 5 columns: customer_id, first_name, last_name, email_address, and number_of_complaints. Let the data types of customer_id and number_of_complaints be integer, while the data types of all other columns be VARCHAR of 255.

CREATE TABLE customers                                                 
(
    customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int
);