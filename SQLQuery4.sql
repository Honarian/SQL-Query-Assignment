/* 1.  Display all information of the employee table. */
select * from Employees;

/* 2.	Display full names of Employees who work in Dept 30 and earn more than 3000$ */
select First_Name, Last_Name, Salary 
from Employees 
where Department_ID = '30' and Salary < '3000'; 

/* 3.	Write a query to display the job title and average salary of employees */
SELECT Job_ID, AVG(Salary) as AVG_Salary
From Employees
Group by Job_ID;

/* 4.	Write a SQL statement to increase the salary of PU_CLERK by 2000 and commission by .10% */
Update Employees 
Set Salary = (Salary + 2000)
Where Job_ID = 'PU_CLERK';
Update Employees
Set Commission_PCT = (Commission_PCT + 10)
Where Job_ID = 'PU_CLERK';


/* 5.   Write a SQL statement to change job ID of employee with the id 110, to SH_CLERK if the employee belongs to department with ID 30 and the existing job ID does not start with SH. */
Update Employees
Set Job_ID = 'SH_CLERK'
Where Employee_ID = 110 and Department_ID = 30 and not Job_ID like 'SH%'; 