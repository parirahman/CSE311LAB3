activity1
------------------------------------------------------------------------
SELECT Last_Name,Hire_Date FROM emps WHERE Hire_Date LIKE '%1994%';
----------------------------------------------------------------------
activity2
------------------------------------------------------------------------------------------------------------------
SELECT Last_Name,Salary,Commission_pct FROM emps ORDER BY Salary DESC,Commission_pct DESC;
-----------------------------------------------------------------------------------------------------------------------------
activity3
------------------------------------------------------------------------------------------------------------------------------------- 
SELECT Last_Name FROM emps WHERE Last_Name LIKE "%a%" UNION SELECT Last_Name FROM emps WHERE Last_Name LIKE "%e%";
---------------------------------------------------------------------------------------------------------------------------------------
activity4
------------------------------------------------------------------------------------------------------------------------------------------
SELECT emps.Last_Name,depts.Department_id,depts.Department_Name FROM emps,depts WHERE emps.Department_Id=depts.Department_id;
--------------------------------------------------------------------------------------------------------------------------------------------------------------
activity5
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT emps.Last_Name, depts.Department_Name, depts.Location_id, locs.City FROM emps LEFT JOIN depts ON emps.Department_Id=depts.Department_id LEFT JOIN locs ON depts.Location_id=locs.Location_id WHERE emps.Commission_pct IS NOT NULL;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
activity6
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT DISTINCT emps.Last_Name, emps.Job_Id, depts.Department_id, depts.Department_Name FROM locs, emps LEFT JOIN depts ON emps.Department_Id = depts.Department_id WHERE depts.Department_id IN ( SELECT Department_Id FROM depts, locs WHERE locs.Location_id=depts.Location_id) AND locs.City = "Toronto" 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
activity 7
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT emps.Last_Name, emps.Salary,emps.Commission_pct FROM emps LEFT JOIN depts ON emps.Department_Id=depts.Department_id LEFT JOIN locs ON depts.Location_id=locs.Location_id WHERE emps.Commission_pct IS NOT NULL ORDER BY emps.Commission_pct DESC;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
activity 8
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT e.Last_Name "Employee", e.Employee_Id "EMP#", a.Last_Name "Manager", a.Employee_Id "Mgr#" FROM emps e LEFT JOIN emps a ON e.Manager_id = a.Employee_Id
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
activity9
SELECT ROUND(MIN(Salary) , 0) AS Minimum, ROUND(MAX(Salary) , 0) AS Maximum,ROUND(SUM(Salary) , 0)"Sum" ,ROUND(AVG(Salary) , 0) AS Average FROM emps
--------------------------------------------------------------------------------------------------------------------------
activity10 
SELECT Job_Id, MAX(salary) "Maximum", MIN(salary)"Minimum", SUM(salary)"Sum",AVG(salary)"Average" FROM emps GROUP BY job_id
-------------------------------------------------------------------------------------------------------------
activity11
SELECT Job_Id,COUNT(*) FROM emps GROUP BY Job_Id
------------------------------------------------------------------------------------------------------------------------------------------------
Activity12
SELECT Manager_id,MIN(Salary) FROM emps WHERE emps.Manager_id IS NOT NULL GROUP BY Manager_id HAVING MIN(Salary)>6000 ORDER BY MIN(Salary) DESC
-----------------------------------------------------------------------------------------------------------------------------------------------------
Homework
SELECT depts.Department_Name AS Name,COUNT(*) "Number of People",CONCAT(locs.Street_Address," ",locs.Postal_Code," ",locs.City,locs.State_Province," ",locs.Country_ID) AS Location,(AVG(Salary)) AS Salary FROM emps LEFT JOIN depts ON(emps.Department_Id=depts.Department_id) LEFT JOIN locs ON(locs.Location_id=depts.Location_id) WHERE emps.Department_id IS NOT NULL GROUP BY emps.Department_Id


