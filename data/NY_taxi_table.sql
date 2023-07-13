set global local_infile=true;
SET SQL_SAFE_UPDATES = 0;
DROP SCHEMA IF EXISTS ny_taxi;
CREATE SCHEMA ny_taxi;
USE ny_taxi;

drop table if exists ny_taxi;
create table ny_taxi
( VendorID INT,
  tpep_pickup_datetime DATETIME,
  tpep_dropoff_datetime DATETIME,
  passenger_count DECIMAL(10, 2),
  trip_distance DECIMAL(10, 2),
  RatecodeID DECIMAL(10, 2),
  store_and_fwd_flag VARCHAR(1),
  PULocationID INT,
  DOLocationID INT,
  payment_type INT,
  fare_amount DECIMAL(10, 2),
  extra DECIMAL(10, 2),
  mta_tax DECIMAL(10, 2),
  tip_amount DECIMAL(10, 2),
  tolls_amount DECIMAL(10, 2),
  improvement_surcharge DECIMAL(10, 2),
  total_amount DECIMAL(10, 2),
  congestion_surcharge DECIMAL(10, 2),
  airport_fee DECIMAL(10, 2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE "/Users/nevinyilmaz/Desktop/2023Jan1-5-NY-taxi.csv"
 INTO TABLE ny_taxi
          FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS;
          



UPDATE ny_taxi SET congestion_surcharge=NULL where RatecodeID=0;
UPDATE ny_taxi SET airport_fee=NULL where RatecodeID=0;
UPDATE ny_taxi SET RatecodeID=NULL where RatecodeID=0;



select * from ny_taxi;