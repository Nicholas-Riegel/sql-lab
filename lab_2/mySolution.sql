SELECT 
	origin_airports.name as origin_airport, 
	origin_airports.city as origin_city,
	routes.origin_code,
	destination_airports.name as destination_airport,
	destination_airports.city as destination_city,
	routes.dest_code
from airports AS origin_airports 
JOIN routes 
on origin_airports.iata_faa = routes.origin_code 
JOIN airports as destination_airports
on destination_airports.iata_faa = routes.dest_code
where destination_airports.city = 'Paris' 
and origin_airports.city = 'New York';
  
--   origin_airport    | origin_city | origin_code | destination_airport | destination_city | dest_code 
-- ---------------------+-------------+-------------+---------------------+------------------+-----------
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Charles De Gaulle   | Paris            | CDG
--  John F Kennedy Intl | New York    | JFK         | Orly                | Paris            | ORY
--  John F Kennedy Intl | New York    | JFK         | Orly                | Paris            | ORY
--  John F Kennedy Intl | New York    | JFK         | Orly                | Paris            | ORY
-- (14 rows)

SELECT 
	count(*)
from airports AS origin_airports 
JOIN routes 
on origin_airports.iata_faa = routes.origin_code 
JOIN airports as destination_airports
on destination_airports.iata_faa = routes.dest_code
where destination_airports.city = 'Paris' 
and origin_airports.city = 'New York'
group by origin_airports.city;

-- count 
-- -------
--     14
-- (1 row)