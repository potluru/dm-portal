create database dm_portal;

create table person (id int not null auto_increment primary key,last_name varchar(50),first_name varchar(50),middle_name varchar(50),title varchar(10),gender varchar(1),dt_added timestamp default current_timestamp,last_updated timestamp);

create table address (id int not null auto_increment primary key,street_1 varchar(100),street_2 varchar(100),street_3 varchar(100),city varchar(50),state varchar(50),zip varchar(50),country varchar(50),phone varchar(50),dt_added timestamp default current_timestamp,last_updated timestamp);

create table account (id int not null auto_increment primary key,name varchar(100),email varchar(100),person_id int,address_id int,notes varchar(200),source varchar(50),active boolean not null default 1,dt_added timestamp default current_timestamp,last_updated timestamp,foreign key (person_id) references person(id),foreign key (address_id) references address(id),unique(email));

create table email_dist_batch_history (id int not null auto_increment primary key,to_emails longtext,purpose varchar(100),sent_by varchar(100),dt_sent timestamp default current_timestamp,last_updated timestamp);

#############################################################################################################################################

mysql> show columns from account;
+--------------+--------------+------+-----+---------------------+----------------+
| Field        | Type         | Null | Key | Default             | Extra          |
+--------------+--------------+------+-----+---------------------+----------------+
| id           | int(11)      | NO   | PRI | NULL                | auto_increment |
| name         | varchar(100) | YES  |     | NULL                |                |
| email        | varchar(100) | YES  | UNI | NULL                |                |
| person_id    | int(11)      | YES  | MUL | NULL                |                |
| address_id   | int(11)      | YES  | MUL | NULL                |                |
| notes        | varchar(200) | YES  |     | NULL                |                |
| source       | varchar(50)  | YES  |     | NULL                |                |
| active       | tinyint(1)   | NO   |     | 1                   |                |
| dt_added     | timestamp    | NO   |     | CURRENT_TIMESTAMP   |                |
| last_updated | timestamp    | NO   |     | 0000-00-00 00:00:00 |                |
+--------------+--------------+------+-----+---------------------+----------------+
10 rows in set (0.00 sec)

mysql> show columns from address;
+--------------+--------------+------+-----+---------------------+----------------+
| Field        | Type         | Null | Key | Default             | Extra          |
+--------------+--------------+------+-----+---------------------+----------------+
| id           | int(11)      | NO   | PRI | NULL                | auto_increment |
| street_1     | varchar(100) | YES  |     | NULL                |                |
| street_2     | varchar(100) | YES  |     | NULL                |                |
| street_3     | varchar(100) | YES  |     | NULL                |                |
| city         | varchar(50)  | YES  |     | NULL                |                |
| state        | varchar(50)  | YES  |     | NULL                |                |
| zip          | varchar(50)  | YES  |     | NULL                |                |
| country      | varchar(50)  | YES  |     | NULL                |                |
| phone        | varchar(50)  | YES  |     | NULL                |                |
| dt_added     | timestamp    | NO   |     | CURRENT_TIMESTAMP   |                |
| last_updated | timestamp    | NO   |     | 0000-00-00 00:00:00 |                |
+--------------+--------------+------+-----+---------------------+----------------+
11 rows in set (0.00 sec)

mysql> show columns from account;
+--------------+--------------+------+-----+---------------------+----------------+
| Field        | Type         | Null | Key | Default             | Extra          |
+--------------+--------------+------+-----+---------------------+----------------+
| id           | int(11)      | NO   | PRI | NULL                | auto_increment |
| name         | varchar(100) | YES  |     | NULL                |                |
| email        | varchar(100) | YES  | UNI | NULL                |                |
| person_id    | int(11)      | YES  | MUL | NULL                |                |
| address_id   | int(11)      | YES  | MUL | NULL                |                |
| notes        | varchar(200) | YES  |     | NULL                |                |
| source       | varchar(50)  | YES  |     | NULL                |                |
| active       | tinyint(1)   | NO   |     | 1                   |                |
| dt_added     | timestamp    | NO   |     | CURRENT_TIMESTAMP   |                |
| last_updated | timestamp    | NO   |     | 0000-00-00 00:00:00 |                |
+--------------+--------------+------+-----+---------------------+----------------+
10 rows in set (0.00 sec)

mysql> show columns from email_dist_batch_history;
+--------------+--------------+------+-----+---------------------+----------------+
| Field        | Type         | Null | Key | Default             | Extra          |
+--------------+--------------+------+-----+---------------------+----------------+
| id           | int(11)      | NO   | PRI | NULL                | auto_increment |
| to_emails    | longtext     | YES  |     | NULL                |                |
| purpose      | varchar(100) | YES  |     | NULL                |                |
| sent_by      | varchar(100) | YES  |     | NULL                |                |
| dt_sent      | timestamp    | NO   |     | CURRENT_TIMESTAMP   |                |
| last_updated | timestamp    | NO   |     | 0000-00-00 00:00:00 |                |
+--------------+--------------+------+-----+---------------------+----------------+
6 rows in set (0.01 sec)