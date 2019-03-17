SELECT 
p.firstname as FirstName, 
p.lastname as LastName, 
a.city as City, 
a.state as State
FROM Person p LEFT JOIN address a ON p.personid = a.personid;
