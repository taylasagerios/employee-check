DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;

CREATE TABLE departments (
  id INT NOT NULL,
  name VARCHAR(100) NOT NULL  
); 

CREATE TABLE roles (
  title TEXT NOT NULL,  
  id INT NOT NULL,
  department VARCHAR(100) NOT NULL,
  salary BOOLEAN NOT NULL
);


