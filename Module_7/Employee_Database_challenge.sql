-----------------------
--- Deliverable 1 ----------

SELECT e.emp_no,
    e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

---------------------------
-- get unique list of employees from retirement table 
-- based on currently working (to_date = 9999-01-01)
SELECT DISTINCT ON (rt.to_date, rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title, 
	rt.from_date,
	rt.to_date
INTO unique_retire_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;


----------------
SELECT 
	COUNT(urt.title),
	urt.title
INTO retire_titles
FROM unique_retire_titles as urt
--WHERE rt.to_date = '9999-01-01'
GROUP BY urt.title
ORDER BY count DESC;


---------------
---- Deliverable 2 ------------
---- Mentor eligible table  ---------
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date, 
	de.to_date,
	t.title
--INTO mentor_eligible
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date='9999-01-01')
ORDER BY e.emp_no


-----------------------------------
-------- Deliverable 3 -------------
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date, 
	de.to_date,
	t.title
INTO mentor_eligible
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date='9999-01-01')
ORDER BY e.emp_no


