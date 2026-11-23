----Part 1
----1
Select COUNT(*) AS TotalRecords
From student_grades;
----2
Select AVG(Cast(Grade AS DECIMAL(10,2))) AS AvgGrade
From student_grades;
----3
Select MAX(Grade) AS HighestGrade
From student_grades;
----4
Select MIN(Grade) AS LowestGrade
From student_grades;
----5
Select COUNT(DISTINCT StudentID) AS DistinctStudents
From student_grades;
----6
Select CourseID,
AVG(Cast(Grade AS DECIMAL(10,2))) AS AvgGrade
From student_grades
Group by CourseID;
----7
Select Department,
Count(Distinct StudentID) AS NumStudents
From student_grades
Group by Department;
----8
Select CourseID,
MAX(Grade) AS MaxGrade
From student_grades
Group by CourseID;
----9
Select Department, MIN(Grade) AS MinGrade
From student_grades
group by Department;
----10
Select StudentID,
Count(Distinct CourseID) AS NumCourses
From student_grades
Group by StudentID;

----Part 2
----11
Select CourseID,
AVG(Cast(Grade AS DECIMAL(10,2))) AS AvgGrade
From student_grades
Group by CourseID
Having AVG(Cast(Grade AS DECIMAL(10,2)))>75;
----12
Select StudentID,
Count(Distinct CourseID) AS NumCourses
From student_grades
Group by StudentID
Having Count(Distinct CourseID) >3;
----13
SELECT Department,
       AVG(CAST(Grade AS DECIMAL(10,2))) AS AvgGrade
FROM student_grades
GROUP BY Department
HAVING AVG(CAST(Grade AS DECIMAL(10,2))) < 65;
----14
Select StudentID,
MAX(Grade) AS MaxGrade
From student_grades
Group by StudentID
Having max(Grade)=100;
----15
Select CourseID,
Count(Distinct StudentID) AS NumStudents
From student_grades
Group by CourseID
Having Count(Distinct StudentID) >=20;

----Part 3
----16
SELECT StudentID,
       Count(Distinct CourseID) AS NumCourses,
       AVG(CAST(Grade AS DECIMAL(10,2))) AS AvgGrade
FROM student_grades
GROUP BY StudentID
HAVING Count(Distinct CourseID) >=4
AND AVG(CAST(Grade AS DECIMAL(10,2))) > 80;
----17
SELECT Department,
       MAX(Grade) AS MaxGrade,
       AVG(CAST(Grade AS DECIMAL(10,2))) AS AvgGrade
FROM student_grades
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(CAST(Grade AS DECIMAL(10,2)));
----18
SELECT CourseID,
       AVG(CAST(Grade AS DECIMAL(10,2))) AS AvgGrade
FROM student_grades
GROUP BY CourseID
HAVING AVG(CAST(Grade AS DECIMAL(10,2))) >
       (SELECT AVG(CAST(Grade AS DECIMAL(10,2)))
FROM student_grades);
----19,20 Same 😄
SELECT StudentID,
       MIN(Grade) AS MinGrade
FROM student_grades
GROUP BY StudentID
HAVING MIN(Grade) > 70;