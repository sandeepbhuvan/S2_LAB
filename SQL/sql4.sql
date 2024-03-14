create database uni;
use uni;
create table students(stuname varchar(200), student_number int(20), class int(20),major varchar(200));
create table course(course_name varchar(200), course_number varchar(200) primary key, credit_hours int(20), department varchar(200));
create table section(section_identifier int(20), course_number varchar(200), foreign key (course_number) references course(course_number), semester varchar(200), year varchar(200), instructor varchar(200));
desc section;
alter table section add primary key(section_identifier);
create table grade_report(student_number int(20), section_identifier int(20),primary key(student_number,section_identifier), foreign key (student_number) references students(student_number), foreign key (section_identifier) references section(section_identifier), grade varchar(200));
create table prerequisite(course_number varchar(200), foreign key (course_number) references course(course_number), prerequisite_number varchar(200), foreign key (prerequisite_number) references course(course_number));

insert into students(stuname , student_number, class, major) values('Smith',17, 1,'CS');
insert into students(stuname , student_number, class, major) values('Brown',8, 2,'CS');
desc students;
select * from students;
insert into course(course_name,course_number,credit_hours,department) values('Intro to computer','CS1310', 4, 'CS');
insert into course(course_name,course_number,credit_hours,department) values('Data Structures','CS3320', 4, 'CS');
insert into course(course_name,course_number,credit_hours,department) values('Discrete Mathematics','MATH2410', 3, 'MATH');
insert into course(course_name,course_number,credit_hours,department) values('Database','CS3380', 3, 'CS');
select * from course;
desc students;
alter table students add primary key(student_number);
insert into section values (85,'MATH2410','Fall','07','King');
insert into section values (92,'CS1310','Fall','07','Anderson');
insert into section values (102,'CS3320','Spring','09','Knuth');
insert into section values (112,'MATH2410','Fall','08','Chang');
insert into section values (119,'CS1310','Fall','08','Anderson');
insert into section values (135,'CS3380','Fall','08','Stone');

select * from section;

insert into grade_report values (17,112,'B');
insert into grade_report values (17,119,'C');
insert into grade_report values (8,85,'A');
insert into grade_report values (8,92,'A');
insert into grade_report values (8,102,'B');
insert into grade_report values (8,135,'A');
select * from grade_report;

insert into prerequisite values('CS3380','CS3320');
insert into prerequisite values('CS3380','MATH2410');
insert into prerequisite values('CS3320','CS1310');

select * from prerequisite;
desc prerequisite;
desc grade_report;
drop table grade_report;
select * from student;

#3. Retrieve the list of all courses and grades of 'Smith'
select g.grade,c.course_name from students s inner join grade_report g on s.student_number = g.student_number inner join section se on g.section_identifier = se.section_identifier inner join course c on se.course_number = c.course_number where s.stuname="Smith";
#select * from students s inner join grade_report g on s.student_number = g.student_number inner join section se on g.section_identifier = se.section_identifier inner join course c on se.course_number = c.course_number where s.stuname="Smith";

#4. List the names of students who took the section of the 'Database' course offered in fall 2008 and their grades in that section
select s.stuname,g.grade from students s inner join grade_report g on s.student_number = g.student_number inner join section se on g.section_identifier=se.section_identifier inner join course c on c.course_number=se.course_number where se.semester='Fall' and se.year='08' and c.course_name="Database";
select * from course;

#5. List the prerequisites of the 'Database' course
select course_name from course where course_number in (select prerequisite_number from prerequisite where course_number=(select course_number from course where course_name='Database'));

#6. Retrieve the names of all the senior students majoring in 'CS' 
select distinct s.stuname from students s inner join grade_report g on s.student_number=g.student_number inner join section se on se.section_identifier=g.section_identifier where se.year='07' and s.major='CS';

#7. Retrieve the names of all the courses taught by Professor King in 2007 and 2008
select course_name from course c inner join section s on c.course_number=s.course_number where instructor='King' and year in ('07','08');


#8. For each section taught by Professor King,retrieve the course number,semester ,year and number of students who took the section
select s.course_number,s.semester,s.year,count(g.student_number) as No_of_students from section s join grade_report g on s.section_identifier=g.section_identifier where s.instructor="King" group by g.section_identifier; 

#9. Retrieve the names and transcript of each senior student(Class=4) majoring in CS. A transcript includes course name, course number, credit hours, semester ,year and grade for each course completed by the student.


#10. A. Insert a new student,<'Johnson',25,1,'Math'>,in the database.
insert into students values("Johnson",25,1,"Math");

#B.change the class of student 'smith' to 2
set sql_safe_updates=0;
update students set class=2 where stuname="Smith";

#c.insert new course
insert into course values("knowledge engineering","CS4390",3,"CS");

#d.delete record for student with names smith and student number is 17
delete from students where stuname="Smith";

desc grade_report;