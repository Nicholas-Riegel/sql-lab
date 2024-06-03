-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it
DROP TABLE computers;
-- Create a computers table
Create table computers (id serial, make varchar(20), model varchar(20), cpu_speed decimal, memory_size decimal, price decimal, release_date timestamp, photo_url varchar(100), storage_amount decimal, number_usb_ports int, number_firewire_ports int, number_thunderbolt_ports int);

-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports


-- Insert 4 computers into the computers table
Insert into computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) values ('Apple', 'Macbook 2', 123, 456, 555, '2024-06-03 15:30:00', 'https://www.absdf.come', 444, 3, 4, 5);
Insert into computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) values ('Apple', 'Macbook Air', 126, 466, 455, '2023-06-03 15:30:00', 'https://www.apple.come', 434, 3, 4, 5);
Insert into computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) values ('Dell', 'Notebook 2', 123, 456, 555, '2023-02-03 15:30:00', 'https://www.dell.come', 144, 2, 3, 4);
Insert into computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) values ('Compaq', 'Labptop 2', 123, 456, 555, '2012-06-03 15:30:00', 'https://www.compaq.come', 124, 2, 3, 2);

-- Select all entries from the computers table
SELECT * from computers;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
