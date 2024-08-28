-- 1. Student Database Management System (Database Setup)

Create database student_database;
Use student_database;

CREATE TABLE student_table (
    Student_id INT PRIMARY KEY AUTO_INCREMENT,
    Stu_name TEXT,
    Department TEXT,
    Email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC (3,1),
    Grade TEXT CHECK (Grade IN ('A', 'B', 'C', 'D', 'F'))
);

-- 2. Student Database Management System (Data Entry)

INSERT INTO student_table (Stu_name, Department, Email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade)
VALUES ('John Doe', 'Computer Science', 'john.doe@example.com', '1234567890', '123 Main St, Anytown USA', '1995-06-15', 'Male', 'Computer Science', 10.0, 'A'),
('Jane Smith', 'Business', 'jane.smith@example.com', '0987654321', '456 Oak Rd, Somewhere City', '1997-03-22', 'Female', 'Business Administration', 8.0, 'B'),
('Michael Johnson', 'Engineering', 'michael.johnson@example.com', '5555555555', '789 Elm St, Elsewhere Town', '1998-11-08', 'Male', 'Mechanical Engineering', 10.0, 'A'),
('Emily Davis', 'Biology', 'emily.davis@example.com', '2222222222', '321 Pine Ln, Anyplace', '1996-09-01', 'Female', 'Biology', 4.0, 'D'),
('David Lee', 'Computer Science', 'david.lee@example.com', '7777777777', '654 Oak St, Somewhere Else', '1994-04-30', 'Male', 'Computer Science', 6.0, 'C'),
('Sophia Nguyen', 'Business', 'sophia.nguyen@example.com', '9999999999', '987 Maple Rd, Anywhere Town', '1999-07-12', 'Female', 'Marketing', 10.0, 'A'),
('William Patel', 'Engineering', 'william.patel@example.com', '4444444444', '159 Elm Ln, Elsewhere City', '1997-02-18', 'Male', 'Electrical Engineering', 10.0, 'A'),
('Olivia Hernandez', 'Biology', 'olivia.hernandez@example.com', '6666666666', '753 Pine St, Anyplace Else', '1996-05-06', 'Female', 'Ecology', 2.0, 'F'),
('Alexander Gonzalez', 'Computer Science', 'alexander.gonzalez@example.com', '8888888888', '951 Oak Rd, Somewhere Town', '1995-11-23', 'Male', 'Computer Engineering', 4.0, 'D'),
('Isabella Rodriguez', 'Business', 'isabella.rodriguez@example.com', '3333333333', '357 Maple Ln, Anywhere City', '1998-08-09', 'Female', 'Finance', 8.0, 'B');

-- 3. Student Database Management System (Student Information Retrieval)

SELECT * FROM student_table ORDER BY GRADE ASC;

-- 4. Student Database Management System (Query for Mail Students)

SELECT * FROM student_table WHERE Gender = 'Male';

-- 5. Student Database Management System (Query for students with GPA less than 5.0)

SELECT * FROM student_table WHERE GPA < 5.0 ;

-- 6. Student Database Management System (Query to update Student Email and Grade)

UPDATE student_table SET Email_ID = 'michael.johnson2@example.com', Grade = 'B', GPA = 8.0 WHERE Student_id = 13;

-- 7. Student Database Management System (Query to retrieve name and age of students with Grade B)

SELECT Stu_name, FLOOR (DATEDIFF(CURDATE(), Date_of_birth) /365.25) AS Age FROM student_table WHERE Grade = 'B';

-- 8. Student Database Management System (Grouping and calculation)

SELECT Department, Gender, AVG(GPA) AS AVG_GPA FROM student_table GROUP BY Department, Gender;

-- 9. Student Database Management System (Table Renaming)

ALTER TABLE student_table RENAME TO student_info;

-- 10. Student Database Management System (Retrieve student with highest GPA)

SELECT Stu_name FROM student_info ORDER BY GPA DESC LIMIT 1;

