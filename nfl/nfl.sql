-- 1. List the names of all NFL teams'

-- select name from teams; 

--          name         
-- ----------------------
--  Buffalo Bills
--  Miami Dolphins
--  New England Patriots
--  New York Jets
--  Baltimore Ravens
--  Cincinnati Bengals
--  Cleveland Browns
--  Pittsburgh Steelers
--  Houston Texans
--  Indianapolis Colts
--  Jacksonville Jaguars
--  Tennessee Titans
--  Denver Broncos
--  Kansas City Chiefs
--  Oakland Raiders
--  San Diego Chargers
--  Dallas Cowboys

-- 2. List the stadium name and head coach of all NFC teams
  
-- select stadium, head_coach from teams;

--             stadium            |   head_coach   
-- -------------------------------+----------------
--  Ralph Wilson Stadium          | Doug Marrone
--  Sun Life Stadium              | Joe Philbin
--  Gillette Stadium              | Bill Belichick
--  MetLife Stadium               | Rex Ryan
--  M&T Bank Stadium              | John Harbaugh
--  Paul Brown Stadium            | Marvin Lewis
--  FirstEnergy Stadium           | Mike Pettine
--  Heinz Field                   | Mike Tomlin
--  NRG Stadium                   | Bill OBrien
--  Lucas Oil Stadium             | Chuck Pagano
--  EverBank Field                | Gus Bradley
--  LP Field                      | Ken Whisenhunt
--  Sports Authority Field        | John Fox
--  Arrowhead Stadium             | Andy Reid
--  O.co Coliseum                 | Tony Sparano
--  Qualcomm Stadium              | Mike McCoy
--  AT&T Stadium                  | Jason Garrett

-- 3. List the head coaches of the AFC South

-- select head_coach from teams where conference = 'AFC' and division = 'South';

--    head_coach   
-- ----------------
--  Bill OBrien
--  Chuck Pagano
--  Gus Bradley
--  Ken Whisenhunt

-- 4. The total number of players in the NFL
  
-- select count(*) from players;

-- count 
-- -------
--   1532
-- (1 row)

-- 5. The team names and head coaches of the NFC North and AFC East

-- select name, head_coach, conference, division from teams where (conference = 'NFC' and division = 'North') or (conference = 'AFC' and division = 'East');

--          name         |   head_coach   | conference | division 
-- ----------------------+----------------+------------+----------
--  Buffalo Bills        | Doug Marrone   | AFC        | East
--  Miami Dolphins       | Joe Philbin    | AFC        | East
--  New England Patriots | Bill Belichick | AFC        | East
--  New York Jets        | Rex Ryan       | AFC        | East
--  Chicago Bears        | Marc Trestman  | NFC        | North
--  Detroit Lions        | Jim Caldwell   | NFC        | North
--  Green Bay Packers    | Mike McCarthy  | NFC        | North
--  Minnesota Vikings    | Mike Zimmer    | NFC        | North
-- (8 rows)

-- 6. The 50 players with the highest salaries

-- select name, salary from players order by salary desc limit 50;

