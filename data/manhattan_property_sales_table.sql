set global local_infile=true;
DROP SCHEMA IF EXISTS property_sales;
CREATE SCHEMA property_sales;
USE property_sales;

drop table if exists manhattan_sales;
create table manhattan_sales
( id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
neighborhood text not null,
building_class text not null,
tax_class text,
address text not null,
zipcode text not null,
residential_units int default null,
commercial_units int  default null,
total_units int  default null,
land_square_feet int  default null,
gross_square_feet int  default null,
year_built int default null,
sale_price int  default null,
sale_date text,
PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE "/Users/nevinyilmaz/Desktop/manhattan_property_sales.csv"
 INTO TABLE manhattan_sales
          FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS

          ;
           
select * from manhattan_sales;