-- SQL QUERY FOR CARS DETAILS ---
SELECT * FROM cars.car_dekho;

use cars;
-- Read the Data --
select * from car_dekho;
-- Total cars to get total counts --
select count(*) from car_dekho;
-- How many cars available in the year of 2023?
select count(*) from car_dekho where year = 2023;
-- Howmany cars available in 2021, 2022, 2023? --
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2021;
select count(*) from car_dekho where year = 2023;

-- Groupby --
select count(*) from car_dekho where year in (2020,2021,2023) group by year;
-- total of all cars by year--
select year, count(*) from car_dekho group by year;

-- Howmany diesel cars in the 2020? --
select count(*) from car_dekho where year = 2020 and fuel = 'Diesel';

-- Howmany petrol cars in 2021? --
select count(*) from car_dekho where year = 2021 and fuel = 'Petrol';
select count(*) from car_dekho where year = 2021 and fuel = 'CNG';

-- All type of fuel cars come all year --
select year, count(*) from car_dekho where fuel ='Petrol' group by year;
select year, count(*) from car_dekho where fuel ='Diesel' group by year;
select year, count(*) from car_dekho where fuel ='CNG' group by year;

-- Whcih year have more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*) > 100;
select year, count(*) from car_dekho group by year having count(*) < 100;

-- All cars counts between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023;

-- All cars details between 2015 and 2023 --
select * from car_dekho where year between 2015 and 2023;


