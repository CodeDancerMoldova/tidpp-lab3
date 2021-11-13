CREATE TABLE department
(
    id       numeric PRIMARY KEY,
    name     VARCHAR(20) NOT NULL,
    location VARCHAR(20) NOT NULL
);

INSERT INTO department
VALUES (100
           , 'IT-dep',
        'Chisinau');
INSERT INTO department
VALUES (101
           , 'IT-dep',
        'Bucuresti');
