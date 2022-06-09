ATTACH DATABASE '{{dbName}}' AS old_db;

INSERT INTO game (idGame, name)
SELECT idGame, name
FROM old_db.game;

INSERT INTO employee_Data (IdEmployee, LastName, FirstName, Gender, Age, Wage)
SELECT idStaff, lastname, firstname, gender, age, wage
from old_db.staff;

INSERT INTO employee_Data (IdEmployee, LastName, FirstName, Gender, Age, Wage)
SELECT idPlayer + (SELECT IdEmployee
                   FROM employee_Data
                   ORDER BY IdEmployee DESC
                   LIMIT 1),
       lastname,
       firstname,
       gender,
       age,
       wage
from old_db.player;

INSERT INTO employee_Data (IdEmployee, LastName, FirstName, Gender, Age, Wage)
SELECT idCoach +
       (SELECT IdEmployee
        FROM employee_Data
        ORDER BY IdEmployee DESC
        LIMIT 1),
       lastname,
       firstname,
       gender,
       age,
       wage
from old_db.coach;

INSERT INTO staff (IdStaff, IdEmployeeData)
SELECT staff.IdStaff, e.IdEmployee
FROM old_db.Staff staff
         JOIN employee_Data e
              ON e.IdEmployee = staff.IdStaff;

INSERT INTO player (IdPlayer, idGame, ranking, IdEmployeeData)
SELECT player.IdPlayer, player.Idgame, player.ranking, e.IdEmployee
FROM old_db.Player player
         JOIN employee_Data e
              ON e.IdEmployee = player.IdPlayer +
                                (SELECT IdStaff
                                 FROM old_db.Staff
                                 ORDER BY IdStaff DESC
                                 LIMIT 1);

INSERT INTO coach (IdCoach,
                   idGame,
                   LicenseDate,
                   IdEmployeeData)
SELECT coach.IdCoach,
       coach.Idgame,
       coach.LicenseDate,
       e.IdEmployee
FROM old_db.Coach coach
         JOIN employee_Data e
              ON e.IdEmployee = coach.IdCoach + (
                  SELECT IdPlayer
                  FROM old_db.Player
                  ORDER BY IdPlayer DESC
                  LIMIT 1);

INSERT INTO place (Name,
                   Address,
                   City)
SELECT DISTINCT Tournament.PlaceName,
                Tournament.Address,
                Tournament.City
FROM old_db.Tournament Tournament;

INSERT INTO tournament
(IdTournament,
 IdPlace,
 IdGame,
 Date,
 Duration)
SELECT Tournament.IdTournament,
       (
           SELECT IdPlace
           FROM place t
           WHERE Tournament.PlaceName = t.Name
             AND Tournament.Address = t.Address
             AND Tournament.City = t.City
       ),
       Tournament.Idgame,
       Tournament.Date,
       Tournament.Duration
FROM old_db.Tournament Tournament;