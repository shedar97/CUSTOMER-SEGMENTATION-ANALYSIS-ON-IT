---1.Objective : Analyze the distribution of salaries across different job roles,Experience levels , and locations 2.SQL QUeiries use Group By and ORDER to calculate avarage,---
---Minimuim salaries by job role create histograms or distrubtions using SQL severs window functions 3.Visualization : Export results to Excel and a BI tool to visiualize the salaries ---
--- Distrubiton : Bar charts and histograms ---
 
SELECT 
    job_title,                                   	
	                                                    
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM 
    AI_ML_Salaries
GROUP BY 
    job_title
ORDER BY 
    avg_salary DESC;

	SELECT 
    experience_level,
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM 
    AI_ML_Salaries
GROUP BY 
    experience_level
ORDER BY 
    avg_salary DESC;
	SELECT 
    location,
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM 
    AI_ML_Salaries
GROUP BY 
    location
ORDER BY 
    avg_salary DESC;
	SELECT 
    CASE
        WHEN salary < 50000 THEN '< 50k'
        WHEN salary BETWEEN 50000 AND 99999 THEN '50k-99k'
        WHEN salary BETWEEN 100000 AND 149999 THEN '100k-149k'
        WHEN salary BETWEEN 150000 AND 199999 THEN '150k-199k'
        ELSE '200k+'
    END AS salary_range,
    COUNT(*) AS num_employees
FROM 
    AI_ML_Salaries
GROUP BY 
    CASE
        WHEN salary < 50000 THEN '< 50k'
        WHEN salary BETWEEN 50000 AND 99999 THEN '50k-99k'
        WHEN salary BETWEEN 100000 AND 149999 THEN '100k-149k'
        WHEN salary BETWEEN 150000 AND 199999 THEN '150k-199k'
        ELSE '200k+'
    END
ORDER BY 
    salary_range;

