--delete this later
/*Question: What are the top-paying data analyst jobs?
-Identify the top 10 highest paying Data Analyst roles that are available remotely.
-Focuses on job postings with specified salaries (remove nulls).
-Why? Highlight the top-paying opportunities for Daa Analysts, offering insights into employers offering the high-paying opportunities in the field.*/

SELECT
     job_id
    ,job_title
    ,job_location
    ,job_schedule_type 
    ,salary_year_avg 
    ,job_posted_date
    ,name AS company_name

FROM 
    job_postings_fact 

LEFT JOIN 
    company_dim

ON
    job_postings_fact.company_id = company_dim.company_id

WHERE 
    job_title IN ('Data Analyst', 'Business Analyst') 
AND job_location = 'Anywhere'
AND salary_year_avg IS NOT NULL
AND job_schedule_type = 'Full-time'

ORDER BY
    5 DESC
LIMIT 
    10
;