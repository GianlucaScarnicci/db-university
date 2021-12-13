alter table `degrees` drop column `head_of_department`;
alter table `degrees` add `address` VARCHAR(100);

insert into `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_department`) values ('amaldi','san lorenzo 10','3405621658','amaldi@uniroma1.it','www.amaldi.com','rosario');
insert into `departments`(`name`,`address`,`phone`,`email`,`website`,`head_of_department`) values ('majorana','viale regina elena 56','3314879650','majorana@uniroma1.it','www.majorana.com','maria');

insert into `degrees`(`name`,`level`,`email`,`website`,`departments_id`,`address`) values ('fisica','laurea triennale','fisica@uniroma1.com','www.fisica.com','1','via roma 10');
insert into `degrees`(`name`,`level`,`email`,`website`,`departments_id`,`address`) values ('economia','laurea triennale','economia@uniroma1.com','www.economia.com','2','via regina margerita 110');

insert into `courses`(`name`,`description`,`cfu`,`website`,`degrees_id`) values ('analisi 1','corso di analisi matematica','12','www.analisi1.com','1');
insert into `courses`(`name`,`description`,`cfu`,`website`,`degrees_id`) values ('economia aziendale ','corso di economia aziendale','9','www.econaziend.com','2');

insert into `teachers`(`name`,`surname`,`phone`,`office_address`,`email`) values ('pippo','rossi','3845412100','aula 102','pipporossi@gmail.com');
insert into `teachers`(`name`,`surname`,`phone`,`office_address`,`email`) values ('rossana','bianchi','3227350981','aula 421','rossanabianchi@gmail.com');

insert into `exams`(`date`,`hour`,`location`,`address`,`courses_id`) values ('2021-09-01','10:00','aula amaldi','via sapienza','1');
insert into `exams`(`date`,`hour`,`location`,`address`,`courses_id`) values ('2021-02-20','8:30','aula magna','via centrale 23','2');

insert into `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolment_date`,`registration_number`,`email`,`degrees_id`) values ('giovanni','penna','1998-02-02','gvn302ghd453nv5d','2021-09-01','1824129','giovannipenna@gmail.com','2');
insert into `student`(`name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolment_date`,`registration_number`,`email`,`degrees_id`) values ('chiara','scura','1997-12-23','scr231bdfgf501df','2020-08-14','1647810','chiarascura@gmail.com','1');

insert into `teachers_courses`(`teachers_id`,`courses_id`) values ('1','2');
insert into `teachers_courses`(`teachers_id`,`courses_id`) values ('2','1');

insert into `exams_student`(`exams_id`,`student_id`,`vote`) values ('1','2','30');
insert into `exams_student`(`exams_id`,`student_id`,`vote`) values ('2','1','15');


