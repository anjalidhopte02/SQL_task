create table student(
          stu_id serial primary key,
	      stu_name varchar(150),
	      stu_age int,
	      stu_PhoneNo int,
          stu_DOB date,
          stu_address varchar(150),
	      stu_class int,
          stu_sec varchar(50),
          stu_RollNo int
	)
select * from student

INSERT INTO student VALUES (1,'Benjamin Walker', 8, 1234567, '2016-01-01', '10 Elm St, Anytown, CA 12345', 3, 'Sec A', 1),
                           (2,'Charlotte Jones', 7, 7890123, '2017-01-10', '22 Birch Lane, Springfield, IL 54321', 2, 'Sec A', 7),
                           (3,'Emily Brown', 9, 4567890, '2015-11-06', '34 Maple St, Fairview, TX 78901', 4, 'Sec A', 2),
                           (4,'Sophia Khan', 9, 1083342, '2015-08-05', '100 Maple St, Sunnyvale, CA 94089', 4, 'Sec B', 12),
                           (5,'William Miller', 8, 2864655, '2015-12-02', '200 Oak Ave, Fairview, TX 78901', 3, 'Sec B', 18),
                           (6,'Abigail Garcia', 7, 9873210, '2017-10-05', '300 Poplar St, Miami, FL 33133', 1, 'Sec B', 3);


INSERT INTO student VALUES(7,'Alice Smith', 8, 1234567, '2017-05-09', '123 Main St, Anytown, CA 12345', 3, 'Sec B', 1),
                       (8,'Michael Jones', 7, 7890123, '2018-11-11', '456 Elm St, Springfield, IL 54321', 2, 'Sec B', 4),
                       (9,'Emily Brown', 9, 4567890, '2016-12-01', '789 Oak Ave, Fairview, TX 78901', 4, 'Sec B', 3),
                       (10,'David Miller', 10, 2345678, '2014-02-28', '100 Maple St, Sunnyvale, CA 94089', 3, 'Sec A', 8),
                       (11,'Sarah Garcia', 8, 9012345, '2016-12-12', '234 Birch Lane, Miami, FL 33133', 2, 'Sec A', 9),
                       (12,'Christopher Lee', 7,6780123, '2017-12-30', '567 Pine Blvd, Seattle, WA 98109', 4, 'Sec B', 2),
                       (13,'Olivia Williams', 6, 3456789, '2018-07-01', '890 Cedar Rd, Denver, CO 80246', 1, 'Sec A', 7),
                       (14,'Daniel Johnson', 9, 0123456, '2015-11-10', '89 Cedar Rd, Austin, TX 78731', 5, 'Sec B', 1);

create table teacher(
        teacher_id serial primary key,
	    teacher_name varchar(150),
        teacher_PhoneNo int,
        techer_JoiningDate date,
        teacher_class varchar(150)
	
       )

select * from teacher
INSERT INTO teacher VALUES (1,'Ms. Elizabeth Wright', 4321987, '2019-09-01', 'English'),
                          (2,'Mr. David Lee',4567789,'2020-03-21', 'Math'),
                          (3,'Mrs. Sarah Miller', 2468103, '2018-01-10','SST'),
                          (4,'Mr. William Brown',4567324,'2020-12-12','Science'),
                          (5,'Dr. Olivia Garcia',5432678,'2017-05-25','History');



create table class(
        class_id int primary key,
        section varchar(50),
        stu_id int,
        teacher_id int,
	FOREIGN KEY(stu_id ) REFERENCES student(stu_id),
	FOREIGN KEY(teacher_id) REFERENCES teacher(teacher_id)
	)

select * from class

INSERT INTO class VALUES (1,'Sec A', 1, 2),
                        (2,'Sec B', 3, 1),
                        (3,'Sec C', 4, 4),
                        (4,'Sec D', 2, 3),
                        (5,'Sec E', 8, 5);  
select * from class





