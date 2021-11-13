CREATE TABLE employees
(    id numeric PRIMARY KEY,
     first_name     VARCHAR(20) UNIQUE,
     last_name      VARCHAR(25) UNIQUE,
     email          VARCHAR(25) NOT NULL UNIQUE,
     phone_number   VARCHAR(20) NOT NULL UNIQUE,
     salary         numeric NOT NULL,
    department_id  numeric NOT NULL
    );

INSERT INTO employees VALUES
    ( 105
    , 'David'
    , 'Austin'
    , 'david@gmail.com'
    , '590.423.4569'
    , 4800
    , 60
    );
INSERT INTO employees VALUES
    ( 100
    , 'Alex'
    , 'Gigel'
    , 'alex@gmail.com'
    , '590.423.4570'
    , 4500
    , 60
    );