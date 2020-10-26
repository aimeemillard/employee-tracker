-- USE employee_trackerDB;

-- INSERT into department (name) VALUES ("Sales");
-- INSERT into department (name) VALUES ("IT");
-- INSERT into department (name) VALUES ("Bob");
-- INSERT into department (name) VALUES ("HR");

-- INSERT into role (title, salary, department_id) VALUES ("Sales Manager", 100000, 1);
-- INSERT into role (title, salary, department_id) VALUES ("Sales person", 50000, 1);
-- INSERT into role (title, salary, department_id) VALUES ("IT Manager", 100000, 2);
-- INSERT into role (title, salary, department_id) VALUES ("Engineer", 900000, 2);
-- INSERT into role (title, salary, department_id) VALUES ("Bob Manager", 100000, 3);
-- INSERT into role (title, salary, department_id) VALUES ("Artist Bob", 30000, 3);
-- INSERT into role (title, salary, department_id) VALUES ("Musician Bob", 30000, 3);
-- INSERT into role (title, salary, department_id) VALUES ("Comedian Bob", 30000, 3);
-- INSERT into role (title, salary, department_id) VALUES ("Counselor", 80000, 4);

-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("John H.", "Patterson", 1, null);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Mary Kay", "Ash", 2, 1);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Dale", "Carnegie", 2, 1);

-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Montgomery", "Scott", 3, null);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Angus", "MacGyver", 4, 3);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Kaylee", "Frye", 4, 3);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Cyrus", "Smith", 4, 3);

-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "The-Minion", 5, null);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "Ross", 6, 5);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "Marley", 7, 5);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "Dylan", 7, 5);
-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "Hope", 8, 5);

-- INSERT into employee (first_name, last_name, role_id, manager_id) VALUES ("Deanna", "Troi", 9, null);

use employees;


-- insert data into department table
INSERT INTO department
    (name)
VALUES
    ('Development'), ('Quality Assurance'), ('Human Resources'), ('Operations');


-- insert data into role table
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Development Lead', 150000, 1), ('Developer', 100000, 1),
    ('Lead Test Engineer', 150000, 2), ('Test Engineer', 100000, 2),
    ('HR Manager', 110000, 3), ('HR Representive', 80000, 3),
    ('Operations Lead', 140000, 4), ('Operations Engineer', 90000, 4);


-- insert data into employee table
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Larry', 'Lee', 1, NULL), ('Dan', 'DeButts', 2, 1), ('John', 'McCruch', 3, NULL),
    ('Brian', 'Elliish', 4, 3), ('Brad', 'March', 5, NULL), ('Patrice', 'Berg', 6, 5),
    ('David', 'Kraj', 7, NULL), ('Jake', 'Debrus', 8, 7);