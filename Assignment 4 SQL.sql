/*
 Assignment 4.sql
 */
 
DROP TABLE IF EXISTS tblOrgStructure;



CREATE TABLE tblOrgStructure
(
  user_id int PRIMARY KEY,
  user_name varchar(30) NOT NULL,
  title varchar(30),
  supervisor int
  );

INSERT INTO tblOrgStructure ( user_id, user_name, title,supervisor) VALUES ( 1, 'Peter Griffin','CEO',0);
INSERT INTO tblOrgStructure ( user_id, user_name, title,supervisor) VALUES ( 2, 'Dexter Harvey','CFO',1);
INSERT INTO tblOrgStructure ( user_id, user_name, title,supervisor) VALUES ( 3, 'Cara Fox','COO',1);
INSERT INTO tblOrgStructure ( user_id, user_name, title,supervisor) VALUES ( 4, 'Sue White','Executive Director',2);
INSERT INTO tblOrgStructure ( user_id, user_name, title,supervisor) VALUES ( 5, 'Jason Mason','Executive Assistant',4);

SELECT a.user_id, a.user_name, a.title, a.supervisor, b.supervisor_name FROM flights.tblorgstructure a 
left join (select distinct user_id as supervisor, user_name as supervisor_name 
from flights.tblorgstructure) b
on b.supervisor=a.supervisor
order by a.user_id;
