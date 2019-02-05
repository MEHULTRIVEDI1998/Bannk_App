create database volunteer_overseas;
use volunteer_overseas;
create table users (id int (10) primary key auto_increment, email varchar (255), password varchar (255), 
role enum('superadmin','organization') not null, status tinyint (3) not null, created_at timestamp not null, 
        updated_at timestamp);
create table organizations(id int (10) primary key auto_increment, user_id int (10) not null, 
name varchar (255) ,logo varchar (255) ,email varchar (255) , description text, 
video varchar (255) ,website varchar (255) ,contact_name varchar (255) ,created_at timestamp not null, 
updated_at timestamp,foreign key (user_id) references users(id));        
create table categories(id int (10) primary key auto_increment, name varchar (45));
create table activities(id int (10) primary key auto_increment, name varchar (45));
create table countries (id int (10) primary key auto_increment, name varchar (45), image varchar (255));
create table cities(id int (10) primary key auto_increment, name varchar (45), country_id int (10) not null,
 FOREIGN KEY (country_id) REFERENCES countries(id) );
 create table projects (id int (10) primary key auto_increment, organization_id int (10) not null, 
 activity_id int (10) not null, 
category_id int (10) not null, title varchar (255), image varchar (255),
        min_age tinyint (3), max_age tinyint (3),
 overview_description text, accommodation_description text, imapact_description text, project_video_url 
 varchar (255),
        city_id int (10) not null, country_id int (10) not null,volunteer_house_address varchar (255),
 volunteer_house_description varchar (255), volunteer_work_address varchar (255), 
        volunteer_work_description varchar (255), nearest_airport_address varchar (255), cost_description 
 varchar (255), project_startdate_description varchar (255), 
        is_affordable enum('yes','no') not null,
 status tinyint (3) not null, created_at timestamp not null, updated_at timestamp,
FOREIGN KEY (organization_id) REFERENCES organizations(id),
FOREIGN KEY (activity_id) REFERENCES activities(id),
FOREIGN KEY (category_id) REFERENCES categories(id),
FOREIGN KEY (city_id) REFERENCES cities(id),
FOREIGN KEY (country_id) REFERENCES countries(id)
);
create table applications(id int (10) primary key auto_increment, project_id int (10) not null, 
name varchar (45),project_startdate datetime, duration int (10), email varchar (255), phone int (10), 
created_at timestamp not null, updated_at timestamp, foreign key (project_id) references projects(id));
create table project_carousel_images(id int (10) primary key auto_increment, project_id int (10) not null, 
images varchar (255), foreign key (project_id) references projects(id));
create table project_costs(id int (10) primary key auto_increment, project_id int (10) not null, 
number_of_weeks int (10), cost float (10,2), 
        foreign key (project_id) references projects(id));
create table project_include_checks(id int (10) primary key auto_increment, project_id int (10) not null, 
description text, is_included enum('yes','no') not null, 
        foreign key (project_id) references projects(id));
create table project_start_dates(id int (10) primary key auto_increment, project_id int (10) not null, 
start_date date, foreign key (project_id) references projects(id));
create table project_view_history(id int (10) primary key auto_increment, project_id int (10) not null, 
view_date timestamp not null, user_ip varchar (45), 
	foreign key (project_id) references projects(id));
create table faq(id int (10) primary key not null, question text, answer text, sequence_number int (10) not null);
INSERT INTO countries ( id, name ) VALUES 
(1, 'India'),
(2, 'Africa'),
(3, 'Kenya'),
(4, 'Thailand'),
(5, 'South Africa'),
(6, 'Bolivia'),
(7, 'Turkmenistan');

INSERT INTO cities (`id`, `country_id`, `name`) VALUES
(1, 1, 'Ahmedabad'),
(2, 1, 'Vadodara'),
(3, 1, 'Hyderabad'),
(4, 1, 'Hubali'),
(5, 1, 'Kotdwara'),
(6, 2, 'Cairo'),
(7, 2, 'Kinshasa'),
(8, 2, 'Luanda'),
(9, 3, 'Nairobi'),
(10, 3, 'Nakuru'),
(11, 3, 'Mombasa'),
(12, 4, 'Pattaya'),
(13, 4, 'Bangkok'),
(14, 4, 'Ranong'),
(15, 5, 'Durban'),
(16, 5, 'Mahikeng'),
(17, 5, 'Knysna'),
(18, 6, 'Santa Cruz'),
(19, 6, 'La Paz'),
(20, 6, 'Montero'),
(21, 7, 'Ashgabat'),
(22, 7, 'Mary'),
(23, 7, 'Abadan');
	