--          name           |  salary  
-- -------------------------+----------
--  Peyton Manning          | 18000000
--  Drew Brees              | 15760000
--  Dwight Freeney          | 14035000
--  Elvis Dumervil          | 14000000
--  Michael Vick            | 12500000
--  Sam Bradford            | 12000000
--  Jared Allen             | 11619850
--  Matt Ryan               | 11500000
--  Matthew Stafford        | 11500000
--  Tamba Hali              | 11250000
--  Jake Long               | 11200000
--  Nnamdi Asomugha         | 11000000
--  Trent Williams          | 11000000
--  Vincent Jackson         | 11000000
--  Cliff Avril             | 10600000
--  Calais Campbell         | 10600000
--  Joe Thomas              | 10500000
--  Brent Grimes            | 10431000
--  Peyton Manning (buyout) | 10400000
--  Chris Long              | 10310000
--  Philip Rivers           | 10200000
--  Jason Smith             | 10000000
--  David Harris            |  9900000
--  Wes Welker              |  9515000
--  Davin Joseph            |  9500000
--  Dwayne Bowe             |  9443000
--  Asante Samuel           |  9400000
--  Brandon Marshall        |  9300000
--  Ndamukong Suh           |  9250000
--  Tony Romo               |  9000000
--  Julius Peppers          |  8900000
--  Anthony Spencer         |  8800000
--  Karlos Dansby           |  8800000
--  Jordan Gross            |  8500000
--  Tyson Jackson           |  8005000
--  Adrian Peterson         |  8000000
--  Champ Bailey            |  8000000
--  Chris Johnson           |  8000000
--  Aaron Rodgers           |  8000000
--  Jason Peters            |  7900000
--  Eric Wright             |  7750000
--  Steve Smith             |  7750000
--  Santonio Holmes         |  7750000
--  Jay Cutler              |  7700000
--  Matt Forte              |  7700000
--  Ray Rice                |  7700000
--  Brian Urlacher          |  7500000
--  Johnathan Joseph        |  7250000
--  Gary Brackett           |  7200000
--  Ed Reed                 |  7200000
-- (50 rows)

-- 7. The average salary of all NFL players
 
--  select avg(salary) from players;

--         avg          
-- ----------------------
--  1579692.539817232376
-- (1 row)

-- 8. The names and positions of players with a salary above 10_000_000

-- select name, position, salary from players where salary > 10000000 order by salary desc;  

--           name           | position |  salary  
-- -------------------------+----------+----------
--  Peyton Manning          | QB       | 18000000
--  Drew Brees              | QB       | 15760000
--  Dwight Freeney          | DE       | 14035000
--  Elvis Dumervil          | DE       | 14000000
--  Michael Vick            | QB       | 12500000
--  Sam Bradford            | QB       | 12000000
--  Jared Allen             | DE       | 11619850
--  Matthew Stafford        | QB       | 11500000
--  Matt Ryan               | QB       | 11500000
--  Tamba Hali              | DE       | 11250000
--  Jake Long               | T        | 11200000
--  Trent Williams          | T        | 11000000
--  Nnamdi Asomugha         | CB       | 11000000
--  Vincent Jackson         | WR       | 11000000
--  Cliff Avril             | DE       | 10600000
--  Calais Campbell         | DE       | 10600000
--  Joe Thomas              | T        | 10500000
--  Brent Grimes            | CB       | 10431000
--  Peyton Manning (buyout) | QB       | 10400000
--  Chris Long              | DE       | 10310000
--  Philip Rivers           | QB       | 10200000

-- 9. The player with the highest salary in the NFL

-- select name, salary from players order by salary desc limit 1; 

--       name      |  salary  
-- ----------------+----------
--  Peyton Manning | 18000000
-- (1 row)

-- 10. The name and position of the first 100 players with the lowest salaries

-- select name, position, salary from players order by salary limit 100;  

