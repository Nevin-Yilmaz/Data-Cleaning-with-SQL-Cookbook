set global local_infile=true;
SET SQL_SAFE_UPDATES = 0;
DROP SCHEMA IF EXISTS retail_sales;
CREATE SCHEMA retail_sales;
USE retail_sales;

drop table if exists retail_sales;
create table retail_sales
( id int,
month int not null,
year int not null,
naics_code text,
kind_of_business text not null,
industry text not null,
sales int default null,
PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE "/Users/nevinyilmaz/Desktop/us_monthly_retail_sales.csv"
 INTO TABLE retail_sales
          FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS;
UPDATE retail_sales SET sales=NULL where sales=0;
           
select * from retail_sales;