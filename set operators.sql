-- 1. Write a SQL query using the INTERSECT operator to retrieve the common records between the "students" and 
-- "teachers" tables. The result should include the columns course_id, student_id, student_name, teacher_id,
-- and teacher_name for the common courses.
select course_id, name, student_id from students
INTERSECT
select course_id, teacher_name, teacher_id from teachers;

-- 2. Write a SQL query using the INNER JOIN operation to retrieve records from both the "students" and "teachers" 
-- tables where there is a match based on the common column course_id. Include columns from both tables.
select * from students
INNER JOIN teachers on students.course_id = teachers.course_id;

-- check the performance of intersect and inner join using explain and analyze
EXPLAIN ANALYZE select course_id, name, student_id from students
INTERSECT  
select course_id, teacher_name, teacher_id from teachers;

EXPLAIN ANALYZE select * from students
INNER JOIN teachers on students.course_id = teachers.course_id;
-- INTERSECT is Faster than INNER JOIN

-- 3. Write a SQL query using the EXCEPT operator to retrieve records from the "students" table that do not exist in
-- the "teachers" table. Include columns student_id, student_name, and course_id.
EXPLAIN ANALYZE select course_id, name, student_id from students
EXCEPT  
select course_id, teacher_name, teacher_id from teachers;

-- Write a SQL query using the RIGHT OUTER JOIN operation to retrieve all records from the "teachers" table and the 
-- matching records from the "students" table based on the common column course_id. Include columns from both tables.
select * from students
RIGHT OUTER JOIN teachers on students.course_id = teachers.course_id;
