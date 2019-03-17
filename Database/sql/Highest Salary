SELECT 
dept.name as Department,
emp.name as Employee,
emp.salary as Salary
FROM Employee emp INNER JOIN Department dept ON (emp.DepartmentId=dept.id)
and (salary,DepartmentId) IN (SELECT max(salary),DepartmentId FROM Employee group by DepartmentId)
;
