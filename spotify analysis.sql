use portfolio_project;
select * from top50;
select artistname , count(*) from top50 group by artistname 
order by count(*) desc;
select count(*) as 'popsongs' from top50 where genre like 'pop' ;
select count(*) as 'rapsongs' from top50 where genre like '%rap%' ;
select count(*) as 'hip hop songs' from top50 where genre like '%hip hop%';
select count(*) as 'raggaeton songs' from top50 where genre like '%reggaeton%';
select avg(beatsperminute) from top50;
select trackname, beatsperminute ,
(case
     when beatsperminute > 120.06 then 'above average' 
     when beatsperminute = 120.06 then 'average'
     when beatsperminute < 120.06 then 'below average'
end) as compare_average
from top50
limit 10;
select trackname, beatsperminute ,
(case 
     when beatsperminute between 110.06 and 130.06 then 'within 10'
     when (beatsperminute between 100.06 and 110.05) or 
     (beatsperminute between 130.07 and 140.06) then 'within 20'
     when (beatsperminute between 90.06 and 100.05) or (beatsperminute between 140.07 and 150.06) then 'within 30'
     end) AS compareaverage
     from top50;
select 
      sum(case 
              when beatsperminute between 110.06 and 130.06 then 1 else 0 
              end) as 'within 10' , 
	  sum(case 
              when (beatsperminute between 100.06 and 110.05) or (beatsperminute between 130.07 and 140.06) 
              then 1 else 0 
              end ) as 'within 20' ,
	  sum(case 
              when (beatsperminute between 90.06 and 100.05) or (beatsperminute between 140.07 and 150.06) 
              then 1 else 0
              end ) as 'within 30' ,
              sum (case 
                      when (beatsperminute < 90.06 ) or (beatsperminute >150.06) 
                      then 1 else 0
                      end) as 'greater30'
			 from top50;

-- energy
select avg(energy) from top50;
select trackname , energy ,
(case 
     when energy > 64.06 then 'above average'
     when energy = 64.06 then 'average'
     when energy < 64.06 then 'below average'
     end) as 'compare average'  
     from top50;

select trackname , energy , 
( case 
      when energy between 54.06 and 74.06 then 'within 10'
      when (energy between 44.06 and 54.05) or (energy between 74.07 and 84.06)
      then 'within 20'
      when (energy between 34.06 and 44.05) or (energy between 84.07 and 94.06)
      then 'within 30'
      else 'greater than 30'
      end) as 'compare average'
      from top50;
      
SELECT 
sum (case 
		when energy between 54.06 and 74.06 then 1 
        else 0
        end) as 'within 10',
sum (case 
         when (energy between 44.06 and 54.05) or (energy between 74.07 and 84.06) 
         then 1 
         else 0
         end) as 'within 20',
sum (case 
         when (energy between 34.06 and 44.05) or (energy between 84.07 and 94.06)
         then 1
         else 0
         end) as ' within 30',
sum (case 
         when (energy < 34.06) or (energy > 94.06) 
         then 1 
         else 0
         end) as 'greater30'
         from top50;
-- dancebility
select avg(danceability)from top50;
select trackname , danceability , 
	   (case 
            when danceability between 61.38 and 81.38 then 'within 10'
            when (danceability between 51.38 and 61.37) or (danceability between 81.39 and 91.38)
            then 'within 20'
            when (danceability between 41.38 and 51.37) or (danceability between 91.38 and 101.38)
            then 'within 30'
            else 'greater30'
	  end) as 'compare average'
      from top50;
	
select 
sum ( case 
      when danceability between 6138 and 81.38 then 1
      else 0
      end) as 'within 10',
sum (case 
     when (danceability between 51.38 and 61.37) or (danceability between 81.39  and 91.38)
     then 1
     else 0
     end) as 'within 20',
     sum ( case 
           when ( danceability between 41.38 and 51.37) or (danceabilty between 91.38 and 101.38)
           then 1
           else 0
           end) as 'within 30',
	 sum ( case 
           when (danceability < 41.38) or ( danceability > 101.38) then 1
           else 0
           end) as 'greater30'
           from top50;
           
           
	

     
     

              
              