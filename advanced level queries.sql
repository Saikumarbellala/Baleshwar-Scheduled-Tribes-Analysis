-- advanced level
-- 1. Show total School, College, Vocational educated persons grouped by Region?

select region,sum(school_persons) as total_school,
sum(college_persons) as total_college,
sum(vocational_persons) as total_vocational from baleshwar 
group by region;

-- 2.Among all tribes, which ST_Name has the highest Vocational_Females in Rural areas only?

select st_name,region,sum(vocational_females) as highest_vocational_females
from baleshwar group by region,st_name
 having region="rural" 
 order by highest_vocational_females desc limit 1;
 
 
 