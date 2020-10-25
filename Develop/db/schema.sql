-- DROP DATABASE IF EXISTS employee_trackerDB;

-- CREATE database employee_trackerDB;

-- USE employee_trackerDB;

-- CREATE TABLE departments (
--   id INT NOT NULL AUTO_INCREMENT,
--   name VARCHAR(30)NOT NULL,
--   PRIMARY KEY(id)
-- );

-- CREATE TABLE roles (
--   id INTEGER NOT NULL auto_increment,
--   title VARCHAR(30) NOT NULL,
--   salary DECIMAL(10,2),
--   department_id INTEGER,
-- --   FOREIGN KEY (department_id) REFERENCES department(id)
--   PRIMARY KEY(id)
-- );

-- CREATE TABLE employee (
--   id INTEGER NOT NULL auto_increment,
--   first_name VARCHAR(30) NOT NULL,
--   last_name VARCHAR(30)NOT NULL,
--   role_id INTEGER,
--   manager_id INTEGER,
-- --   FOREIGN KEY (role_id) REFERENCES role(id),
-- --   FOREIGN KEY (manager_id) REFERENCES role(id)
--   PRIMARY KEY(id)
-- );


-- Drop DB if exists and recreate clean version and use it.
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;


-- create department table
Create Table department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);


-- create role table
Create Table role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY (department_id) References department(id) on delete cascade
);

-- Create Employee table
Create Table employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) UNIQUE NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) References employee(id) on delete set null
);
