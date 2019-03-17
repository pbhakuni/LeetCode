SELECT 
coalesce((SELECT distinct salary FROM Employee order by salary desc LIMIT 1,1)) as  SecondHighestSalary;
