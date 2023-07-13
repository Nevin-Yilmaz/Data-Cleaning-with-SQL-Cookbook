set global local_infile=true;
SET SQL_SAFE_UPDATES = 0;
DROP SCHEMA IF EXISTS la_crime;
CREATE SCHEMA la_crime;
USE la_crime;


drop table if exists crime;
CREATE TABLE crime (
  id int(11) NOT NULL AUTO_INCREMENT,
  crime_datetime datetime,
  area varchar(255),
  crime_desc varchar(255),
  victim_age int(11),
  victim_gender varchar(10),
  victim_nationality varchar(50),
  premise_desc varchar(255),
  weapon_desc varchar(255),
  status varchar(20),
  crime_cd1 varchar(10),
  crime_cd2 varchar(10),
  crime_cd3 varchar(10),
  crime_cd4 varchar(10),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


LOAD DATA LOCAL INFILE "/Users/nevinyilmaz/Desktop/los_angeles_crime_data_2020-2022.csv"
 INTO TABLE crime
          FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS;
          
UPDATE crime SET victim_age=NULL where victim_age<=0;
UPDATE crime SET victim_gender='X' where victim_gender = 'H';
UPDATE crime SET victim_gender='X' where victim_gender = '';
UPDATE crime SET victim_nationality = NULL where victim_nationality = '';
UPDATE crime SET premise_desc = NULL where premise_desc = '';
UPDATE crime SET weapon_desc = NULL where weapon_desc = '';
UPDATE crime SET crime_cd1 = NULL where crime_cd1= '';
UPDATE crime SET crime_cd2 = NULL where crime_cd2= '';
UPDATE crime SET crime_cd3 = NULL where crime_cd3= '';
UPDATE crime SET crime_cd4 = NULL where crime_cd4 = '';

select * from crime;





