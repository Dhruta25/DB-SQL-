

-----------------------------------------------------
-- 1️⃣ Show all employees
-----------------------------------------------------
SELECT * 
FROM employees;

-----------------------------------------------------
-- 2️⃣ Filter: show only employees from the 'IT' department
-----------------------------------------------------
SELECT *
FROM employees
WHERE department = 'IT';

-----------------------------------------------------
-- 3️⃣ Filter: show employees earning more than ₹50,000
-----------------------------------------------------
SELECT *
FROM employees
WHERE salary > 50000;

-----------------------------------------------------
-- 4️⃣ Filter: show employees whose salary is between ₹40,000 and ₹80,000
-----------------------------------------------------
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 80000;

-----------------------------------------------------
-- 5️⃣ Filter: show employees whose name starts with 'A'
-----------------------------------------------------
SELECT *
FROM employees
WHERE name LIKE 'A%';
-- % means "any number of characters" after A

-----------------------------------------------------
-- 6️⃣ Sort: show all employees ordered by salary (lowest first)
-----------------------------------------------------
SELECT *
FROM employees
ORDER BY salary ASC;

-----------------------------------------------------
-- 7️⃣ Sort: show all employees ordered by salary (highest first)
-----------------------------------------------------
SELECT *
FROM employees
ORDER BY salary DESC;

-----------------------------------------------------
-- 8️⃣ Combine filter + sort: show IT employees, sorted by salary (highest first)
-----------------------------------------------------
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-----------------------------------------------------
-- 9️⃣ Combine multiple conditions using AND / OR
-----------------------------------------------------
SELECT *
FROM employees
WHERE department = 'HR' AND salary > 40000;

SELECT *
FROM employees
WHERE department = 'Sales' OR department = 'Marketing';

----------------------------
SELECT emp_id, name, department
FROM employees
ORDER BY name ASC;