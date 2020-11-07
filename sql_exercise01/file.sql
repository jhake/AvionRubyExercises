CREATE TABLE students(id Integer, first_name varchar(50), middle_name varchar(50), last_name varchar(50), age Integer, location varchar(200));
INSERT INTO students VALUES (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila');
INSERT INTO students VALUES (2, 'John', 'Blank', 'Young', 20, 'Manila');
INSERT INTO students VALUES (3, 'Victor', 'Blank', 'Rivera', 21, 'Manila');
INSERT INTO students VALUES (4, 'Adrian', 'Blank', 'Co', 19, 'Manila');
INSERT INTO students VALUES (5, 'Pau', 'Blank', 'Riosa', 22, 'Manila');
INSERT INTO students VALUES (6, 'Piolo', 'Blank', 'Pascual', 22, 'Manila');
UPDATE students SET first_name='Ana', middle_name='Cui', last_name='Cajocson', age=25, location='Bulacan' WHERE id=1;
DELETE FROM students WHERE id=6;

SELECT COUNT (*) FROM students;
SELECT * FROM students WHERE location='Manila';
SELECT AVG(age) FROM students;
SELECT * FROM students ORDER BY age DESC;

CREATE TABLE classrooms(id Integer, student_id Integer, section char);
INSERT INTO classrooms VALUES (1, 1, 'A');
INSERT INTO classrooms VALUES (2, 2, 'A');
INSERT INTO classrooms VALUES (3, 3, 'B');
INSERT INTO classrooms VALUES (4, 4, 'C');
INSERT INTO classrooms VALUES (5, 5, 'B');
INSERT INTO classrooms VALUES (6, 6, 'A');
INSERT INTO classrooms VALUES (7, 7, 'C');
INSERT INTO classrooms VALUES (8, 8, 'B');
INSERT INTO classrooms VALUES (9, 9, 'B');
INSERT INTO classrooms VALUES (10, 10, 'C');

SELECT * FROM students INNER join classrooms ON students.id=classrooms.student_id;
SELECT * FROM students LEFT join classrooms ON students.id=classrooms.student_id;
SELECT * FROM students RIGHT join classrooms ON students.id=classrooms.student_id;
SELECT * FROM students FULL join classrooms ON students.id=classrooms.student_id;
