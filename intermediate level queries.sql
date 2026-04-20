-- 1. What is the total population (Persons) for each Region?

select region,sum(persons) as total_population from baleshwar group by region;

-- 2.Which ST_Name has the highest Literacy_Persons? (sort and show top 10)?

select st_name,sum(literacy_persons) as highest_literacy from baleshwar group by st_name order by highest_literacy desc limit 10;

-- 3. What is the total Males and Females for each Age group?

select age,sum(males) as total_males,sum(females) as total_females from baleshwar group by age;

-- 4.Which Region has the highest College_Persons?

select region,sum(college_persons) as total_college from baleshwar group by region order by total_college desc limit 1;

