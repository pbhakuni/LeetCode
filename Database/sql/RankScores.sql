SELECT 
  l.score as score,
  r.rank 
FROM
Scores l, (SELECT s.score as score,@currank:=@currank+1 as rank 
           FROM (select distinct score from Scores) as s, (select @currank:=0 ) r  
           order by score desc) as r where l.score = r.score order by score desc;

#Faster than 97.94% of MySQL online submissions
