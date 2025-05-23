--Query 1: Average Exam Score by Study Hours and Extracurricular Involvement

SELECT hours_studied, AVG(exam_score) AS avg_exam_score
FROM student_performance
WHERE hours_studied > 10 AND extracurricular_activities = 'Yes'
GROUP BY hours_studied
ORDER BY avg_exam_score DESC;

/*Insight:
Students who studied more than 10 hours per week and participated in extracurricular activities tended to score significantly higher on exams.
 This suggests that involvement in activities outside the classroom may complement academic focus rather than hinder it.*/


-- Query 2: Exam Score Trends Across Study Hour Ranges

WITH CTE AS (
    SELECT 
        exam_score,
        CASE 
            WHEN hours_studied BETWEEN 1 AND 5 THEN '1-5 hours'
            WHEN hours_studied BETWEEN 6 AND 10 THEN '6-10 hours'
            WHEN hours_studied BETWEEN 11 AND 15 THEN '11-15 hours'
            WHEN hours_studied >= 16 THEN '16+ hours'
            ELSE 'NA'
        END AS hours_studied_range
    FROM student_performance
)

SELECT hours_studied_range, AVG(exam_score) AS avg_exam_score
FROM CTE
GROUP BY hours_studied_range
ORDER BY avg_exam_score DESC;

/*Insight:
Students studying 16+ hours per week scored the highest on average, followed by those in the 11–15 hour range.
 There is a clear positive correlation between time spent studying and exam performance.*/

--Query 3: Top 30 Students by Exam Score with Key Performance Indicators

SELECT 
    attendance,
    hours_studied,
    sleep_hours,
    tutoring_sessions,
    DENSE_RANK() OVER (ORDER BY exam_score DESC) AS exam_rank
FROM student_performance
LIMIT 30;

/*
Insight:
Top-ranking students not only studied more but also displayed high levels of attendance, had a balanced sleep routine, and attended tutoring sessions. 
This emphasizes a holistic approach to academic success involving consistency, support, and wellness.*/