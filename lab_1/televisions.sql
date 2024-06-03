-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it
DROP TABLE televisions;

-- Create a televisions table


--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
Create table televisions (id serial, model_name varchar(20), screen_size decimal, resolution decimal, price decimal, release_date timestamp, photo_url varchar(100));


-- Insert 4 televisions into the tv_models table
Insert into televisions (model_name, screen_size, resolution, price, release_date, photo_url) values ('M43', 123, 456, 555, '2024-06-03 15:30:00', 'https://www.absdf.come');
Insert into televisions (model_name, screen_size, resolution, price, release_date, photo_url) values ('XZ3', 133, 416, 155, '2023-06-03 15:30:00', 'https://www.absff.com');
Insert into televisions (model_name, screen_size, resolution, price, release_date, photo_url) values ('PR3', 163, 466, 525, '2022-06-03 15:30:00', 'https://www.absass.com');
Insert into televisions (model_name, screen_size, resolution, price, release_date, photo_url) values ('LQ3', 193, 436, 553, '2021-06-03 15:30:00', 'https://www.abvvvvsdf.com');

-- Select all entries from the tv_models table
Select * from televisions;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