--          name          | position | salary 
-- ------------------------+----------+--------
--  Phillip Dillard        |          | 369480
--  Eric Kettani           | RB       | 390000
--  Austin Sylvester       | RB       | 390000
--  Greg Orton             | WR       | 390000
--  Jerrod Johnson         | QB       | 390000
--  McLeod Bethel-Thompson | QB       | 390000
--  Jonathan Crompton      | QB       | 390000
--  Travon Bellamy         | CB       | 390000
--  Caleb King             | RB       | 390000
--  Mike Mohamed           | LB       | 390000
--  Kyle Nelson            | LS       | 390000
--  John Malecki           | G        | 390000
--  Nathan Bussey          | LB       | 390000
--  Robert James           | LB       | 390000
--  Markell Carter         | DE       | 390000
--  Aaron Lavarias         | DT       | 390000
--  Mark Dell              | WR       | 390000
--  Ronald Johnson         | WR       | 390000
--  Doug Worthington       | DT       | 390000
--  Derrick Jones          | WR       | 390000
--  Sealver Siliga         | DT       | 390000
--  Chase Beeler           | C        | 390000
--  Kenny Wiggins          | T        | 390000
--  Konrad Reuland         | TE       | 390000
--  Michael Wilhoite       | LB       | 390000
--  Garrett Chisolm        | G        | 390000
--  Juamorris Stewart      | WR       | 390000
--  Chad Spann             | RB       | 390000
--  Trevis Turner          | T        | 390000
--  Justin Medlock         | KR       | 390000
--  Armon Binns            | WR       | 390000
--  Derek Hall             | T        | 390000
--  Shaky Smithson         | WR       | 390000
--  Armando Allen          | RB       | 390000
--  DAndre Goodwin         | WR       | 390000
--  Jeremy Beal            | DE       | 390000
--  Brett Brackett         | TE       | 390000
--  Shaun Draughn          | RB       | 390000
--  John Clay              | RB       | 390000
--  Tristan Davis          | RB       | 390000
--  Curtis Holcomb         | CB       | 390000
--  Jimmy Young            | WR       | 390000
--  Kevin Cone             | WR       | 390000
--  Cory Nelms             | CB       | 390000
--  Ben Guidugli           | TE       | 390000
--  David Gilreath         | WR       | 390000
--  Dontavia Bogan         | WR       | 390000
--  Joe Hastings           | WR       | 390000
--  Marshall McFadden      | LB       | 390000
--  Kade Weston            | DT       | 390000
--  Kyle Hix               | T        | 390000
--  Mark LeGree            | S        | 390000
--  Mike Hartline          | QB       | 390000
--  Jameson Konz           | WR       | 390000
--  Tyler Beiler           |          | 390000
--  Mike Blanc             | DT       | 390000
--  Corbin Bryant          | DT       | 390000
--  Michael Jasper         | DT       | 390000
--  Mike Rivera            | LB       | 390000
--  Pat Devlin             | QB       | 390000
--  Jerome Messam          | RB       | 390000
--  Jamie McCoy            | TE       | 390000
--  Lestar Jean            | WR       | 390000
--  Malcolm Williams       | CB       | 390000
--  Ricky Sapp             | DE       | 390000
--  Rashad Carmichael      | CB       | 390000
--  Alex Silvestro         | DT       | 390000
--  Adam Weber             | QB       | 390000
--  Adam Grant             | T        | 390000
--  Jammie Kirlew          | DE       | 390000
--  Joe Reitz              | T        | 405000
--  Brandon Browner        | CB       | 415000
--  Jeff Byers             | C        | 415000
--  Jed Collins            | TE       | 415000
--  Aaron Berry            | CB       | 415000
--  Logan Payne            | WR       | 415000
--  Marcus Sherels         | CB       | 415000
--  T.J. Conley            | PR       | 415000
--  Cameron Sheffield      | LB       | 415000
--  Kyle Bosworth          | LB       | 415000
--  Garrett McIntyre       | DT       | 415000
--  John Estes             | C        | 415000
--  Thomas Austin          | G        | 415000
--  Emmanuel Stephens      | DT       | 415000
--  Markus White           | DE       | 440000
--  Ricardo Matthews       | DT       | 450000
--  Quinten Lawrence       | WR       | 465000
--  Bilal Powell           | RB       | 465000
--  Taylor Boggs           | C        | 465000
--  Kamar Aiken            | WR       | 465000
--  Dexter Jackson         | WR       | 465000
--  Justin Rogers          | CB       | 465000
--  Johnny White           | RB       | 465000
--  Eron Riley             | WR       | 465000
--  Tracy Wilson           | CB       | 465000
--  DaNorris Searcy        | S        | 465000
--  Chris White            | LB       | 465000
--  Sterling Moore         | CB       | 465000
--  Chris Hairston         | T        | 465000
--  Andrew Hawkins         | WR       | 465000
-- (100 rows)

-- 11. The average salary for a DE in the nfl
  
-- select avg(salary) from players where position = 'DE';

