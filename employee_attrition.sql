select * from employee_attrition_data;

--1)Attrition rate by Department
SELECT Department,SUM(Attrition) * 1.0 / COUNT(*) AS Attrition_Rate
FROM employee_attrition_data
GROUP BY Department;

--2)satisfaction level distribution
SELECT round(Satisfaction_Level,2) as satisfaction_level
FROM employee_attrition_data;

--3)Average Monthly hours by derpartment
SELECT Department,AVG(Average_Monthly_Hours) AS Avg_Monthly_Hours
FROM employee_attrition_data
GROUP BY Department;

--4)salary distribution by gender
SELECT Gender, Salary
FROM employee_attrition_data;

--5)Attrition rate by gender
SELECT Gender,SUM(Attrition) * 1.0 / COUNT(*) AS Attrition_Rate
FROM employee_attrition_data
GROUP BY Gender;

--6)Average salary by job title
SELECT Job_Title,AVG(Salary) AS Avg_Salary
FROM employee_attrition_data
GROUP BY Job_Title;

--7)Employees Who Were Promoted in the Last 5 Years and Left the Company
SELECT * 
FROM employee_attrition_data
WHERE Promotion_Last_5Years = 1 AND Attrition = 1;

--8)Average Satisfaction Level by Years at Company
SELECT Years_at_Company,round(AVG(Satisfaction_Level),2) AS Avg_Satisfaction_Level
FROM employee_attrition_data
GROUP BY Years_at_Company;

--9)Distribution of Average Monthly Hours for Employees Who Left
SELECT Average_Monthly_Hours
FROM employee_attrition_data
WHERE Attrition = 1;

--10)Number of Employees by Department and Job Title
SELECT Department, Job_Title, COUNT(*) AS Num_Employees
FROM employee_attrition_data
GROUP BY Department, Job_Title;





