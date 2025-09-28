-- Orion_Data Anaysis
Use oriondata;

SELECT * FROM Countries; 
SELECT * FROM department;
SELECT * FROM employees;
SELECT * FROM jobs;

-- 1. Workforce Distribution

SELECT  d.department_name, COUNT(e.emp_name) as Emp_count
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id 
GROUP BY d.department_name
ORDER BY Emp_count DESC;

-- 2.  Salary Comparison
(SELECT d.department_name, ROUND(AVG(e.salary)) AS Avg_salary
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name 
ORDER BY Avg_salary DESC
LIMIT 1)

UNION 

(SELECT d.department_name, ROUND(AVG(e.salary)) AS Avg_salary
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_name 
ORDER BY Avg_salary ASC
LIMIT 1);

-- 3.Salary Bands for Employees

SELECT 
	CASE
       WHEN salary < 5000 THEN 'Low'
       WHEN salary BETWEEN 5000  AND 10000 THEN'Medium' 
       WHEN salary > 1000 THEN 'High'
	END AS salary_band,
    COUNT(*) AS employee_count
FROM employees
GROUP BY salary_band
ORDER BY salary_band;

-- 4. Country-Level Analysis
SELECT c.country_name , COUNT(department_name) AS dept_count
FROM countries c
INNER JOIN employees e
ON c.country_id = e.country_id
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY c.country_name;


-- 5. High Earners
SELECT emp_name
FROM employees
WHERE salary > (SELECT AVG(salary)
FROM employees);


-- 6.  Department Leaders
SELECT  d.department_name, e.manager_name, 
COUNT(emp_name) AS num_employees
FROM department d
INNER JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name, e.manager_name;  

-- 7.Job Role Analysis

WITH avg_salary_per_title AS (
    SELECT 
    job_title,
   ROUND((MIN(min_salary) + MAX(max_salary)) / 2.0) AS avg_estimated_salary
FROM jobs
GROUP BY job_title
)
SELECT job_title, avg_estimated_salary
FROM avg_salary_per_title
HAVING avg_estimated_salary > 12000;


-- 8.Employee Ranking

SELECT 
    department_id,
    employee_id,
    emp_name,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department_id 
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

-- 9.Salary Growth Trend
SELECT c.country_name, SUM(salary) AS total_salaries
FROM employees e
INNER JOIN countries c
ON e.country_id = c.country_id
GROUP BY c.country_name
ORDER BY total_salaries DESC;


-- 10.Workforce Gaps

SELECT j.job_title
FROM employees e
RIGHT JOIN jobs j
ON j.job_id = e.job_id
WHERE e.employee_id IS NULL; 