--          avg          
-- ----------------------
--  2161326.377049180328
-- (1 row)

-- 12. The names of all the players on the Buffalo Bills

-- select players.name as player_name, teams.name as team_name from players join teams on players.team_id = teams.id where teams.name = 'Buffalo Bills';

--   player_name     |   team_name  
-- -------------------+---------------
--  Mario Williams     | Buffalo Bills
--  Drayton Florence   | Buffalo Bills
--  Shawne Merriman    | Buffalo Bills
--  Dwan Edwards       | Buffalo Bills
--  Chris Kelsay       | Buffalo Bills
--  Kyle Williams      | Buffalo Bills
--  Nick Barnett       | Buffalo Bills
--  Spencer Johnson    | Buffalo Bills
--  Ryan Fitzpatrick   | Buffalo Bills
--  Steve Johnson      | Buffalo Bills
--  Tyler Thigpen      | Buffalo Bills
--  Lee Evans (Buyout) | Buffalo Bills
--  Brad Smith         | Buffalo Bills
--  Fred Jackson       | Buffalo Bills
--  Scott Chandler     | Buffalo Bills
--  George Wilson      | Buffalo Bills
--  Erik Pears         | Buffalo Bills
--  Leodis McKelvin    | Buffalo Bills
--  Brian Moorman      | Buffalo Bills
--  Terrence McGee     | Buffalo Bills
--  Marcell Dareus     | Buffalo Bills
--  Chad Rinehart      | Buffalo Bills
--  Kraig Urbik        | Buffalo Bills
--  Rian Lindell       | Buffalo Bills
--  Kirk Morrison      | Buffalo Bills
--  Corey McIntyre     | Buffalo Bills
--  C.J. Spiller       | Buffalo Bills
--  Garrison Sanborn   | Buffalo Bills
--  Eric Wood          | Buffalo Bills
--  Lionel Dotson      | Buffalo Bills
--  Ruvell Martin      | Buffalo Bills
--  Andy Levitre       | Buffalo Bills
--  Jairus Byrd        | Buffalo Bills
--  Jarron Gilbert     | Buffalo Bills
--  Kyle Moore         | Buffalo Bills
--  Aaron Williams     | Buffalo Bills
--  Donald Jones       | Buffalo Bills
--  Fendi Onobun       | Buffalo Bills
--  Kellen Heard       | Buffalo Bills
--  Mike Caussin       | Buffalo Bills
--  Naaman Roosevelt   | Buffalo Bills
--  Alex Carrington    | Buffalo Bills
--  Arthur Moats       | Buffalo Bills
--  Colin Brown        | Buffalo Bills
--  Cordaro Howard     | Buffalo Bills
--  Dan Batten         | Buffalo Bills
--  David Nelson       | Buffalo Bills
--  Marcus Easley      | Buffalo Bills
--  Sam Young          | Buffalo Bills
--  Torell Troup       | Buffalo Bills
--  Kelvin Sheppard    | Buffalo Bills
--  Lee Smith          | Buffalo Bills
--  Chris Hairston     | Buffalo Bills
--  Chris White        | Buffalo Bills
--  DaNorris Searcy    | Buffalo Bills
--  Johnny White       | Buffalo Bills
--  Justin Rogers      | Buffalo Bills
--  Kamar Aiken        | Buffalo Bills
--  Michael Jasper     | Buffalo Bills
-- (59 rows)


-- 13. The total salary of all players on the New York Giants
  
-- select sum(salary) from players join teams on players.team_id = teams.id where teams.name = 'New York Giants';

--   sum    
-- ----------
--  74179466
-- (1 row)

-- 14. The player with the lowest salary on the Green Bay Packers
 
-- select players.name as player_name, salary, teams.name as team_name from players join teams on players.team_id = teams.id where teams.name = 'Green Bay Packers' order by salary limit 1;

--  player_name   | salary |     team_name     
-- ----------------+--------+-------------------
--  Shaky Smithson | 390000 | Green Bay Packers
-- (1 row)