INSERT INTO categories ( id, name ) VALUES 
(1, 'Volunteer Abroad'),
(2, 'Teach Abroad'),
(3, 'Intern Abroad');

INSERT INTO activities ( id, name ) VALUES 
(1, 'Agriculture'),
(2, 'Animal Welfare'),
(3, 'Childcare'),
(4, 'Disaster Relief'),
(5, 'Education'),
(6, 'Environment'),
(7, 'Health & Medicine'),
(8, 'Human Rights'),
(9, 'Orphans'),
(10, 'Wildlife');

INSERT INTO users ( id, email, password, status, role) VALUES 
(1, 'mehul@gmail.com', 'mehul',1, 'superadmin'),
(2, 'kishan@gmail.com', 'kishan',2, 'organization'),
(3, 'hardik@gmail.com', 'hardik', 1,'organization'),
(4, 'reema@gmail.com', 'reema', 2, 'superadmin'),
(5, 'riya@gmail.com', 'riya',1, 'organization');

INSERT INTO organizations ( id, name, user_id ) VALUES 
(1, 'Pop Wuj - Spanish School Guatemala',1),
(2, 'GoEco',2),
(3, 'MAXIMO NIVEL',4),
(4, 'Frontier',3),
(5, 'Cross-Cultural Solutions',5),
(6, 'Plan My Gap Year',1),
(7, 'Pangea Educational Developmen',5),
(8, 'Gapforce',4),
(9, 'African Impact',3);


INSERT INTO projects (`id`, `organization_id`, `activity_id`, `category_id`, `title`, `city_id`, `country_id`, `status`, `is_affordable`) VALUES 
 		('1', '2', '9', '2', 'Teach Abroad', '1', '1','1','yes'),
 		('2', '4', '8', '1', 'Volunteer Abroad', '7', '2','1','yes'),
 		('3', '5', '5', '3', 'Intern Abroad', '11', '3','2','no'),
 		('4', '1', '2', '1', 'Volunteer Abroad', '13', '4','3','yes'),
 		('5', '3', '10', '1', 'Volunteer Abroad', '19', '6','3','no'),
 		('6', '6', '6', '2', 'Teach Abroad', '4', '1','2','yes'),
 		('7', '1', '3', '3', 'Intern Abroad', '10', '3','2','yes'),
 		('8', '9', '7', '1', 'Intern Abroad', '16', '5','3','yes'),
 		('9', '1', '1', '1', 'Intern Abroad', '7', '2','1','no'),
 		('10', '3', '2', '2', 'Teach Abroad', '21', '7','2','no'),
 		('11', '6', '4', '3', 'Teach Abroad', '22', '7','3','no'),
 		('12', '5', '5', '3', 'Teach Abroad', '11', '3','3','yes'),
 		('13', '4', '6', '1', 'Teach Abroad', '3', '1','2','yes'),
 		('14', '2', '2', '2', 'Volunteer Abroad', '19', '6','1','no'),
 		('15', '7', '7', '3', 'Volunteer Abroad', '23', '7','1','no'),
 		('16', '4', '10', '1', 'Volunteer Abroad', '13', '4','1','no'),
 		('17', '5', '1', '1', 'Volunteer Abroad', '10', '3','2','yes'),
 		('18', '1', '8', '3', 'Intern Abroad', '9', '3','2','yes'),
 		('19', '3', '6', '2', 'Intern Abroad', '4', '1','2','no'),
 		('20', '9', '10', '2', 'Intern Abroad', '17', '5','3','no');

select * from users where email like '%u%';

select count(projects.id) as COUNT, name from projects,organizations where projects.organization_id=organizations.id group by organization_id order by COUNT DESC;

