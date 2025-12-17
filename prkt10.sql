CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255)
);
CREATE TABLE Mambers (
    mamber_id INT PRIMARY KEY,
    mamber_name VARCHAR(255)
);

CREATE TABLE PR_M (
    project_id INT,
    mamber_id INT,
    PRIMARY KEY (project_id, mamber_id),
    FOREIGN KEY (project_id) REFERENCES Projects (project_id),
    FOREIGN KEY (mamber_id) REFERENCES Mambers (mamber_id)
);
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(255),
    client_email VARCHAR(255)
);
CREATE TABLE Equipment (
    equipment_id INT PRIMARY KEY,
    equipment_name VARCHAR(255)
);
CREATE TABLE eq_c (
    equipment_id INT,
    client_id INT,
    rental_date DATE,
    PRIMARY KEY (equipment_id, client_id),
    FOREIGN KEY (client_id) REFERENCES Clients (client_id), 
    FOREIGN KEY (equipment_id) REFERENCES Equipment (equipment_id)
);
CREATE TABLE Students(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);
CREATE TABLE Courses(
    course_id INT PRIMARY KEY,
    course_proffesor VARCHAR(255)
);
CREATE TABLE st_c (
    course_id INT,
    student_id INT,
    grade INT,
    FOREIGN KEY (course_id) REFERENCES Courses (course_id),
    FOREIGN KEY (student_id) REFERENCES Students (student_id),
    PRIMARY KEY (student_id, course_id)
);

