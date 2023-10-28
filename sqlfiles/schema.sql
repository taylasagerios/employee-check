DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;

CREATE TABLE departments (
  id INT NOT NULL,
  name VARCHAR(100) NOT NULL  
) 
