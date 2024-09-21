/*4_top_paying_skills.sql
Question:  What are the top skills based on salary?
-Looks at the average salary associated with each skill
for Data Analyst positions
-Focuses on roles with specified salaies, regardless of
location
-Reveals how different skills impact salary levels for
Data Analysts and helps identify the most financially
rewarding skills to acquire or improve.*/
SELECT 
	 s.skills
	,ROUND(AVG(j.salary_year_avg),0) AS avg_salary
      --,COUNT(sj.job_id) AS demand_count

FROM 
	job_postings_fact j

INNER JOIN 
	skills_job_dim sj
ON j.job_id = sj.job_id

INNER JOIN
	skills_dim s
ON sj.skill_id = s.skill_id

WHERE
	j.job_title_short = 'Data Analyst'

AND j.salary_year_avg IS NOT NULL

AND j.job_work_from_home = TRUE


GROUP BY
	s.skills

ORDER BY 2 DESC

LIMIT 5
;

[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]

/*The top three high-demand skills based on average salary are so listed due to their critical roles in data processing, software development, and AI:

1. PySpark ($208,172): a powerful tool for big data processing and analytics. Its integration with Apache Spark allows for efficient handling of large datasets, making it highly valuable in industries that rely on data-driven decision-making.

2. Bitbucket ($189,155): a Git repository management solution designed for professional teams. Its high demand is driven by its robust features for code collaboration, continuous integration, and deployment, which are essential for modern software development practices.

3. Couchbase and Watson ($160,515 each):   
     - Couchbase is a NoSQL database and is known for its high performance and scalability, making it ideal for applications requiring real-time data processing and large-scale data management.
     - Watson -IBM's Watson offers advanced AI and machine learning capabilities, which are crucial for businesses looking to leverage AI for insights, automation, and enhanced decision-making.*/
