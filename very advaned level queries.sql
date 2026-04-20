-- views,sub queries,window functions,stored proceduer,
-- 1.Create a view that shows ST_Name, Region, total Persons, Literacy_Persons for only Rural areas

select * from rural;

-- 2.Create a view that shows age-wise education summary across all tribes?

select * from education_summary;

-- sub queries
-- 3. Find all tribes where Literacy_Persons is greater than the average Literacy_Persons of all tribes?

select * from baleshwar where literacy_persons > ( select avg(literacy_persons) as average_literacy_persons from baleshwar);

-- 4.Show tribes where College_Persons is higher than Vocational_Persons in Urban areas only?
/* if use this sub query we wil get result like comparing sum of vocational persons to college persons 
in this only one value( sum of vocational) value will be calucaluted so we can use directly with out using sub query as well*/
select * from baleshwar where region = "urban" and college_persons >
 ( select sum(vocational_persons) as vocational from baleshwar where region = "urban");
 
 -- window functions
 -- 5.Rank all ST_Names by Literacy_Persons within each Region using RANK()?
 
 select st_name,literacy_persons,region,
 rank()over(partition by region order by literacy_persons desc) as ran from baleshwar;
 
 -- 6.Show running total of Persons grouped by Age using SUM() OVER()?
  
 select persons,age,sum(persons)over(order by age desc) as running_total from baleshwar;
 
 -- 7.Find top 3 tribes per Region by total Persons using DENSE_RANK()?
 
  select * from (select st_name,region,persons,
 dense_rank() over (partition by region order by persons desc) as dr from baleshwar) as ranked where dr <= 3;

 
 
 
 