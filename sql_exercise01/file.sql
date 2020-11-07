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

