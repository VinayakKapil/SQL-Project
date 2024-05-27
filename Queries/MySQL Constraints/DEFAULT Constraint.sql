## Recreate the “companies” table
# (company_id – VARCHAR of 255,
# company_name – VARCHAR of 255,
# headquarters_phone_number – VARCHAR of 255),
# This time setting the “headquarters phone number” to be the unique key, and default value of the company's name to be “X”.
# After you execute the code properly, drop the “companies” table.

CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number)
);
DROP TABLE companies;