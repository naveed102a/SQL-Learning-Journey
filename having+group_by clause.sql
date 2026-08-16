create table stuudent(
student_id INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Department VARCHAR(50),
    Marks INT,
    Age INT
);
insert into stuudent(student_id,Name, City, Department, Marks, Age)
values(1, 'Ali', 'Karachi', 'Computer Science', 450, 20),
(2, 'Ahmed', 'Karachi', 'Data Science', 380, 21),
(3, 'Hamza', 'Karachi', 'Computer Science', 420, 22),
(4, 'Sara', 'Lahore', 'Data Science', 460, 20),
(5, 'Ayesha', 'Lahore', 'Computer Science', 390, 21),
(6, 'Zain', 'Lahore', 'Data Science', 430, 22),
(7, 'Usman', 'Islamabad', 'Computer Science', 370, 20),
(8, 'Hina', 'Islamabad', 'Data Science', 410, 21),
(9, 'Bilal', 'Islamabad', 'Computer Science', 450, 22),
(10, 'Fatima', 'Karachi', 'Data Science', 470, 20),
(11, 'Saad', 'Multan', 'Computer Science', 360, 23),
(12, 'Maha', 'Multan', 'Data Science', 400, 21);

select * from stuudent;

select City, count(*)
from stuudent
group by City;

select Department, count(*)
from stuudent
group by Department;

-- Find the total marks of students in each city.
select city, sum(Marks) as Total_marks
from stuudent 
group by City;

-- Find the total marks of students in each city. and show those who has max sum of marks 
select City, sum(Marks) as total_marks
from stuudent
group by City
order by total_marks DESC
limit 1;

--Find the average marks of students in each city.
select City, avg(Marks)
from stuudent
group by City;

-- Find the highest marks in each city.
select City, max(Marks)
from stuudent
group by City;

-- Find the lowest marks in each city.
select city, min(Marks)
from stuudent
group by City;

-- Display cities that have more than 2 students.
select City, count(*)
from stuudent
group by City
having count(*) > 2;

-- Display cities where the highest marks are greater than 400
select City, max(Marks)
from stuudent
group by City
having max(Marks) > 400;

-- Display cities where the average marks are greater than 400.
select City, avg(Marks)
from stuudent
group by City
having avg(Marks) > 400;

--Display cities where the lowest marks are greater than or equal to 380.

select City, min(Marks)
from stuudent 
group by City
having min(Marks) <= 380;

--Display cities where the total marks are greater than 1000
select City, sum(Marks)
from stuudent
group by City
having sum(Marks) > 1000;

--Display departments that have more than 5 students.
select Department, count(*)
from stuudent
group by Department
having count(*) > 5;


--    GROUP BY + HAVING

--Display the city, total number of students, and highest marks for cities where the highest marks are greater than 400.
select City, count(*), max(Marks)
from stuudent
group by City
having max(Marks) > 400;

-- Display the city and average marks for cities where the average marks are greater than 400.

select City, avg(Marks)
from stuudent 
group by City
having avg(Marks)>400;

-- Display the city and total marks for cities where the total marks are greater than 1000.

select City, sum(Marks)
from stuudent 
group by City
having sum(Marks) > 1000;

-- Display the city and number of students for cities having at least 2 students

select City, count(*)
from stuudent 
group by City
having count(*) >=2;

--    Multiple Conditions

--Display cities where the highest marks are greater than 400 AND the number of students is greater than 2.

Select City, max(Marks) as Highest_Marks, count(*) as Total_students
from stuudent
group by City
having max(Marks) > 400 AND count(*) >2;

-- Display cities where the average marks are greater than 400 AND the minimum marks are greater than 350.

select City, avg(Marks) as avg_marks, min(Marks) as min_marks
from stuudent
group by City
having avg(Marks) > 400 AND min(Marks) > 350;

-- Display cities where the highest marks are greater than or equal to 450 OR the number of students is greater than or equal to 3.
select City, max(Marks) as max_marks, count(*) as total_student
from stuudent 
group by City
having max(Marks) >= 450 OR count(*) >= 3;

-- Display cities where the highest marks are greater than 400 AND the number of students is greater than 2.

select City, max(Marks) as high_marks, count(*) as number_students 
from stuudent 
group by City 
having max(Marks) >= 400 AND count(*)>2;

--  Display the city, number of students, average marks, and maximum marks for cities where the number of students is greater than 2 AND the average marks are greater than 400.

select City, count(*) as number_of_student, avg(Marks) as avg_Marks, max(Marks) as Max_marks 
from stuudent 
group by City 
having count(*) > 2 AND avg(Marks) > 400;









