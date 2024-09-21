/*5_optimal_skills.sql
Question:  What are the most optimal skills to learn (high demand and 
high-paying)?
-Identifies skills in high demand associated with high average
salaries for Data Analyst roles
-Concentrates on remote positions with specified salaries
-Targets skills that offer job security (high demand) and financial
benefits (high salaries), offering strategic insights for career 
development in data analysis
*/

WITH skills_demand AS (
			SELECT 
				 s.skill_id
				,s.skills
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

			AND j.salary_year_avg IS NOT NULL

			AND j.job_work_from_home = TRUE

			GROUP BY
				s.skill_id
                       )

    ,average_salary AS (
			SELECT 
				 s.skill_id
				,s.skills
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
				s.skill_id

                       )

SELECT
	 skills_demand.skill_id
	,skills_demand.skills
	,demand_count
	,avg_salary

FROM
	skills_demand

INNER JOIN
	average_salary
	
ON
	skills_demand.skill_id = average_salary.skill_id	

WHERE
	demand_count > 10

ORDER BY	
--    4 DESC
 	  3 DESC,4 DESC
--   4 DESC,3 DESC

LIMIT 25
;

--previous query re-written more concisely
SELECT 
	 s.skill_id
	,s.skills
        ,COUNT(sj.job_id) AS demand_count
	,ROUND(AVG(j.salary_year_avg),0) AS avg_salary

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
	s.skill_id

HAVING
	COUNT(sj.job_id) > 10

ORDER BY 4 DESC, 3 DESC

LIMIT 25
;

/*The 5 most in-demand skills for remote data analysts are the
following: python, tableau, r, sas, and looker.  The top 5 skills for
remote data analysts per average annual salary are sas, go, confluence,
hadoop, and snowflake.*/






