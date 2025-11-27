CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY, -- Уникальный идентификатор студента
    full_name VARCHAR(255) NOT NULL, -- Полное имя студента
    email VARCHAR(255) UNIQUE NOT NULL, -- Электронная почта студента (должна быть уникальной)
    start_year INT -- Год поступления студента
);

CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY, -- Уникальный идентификатор курса
    course_name VARCHAR(255) NOT NULL, -- Название курса
    credits INT CHECK (credits > 0) -- Количество зачетных единиц курса (должно быть больше 0)
);

CREATE TABLE Enrollments (
    student_id INT REFERENCES Students(student_id) ON DELETE CASCADE, -- Ссылка на ID студента (внешний ключ)
    course_id INT REFERENCES Courses(course_id) ON DELETE CASCADE, -- Ссылка на ID курса (внешний ключ)
    grade CHAR(1), -- Оценка студента за курс (например, 'A', 'B', 'C')
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO students (full_name, email, start_year) VALUES
('Алексей Смирнов', 'alex@mail.ru', 2021),
('Елена Кузнецова', 'elena@mail.ru', 2022),
('Дмитрия Новикова', 'dima@mail.ru', 2021),
('Ольгу Морозову', 'olya@mail.ru', 2023);

INSERT into courses (course_name, credits) VALUES
('введение в программирование', 5),
('базы данных', 4),
('веб-программирование', 4);

INSERT INTO Enrollments(student_id, course_id, grade) VALUES(1, 2, 'A');
INSERT INTO Enrollments(student_id, course_id, grade) VALUES(2, 2, 'B');
INSERT INTO Enrollments(student_id, course_id, grade) VALUES(2, 3, 'A');
INSERT INTO Enrollments(student_id, course_id, grade) VALUES(3, 1, '');
INSERT INTO Enrollments(student_id, course_id, grade) VALUES(3, 2, '');
INSERT INTO Enrollments(student_id, course_id, grade) VALUES(3, 3, '');

UPDATE students
set email = 'elena.kuznetsova@newmail.com'
WHERE student_id = (2)

UPDATE enrollments
set grade = 'A'
WHERE student_id = (3) and course_id = (1)

DELETE from students
WHERE student_id = (4)


SELECT * FROM Students;

SELECT course_name, credits FROM courses

SELECT * FROM Students WHERE start_year = 2021;

SELECT * FROM courses WHERE credits > 4;

SELECT * FROM Students WHERE email = 'elena.kuznetsova@newmail.com';

SELECT * FROM students where full_name LIKE 'Дмитрий%';

SELECT * FROM enrollments where grade IS NULL;

SELECT * FROM courses ORDER BY course_name;

SELECT full_name, start_year FROM Students ORDER BY start_year ;

SELECT full_name, start_year FROM Students ORDER BY start_year DESC LIMIT 2;