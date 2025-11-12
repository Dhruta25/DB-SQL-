-- =====================================
-- JOINS IN SQL (Beginner Friendly)
-- =====================================

-- 1️⃣ INNER JOIN
-- Shows only matching records between employees and departments
SELECT 
    e.emp_id,
    e.name AS employee_name,
    d.dept_name AS department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.dept_name;

-- 🔍 Explanation:
-- INNER JOIN returns rows that have matching values in both tables.
-- If an employee's department doesn’t exist in 'departments', they won’t appear here.


-- 2️⃣ LEFT JOIN
-- Shows all employees, even if they don’t belong to a department
SELECT 
    e.emp_id,
    e.name AS employee_name,
    d.dept_name AS department_name,
    d.location
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.dept_name;

-- 🔍 Explanation:
-- LEFT JOIN returns all rows from the left table (employees),
-- and matches from the right table (departments).
-- If no match, department info will show NULL.


-- 3️⃣ RIGHT JOIN
-- Shows all departments, even if they have no employees
SELECT 
    e.name AS employee_name,
    d.dept_name AS department_name
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.dept_name;

-- 🔍 Explanation:
-- RIGHT JOIN returns all rows from the right table (departments),
-- even if no employees are assigned to them.


-- 4️⃣ FULL OUTER JOIN (not supported in MySQL directly)
-- Combine LEFT and RIGHT join logic using UNION
SELECT 
    e.name AS employee_name,
    d.dept_name AS department_name
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.dept_name

UNION

SELECT 
    e.name AS employee_name,
    d.dept_name AS department_name
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.dept_name;

-- 🔍 Explanation:
-- FULL OUTER JOIN shows all records from both tables,
-- whether or not they have matches.


-- 5️⃣ CROSS JOIN
-- Every employee with every department (Cartesian product)
SELECT 
    e.name AS employee_name,
    d.dept_name AS department_name
FROM employees AS e
CROSS JOIN departments AS d;
