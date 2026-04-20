-- 1.How many total rows are in your table?
select count(*) as total_rows from baleshwar;

-- 2. Show all data where Region is 'Rural' only?
select * from baleshwar where region = "rural";

-- 3.Show all data where Region is 'urban' only?
select * from baleshwar where region = "urban";

-- 4.Show all data where Region is 'total' only?
select * from baleshwar where region = "total";

-- 5. Show all data where Age is '6-14'?
select * from baleshwar where age = "6-14";

-- 6. Show only ST_Name, Region, Persons columns for all rows?
select st_name,region,persons from baleshwar;


