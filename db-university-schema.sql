create database `db-university-schema`;
use `db-university-schema`;

create table `departments`(
`id` INT not null auto_increment,
`name` VARCHAR(100) not null,
`address` VARCHAR(255) not null ,
`phone` CHAR(10) not null ,
`email` VARCHAR(100) not null ,
`website` VARCHAR(255) not null ,
`head_of_department` VARCHAR(100) not null ,
primary key(`id`)
);

create table `degrees`(
`id` INT not null auto_increment,
`name` VARCHAR(100) not null,
`level` VARCHAR(255) not null ,
`email` VARCHAR(100) not null ,
`website` VARCHAR(255) not null ,
`departments_id` INT not null,
primary key(`id`),
foreign key(`departments_id`) references departments(`id`)
);

create table `student`(
`id` INT not null auto_increment,
`name` VARCHAR(100) not null,
`surname` VARCHAR(100) not null ,
`date_of_birth` DATE not null ,
`fiscal_code` CHAR(16) not null ,
`enrolment_date` DATE not null ,
`registration_number` INT not null,
`email` VARCHAR(100) not null,
`degrees_id` INT not null,
primary key(`id`),
foreign key(`degrees_id`) references degrees(`id`)
);
create table `courses`(
`id` INT not null auto_increment,
`name` VARCHAR(100) not null,
`description` VARCHAR(255) not null ,
`cfu` INT not null,
`website` VARCHAR(100) not null,
`degrees_id` INT not null,
primary key(`id`),
foreign key(`degrees_id`) references degrees(`id`)
);
create table `teachers`(
`id` INT not null auto_increment,
`name` VARCHAR(100) not null,
`surname` VARCHAR(100) not null,
`phone` CHAR(10) not null ,
`office_address` VARCHAR(100) not null ,
`email` VARCHAR(100) not null,
primary key(`id`)
);
create table `teachers_courses`(
`teachers_id` INT not null,
`courses_id` INT not null,
primary key(`teachers_id`,`courses_id`),
foreign key(`teachers_id`) references teachers(`id`),
foreign key(`courses_id`) references courses(`id`)
);
create table `exams`(
`id` INT not null auto_increment,
`date` DATE not null,
`hour` TIME not null,
`location` VARCHAR(100) not null ,
`address` VARCHAR(100) not null ,
`courses_id` INT not null,
primary key(`id`),
foreign key(`courses_id`) references courses(`id`)
);
create table `exams_student`(
`exams_id` INT not null,
`student_id` INT not null,
`vote` INT not null,
primary key(`exams_id`,`student_id`),
foreign key(`exams_id`) references exams(`id`),
foreign key(`student_id`) references student(`id`)
);


