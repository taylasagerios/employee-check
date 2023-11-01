SELECT *
FROM roles;


SELECT *
FROM roles
INNER JOIN department 
ON  roles.department = department_id;

SELECT department.id AS DepartmentID, department.name AS dept_names , course_names.name  AS course_names 
FROM department 
JOIN course_names 
ON course_names.department = department.id;

SELECT department.id AS DepartmentID, department.name , course_names.name AS course_names 
FROM department
INNER JOIN course_names 
ON course_names.department = department.id;

SELECT department.id AS DepartmentID, department.name , course_names.name AS course_names 
FROM department
INNER JOIN course_names 
ON course_names.department = department.id
AND department.name = "Web Development";

SELECT department.id AS DepartmentID, department.name , course_names.name AS course_names 
FROM department
INNER JOIN course_names 
ON course_names.department = department.id
AND department.name = "Web Development" OR department.name = "Electives";

SELECT department.id AS DepartmentID, department.name , course_names.name AS course_names 
FROM department
INNER JOIN course_names 
ON course_names.department = department.id
AND department.name = "Web Development" OR department.name = "Electives"
ORDER BY department.id;

SELECT department.id AS DepartmentID, department.name , course_names.name AS course_names 
FROM department
INNER JOIN course_names ON course_names.department = department.id
WHERE department.name = "Web Development" OR department.name = "Electives"
ORDER BY department.id;