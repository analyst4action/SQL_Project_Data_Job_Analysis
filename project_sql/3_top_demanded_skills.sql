/*3_top_demanded_skills.sql 
Question:  What are the most in-demand skills for my role?
-Join job postings to inner join table similar to query 2.
-Identify the top 5 in-demand skills for a data analyst.
-Focus on all job postings.
-Retrieves the top 5 skills with the highest demand in the 
job market, providing insights into the most valuable skills
for job seekers.*/
SELECT *

FROM 
	job_postings_fact j

INNER JOIN 
	skills_job_dim sj
ON j.job_id = sj.job_id

INNER JOIN
	skills_dim s
ON sj.skill_id = s.skill_id
LIMIT 5 
;

SELECT 
	 s.skills
	,COUNT(sj.job_id) AS demand_count

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

AND j.job_work_from_home = TRUE

GROUP BY
    s.skills

ORDER BY 2 DESC

LIMIT 5
;
/*The top 5 skills for data analyst are sql, excel, python,
tableau, and power bi.  There is no change when this is
narrowed to remote locations only; and the 
proportions remain relatively similar.*/

