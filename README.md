# 🎓 Uncovering the Secrets of Student Success: A SQL Data Analysis Project
Data Analysis Projects using SQL

## 📊 Overview
In the modern educational landscape, identifying what drives student performance is critical for academic success. Just like a city's transport system must adapt to its citizens, schools must tailor their approach to meet the diverse needs of students. This project dives into a dataset of student behaviors and performance metrics to uncover what factors truly impact academic achievement.

Using SQL, this analysis explores patterns in study habits, sleep duration, attendance, extracurricular activities, tutoring, and teacher quality to evaluate how each variable correlates with exam scores. The goal is to equip educators, students, and policy-makers with actionable insights that support data-driven decisions in the education system.

## 📁 Dataset Description
The project uses a table named student_performance containing the following columns:
| Column                       | Description                                    | Data Type                           |
| ---------------------------- | ---------------------------------------------- | ----------------------------------- |
| `attendance`                 | Percentage of classes attended                 | `float`                             |
| `extracurricular_activities` | Participation in extracurricular activities    | `varchar` (`Yes` / `No`)            |
| `sleep_hours`                | Average number of sleep hours per night        | `float`                             |
| `tutoring_sessions`          | Number of tutoring sessions attended per month | `integer`                           |
| `teacher_quality`            | Rating of the teacher quality                  | `varchar` (`Low`, `Medium`, `High`) |
| `exam_score`                 | Final exam score                               | `float`                             |
| `hours_studied`              | Number of hours studied per week               | `integer`                           |

## 📈 Key Takeaways
Balanced involvement in academics and extracurriculars boosts exam performance.

Higher study hours generally lead to better scores, especially beyond 11 hours/week.

A holistic routine that includes good sleep, tutoring, and attendance is common among top performers.

Data-driven insights can help shape educational strategies and personal study plans.

## 🛠️ Tools Used
SQL: For querying and analyzing the data

DBMS: Any SQL-supported platform like PostgreSQL, MySQL, or SQLite

## 📚 Future Enhancements
Visualizing trends using Power BI or Tableau

Incorporating more variables like socioeconomic status or parental involvement

Performing predictive modeling with Python or R

