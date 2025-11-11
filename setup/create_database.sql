CREATE DATABASE company:
USE company;

CREATE TABLE employees(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
);
CREATE TABLE department(
    dept_id INT PRIMARY KEY AUTO_INCREMENT
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE project(
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100),
    budget DECIMAL(10,2),
    end_date DATE
);