use insurance;
SELECT 
  `Account Executive`,
  ANY_VALUE(income_class) AS Class,
  COUNT(invoice_number) AS Num_Invoice
FROM invoice
GROUP BY `Account Executive`
ORDER BY Num_Invoice DESC;

SELECT 
  YEAR(STR_TO_DATE(meeting_date, '%d-%m-%Y')) AS Years,
  COUNT(`Account Exe ID`) AS Total_meetings
FROM meeting
WHERE YEAR(STR_TO_DATE(meeting_date, '%d-%m-%Y')) IN (2019, 2020)
GROUP BY Years
ORDER BY Years;

select * from opportunity;

SELECT stage,
sum(revenue_amount) AS 
Revenue_by_stage
FROM opportunity
GROUP BY 1
ORDER BY Revenue_by_stage ASC ;

Select * from Meeting;

SELECT `Account Executive` 
AS Executive_Names,
count(meeting_date) AS Num_Meeting
FROM meeting
GROUP BY `Account Executive`
ORDER BY Num_Meeting ASC;

SELECT opportunity_name,
sum(revenue_amount) AS Revenue
FROM opportunity
GROUP BY 1
ORDER BY Revenue DESC
LIMIT 4;
select*from opportunity;

Select count(opportunity_id) 
As Total_Opportunities
from opportunity;

SELECT count(*) 
AS Open_oppotunity
FROM opportunity
WHERE 
stage 
IN ('Qualify Opportunity', 'Propose Solution');

select*from brokerage;
SELECT 
  product_group, 
  COUNT(distinct client_name) AS total_opportunity
FROM brokerage
GROUP BY product_group
ORDER BY total_opportunity DESC;

