/*Question: What are the skills required for these top-paying
roles?
-Use the top 10 highest-paying Data Analyst jobs from query 1
-Add the specific skills required or these roles
Why?  It provides a detailed look at which high-paying jobs
demand certain skills, helping job seekers understand which
skills to develop that aligh with top salaries*/

WITH top_paying_jobs AS (
SELECT
     job_id
    ,job_title
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
			)
SELECT 
	 top_paying_jobs.*
	,s.skills

FROM top_paying_jobs
INNER JOIN
	skills_job_dim sj
ON 
	top_paying_jobs.job_id = sj.job_id
INNER JOIN
	skills_dim s
ON
	sj.skill_id = s.skill_id

ORDER BY    
    salary_year_avg DESC
;


/*The skills that correlate with the highest annual salaries are primarily associated with data analysis, programming, and 
business intelligence tools. Skills like Excel, Tableau, Looker, SQL, Python, and R are highly valued, 
especially at companies like Uber, where these skills command an average annual salary of $140,500. 
Other notable skills include Swift, SPSS, SAS, and Snowflake, which also offer competitive salaries.*/

[
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "job_posted_date": "2023-03-24 07:06:43",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "r"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "python"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "sql"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "spss"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "snowflake"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "databricks"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "job_posted_date": "2023-12-27 13:01:03",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "ssis"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "dax"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "power bi"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "excel"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "sql server"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-12-21 08:00:00",
    "company_name": "Trinity Solar Careers",
    "skills": "t-sql"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "python"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "r"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "aws"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "redshift"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-10-23 13:52:28",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "qlik"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "job_posted_date": "2023-09-20 22:00:41",
    "company_name": "ZipRecruiter",
    "skills": "sql"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "job_posted_date": "2023-09-20 22:00:41",
    "company_name": "ZipRecruiter",
    "skills": "python"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "webex"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "powerpoint"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "word"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "sas"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "sas"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "r"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "python"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1723219,
    "job_title": "Data Analyst",
    "salary_year_avg": "78000.0",
    "job_posted_date": "2023-03-13 11:00:54",
    "company_name": "Visual Connections, LLC",
    "skills": "cognos"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-05-30 07:59:57",
    "company_name": "Zelo Digital Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-05-30 07:59:57",
    "company_name": "Zelo Digital Recruitment",
    "skills": "r"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-05-30 07:59:57",
    "company_name": "Zelo Digital Recruitment",
    "skills": "python"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-05-30 07:59:57",
    "company_name": "Zelo Digital Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 1527329,
    "job_title": "Data Analyst",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-05-30 07:59:57",
    "company_name": "Zelo Digital Recruitment",
    "skills": "power bi"
  }
]




















