DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;

CREATE TABLE departments (
  id INT NOT NULL,
  name VARCHAR(100) NOT NULL  
); 

CREATE TABLE roles (
  id INT NOT NULL,   
  title VARCHAR(30) NOT NULL,  
  salary DECIMAL,
  department_id INT NOT NULL
);

CREATE TABLE employees (  
  id INT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT 
);

