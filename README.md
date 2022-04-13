# PEWLETT-HACKARD ANALYSIS

_Analyzing Employee Data using SQL._

## Overview of the Project

After years of training and learning to improve professional skills, every employee comes to the point of retirement. This exist from the labourforce is an important mark in every business that seeks to maintain its growth. Carefully planning for and replacing retiring labour is key to its success.
This project was carried out to prepare Pewlett-Hackard for what has been dubbed "Silver Tsunami"; the event of a large number of its employees retiring in the not too distant future at an alarming rate. 
The analysis was to help the company;
-identify retiring employees by title
-find the total number of retiring employees per title
-generate a list of employees eligible for mentorship


## Results

* **Retirement Titles Table**

Using an SQL queries informed by an Entity Relationship Diagram for existing files for employees, a table to hold all employees within the retirement age was created.
This table was produced by retriving the 'emp_no', 'first_name' and 'last_name' from the employees table and 'title', 'from_date' and 'to_date' from the Titles table using the inner join statement to merge them into one table. The table was filtered on the birthdate to include only employees born between 1952 and 1955.

_Below is an example of the list of retiring Employees_

![Fig1](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/retirement_titles.PNG)


* **Unique Titles Table**

A quick look at the retirement titles table showed that not only did the list include employees who had left the company but also duplicate records for employees who moved up their ranks. The analysis therefore had to consider cleaning the table to show the exclusive list of current employees who were about to retire and their current roles.
Using the 'Distinct on' statement to retrived the latest titles of all the retiring employees and fitering the "to_date" of the table to "9999-01-01", a clean table was produced to show the unique titles of current employees bound to retire soon. 

_Below is an example of the clean table of retiring Employees_

![Fig2](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/Unique_titles.PNG)


* **Retiring Titles Table**

One of the requirements of the project was to help the company have a sum total of employees per each title that were about to retire.
The titles of all retiring employees was retrived into a new table and used the count statement to get the number of retiring employees under each title.
The final results was a table depicting the count of employees under each title.

_Below is an example of the Titles table of retiring Employees_

![Fig3](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/retiring_titles.PNG)


* **Mentorship_Eligibility Table**

The preparation plans of Pewlett-Hackard also included a Mentorship program to training employees as possible candidates to fill the vacant positions when the 'Silver Tsunami' do hit. Columns were retrieved from the Employees, Dept_emp and Titles tables to create a new table using the 'inner join' statement.
The 'to_date' and 'birth_date" columns of the table was filtered to show only current employees who were born between 1965-01-01 and 1965-12-01.
And As such this table showed all employees who were eligible for mentorship.

_Below is an example of Current Employees Eligible for Mentorship_

![Fig4](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/mentorship_eligibility.PNG)


## Summary

* **How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

The number of positions to be filled can easily be deduced from the retiring titles table. 
From the table a total of 72,458 vacancies in 7 roles from various departments will need to be filled when the Tsunami makes impact. 

_Below is a table of Roles to filled_

![Fig5](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/roles%20to%20fill.PNG)

* **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
To identify that there is enough mentors from each department fro the program, a new table was created to show the departments of retiring employees.
A query was ran to find the count of employees who belonged to the upper management in each department. The results showed that there is enough employees to mentor other employees in their departments.

_Below is a table of Retiring Employees who can provide Mentorship_

![Fig6](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/Mentors.PNG)

The analysis provided a glimpse of what the company would expect once the Silver Tsunami hit and roles to be affected.
Further analysis of the data to provide the the departments to be affected also gives much insite into what to expect and how to handle the rapid exist.
A table showing the number of retiring employees in each department is vital.

[fig7](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/roles%20to%20fill.PNG)

Meanwhile the candidates for mentorship could be skewed down to only employees who do not hold senior positions in the company. The initial list of employees eligible for mentorship included members who were already performing senior management roles and their exclusion from the list produced the actuall number who required mentorship. 
![Fig8](https://github.com/emmanuelbrim/Pewlett_Hackard_Analysis/blob/main/Data/Mentees.PNG)

