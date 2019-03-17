CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
       select a.salary as getNthHighestSalary
        from (
        select salary, dense_rank() over (order by salary desc) rank_salary
        from 
        Employee
            ) a where a.rank_salary = @N
        group by  salary 
    );
END
