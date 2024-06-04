SELECT 
	origin_airports.name as origin_airport, 
	origin_airports.city as origin_city,
	routes.origin_code
from airports AS origin_airports 
JOIN routes 
on origin_airports.iata_faa = routes.origin_code 
where origin_airports.city = 'New York'
JOIN airports as destination_airports
on destination_airports.iata_faa = routes.dest_code
where destination_airports.city = 'Paris';
