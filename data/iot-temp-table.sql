set global local_infile=true;
SET SQL_SAFE_UPDATES = 0;
DROP SCHEMA IF EXISTS iot_temp;
CREATE SCHEMA iot_temp;
USE iot_temp;

drop table if exists iot_temp;
create table iot_temp
( id VARCHAR(255),
  room_id VARCHAR(255),
  noted_date DATETIME,
  temp INT,
  location VARCHAR(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE "/Users/nevinyilmaz/Desktop/IOT-temp.csv"
 INTO TABLE iot_temp
          FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS;

           
select * from iot_temp;