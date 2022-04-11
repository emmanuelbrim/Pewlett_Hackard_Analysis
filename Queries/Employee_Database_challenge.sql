--DELIVERABLE 1
--Create Retirement Titles table From Employees and Title tables.
DROP TABLE retirement_titles;
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
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
DROP TABLE Unique_title;
SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title
INTO Unique_title
FROM retirement_titles AS r
WHERE ( r.to_date = '9999-01-01')
ORDER BY r.emp_no, r.to_date DESC;

--The number of employees by their most recent job title who are about to retire.
DROP TABLE Retiring_titles;
SELECT COUNT(u.title),title 
INTO Retiring_titles
FROM Unique_title AS u
GROUP BY u.title
ORDER BY count DESC;



--DELIVERABLE 2
--Create a Mentorship Eligibility table.
DROP TABLE Mentorship_eligibility;
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO Mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;
