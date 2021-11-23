SELECT cohort.name as cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohorts_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;