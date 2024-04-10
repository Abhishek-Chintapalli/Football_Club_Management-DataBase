---------------------------------------------- MANAGER TABLE --------------------------------------------------------
USE Football_Club_Management;
GO

INSERT INTO Manager (ManagerID, ManagerName, ManagerPhoneNumber, ManagerEmail, ExperienceYears) VALUES
(785, 'John Roberts', '1479266760', 'johnroberts@example.com', 4),
(389, 'James Washington', '5014161832', 'jameswashington@example.com', 15),
(674, 'Lisa Kane', '7913667623', 'lisakane@example.com', 7),
(226, 'Christopher Rose MD', '7470949594', 'christopherrose@example.com', 25),
(496, 'Eric Sanchez', '5561208230', 'ericsanchez@example.com', 13),
(203, 'Diana Collins', '5258109902', 'dianacollins@example.com', 3),
(846, 'David Miller', '2299349994', 'davidmiller@example.com', 15),
(233, 'Christian Hernandez', '8498729400', 'christianhernandez@example.com', 12),
(763, 'Erin White', '9350538243', 'erinwhite@example.com', 9),
(555, 'Carl Gomez', '13695117337', 'carlgomez@example.com', 18),
(400, 'David Smith', '2961320270', 'davidsmith@example.com', 15),
(715, 'Holly Guzman', '7398530633', 'hollyguzman@example.com', 3);


SELECT * FROM Manager;
------------------------------------------------CLUB TABLE -------------------------------------------------------------
INSERT INTO Club (Club_ID, ClubName, Location,ManagerID) VALUES 
(101, 'FC Barcelona', 'Barcelona', 785),
(102, 'Manchester City', 'Manchester', 389),
(103, 'Liverpool FC', 'Liverpool', 674),
(104, 'Real Madrid', 'Madrid', 226),
(105, 'Paris Saint-Germain', 'Paris', 496),
(106, 'Bayern Munich', 'Munich', 203),
(107, 'Juventus', 'Turin', 846),
(108, 'Chelsea FC', 'London', 233),
(109, 'Arsenal FC', 'London', 763),
(110, 'Borussia Dortmund', 'Dortmund', 555),
(111, 'Atletico Madrid', 'Madrid', 400),
(112, 'AC Milan', 'Milan', 715);

SELECT * FROM Club;


-------------------------------------------------- CONTRACT TABLE ------------------------------------------------------------------

--------------------------- Coach level Contracts--------------------------------------------------
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(401, '2021-01-01', '2023-12-31', 'Complete control over first team selections, youth development focus, and a performance-based bonus structure.'),
(402, '2022-01-01', '2024-06-30', 'Authority in player transfers, emphasis on maintaining an attacking playing style, with bonuses linked to European competition success.'),
(403, '2020-07-01', '2023-06-30', 'Responsibility for team tactics and training, bonuses for domestic league and European success, with additional incentives for developing academy players.'),
(404, '2021-06-01', '2024-05-31', 'Full autonomy in coaching staff appointments, incentives for achieving domestic and international titles, with a focus on promoting youth players.'),
(405, '2021-08-01', '2023-07-31', 'Control over team strategy and playstyle, significant bonuses for league success and Champions League progress, with terms for extending based on achievements.'),
(406, '2022-07-01', '2025-06-30', 'Emphasis on innovative tactics and youth integration, performance-based bonuses, and additional incentives for winning the Champions League.'),
(407, '2021-09-01', '2024-08-31', 'Flexibility in tactical approach, bonuses for Serie A and Champions League achievements, and a clause for automatic renewal upon reaching certain milestones.'),
(408, '2022-05-01', '2024-04-30', 'Freedom in tactical decisions, incentives for Premier League and FA Cup victories, and bonuses for reaching the Champions League semi-finals.'),
(409, '2022-01-15', '2024-12-31', 'Support for a youth-centric philosophy, bonuses tied to league performance and European qualification, with additional benefits for developing homegrown talent.'),
(410, '2022-08-01', '2025-07-31', 'Commitment to aggressive pressing and fast transitions, with rewards for Bundesliga success and deep runs in European competitions.'),
(411, '2021-07-01', '2023-06-30', 'Guaranteed support in squad building, bonuses for La Liga victories and Champions League performance, with a focus on defensive solidity.'),
(412, '2022-03-01', '2024-02-28', 'Mandate to maintain a competitive squad, incentives for securing Scudetto and advancing in the Champions League, with emphasis on squad harmony and player development.'),
(413, '2024-01-01', '2026-12-31', '2-year contract with club performance bonuses and an annual review for potential extension.'),
(414, '2024-01-01', '2026-12-31', 'Includes clauses for team development, performance incentives, and mutual break options.'),
(415, '2024-01-01', '2026-12-31', 'Focus on youth development, with bonuses for league standings and cup victories.'),
(416, '2024-01-01', '2026-12-31', 'Emphasis on international competition success, with specific performance bonuses.'),
(417, '2024-01-01', '2026-12-31', 'Contract includes base salary plus incentives for achieving European competition milestones.'),
(418, '2024-01-01', '2026-12-31', 'Annual performance bonuses, with additional incentives for player development milestones.'),
(419, '2024-01-01', '2026-12-31', 'Includes significant emphasis on team tactical development and achieving top domestic league position.'),
(420, '2024-01-01', '2026-12-31', 'Performance-based contract focusing on league performance, with bonuses for cup runs.'),
(421, '2024-01-01', '2026-12-31', 'Base salary with additional bonuses for league win, cup success, and player development.'),
(422, '2024-01-01', '2026-12-31', 'Includes clauses for community engagement and team branding, alongside competitive performance incentives.'),
(423, '2024-01-01', '2026-12-31', 'Focuses on defensive strength and league position, with incentives for reaching defensive milestones.'),
(424, '2024-01-01', '2026-12-31', 'Contract prioritizes team stability, player growth, and has incentives for accolades in league and cups.');

SELECT * FROM Contract;
----------------------------- Team Contracts ----------------------------------------------------------------------------
-- FC Barcelona
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(425, '2024-01-01', '2026-12-31', 'FC Barcelona Team: Min 2 Years.');
-- Manchester City
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(426, '2024-01-01', '2026-12-31', 'Manchester City Team: Min 3 Years.');
-- Liverpool FC
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(427, '2024-01-01', '2026-12-31', 'Liverpool FC Team: Min 1 Year.');
-- Real Madrid
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(428, '2024-01-01', '2026-12-31', 'Real Madrid Team: Transfer available only after 2 Summers.');
-- Paris Saint-Germain
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(429, '2024-01-01', '2026-12-31', 'Paris Saint-Germain Team: Market value should be more than 10 Million.');
-- Bayern Munich
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(430, '2024-01-01', '2026-12-31', 'Bayern Munich Team: Atleast one year Playing in the academy.');
-- Juventus
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(431, '2024-01-01', '2026-12-31', 'Juventus Team: Atleast 3 training sessions to play in a match.');
-- Chelsea FC
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(432, '2024-01-01', '2026-12-31', 'Chelsea FC Team: 50% Should be an English Player.');
-- Arsenal FC
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(433, '2024-01-01', '2026-12-31', 'Arsenal FC Team: Should have a Min Playtime of 270 minutes per seasion');
-- Borussia Dortmund
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(434, '2024-01-01', '2026-12-31', 'Borussia Dortmund Team: Should pass Yoyo fitness test in order to play.');
-- Atletico Madrid
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(435, '2024-01-01', '2026-12-31', 'Atletico Madrid Team: Should adapt to teams style of playing.');
-- AC Milan
INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(436, '2024-01-01', '2026-12-31', 'AC Milan Team: Should agree for immediate contract renewal before expiry.');


SELECT * FROM "Contract";

------------------------------------------------------ COACH TABLE -------------------------------------------------------------------------

INSERT INTO Coach (CoachID, Name, Phone_Number, Email, DateOfBirth, TacticalStyle, CoachType, Contract_Id) VALUES
(301, 'Xavi Hernández', '0000000001', 'xavi@fcbarcelona.com', '1979-01-25', 'Possession', 'First Team', 401),
(302, 'Pep Guardiola', '0000000002', 'pep@mancity.com', '1971-01-18', 'Tiki-taka', 'First Team', 402),
(303, 'Jürgen Klopp', '0000000003', 'klopp@liverpoolfc.com', '1967-06-16', 'Gegenpressing', 'First Team', 403),
(304, 'Carlo Ancelotti', '0000000004', 'carlo@realmadrid.com', '1959-06-10', 'Flexible', 'First Team', 404),
(305, 'Mauricio Pochettino', '0000000005', 'pochettino@psg.com', '1972-03-02', 'High-press', 'First Team', 405),
(306, 'Julian Nagelsmann', '0000000006', 'nagelsmann@bayern.com', '1987-07-23', 'Rotation', 'First Team', 406),
(307, 'Massimiliano Allegri', '0000000007', 'allegri@juventus.com', '1967-08-11', 'Pragmatic', 'First Team', 407),
(308, 'Thomas Tuchel', '0000000008', 'tuchel@chelseafc.com', '1973-08-29', 'Dynamic', 'First Team', 408),
(309, 'Mikel Arteta', '0000000009', 'arteta@arsenal.com', '1982-03-26', 'Ball Control', 'First Team', 409),
(310, 'Marco Rose', '0000000010', 'rose@bvb.com', '1976-09-11', 'Counter-pressing', 'First Team', 410),
(311, 'Diego Simeone', '0000000011', 'simeone@atleticomadrid.com', '1970-04-28', 'Defensive', 'First Team', 411),
(312, 'Stefano Pioli', '0000000012', 'pioli@acmilan.com', '1965-10-20', 'Balanced', 'First Team', 412);

INSERT INTO Coach (CoachID, Name, Phone_Number, Email, DateOfBirth, TacticalStyle, CoachType) VALUES
(313, 'Helena Costa', '0000001313', 'helena@fcbarcelona.com', '1978-04-15', 'Possession', 'Women''s Team'),
(314, 'Jill Ellis', '0000001314', 'jill@mancity.com', '1966-09-06', 'Counter-attack', 'Women''s Team'),
(315, 'Sarina Wiegman', '0000001315', 'sarina@liverpoolfc.com', '1969-10-26', 'High-press', 'Women''s Team'),
(316, 'Carlo Ancelotti', '0000001316', 'carlo@realmadrid.com', '1959-06-10', 'Flexible', 'Women''s Team'),
(317, 'Mauricio Pochettino', '0000001317', 'pochettino@psg.com', '1972-03-02', 'High-press', 'Women''s Team'),
(318, 'Julian Nagelsmann', '0000001318', 'nagelsmann@bayern.com', '1987-07-23', 'Rotation', 'Women''s Team'),
(319, 'Massimiliano Allegri', '0000001319', 'allegri@juventus.com', '1967-08-11', 'Pragmatic', 'Women''s Team'),
(320, 'Thomas Tuchel', '0000001320', 'tuchel@chelseafc.com', '1973-08-29', 'Dynamic', 'Women''s Team'),
(321, 'Mikel Arteta', '0000001321', 'arteta@arsenal.com', '1982-03-26', 'Ball Control', 'Women''s Team'),
(322, 'Marco Rose', '0000001322', 'rose@bvb.com', '1976-09-11', 'Counter-pressing', 'Women''s Team'),
(323, 'Diego Simeone', '0000001323', 'simeone@atleticomadrid.com', '1970-04-28', 'Defensive', 'Women''s Team'),
(324, 'Stefano Pioli', '0000001324', 'pioli@acmilan.com', '1965-10-20', 'Balanced', 'Women''s Team');


UPDATE Coach SET Contract_Id = 413 WHERE CoachID = 313;
UPDATE Coach SET Contract_Id = 414 WHERE CoachID = 314;
UPDATE Coach SET Contract_Id = 415 WHERE CoachID = 315;
UPDATE Coach SET Contract_Id = 416 WHERE CoachID = 316;
UPDATE Coach SET Contract_Id = 417 WHERE CoachID = 317;
UPDATE Coach SET Contract_Id = 418 WHERE CoachID = 318;
UPDATE Coach SET Contract_Id = 419 WHERE CoachID = 319;
UPDATE Coach SET Contract_Id = 420 WHERE CoachID = 320;
UPDATE Coach SET Contract_Id = 421 WHERE CoachID = 321;
UPDATE Coach SET Contract_Id = 422 WHERE CoachID = 322;
UPDATE Coach SET Contract_Id = 423 WHERE CoachID = 323;
UPDATE Coach SET Contract_Id = 424 WHERE CoachID = 324;

SELECT * FROM Coach;

------------------------------------------------------ TEAMS ----------------------------------------------------------
INSERT INTO Team (Team_ID, TeamName, TeamLocation, CoachID, Club_ID, AgeLevel) VALUES
(501, 'FC Barcelona Team', 'Barcelona', 301, 101, 'Senior'),
(502, 'Manchester City Team', 'Manchester', 302, 102, 'Senior'),
(503, 'Liverpool FC Team', 'Liverpool', 303, 103, 'Senior'),
(504, 'Real Madrid Team', 'Madrid', 304, 104, 'Senior'),
(505, 'Paris Saint-Germain Team', 'Paris', 305, 105, 'Senior'),
(506, 'Bayern Munich Team', 'Munich', 306, 106, 'Senior'),
(507, 'Juventus Team', 'Turin', 307, 107, 'Senior'),
(508, 'Chelsea FC Team', 'London', 308, 108, 'Senior'),
(509, 'Arsenal FC Team', 'London', 309, 109, 'Senior'),
(510, 'Borussia Dortmund Team', 'Dortmund', 310, 110, 'Senior'),
(511, 'Atletico Madrid Team', 'Madrid', 311, 111, 'Senior'),
(512, 'AC Milan Team', 'Milan', 312, 112, 'Senior');

UPDATE Team
SET TeamGender = 'Men';

INSERT INTO Team (Team_ID, TeamName, TeamLocation, CoachID, Club_ID, AgeLevel, TeamGender) VALUES
(601, 'FC Barcelona Women''s Team', 'Barcelona', NULL, 101, 'Professional', 'Women'),
(602, 'Manchester City Women''s Team', 'Manchester', NULL, 102, 'Professional', 'Women'),
(603, 'Liverpool FC Women''s Team', 'Liverpool', NULL, 103, 'Professional', 'Women'),
(604, 'Real Madrid Women''s Team', 'Madrid', NULL, 104, 'Professional', 'Women'),
(605, 'Paris Saint-Germain Women''s Team', 'Paris', NULL, 105, 'Professional', 'Women'),
(606, 'Bayern Munich Women''s Team', 'Munich', NULL, 106, 'Professional', 'Women'),
(607, 'Juventus Women''s Team', 'Turin', NULL, 107, 'Professional', 'Women'),
(608, 'Chelsea FC Women''s Team', 'London', NULL, 108, 'Professional', 'Women'),
(609, 'Arsenal FC Women''s Team', 'London', NULL, 109, 'Professional', 'Women'),
(610, 'Borussia Dortmund Women''s Team', 'Dortmund', NULL, 110, 'Professional', 'Women'),
(611, 'Atletico Madrid Women''s Team', 'Madrid', NULL, 111, 'Professional', 'Women'),
(612, 'AC Milan Women''s Team', 'Milan', NULL, 112, 'Professional', 'Women');


UPDATE Team SET CoachID = 313 WHERE Team_ID = 601;
UPDATE Team SET CoachID = 314 WHERE Team_ID = 602;
UPDATE Team SET CoachID = 315 WHERE Team_ID = 603;
UPDATE Team SET CoachID = 316 WHERE Team_ID = 604;
UPDATE Team SET CoachID = 317 WHERE Team_ID = 605;
UPDATE Team SET CoachID = 318 WHERE Team_ID = 606;
UPDATE Team SET CoachID = 319 WHERE Team_ID = 607;
UPDATE Team SET CoachID = 320 WHERE Team_ID = 608;
UPDATE Team SET CoachID = 321 WHERE Team_ID = 609;
UPDATE Team SET CoachID = 322 WHERE Team_ID = 610;
UPDATE Team SET CoachID = 323 WHERE Team_ID = 611;
UPDATE Team SET CoachID = 324 WHERE Team_ID = 612;

SELECT * From Team;

--------------------------------------------------------------------- PLAYERS --------------------------------------------------------------------

-- Generate 11 hypothetical Barcelona players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(1001, 'Lionel Messi', 'lionelmessi@barca.com', '1234567891', '1987-06-24', 501, 425),
(1002, 'Gerard Piqué', 'gerardpique@barca.com', '9876543211', '1987-02-02', 501, 425),
(1003, 'Jordi Alba', 'jordialba@barca.com', '7894561231', '1989-03-21', 501, 425),
(1004, 'Frenkie de Jong', 'frenkiedejong@barca.com', '3216549871', '1997-05-12', 501, 425),
(1005, 'Pedri', 'pedri@barca.com', '9871236541', '2002-11-25', 501, 401),
(1006, 'Marc-André ter Stegen', 'terstegen@barca.com', '6547891231', '1992-04-30', 501, 425),
(1007, 'Ousmane Dembélé', 'ousmanedembele@barca.com', '4567891231', '1997-05-15', 501, 425),
(1008, 'Sergi Roberto', 'sergiroberto@barca.com', '7891234561', '1992-02-07', 501, 425),
(1009, 'Ansu Fati', 'ansufati@barca.com', '1237894561', '2002-10-31', 501, 425),
(1010, 'Ronald Araújo', 'ronaldaraujo@barca.com', '7894563211', '1999-03-07', 501, 425),
(1011, 'Sergio Busquets', 'sergiobusquets@barca.com', '6541237891', '1988-07-16', 501, 425);

-- Generate 11 hypothetical Manchester City players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(2001, 'Kevin De Bruyne', 'kevindebruyne@mancity.com', '1234567893', '1991-06-28', 502, 426),
(2002, 'Raheem Sterling', 'raheemsterling@mancity.com', '9876543212', '1994-12-08', 502, 426),
(2003, 'Ruben Dias', 'rubendias@mancity.com', '7894561232', '1997-05-14', 502, 426),
(2004, 'Phil Foden', 'philfoden@mancity.com', '3216549872', '2000-05-28', 502, 426),
(2005, 'Ederson', 'ederson@mancity.com', '9871236542', '1993-08-17', 502, 426),
(2006, 'Aymeric Laporte', 'aymericlaporte@mancity.com', '6547891232', '1994-05-27', 502, 426),
(2007, 'Riyad Mahrez', 'riyadmahrez@mancity.com', '4567891232', '1991-02-21', 502, 426),
(2008, 'João Cancelo', 'joaocancelo@mancity.com', '7891234562', '1994-05-27', 502, 426),
(2009, 'Bernardo Silva', 'bernardosilva@mancity.com', '1237894562', '1994-08-10', 502, 426),
(2010, 'Gabriel Jesus', 'gabrieljesus@mancity.com', '7894563212', '1997-04-03', 502, 426),
(2011, 'Ilkay Gündogan', 'ilkaygundogan@mancity.com', '6541237892', '1990-10-24', 502, 426);

-- Generate 11 hypothetical Liverpool players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(3001, 'Mohamed Salah', 'mohamedsalah@liverpool.com', '1234567894', '1992-06-15', 503, 427),
(3002, 'Sadio Mané', 'sadiomane@liverpool.com', '9876543213', '1992-04-10', 503, 427),
(3003, 'Virgil van Dijk', 'virgilvandijk@liverpool.com', '7894561233', '1991-07-08', 503, 427),
(3004, 'Alisson Becker', 'alissonbecker@liverpool.com', '3216549873', '1992-10-02', 503, 427),
(3005, 'Fabinho', 'fabinho@liverpool.com', '9871236543', '1993-10-23', 503, 427),
(3006, 'Trent Alexander-Arnold', 'trentalexanderarnold@liverpool.com', '6547891233', '1998-10-07', 503, 427),
(3007, 'Andrew Robertson', 'andrewrobertson@liverpool.com', '4567891233', '1994-03-11', 503, 427),
(3008, 'Jordan Henderson', 'jordanhenderson@liverpool.com', '7891234563', '1990-06-17', 503, 427),
(3009, 'Roberto Firmino', 'robertofirmino@liverpool.com', '1237894563', '1991-10-02', 503, 427),
(3010, 'Diogo Jota', 'diogojota@liverpool.com', '7894563213', '1996-12-04', 503, 427),
(3011, 'Thiago Alcântara', 'thiagoalcantara@liverpool.com', '6541237893', '1991-04-11', 503, 427);

-- Generate 11 hypothetical Real Madrid players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(4001, 'Karim Benzema', 'karimbenzema@rma.com', '1234567895', '1987-12-19', 504, 428),
(4002, 'Thibaut Courtois', 'thibautcourtois@rma.com', '9876543214', '1992-05-11', 504, 428),
(4003, 'Sergio Ramos', 'sergioramos@rma.com', '7894561234', '1986-03-30', 504, 428),
(4004, 'Casemiro', 'casemiro@rma.com', '3216549874', '1992-02-23', 504, 428),
(4005, 'Toni Kroos', 'tonikroos@rma.com', '9871236544', '1990-01-04', 504, 428),
(4006, 'Luka Modric', 'lukamodric@rma.com', '6547891234', '1985-09-09', 504, 428),
(4007, 'Vinicius Junior', 'viniciusjunior@rma.com', '4567891234', '2000-07-12', 504, 428),
(4008, 'Marco Asensio', 'marcoasensio@rma.com', '7891234564', '1996-01-21', 504, 428),
(4009, 'Ferland Mendy', 'ferlandmendy@rma.com', '1237894564', '1995-06-08', 504, 428),
(4010, 'Rodrygo Goes', 'rodrygogoes@rma.com', '7894563214', '2001-01-09', 504, 428),
(4011, 'Lucas Vázquez', 'lucasvazquez@rma.com', '6541237894', '1991-07-01', 504, 428);

-- Generate 11 hypothetical PSG players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(5001, 'Kylian Mbappé', 'kylianmbappe@psg.com', '1234567896', '1998-12-20', 505, 429),
(5002, 'Neymar Jr.', 'neymarjr@psg.com', '9876543215', '1992-02-05', 505, 429),
(5003, 'Marco Verratti', 'marcoverratti@psg.com', '7894561235', '1992-11-05', 505, 429),
(5004, 'Angel Di Maria', 'angeldimaria@psg.com', '3216549875', '1988-02-14', 505, 429),
(5005, 'Marquinhos', 'marquinhos@psg.com', '9871236545', '1994-05-14', 505, 429),
(5006, 'Achraf Hakimi', 'achrafhakimi@psg.com', '6547891235', '1998-11-04', 505, 429),
(5007, 'Presnel Kimpembe', 'presnelkimpembe@psg.com', '4567891235', '1995-08-13', 505, 429),
(5008, 'Leandro Paredes', 'leandroparedes@psg.com', '7891234565', '1994-06-29', 505, 429),
(5009, 'Keylor Navas', 'keylornavas@psg.com', '1237894565', '1986-12-15', 505, 429),
(5010, 'Mauro Icardi', 'mauroicardi@psg.com', '7894563215', '1993-02-19', 505, 429),
(5011, 'Julian Draxler', 'juliandraxler@psg.com', '6541237895', '1993-09-20', 505, 429);

-- Generate 11 hypothetical Bayern Munich players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(6001, 'Robert Lewandowski', 'robertlewandowski@baymun.com', '1234567897', '1988-08-21', 506, 430),
(6002, 'Manuel Neuer', 'manuelneuer@baymun.com', '9876543216', '1986-03-27', 506, 430),
(6003, 'Joshua Kimmich', 'joshuakimmich@baymun.com', '7894561236', '1995-02-08', 506, 430),
(6004, 'Thomas Müller', 'thomasmuller@baymun.com', '3216549876', '1989-09-13', 506, 430),
(6005, 'Leon Goretzka', 'leongoretzka@baymun.com', '9871236546', '1995-02-06', 506, 430),
(6006, 'David Alaba', 'davidalaba@baymun.com', '6547891236', '1992-06-24', 506, 430),
(6007, 'Leroy Sané', 'leroysane@baymun.com', '4567891236', '1996-01-11', 506, 430),
(6008, 'Alphonso Davies', 'alphonsodavies@baymun.com', '7891234566', '2000-11-02', 506, 430),
(6009, 'Serge Gnabry', 'sergegnabry@baymun.com', '1237894566', '1995-07-14', 506, 430),
(6010, 'Kingsley Coman', 'kingsleycoman@baymun.com', '7894563216', '1996-06-13', 506, 430),
(6011, 'Benjamin Pavard', 'benjaminpavard@baymun.com', '6541237896', '1996-03-28', 506, 430);

-- Generate 11 hypothetical Juventus players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(7001, 'Cristiano Ronaldo', 'cristianoronaldo@juventus.com', '1234567898', '1985-02-05', 507, 431),
(7002, 'Giorgio Chiellini', 'giorgiochiellini@juventus.com', '9876543217', '1984-08-14', 507, 431),
(7003, 'Paulo Dybala', 'paulodybala@juventus.com', '7894561237', '1993-11-15', 507, 431),
(7004, 'Leonardo Bonucci', 'leonardobonucci@juventus.com', '3216549877', '1987-05-01', 507, 431),
(7005, 'Federico Chiesa', 'federicochiesa@juventus.com', '9871236547', '1997-10-25', 507, 431),
(7006, 'Weston McKennie', 'westonmckennie@juventus.com', '6547891237', '1998-08-28', 507, 431),
(7007, 'Dejan Kulusevski', 'dejankulusevski@juventus.com', '4567891237', '2000-04-25', 507, 431),
(7008, 'Arthur Melo', 'arthurmelo@juventus.com', '7891234567', '1996-08-12', 507, 431),
(7009, 'Juan Cuadrado', 'juancuadrado@juventus.com', '1237894567', '1988-05-26', 507, 431),
(7010, 'Matthijs de Ligt', 'matthijsdeligt@juventus.com', '7894563217', '1999-08-12', 507, 431),
(7011, 'Alex Sandro', 'alexsandro@juventus.com', '6541237897', '1991-01-26', 507, 431);

-- Generate 11 hypothetical Chelsea players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(8001, 'N,Golo Kanté', 'ngolokante@chelsea.com', '1234567899', '1991-03-29', 508, 432),
(8002, 'Mason Mount', 'masonmount@chelsea.com', '9876543218', '1999-01-10', 508, 432),
(8003, 'Thiago Silva', 'thiagosilva@chelsea.com', '7894561238', '1984-09-22', 508, 432),
(8004, 'Reece James', 'reecejames@chelsea.com', '3216549878', '1999-12-08', 508, 432),
(8005, 'Kai Havertz', 'kaihavertz@chelsea.com', '9871236548', '1999-06-11', 508, 432),
(8006, 'Ben Chilwell', 'benchilwell@chelsea.com', '6547891238', '1996-12-21', 508, 432),
(8007, 'Christian Pulisic', 'christianpulisic@chelsea.com', '4567891238', '1998-09-18', 508, 432),
(8008, 'Jorginho', 'jorginho@chelsea.com', '7891234568', '1991-12-20', 508, 432),
(8009, 'Timo Werner', 'timowerner@chelsea.com', '1237894568', '1996-03-06', 508, 432),
(8010, 'Antonio Rüdiger', 'antoniorudiger@chelsea.com', '7894563218', '1993-03-03', 508, 432),
(8011, 'Edouard Mendy', 'edouardmendy@chelsea.com', '6541237898', '1992-03-01', 508, 432);

-- Generate 11 hypothetical Arsenal players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(9001, 'Pierre-Emerick Aubameyang', 'pierreaubameyang@arsenal.com', '12345678910', '1989-06-18', 509, 433),
(9002, 'Bukayo Saka', 'bukayosaka@arsenal.com', '9876543219', '2001-09-05', 509, 433),
(9003, 'Gabriel Martinelli', 'gabrielmartinelli@arsenal.com', '7894561239', '2001-06-18', 509, 433),
(9004, 'Emile Smith Rowe', 'emilesmithrowe@arsenal.com', '3216549879', '2000-07-28', 509, 433),
(9005, 'Kieran Tierney', 'kierantierney@arsenal.com', '9871236549', '1997-06-05', 509, 433),
(9006, 'Thomas Partey', 'thomaspartey@arsenal.com', '6547891239', '1993-06-13', 509, 433),
(9007, 'Bérnard Leno', 'bernardleno@arsenal.com', '4567891239', '1992-03-04', 509, 433),
(9008, 'Granit Xhaka', 'granitxhaka@arsenal.com', '7891234569', '1992-09-27', 509, 433),
(9009, 'Alexandre Lacazette', 'alexandrelacazette@arsenal.com', '1237894569', '1991-05-28', 509, 433),
(9010, 'Nicolas Pépé', 'nicolaspepe@arsenal.com', '7894563219', '1995-05-29', 509, 433),
(9011, 'Rob Holding', 'robholding@arsenal.com', '6541237899', '1995-09-20', 509, 433);

-- Generate 11 hypothetical Borussia Dortmund players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(10001, 'Erling Haaland', 'erlinghaaland@bdort.com', '12345678911', '2000-07-21', 510, 434),
(10002, 'Jadon Sancho', 'jadonsancho@bdort.com', '98765432110', '2000-03-25', 510, 434),
(10003, 'Marco Reus', 'marcoreus@bdort.com', '78945612310', '1989-05-31', 510, 434),
(10004, 'Gio Reyna', 'gioreyna@bdort.com', '32165498710', '2002-11-13', 510, 434),
(10005, 'Mats Hummels', 'matshummels@bdort.com', '98712365410', '1988-12-16', 510, 434),
(10006, 'Jude Bellingham', 'judebellingham@bdort.com', '65478912310', '2003-06-29', 510, 434),
(10007, 'Manuel Akanji', 'manuelakanji@bdort.com', '45678912310', '1995-07-19', 510, 434),
(10008, 'Raphaël Guerreiro', 'raphaelguerreiro@bdort.com', '78912345610', '1993-12-22', 510, 434),
(10009, 'Thomas Meunier', 'thomasmeunier@bdort.com', '12378945610', '1991-09-12', 510, 434),
(10010, 'Julian Brandt', 'julianbrandt@bdort.com', '78945632110', '1996-05-02', 510, 434),
(10011, 'Thorgan Hazard', 'thorganhazard@bdort.com', '65412378910', '1993-03-29', 510, 434);

-- Generate 11 hypothetical Atletico Madrid players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(11001, 'Luis Suárez', 'luissuarez@atm.com', '12345678912', '1987-01-24', 511, 435),
(11002, 'João Félix', 'joaofelix@atm.com', '98765432111', '1999-11-10', 511, 435),
(11003, 'Jan Oblak', 'janoblak@atm.com', '78945612311', '1993-01-07', 511, 435),
(11004, 'Koke', 'koke@atm.com', '32165498711', '1992-01-08', 511, 435),
(11005, 'Saúl Ñíguez', 'saulniguez@atm.com', '98712365411', '1994-11-21', 511, 435),
(11006, 'Stefan Savić', 'stefansavic@atm.com', '65478912311', '1991-01-08', 511, 435),
(11007, 'Ángel Correa', 'angelcorrea@atm.com', '45678912311', '1995-03-09', 511, 435),
(11008, 'José María Giménez', 'josemariagimenez@atm.com', '78912345611', '1995-01-20', 511, 435),
(11009, 'Thomas Lemar', 'thomaslemar@atm.com', '12378945611', '1995-11-12', 511, 435),
(11010, 'Marcos Llorente', 'marcosllorente@atm.com', '78945632111', '1995-01-30', 511, 435),
(11011, 'Renan Lodi', 'renanlodi@atm.com', '65412378911', '1998-04-08', 511, 435);

-- Generate 11 hypothetical AC Milan players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(12001, 'Zlatan Ibrahimović', 'zlatanibrahimovic@acmilan.com', '12345678913', '1981-10-03', 512, 436),
(12002, 'Gianluigi Donnarumma', 'gianluigidonnarumma@acmilan.com', '98765432112', '1999-02-25', 512, 436),
(12003, 'Hakan Çalhanoğlu', 'hakancalhanoglu@acmilan.com', '78945612312', '1994-02-08', 512, 436),
(12004, 'Theo Hernández', 'theohernandez@acmilan.com', '32165498712', '1997-10-06', 512, 436),
(12005, 'Alessio Romagnoli', 'alessioromagnoli@acmilan.com', '98712365412', '1995-01-12', 512, 436),
(12006, 'Ismaël Bennacer', 'ismaelbennacer@acmilan.com', '65478912312', '1997-12-01', 512, 436),
(12007, 'Franck Kessié', 'franckkessie@acmilan.com', '45678912312', '1996-12-19', 512, 436),
(12008, 'Davide Calabria', 'davidecalabria@acmilan.com', '78912345612', '1996-12-06', 512, 436),
(12009, 'Rafael Leão', 'rafaelleao@acmilan.com', '12378945612', '1999-06-10', 512, 436),
(12010, 'Simon Kjær', 'simonkjaer@acmilan.com', '78945632112', '1989-03-26', 512, 436),
(12011, 'Sandro Tonali', 'sandrotonali@acmilan.com', '65412378912', '2000-05-08', 512, 436);

-- Generate 11 hypothetical FC Barcelona Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(1012, 'Caroline Graham Hansen', 'carolinegrahamhansen@fcbarcelona.com', '1234567892', '1995-02-18', 601, 425),
(1013, 'Lieke Martens', 'liekemartens@fcbarcelona.com', '123456790', '1992-12-16', 601, 425),
(1014, 'Alexia Putellas', 'alexiaputellas@fcbarcelona.com', '123456791', '1994-02-04', 601, 425),
(1015, 'Jenni Hermoso', 'jennihermoso@fcbarcelona.com', '123456792', '1990-05-09', 601, 425),
(1016, 'Sandra Paños', 'sandrapanos@fcbarcelona.com', '123456793', '1992-11-19', 601, 425),
(1017, 'Andrea Pereira', 'andreapereira@fcbarcelona.com', '123456794', '1996-11-07', 601, 425),
(1018, 'Marta Torrejón', 'martatorrejon@fcbarcelona.com', '123456795', '1990-02-27', 601, 425),
(1019, 'Aitana Bonmatí', 'aitanabonmati@fcbarcelona.com', '123456796', '1998-01-18', 601, 425),
(1020, 'Leila Ouahabi', 'leilaouahabi@fcbarcelona.com', '123456797', '1993-03-07', 601, 425),
(1021, 'Ana Crnogorčević', 'anacrnogorcevic@fcbarcelona.com', '123456798', '1990-10-03', 601, 425),
(1022, 'Bruna Vilamala', 'brunavilamala@fcbarcelona.com', '123456799', '2000-08-24', 601, 425);


-- Generate 11 hypothetical Manchester City Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(2012, 'Steph Houghton', 'stephhoughton@mancity.com', '123456800', '1988-04-23', 602, 426),
(2013, 'Lucy Bronze', 'lucybronze@mancity.com', '123456801', '1991-10-28', 602, 426),
(2014, 'Ellen White', 'ellenwhite@mancity.com', '123456802', '1989-05-09', 602, 426),
(2015, 'Caroline Weir', 'carolineweir@mancity.com', '123456803', '1995-06-20', 602, 426),
(2016, 'Janine Beckie', 'janinebeckie@mancity.com', '123456804', '1994-08-20', 602, 426),
(2017, 'Georgia Stanway', 'georgiastanway@mancity.com', '123456805', '1999-01-01', 602, 426),
(2018, 'Lauren Hemp', 'laurenhemp@mancity.com', '123456806', '2000-08-07', 602, 426),
(2019, 'Chloe Kelly', 'chloekelly@mancity.com', '123456807', '1998-11-19', 602, 426),
(2020, 'Keira Walsh', 'keirawalsh@mancity.com', '123456808', '1997-04-08', 602, 426),
(2021, 'Aoife Mannion', 'aoifemannion@mancity.com', '123456809', '1995-09-24', 602, 426),
(2022, 'Esme Morgan', 'esmemorgan@mancity.com', '123456810', '2000-07-27', 602, 426);


-- Generate 11 hypothetical Liverpool FC Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(3012, 'Emily Jones', 'emilyjones@liverpool.com', '123456811', '1990-01-01', 603, 427),
(3013, 'Sophia Williams', 'sophiawilliams@liverpool.com', '123456812', '1990-01-02', 603, 427),
(3014, 'Isabella Brown', 'isabellabrown@liverpool.com', '123456813', '1990-01-03', 603, 427),
(3015, 'Olivia Taylor', 'oliviataylor@liverpool.com', '123456814', '1990-01-04', 603, 427),
(3016, 'Ava Martinez', 'avamartinez@liverpool.com', '123456815', '1990-01-05', 603, 427),
(3017, 'Mia Harris', 'miaharris@liverpool.com', '123456816', '1990-01-06', 603, 427),
(3018, 'Amelia Davis', 'ameliadavis@liverpool.com', '123456817', '1990-01-07', 603, 427),
(3019, 'Charlotte Wilson', 'charlottewilson@liverpool.com', '123456818', '1990-01-08', 603, 427),
(3020, 'Lily Thompson', 'lilythompson@liverpool.com', '123456819', '1990-01-09', 603, 427),
(3021, 'Grace Rodriguez', 'gracerodriguez@liverpool.com', '123456820', '1990-01-10', 603, 427),
(3022, 'Ella Thomas', 'ellathomas@liverpool.com', '123456821', '1990-01-11', 603, 427);

-- Generate 11 hypothetical Real Madrid Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(4012, 'Sophia Garcia', 'sophiagarcia@rma.com', '123456822', '1990-01-01', 604, 428),
(4013, 'Isabella Rodriguez', 'isabellarodriguez@rma.com', '123456823', '1990-01-02', 604, 428),
(4014, 'Olivia Martinez', 'oliviamartinez@rma.com', '123456824', '1990-01-03', 604, 428),
(4015, 'Ava Lopez', 'avalopez@rma.com', '123456825', '1990-01-04', 604, 428),
(4016, 'Mia Hernandez', 'miahernandez@rma.com', '123456826', '1990-01-05', 604, 428),
(4017, 'Amelia Torres', 'ameliatorres@rma.com', '123456827', '1990-01-06', 604, 428),
(4018, 'Charlotte Sanchez', 'charlottesanchez@rma.com', '123456828', '1990-01-07', 604, 428),
(4019, 'Lily Flores', 'lilyflores@rma.com', '123456829', '1990-01-08', 604, 428),
(4020, 'Grace Gomez', 'gracegomez@rma.com', '123456830', '1990-01-09', 604, 428),
(4021, 'Ella Martin', 'ellamartin@rma.com', '123456831', '1990-01-10', 604, 428),
(4022, 'Sophie Perez', 'sophieperez@rma.com', '123456832', '1990-01-11', 604, 428);


-- Generate 11 hypothetical PSG Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(5012, 'Emma Dubois', 'emmadubois@psg.com', '123456833', '1990-01-01', 605, 429),
(5013, 'Léa Martin', 'leamartin@psg.com', '123456834', '1990-01-02', 605, 429),
(5014, 'Chloé Durand', 'chloedurand@psg.com', '123456835', '1990-01-03', 605, 429),
(5015, 'Inès Lefèvre', 'ineslefevre@psg.com', '123456836', '1990-01-04', 605, 429),
(5016, 'Sarah Moreau', 'sarahmoreau@psg.com', '123456837', '1990-01-05', 605, 429),
(5017, 'Zoé Laurent', 'zoelaurent@psg.com', '123456838', '1990-01-06', 605, 429),
(5018, 'Clara Roux', 'clararoux@psg.com', '123456839', '1990-01-07', 605, 429),
(5019, 'Lola Simon', 'lolasimon@psg.com', '123456840', '1990-01-08', 605, 429),
(5020, 'Eva Girard', 'evagirard@psg.com', '123456841', '1990-01-09', 605, 429),
(5021, 'Louise Michel', 'louisemichel@psg.com', '123456842', '1990-01-10', 605, 429),
(5022, 'Juliette Lambert', 'juliettelambert@psg.com', '123456843', '1990-01-11', 605, 429);


-- Generate 11 hypothetical Bayern Munich Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(6012, 'Anna Müller', 'annamuller@baymun.com', '123456844', '1990-01-01', 606, 430),
(6013, 'Lena Schmidt', 'lenaschmidt@baymun.com', '123456845', '1990-01-02', 606, 430),
(6014, 'Sophie Fischer', 'sophiefischer@baymun.com', '123456846', '1990-01-03', 606, 430),
(6015, 'Emma Weber', 'emmaweber@baymun.com', '123456847', '1990-01-04', 606, 430),
(6016, 'Laura Wagner', 'laurawagner@baymun.com', '123456848', '1990-01-05', 606, 430),
(6017, 'Lisa Becker', 'lisabecker@baymun.com', '123456849', '1990-01-06', 606, 430),
(6018, 'Mia Schulz', 'miaschulz@baymun.com', '123456850', '1990-01-07', 606, 430),
(6019, 'Hannah Hoffmann', 'hannahhoffmann@baymun.com', '123456851', '1990-01-08', 606, 430),
(6020, 'Lea Klein', 'leaklein@baymun.com', '123456852', '1990-01-09', 606, 430),
(6021, 'Sarah Meier', 'sarahmeier@baymun.com', '123456853', '1990-01-10', 606, 430),
(6022, 'Julia Richter', 'juliarichter@baymun.com', '123456854', '1990-01-11', 606, 430);


-- Generate 11 hypothetical Juventus Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(7012, 'Giulia Rossi', 'giuliarossi@juventus.com', '123456855', '1990-01-01', 607, 431),
(7013, 'Martina Bianchi', 'martinabianchi@juventus.com', '123456856', '1990-01-02', 607, 431),
(7014, 'Francesca Russo', 'francescarusso@juventus.com', '123456857', '1990-01-03', 607, 431),
(7015, 'Alessia Romano', 'alessiaromano@juventus.com', '123456858', '1990-01-04', 607, 431),
(7016, 'Sofia Ferrari', 'sofiaferrari@juventus.com', '123456859', '1990-01-05', 607, 431),
(7017, 'Elisa Conti', 'elisaconti@juventus.com', '123456860', '1990-01-06', 607, 431),
(7018, 'Greta Esposito', 'gretaesposito@juventus.com', '123456861', '1990-01-07', 607, 431),
(7019, 'Valentina Gallo', 'valentinagallo@juventus.com', '123456862', '1990-01-08', 607, 431),
(7020, 'Roberta Martini', 'robertamartini@juventus.com', '123456863', '1990-01-09', 607, 431),
(7021, 'Laura Moretti', 'lauramoretti@juventus.com', '123456864', '1990-01-10', 607, 431),
(7022, 'Chiara Monti', 'chiaramonti@juventus.com', '123456865', '1990-01-11', 607, 431);


-- Generate 11 hypothetical Chelsea Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(8012, 'Sophie Smith', 'sophiesmith@chelsea.com', '123456866', '1990-01-01', 608, 432),
(8013, 'Emma Johnson', 'emmajohnson@chelsea.com', '123456867', '1990-01-02', 608, 432),
(8014, 'Olivia Williams', 'oliviawilliams@chelsea.com', '123456868', '1990-01-03', 608, 432),
(8015, 'Charlotte Brown', 'charlottebrown@chelsea.com', '123456869', '1990-01-04', 608, 432),
(8016, 'Amelia Taylor', 'ameliataylor@chelsea.com', '123456870', '1990-01-05', 608, 432),
(8017, 'Emily Davies', 'emilydavies@chelsea.com', '123456871', '1990-01-06', 608, 432),
(8018, 'Grace Wilson', 'gracewilson@chelsea.com', '123456872', '1990-01-07', 608, 432),
(8019, 'Ruby Evans', 'rubyevans@chelsea.com', '123456873', '1990-01-08', 608, 432),
(8020, 'Mia Thompson', 'miathompson@chelsea.com', '123456874', '1990-01-09', 608, 432),
(8021, 'Isabella Clark', 'isabellaclark@chelsea.com', '123456875', '1990-01-10', 608, 432),
(8022, 'Sophia White', 'sophiawhite@chelsea.com', '123456876', '1990-01-11', 608, 432);


-- Generate 11 hypothetical Arsenal Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(9012, 'Emily Jones', 'emilyjones@arsenal.com', '123456877', '1990-01-01', 609, 433),
(9013, 'Sophia Taylor', 'sophiataylor@arsenal.com', '123456878', '1990-01-02', 609, 433),
(9014, 'Olivia Brown', 'oliviabrown@arsenal.com', '123456879', '1990-01-03', 609, 433),
(9015, 'Charlotte Harris', 'charlotteharris@arsenal.com', '123456880', '1990-01-04', 609, 433),
(9016, 'Amelia Wilson', 'ameliawilson@arsenal.com', '123456881', '1990-01-05', 609, 433),
(9017, 'Sophie Evans', 'sophieevans@arsenal.com', '123456882', '1990-01-06', 609, 433),
(9018, 'Grace Roberts', 'graceroberts@arsenal.com', '123456883', '1990-01-07', 609, 433),
(9019, 'Ruby Walker', 'rubywalker@arsenal.com', '123456884', '1990-01-08', 609, 433),
(9020, 'Mia Turner', 'miaturner@arsenal.com', '123456885', '1990-01-09', 609, 433),
(9021, 'Isabella Clark', 'isabellaclark@arsenal.com', '123456886', '1990-01-10', 609, 433),
(9022, 'Sophia White', 'sophiawhite@arsenal.com', '123456887', '1990-01-11', 609, 433);


-- Generate 11 hypothetical Borussia Dortmund Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(10012, 'Emma Schmidt', 'emmaschmidt@bdort.com', '123456888', '1990-01-01', 610, 434),
(10013, 'Sophia Müller', 'sophiamuller@bdort.com', '123456889', '1990-01-02', 610, 434),
(10014, 'Lena Wagner', 'lenawagner@bdort.com', '123456890', '1990-01-03', 610, 434),
(10015, 'Anna Becker', 'annabecker@bdort.com', '123456891', '1990-01-04', 610, 434),
(10016, 'Mia Schulz', 'miaschulz@bdort.com', '123456892', '1990-01-05', 610, 434),
(10017, 'Emily Hoffmann', 'emilyhoffmann@bdort.com', '123456893', '1990-01-06', 610, 434),
(10018, 'Marie Fischer', 'mariefischer@bdort.com', '123456894', '1990-01-07', 610, 434),
(10019, 'Laura Richter', 'laurarichter@bdort.com', '123456895', '1990-01-08', 610, 434),
(10020, 'Clara Koch', 'clarakoch@bdort.com', '123456896', '1990-01-09', 610, 434),
(10021, 'Julia Schulze', 'juliaschulze@bdort.com', '123456897', '1990-01-10', 610, 434),
(10022, 'Lea Wagner', 'leawagner@bdort.com', '123456898', '1990-01-11', 610, 434);

-- Generate 11 hypothetical Atletico Madrid Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(11012, 'Maria Rodriguez', 'mariarodriguez@atm.com', '123456899', '1990-01-01', 611, 435),
(11013, 'Ana Fernandez', 'anafernandez@atm.com', '123456900', '1990-01-02', 611, 435),
(11014, 'Sofia Garcia', 'sofiagarcia@atm.com', '123456901', '1990-01-03', 611, 435),
(11015, 'Lucia Martin', 'luciamartin@atm.com', '123456902', '1990-01-04', 611, 435),
(11016, 'Elena Perez', 'elenaperez@atm.com', '123456903', '1990-01-05', 611, 435),
(11017, 'Andrea Sanchez', 'andreasanchez@atm.com', '123456904', '1990-01-06', 611, 435),
(11018, 'Julia Gomez', 'juliagomez@atm.com', '123456905', '1990-01-07', 611, 435),
(11019, 'Carmen Ruiz', 'carmenruiz@atm.com', '123456906', '1990-01-08', 611, 435),
(11020, 'Alba Hernandez', 'albahernandez@atm.com', '123456907', '1990-01-09', 611, 435),
(11021, 'Paula Diaz', 'pauladiaz@atm.com', '123456908', '1990-01-10', 611, 435),
(11022, 'Laura Sanchez', 'laurasanchez@atm.com', '123456909', '1990-01-11', 611, 435);


-- Generate 11 hypothetical AC Milan Women's Team players
INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID)
VALUES
(12012, 'Giulia Rossi', 'giuliarossi@acmilan.com', '123456910', '1990-01-01', 612, 436),
(12013, 'Sara Bianchi', 'sarabianchi@acmilan.com', '123456911', '1990-01-02', 612, 436),
(12014, 'Francesca Ferrari', 'francescaferrari@acmilan.com', '123456912', '1990-01-03', 612, 436),
(12015, 'Alessia Romano', 'alessiaromano@acmilan.com', '123456913', '1990-01-04', 612, 436),
(12016, 'Martina Conte', 'martinaconte@acmilan.com', '123456914', '1990-01-05', 612, 436),
(12017, 'Laura Galli', 'lauragalli@acmilan.com', '123456915', '1990-01-06', 612, 436),
(12018, 'Elena Marini', 'elenamarini@acmilan.com', '123456916', '1990-01-07', 612, 436),
(12019, 'Chiara Monti', 'chiaramonti@acmilan.com', '123456917', '1990-01-08', 612, 436),
(12020, 'Valentina Moretti', 'valentinamoretti@acmilan.com', '123456918', '1990-01-09', 612, 436),
(12021, 'Arianna Caruso', 'ariannacaruso@acmilan.com', '123456919', '1990-01-10', 612, 436),
(12022, 'Simona Rizzo', 'simonarizzo@acmilan.com', '123456920', '1990-01-11', 612, 436);




-- Bayern Munich Players
UPDATE Player SET PlayerEmail = 'robertlewandowski@baymun.com' WHERE Player_ID = 6001;
UPDATE Player SET PlayerEmail = 'manuelneuer@baymun.com' WHERE Player_ID = 6002;
UPDATE Player SET PlayerEmail = 'joshuakimmich@baymun.com' WHERE Player_ID = 6003;
UPDATE Player SET PlayerEmail = 'thomasmuller@baymun.com' WHERE Player_ID = 6004;
UPDATE Player SET PlayerEmail = 'leongoretzka@baymun.com' WHERE Player_ID = 6005;
UPDATE Player SET PlayerEmail = 'davidalaba@baymun.com' WHERE Player_ID = 6006;
UPDATE Player SET PlayerEmail = 'leroysane@baymun.com' WHERE Player_ID = 6007;
UPDATE Player SET PlayerEmail = 'alphonsodavies@baymun.com' WHERE Player_ID = 6008;
UPDATE Player SET PlayerEmail = 'sergegnabry@baymun.com' WHERE Player_ID = 6009;
UPDATE Player SET PlayerEmail = 'kingsleycoman@baymun.com' WHERE Player_ID = 6010;
UPDATE Player SET PlayerEmail = 'benjaminpavard@baymun.com' WHERE Player_ID = 6011;

-- Juventus Players
UPDATE Player SET PlayerEmail = 'cristianoronaldo@juventus.com' WHERE Player_ID = 7001;
UPDATE Player SET PlayerEmail = 'giorgiochiellini@juventus.com' WHERE Player_ID = 7002;
UPDATE Player SET PlayerEmail = 'paulodybala@juventus.com' WHERE Player_ID = 7003;
UPDATE Player SET PlayerEmail = 'leonardobonucci@juventus.com' WHERE Player_ID = 7004;
UPDATE Player SET PlayerEmail = 'federicochiesa@juventus.com' WHERE Player_ID = 7005;
UPDATE Player SET PlayerEmail = 'westonmckennie@juventus.com' WHERE Player_ID = 7006;
UPDATE Player SET PlayerEmail = 'dejankulusevski@juventus.com' WHERE Player_ID = 7007;
UPDATE Player SET PlayerEmail = 'arthurmelo@juventus.com' WHERE Player_ID = 7008;
UPDATE Player SET PlayerEmail = 'juancuadrado@juventus.com' WHERE Player_ID = 7009;
UPDATE Player SET PlayerEmail = 'matthijsdeligt@juventus.com' WHERE Player_ID = 7010;
UPDATE Player SET PlayerEmail = 'alexsandro@juventus.com' WHERE Player_ID = 7011;

UPDATE Player SET PlayerEmail = 'ngolokante@chelsea.com' WHERE Player_ID = 8001;
UPDATE Player SET PlayerEmail = 'masonmount@chelsea.com' WHERE Player_ID = 8002;
UPDATE Player SET PlayerEmail = 'thiagosilva@chelsea.com' WHERE Player_ID = 8003;
UPDATE Player SET PlayerEmail = 'reecejames@chelsea.com' WHERE Player_ID = 8004;
UPDATE Player SET PlayerEmail = 'kaihavertz@chelsea.com' WHERE Player_ID = 8005;
UPDATE Player SET PlayerEmail = 'benchilwell@chelsea.com' WHERE Player_ID = 8006;
UPDATE Player SET PlayerEmail = 'christianpulisic@chelsea.com' WHERE Player_ID = 8007;
UPDATE Player SET PlayerEmail = 'jorginho@chelsea.com' WHERE Player_ID = 8008;
UPDATE Player SET PlayerEmail = 'timowerner@chelsea.com' WHERE Player_ID = 8009;
UPDATE Player SET PlayerEmail = 'antoniorudiger@chelsea.com' WHERE Player_ID = 8010;
UPDATE Player SET PlayerEmail = 'edouardmendy@chelsea.com' WHERE Player_ID = 8011;

UPDATE Player SET PlayerEmail = 'pierreaubameyang@arsenal.com' WHERE Player_ID = 9001;
UPDATE Player SET PlayerEmail = 'bukayosaka@arsenal.com' WHERE Player_ID = 9002;
UPDATE Player SET PlayerEmail = 'gabrielmartinelli@arsenal.com' WHERE Player_ID = 9003;
UPDATE Player SET PlayerEmail = 'emilesmithrowe@arsenal.com' WHERE Player_ID = 9004;
UPDATE Player SET PlayerEmail = 'kierantierney@arsenal.com' WHERE Player_ID = 9005;
UPDATE Player SET PlayerEmail = 'thomaspartey@arsenal.com' WHERE Player_ID = 9006;
UPDATE Player SET PlayerEmail = 'bernardleno@arsenal.com' WHERE Player_ID = 9007;
UPDATE Player SET PlayerEmail = 'granitxhaka@arsenal.com' WHERE Player_ID = 9008;
UPDATE Player SET PlayerEmail = 'alexandrelacazette@arsenal.com' WHERE Player_ID = 9009;
UPDATE Player SET PlayerEmail = 'nicolaspepe@arsenal.com' WHERE Player_ID = 9010;
UPDATE Player SET PlayerEmail = 'robholding@arsenal.com' WHERE Player_ID = 9011;

UPDATE Player SET PlayerEmail = 'erlinghaaland@bdort.com' WHERE Player_ID = 10001;
UPDATE Player SET PlayerEmail = 'jadonsancho@bdort.com' WHERE Player_ID = 10002;
UPDATE Player SET PlayerEmail = 'marcoreus@bdort.com' WHERE Player_ID = 10003;
UPDATE Player SET PlayerEmail = 'gioreyna@bdort.com' WHERE Player_ID = 10004;
UPDATE Player SET PlayerEmail = 'matshummels@bdort.com' WHERE Player_ID = 10005;
UPDATE Player SET PlayerEmail = 'judebellingham@bdort.com' WHERE Player_ID = 10006;
UPDATE Player SET PlayerEmail = 'manuelakanji@bdort.com' WHERE Player_ID = 10007;
UPDATE Player SET PlayerEmail = 'raphaelguerreiro@bdort.com' WHERE Player_ID = 10008;
UPDATE Player SET PlayerEmail = 'thomasmeunier@bdort.com' WHERE Player_ID = 10009;
UPDATE Player SET PlayerEmail = 'julianbrandt@bdort.com' WHERE Player_ID = 10010;
UPDATE Player SET PlayerEmail = 'thorganhazard@bdort.com' WHERE Player_ID = 10011;

UPDATE Player SET PlayerEmail = 'luissuarez@atm.com' WHERE Player_ID = 11001;
UPDATE Player SET PlayerEmail = 'joaofelix@atm.com' WHERE Player_ID = 11002;
UPDATE Player SET PlayerEmail = 'janoblak@atm.com' WHERE Player_ID = 11003;
UPDATE Player SET PlayerEmail = 'koke@atm.com' WHERE Player_ID = 11004;
UPDATE Player SET PlayerEmail = 'saulniguez@atm.com' WHERE Player_ID = 11005;
UPDATE Player SET PlayerEmail = 'stefansavic@atm.com' WHERE Player_ID = 11006;
UPDATE Player SET PlayerEmail = 'angelcorrea@atm.com' WHERE Player_ID = 11007;
UPDATE Player SET PlayerEmail = 'josemariagimenez@atm.com' WHERE Player_ID = 11008;
UPDATE Player SET PlayerEmail = 'thomaslemar@atm.com' WHERE Player_ID = 11009;
UPDATE Player SET PlayerEmail = 'marcosllorente@atm.com' WHERE Player_ID = 11010;
UPDATE Player SET PlayerEmail = 'renanlodi@atm.com' WHERE Player_ID = 11011;

UPDATE Player SET PlayerEmail = 'zlatanibrahimovic@acmilan.com' WHERE Player_ID = 12001;
UPDATE Player SET PlayerEmail = 'gianluigidonnarumma@acmilan.com' WHERE Player_ID = 12002;
UPDATE Player SET PlayerEmail = 'hakancalhanoglu@acmilan.com' WHERE Player_ID = 12003;
UPDATE Player SET PlayerEmail = 'theohernandez@acmilan.com' WHERE Player_ID = 12004;
UPDATE Player SET PlayerEmail = 'alessioromagnoli@acmilan.com' WHERE Player_ID = 12005;
UPDATE Player SET PlayerEmail = 'ismaelbennacer@acmilan.com' WHERE Player_ID = 12006;
UPDATE Player SET PlayerEmail = 'franckkessie@acmilan.com' WHERE Player_ID = 12007;
UPDATE Player SET PlayerEmail = 'davidecalabria@acmilan.com' WHERE Player_ID = 12008;
UPDATE Player SET PlayerEmail = 'rafaelleao@acmilan.com' WHERE Player_ID = 12009;
UPDATE Player SET PlayerEmail = 'simonkjaer@acmilan.com' WHERE Player_ID = 12010;
UPDATE Player SET PlayerEmail = 'sandrotonali@acmilan.com' WHERE Player_ID = 12011;


--Womens teams



UPDATE Player SET PlayerEmail = 'carolinegrahamhansen@fcbarcelona.com' WHERE Player_ID = 1012;
UPDATE Player SET PlayerEmail = 'liekemartens@fcbarcelona.com' WHERE Player_ID = 1013;
UPDATE Player SET PlayerEmail = 'alexiaputellas@fcbarcelona.com' WHERE Player_ID = 1014;
UPDATE Player SET PlayerEmail = 'jennihermoso@fcbarcelona.com' WHERE Player_ID = 1015;
UPDATE Player SET PlayerEmail = 'sandrapanos@fcbarcelona.com' WHERE Player_ID = 1016;
UPDATE Player SET PlayerEmail = 'andreapereira@fcbarcelona.com' WHERE Player_ID = 1017;
UPDATE Player SET PlayerEmail = 'martatorrejon@fcbarcelona.com' WHERE Player_ID = 1018;
UPDATE Player SET PlayerEmail = 'aitanabonmati@fcbarcelona.com' WHERE Player_ID = 1019;
UPDATE Player SET PlayerEmail = 'leilaouahabi@fcbarcelona.com' WHERE Player_ID = 1020;
UPDATE Player SET PlayerEmail = 'anacrnogorcevic@fcbarcelona.com' WHERE Player_ID = 1021;
UPDATE Player SET PlayerEmail = 'brunavilamala@fcbarcelona.com' WHERE Player_ID = 1022;

UPDATE Player SET PlayerEmail = 'stephhoughton@mancity.com' WHERE Player_ID = 2012;
UPDATE Player SET PlayerEmail = 'lucybronze@mancity.com' WHERE Player_ID = 2013;
UPDATE Player SET PlayerEmail = 'ellenwhite@mancity.com' WHERE Player_ID = 2014;
UPDATE Player SET PlayerEmail = 'carolineweir@mancity.com' WHERE Player_ID = 2015;
UPDATE Player SET PlayerEmail = 'janinebeckie@mancity.com' WHERE Player_ID = 2016;
UPDATE Player SET PlayerEmail = 'georgiastanway@mancity.com' WHERE Player_ID = 2017;
UPDATE Player SET PlayerEmail = 'laurenhemp@mancity.com' WHERE Player_ID = 2018;
UPDATE Player SET PlayerEmail = 'chloekelly@mancity.com' WHERE Player_ID = 2019;
UPDATE Player SET PlayerEmail = 'keirawalsh@mancity.com' WHERE Player_ID = 2020;
UPDATE Player SET PlayerEmail = 'aoifemannion@mancity.com' WHERE Player_ID = 2021;
UPDATE Player SET PlayerEmail = 'esmemorgan@mancity.com' WHERE Player_ID = 2022;

UPDATE Player SET PlayerEmail = 'emilyjones@liverpool.com' WHERE Player_ID = 3012;
UPDATE Player SET PlayerEmail = 'sophiawilliams@liverpool.com' WHERE Player_ID = 3013;
UPDATE Player SET PlayerEmail = 'isabellabrown@liverpool.com' WHERE Player_ID = 3014;
UPDATE Player SET PlayerEmail = 'oliviataylor@liverpool.com' WHERE Player_ID = 3015;
UPDATE Player SET PlayerEmail = 'avamartinez@liverpool.com' WHERE Player_ID = 3016;
UPDATE Player SET PlayerEmail = 'miaharris@liverpool.com' WHERE Player_ID = 3017;
UPDATE Player SET PlayerEmail = 'ameliadavis@liverpool.com' WHERE Player_ID = 3018;
UPDATE Player SET PlayerEmail = 'charlottewilson@liverpool.com' WHERE Player_ID = 3019;
UPDATE Player SET PlayerEmail = 'lilythompson@liverpool.com' WHERE Player_ID = 3020;
UPDATE Player SET PlayerEmail = 'gracerodriguez@liverpool.com' WHERE Player_ID = 3021;
UPDATE Player SET PlayerEmail = 'ellathomas@liverpool.com' WHERE Player_ID = 3022;

UPDATE Player SET PlayerEmail = 'sophiagarcia@rma.com' WHERE Player_ID = 4012;
UPDATE Player SET PlayerEmail = 'isabellarodriguez@rma.com' WHERE Player_ID = 4013;
UPDATE Player SET PlayerEmail = 'oliviamartinez@rma.com' WHERE Player_ID = 4014;
UPDATE Player SET PlayerEmail = 'avalopez@rma.com' WHERE Player_ID = 4015;
UPDATE Player SET PlayerEmail = 'miahernandez@rma.com' WHERE Player_ID = 4016;
UPDATE Player SET PlayerEmail = 'ameliatorres@rma.com' WHERE Player_ID = 4017;
UPDATE Player SET PlayerEmail = 'charlottesanchez@rma.com' WHERE Player_ID = 4018;
UPDATE Player SET PlayerEmail = 'lilyflores@rma.com' WHERE Player_ID = 4019;
UPDATE Player SET PlayerEmail = 'gracegomez@rma.com' WHERE Player_ID = 4020;
UPDATE Player SET PlayerEmail = 'ellamartin@rma.com' WHERE Player_ID = 4021;
UPDATE Player SET PlayerEmail = 'sophieperez@rma.com' WHERE Player_ID = 4022;

UPDATE Player SET PlayerEmail = 'emmadubois@psg.com' WHERE Player_ID = 5012;
UPDATE Player SET PlayerEmail = 'leamartin@psg.com' WHERE Player_ID = 5013;
UPDATE Player SET PlayerEmail = 'chloedurand@psg.com' WHERE Player_ID = 5014;
UPDATE Player SET PlayerEmail = 'ineslefevre@psg.com' WHERE Player_ID = 5015;
UPDATE Player SET PlayerEmail = 'sarahmoreau@psg.com' WHERE Player_ID = 5016;
UPDATE Player SET PlayerEmail = 'zoelaurent@psg.com' WHERE Player_ID = 5017;
UPDATE Player SET PlayerEmail = 'clararoux@psg.com' WHERE Player_ID = 5018;
UPDATE Player SET PlayerEmail = 'lolasimon@psg.com' WHERE Player_ID = 5019;
UPDATE Player SET PlayerEmail = 'evagirard@psg.com' WHERE Player_ID = 5020;
UPDATE Player SET PlayerEmail = 'louisemichel@psg.com' WHERE Player_ID = 5021;
UPDATE Player SET PlayerEmail = 'juliettelambert@psg.com' WHERE Player_ID = 5022;

UPDATE Player SET PlayerEmail = 'annamuller@baymun.com' WHERE Player_ID = 6012;
UPDATE Player SET PlayerEmail = 'lenaschmidt@baymun.com' WHERE Player_ID = 6013;
UPDATE Player SET PlayerEmail = 'sophiefischer@baymun.com' WHERE Player_ID = 6014;
UPDATE Player SET PlayerEmail = 'emmaweber@baymun.com' WHERE Player_ID = 6015;
UPDATE Player SET PlayerEmail = 'laurawagner@baymun.com' WHERE Player_ID = 6016;
UPDATE Player SET PlayerEmail = 'lisabecker@baymun.com' WHERE Player_ID = 6017;
UPDATE Player SET PlayerEmail = 'miaschulz@baymun.com' WHERE Player_ID = 6018;
UPDATE Player SET PlayerEmail = 'hannahhoffmann@baymun.com' WHERE Player_ID = 6019;
UPDATE Player SET PlayerEmail = 'leaklein@baymun.com' WHERE Player_ID = 6020;
UPDATE Player SET PlayerEmail = 'sarahmeier@baymun.com' WHERE Player_ID = 6021;
UPDATE Player SET PlayerEmail = 'juliarichter@baymun.com' WHERE Player_ID = 6022;

UPDATE Player SET PlayerEmail = 'giuliarossi@juventus.com' WHERE Player_ID = 7012;
UPDATE Player SET PlayerEmail = 'martinabianchi@juventus.com' WHERE Player_ID = 7013;
UPDATE Player SET PlayerEmail = 'francescarusso@juventus.com' WHERE Player_ID = 7014;
UPDATE Player SET PlayerEmail = 'alessiaromano@juventus.com' WHERE Player_ID = 7015;
UPDATE Player SET PlayerEmail = 'sofiaferrari@juventus.com' WHERE Player_ID = 7016;
UPDATE Player SET PlayerEmail = 'elisaconti@juventus.com' WHERE Player_ID = 7017;
UPDATE Player SET PlayerEmail = 'gretaesposito@juventus.com' WHERE Player_ID = 7018;
UPDATE Player SET PlayerEmail = 'valentinagallo@juventus.com' WHERE Player_ID = 7019;
UPDATE Player SET PlayerEmail = 'robertamartini@juventus.com' WHERE Player_ID = 7020;
UPDATE Player SET PlayerEmail = 'lauramoretti@juventus.com' WHERE Player_ID = 7021;
UPDATE Player SET PlayerEmail = 'chiaramonti@juventus.com' WHERE Player_ID = 7022;

UPDATE Player SET PlayerEmail = 'sophiesmith@chelsea.com' WHERE Player_ID = 8012;
UPDATE Player SET PlayerEmail = 'emmajohnson@chelsea.com' WHERE Player_ID = 8013;
UPDATE Player SET PlayerEmail = 'oliviawilliams@chelsea.com' WHERE Player_ID = 8014;
UPDATE Player SET PlayerEmail = 'charlottebrown@chelsea.com' WHERE Player_ID = 8015;
UPDATE Player SET PlayerEmail = 'ameliataylor@chelsea.com' WHERE Player_ID = 8016;
UPDATE Player SET PlayerEmail = 'emilydavies@chelsea.com' WHERE Player_ID = 8017;
UPDATE Player SET PlayerEmail = 'gracewilson@chelsea.com' WHERE Player_ID = 8018;
UPDATE Player SET PlayerEmail = 'rubyevans@chelsea.com' WHERE Player_ID = 8019;
UPDATE Player SET PlayerEmail = 'miathompson@chelsea.com' WHERE Player_ID = 8020;
UPDATE Player SET PlayerEmail = 'isabellaclark@chelsea.com' WHERE Player_ID = 8021;
UPDATE Player SET PlayerEmail = 'sophiawhite@chelsea.com' WHERE Player_ID = 8022;

UPDATE Player SET PlayerEmail = 'emilyjones@arsenal.com' WHERE Player_ID = 9012;
UPDATE Player SET PlayerEmail = 'sophiataylor@arsenal.com' WHERE Player_ID = 9013;
UPDATE Player SET PlayerEmail = 'oliviabrown@arsenal.com' WHERE Player_ID = 9014;
UPDATE Player SET PlayerEmail = 'charlotteharris@arsenal.com' WHERE Player_ID = 9015;
UPDATE Player SET PlayerEmail = 'ameliawilson@arsenal.com' WHERE Player_ID = 9016;
UPDATE Player SET PlayerEmail = 'sophieevans@arsenal.com' WHERE Player_ID = 9017;
UPDATE Player SET PlayerEmail = 'graceroberts@arsenal.com' WHERE Player_ID = 9018;
UPDATE Player SET PlayerEmail = 'rubywalker@arsenal.com' WHERE Player_ID = 9019;
UPDATE Player SET PlayerEmail = 'miaturner@arsenal.com' WHERE Player_ID = 9020;
UPDATE Player SET PlayerEmail = 'isabellaclark@arsenal.com' WHERE Player_ID = 9021;
UPDATE Player SET PlayerEmail = 'sophiawhite@arsenal.com' WHERE Player_ID = 9022;

UPDATE Player SET PlayerEmail = 'emmaschmidt@bdort.com' WHERE Player_ID = 10012;
UPDATE Player SET PlayerEmail = 'sophiamuller@bdort.com' WHERE Player_ID = 10013;
UPDATE Player SET PlayerEmail = 'lenawagner@bdort.com' WHERE Player_ID = 10014;
UPDATE Player SET PlayerEmail = 'annabecker@bdort.com' WHERE Player_ID = 10015;
UPDATE Player SET PlayerEmail = 'miaschulz@bdort.com' WHERE Player_ID = 10016;
UPDATE Player SET PlayerEmail = 'emilyhoffmann@bdort.com' WHERE Player_ID = 10017;
UPDATE Player SET PlayerEmail = 'mariefischer@bdort.com' WHERE Player_ID = 10018;
UPDATE Player SET PlayerEmail = 'laurarichter@bdort.com' WHERE Player_ID = 10019;
UPDATE Player SET PlayerEmail = 'clarakoch@bdort.com' WHERE Player_ID = 10020;
UPDATE Player SET PlayerEmail = 'juliaschulze@bdort.com' WHERE Player_ID = 10021;
UPDATE Player SET PlayerEmail = 'leawagner@bdort.com' WHERE Player_ID = 10022;

UPDATE Player SET PlayerEmail = 'mariarodriguez@atm.com' WHERE Player_ID = 11012;
UPDATE Player SET PlayerEmail = 'anafernandez@atm.com' WHERE Player_ID = 11013;
UPDATE Player SET PlayerEmail = 'sofiagarcia@atm.com' WHERE Player_ID = 11014;
UPDATE Player SET PlayerEmail = 'luciamartin@atm.com' WHERE Player_ID = 11015;
UPDATE Player SET PlayerEmail = 'elenaperez@atm.com' WHERE Player_ID = 11016;
UPDATE Player SET PlayerEmail = 'andreasanchez@atm.com' WHERE Player_ID = 11017;
UPDATE Player SET PlayerEmail = 'juliagomez@atm.com' WHERE Player_ID = 11018;
UPDATE Player SET PlayerEmail = 'carmenruiz@atm.com' WHERE Player_ID = 11019;
UPDATE Player SET PlayerEmail = 'albahernandez@atm.com' WHERE Player_ID = 11020;
UPDATE Player SET PlayerEmail = 'pauladiaz@atm.com' WHERE Player_ID = 11021;
UPDATE Player SET PlayerEmail = 'laurasanchez@atm.com' WHERE Player_ID = 11022;

UPDATE Player SET PlayerEmail = 'giuliarossi@acmilan.com' WHERE Player_ID = 12012;
UPDATE Player SET PlayerEmail = 'sarabianchi@acmilan.com' WHERE Player_ID = 12013;
UPDATE Player SET PlayerEmail = 'francescaferrari@acmilan.com' WHERE Player_ID = 12014;
UPDATE Player SET PlayerEmail = 'alessiaromano@acmilan.com' WHERE Player_ID = 12015;
UPDATE Player SET PlayerEmail = 'martinaconte@acmilan.com' WHERE Player_ID = 12016;
UPDATE Player SET PlayerEmail = 'lauragalli@acmilan.com' WHERE Player_ID = 12017;
UPDATE Player SET PlayerEmail = 'elenamarini@acmilan.com' WHERE Player_ID = 12018;
UPDATE Player SET PlayerEmail = 'chiaramonti@acmilan.com' WHERE Player_ID = 12019;
UPDATE Player SET PlayerEmail = 'valentinamoretti@acmilan.com' WHERE Player_ID = 12020;
UPDATE Player SET PlayerEmail = 'ariannacaruso@acmilan.com' WHERE Player_ID = 12021;
UPDATE Player SET PlayerEmail = 'simonarizzo@acmilan.com' WHERE Player_ID = 12022;

UPDATE Player SET PlayerEmail = 'carolinegrahamhansen@barca.com' WHERE Player_ID = 1012;
UPDATE Player SET PlayerEmail = 'liekemartens@barca.com' WHERE Player_ID = 1013;
UPDATE Player SET PlayerEmail = 'alexiaputellas@barca.com' WHERE Player_ID = 1014;
UPDATE Player SET PlayerEmail = 'jennihermoso@barca.com' WHERE Player_ID = 1015;
UPDATE Player SET PlayerEmail = 'sandrapanos@barca.com' WHERE Player_ID = 1016;
UPDATE Player SET PlayerEmail = 'andreapereira@barca.com' WHERE Player_ID = 1017;
UPDATE Player SET PlayerEmail = 'martatorrejon@barca.com' WHERE Player_ID = 1018;
UPDATE Player SET PlayerEmail = 'aitanabonmati@barca.com' WHERE Player_ID = 1019;
UPDATE Player SET PlayerEmail = 'leilaouahabi@barca.com' WHERE Player_ID = 1020;
UPDATE Player SET PlayerEmail = 'anacrnogorcevic@barca.com' WHERE Player_ID = 1021;
UPDATE Player SET PlayerEmail = 'brunavilamala@barca.com' WHERE Player_ID = 1022;


SELECT * FROM Player;

----------------------------------------------------------------------- HEALTH CARE -------------------------------------------------------------

-- Inserting data into the HealthCare table with existing Player_ID values
INSERT INTO HealthCare (HealthCareID, Player_ID, InjuryType, RecoveryDays, PhysicalStatus, DoctorName, DateInjured)
VALUES
('0001', 1011, 'Sprained ankle', 21, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END,  'Dr. Smith', '2024-01-05'),
('0002', 4022, 'Hamstring strain', 14, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END,  'Dr. Johnson', '2024-02-20'),
('0003', 7003, 'Knee ligament tear', 90, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END,  'Dr. Williams', '2024-03-16'),
('0004', 5004, 'Concussion', 7, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END,  'Dr. Brown', '2023-12-10'),
('0005', 6005, 'Groin injury', 28, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END,  'Dr. Davis', '2024-01-10'),
('0006', 8016, 'Shoulder dislocation', 35, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END, 'Dr. Miller', '2023-12-30'),
('0007', 9017, 'Ankle fracture', 42, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END, 'Dr. Wilson', '2024-03-15'),
('0008', 12018, 'Muscle tear', 21, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END, 'Dr. Martinez', '2024-02-01'),
('0009', 11009, 'Back strain', 14, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END, 'Dr. Anderson', '2024-01-26'),
('0010', 10010, 'Knee tendonitis', 28, CASE WHEN RAND() < 0.5 THEN 'Recovering' ELSE 'Rehabilitation' END, 'Dr. Taylor', '2024-03-29');


select * from HealthCare;
--------------------------------------------------------------------- STATDIUM ------------------------------------------------------------------

-- Inserting stadiums in Europe
INSERT INTO Stadium (StadiumID, StadiumName, StadiumLocation, Capacity, "Address")
VALUES
(1, 'Camp Nou', 'Barcelona, Spain', 99000, 'Carrer d''Aristides Maillol, s/n, 08028 Barcelona, Spain'),
(2, 'Santiago Bernabéu Stadium', 'Madrid, Spain', 81044, 'Av. de Concha Espina, 1, 28036 Madrid, Spain'),
(3, 'Parc des Princes', 'Paris, France', 47929, '24 Rue du Commandant Guilbaud, 75016 Paris, France'),
(4, 'Allianz Arena', 'Munich, Germany', 75000, 'Werner-Heisenberg-Allee 25, 80939 München, Germany'),
(5, 'Signal Iduna Park', 'Dortmund, Germany', 81365, 'Strobelallee 50, 44139 Dortmund, Germany'),
(6, 'Anfield', 'Liverpool, England', 53394, 'Anfield Rd, Liverpool L4 0TH, UK'),
(7, 'Old Trafford', 'Manchester, England', 74691, 'Sir Matt Busby Way, Old Trafford, Manchester M16 0RA, UK'),
(8, 'Stamford Bridge', 'London, England', 40834, 'Fulham Rd, Fulham, London SW6 1HS, UK'),
(9, 'Emirates Stadium', 'London, England', 60260, 'Hornsey Rd, London N7 7AJ, UK'),
(10, 'Wembley Stadium', 'London, England', 90000, 'Wembley, London HA9 0WS, UK');

-- Inserting stadiums in the US
INSERT INTO Stadium (StadiumID, StadiumName, StadiumLocation, Capacity, "Address")
VALUES
(11, 'MetLife Stadium', 'East Rutherford, New Jersey, USA', 82500, 'MetLife Stadium Dr, East Rutherford, NJ 07073, USA'),
(12, 'AT&T Stadium', 'Arlington, Texas, USA', 80000, '1 AT&T Way, Arlington, TX 76011, USA'),
(13, 'Rose Bowl Stadium', 'Pasadena, California, USA', 92246, '1001 Rose Bowl Dr, Pasadena, CA 91103, USA'),
(14, 'Michigan Stadium', 'Ann Arbor, Michigan, USA', 107601, '1201 S Main St, Ann Arbor, MI 48104, USA'),
(15, 'Beaver Stadium', 'State College, Pennsylvania, USA', 106572, '1 Beaver Stadium, University Park, PA 16802, USA'),
(16, 'Ohio Stadium', 'Columbus, Ohio, USA', 102780, '411 Woody Hayes Dr, Columbus, OH 43210, USA'),
(17, 'Tiger Stadium', 'Baton Rouge, Louisiana, USA', 102321, 'Tiger Stadium Dr, Baton Rouge, LA 70802, USA'),
(18, 'Darrell K Royal–Texas Memorial Stadium', 'Austin, Texas, USA', 100119, '405 E 23rd St, Austin, TX 78712, USA'),
(19, 'Neyland Stadium', 'Knoxville, Tennessee, USA', 102455, '1235 Phillip Fulmer Way, Knoxville, TN 37916, USA'),
(20, 'Kyle Field', 'College Station, Texas, USA', 102733, 'Kyle Field, College Station, TX 77843, USA');

-- Inserting additional stadiums in Europe
INSERT INTO Stadium (StadiumID, StadiumName, StadiumLocation, Capacity, "Address")
VALUES
(21, 'San Siro', 'Milan, Italy', 80018, 'Piazzale Angelo Moratti, 20151 Milano MI, Italy'),
(22, 'Olympiastadion Berlin', 'Berlin, Germany', 74669, 'Olympischer Platz 3, 14053 Berlin, Germany'),
(23, 'Estadio da Luz', 'Lisbon, Portugal', 64400, 'Av. Eusébio da Silva Ferreira, 1500-313 Lisboa, Portugal'),
(24, 'Estadio do Dragao', 'Porto, Portugal', 50828, 'Via Futebol Clube do Porto, 4350-415 Porto, Portugal'),
(25, 'Amsterdam Arena', 'Amsterdam, Netherlands', 54850, 'ArenA Boulevard 1, 1101 AX Amsterdam, Netherlands');

-- Inserting additional stadiums in the US
INSERT INTO Stadium (StadiumID, StadiumName, StadiumLocation, Capacity, "Address")
VALUES
(26, 'Lambeau Field', 'Green Bay, Wisconsin, USA', 81441, '1265 Lombardi Ave, Green Bay, WI 54304, USA'),
(27, 'Cotton Bowl Stadium', 'Dallas, Texas, USA', 92000, '3750 The Midway, Dallas, TX 75215, USA'),
(28, 'Mercedes-Benz Stadium', 'Atlanta, Georgia, USA', 71000, '1 AMB Drive NW, Atlanta, GA 30313, USA'),
(29, 'CenturyLink Field', 'Seattle, Washington, USA', 68714, '800 Occidental Ave S, Seattle, WA 98134, USA'),
(30, 'Gillette Stadium', 'Foxborough, Massachusetts, USA', 65867, '1 Patriot Pl, Foxborough, MA 02035, USA');

select * from Stadium

----------------------------------------------------------------- INVENTORY ---------------------------------------------------------

-- Inventory data for FC Barcelona Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(1, 'Jerseys', 100, 25.00, 501),
(2, 'Football Boots', 50, 50.00, 501),
(3, 'Training Cones', 20, 10.00, 501),
(4, 'Goalkeeper Gloves', 15, 30.00, 501);

-- Inventory data for Manchester City Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(5, 'Jerseys', 120, 25.00, 502),
(6, 'Football Boots', 60, 50.00, 502),
(7, 'Training Cones', 25, 10.00, 502),
(8, 'Shin Guards', 40, 15.00, 502);

-- Insert inventory data for Liverpool FC Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(9, 'Jerseys', 90, 25.00, 503),
(10, 'Football Boots', 45, 50.00, 503),
(11, 'Training Cones', 15, 10.00, 503),
(12, 'Water Bottles', 100, 5.00, 503);

-- Insert inventory data for Real Madrid Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(13, 'Jerseys', 110, 25.00, 504),
(14, 'Football Boots', 55, 50.00, 504),
(15, 'Training Cones', 30, 10.00, 504),
(16, 'Training Bibs', 20, 8.00, 504);

-- Insert inventory data for Paris Saint-Germain Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(17, 'Jerseys', 95, 25.00, 505),
(18, 'Football Boots', 48, 50.00, 505),
(19, 'Training Cones', 18, 10.00, 505),
(20, 'First Aid Kits', 10, 100.00, 505);

-- Insert inventory data for Bayern Munich Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(21, 'Jerseys', 105, 25.00, 506),
(22, 'Football Boots', 52, 50.00, 506),
(23, 'Training Cones', 22, 10.00, 506),
(24, 'Goal Nets', 6, 200.00, 506);

-- Insert inventory data for Juventus Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(25, 'Jerseys', 100, 25.00, 507),
(26, 'Football Boots', 50, 50.00, 507),
(27, 'Training Cones', 25, 10.00, 507),
(28, 'Corner Flags', 10, 30.00, 507);

-- Insert inventory data for Chelsea FC Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(29, 'Jerseys', 115, 25.00, 508),
(30, 'Football Boots', 57, 50.00, 508),
(31, 'Training Cones', 23, 10.00, 508),
(32, 'Goalkeeper Jerseys', 12, 40.00, 508);

-- Insert inventory data for Arsenal FC Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(33, 'Jerseys', 80, 25.00, 509),
(34, 'Football Boots', 40, 50.00, 509),
(35, 'Training Cones', 20, 10.00, 509),
(36, 'Captains Armbands', 15, 5.00, 509);

-- Insert inventory data for Borussia Dortmund Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(37, 'Jerseys', 90, 25.00, 510),
(38, 'Football Boots', 45, 50.00, 510),
(39, 'Training Cones', 25, 10.00, 510),
(40, 'Tactical Boards', 5, 80.00, 510);

-- Insert inventory data for Atletico Madrid Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(41, 'Jerseys', 100, 25.00, 511),
(42, 'Football Boots', 50, 50.00,511),
(43, 'Training Cones', 30, 10.00, 511),
(44, 'Whistles', 10, 3.00, 511);

-- Insert inventory data for AC Milan Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(45, 'Jerseys', 95, 25.00, 512),
(46, 'Football Boots', 47, 50.00, 512),
(47, 'Training Cones', 20, 10.00, 512),
(48, 'Goalkeeper Gloves', 8, 30.00, 512);

-- Insert inventory data for FC Barcelona Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(49, 'Jerseys', 100, 25.00, 601),
(50, 'Football Boots', 50, 50.00, 601),
(51, 'Training Cones', 20, 10.00, 601),
(52, 'Shin Guards', 15, 15.00, 601);

-- Insert inventory data for Manchester City Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(53, 'Jerseys', 120, 25.00, 602),
(54, 'Football Boots', 60, 50.00, 602),
(55, 'Training Cones', 25, 10.00, 602),
(56, 'Water Bottles', 40, 5.00, 602);

-- Insert inventory data for Liverpool FC Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(57, 'Jerseys', 90, 25.00, 603),
(58, 'Football Boots', 45, 50.00, 603),
(59, 'Training Cones', 15, 10.00, 603),
(60, 'Towels', 25, 8.00, 603);

-- Insert inventory data for Real Madrid Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(61, 'Jerseys', 110, 25.00, 604),
(62, 'Football Boots', 55, 50.00, 604),
(63, 'Training Cones', 30, 10.00, 604),
(64, 'First Aid Kits', 5, 100.00, 604);

-- Insert inventory data for Paris Saint-Germain Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(65, 'Jerseys', 95, 25.00, 605),
(66, 'Football Boots', 48, 50.00, 605),
(67, 'Training Cones', 18, 10.00, 605),
(68, 'Medicine Balls', 8, 40.00, 605);

-- Insert inventory data for Bayern Munich Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(69, 'Jerseys', 105, 25.00, 606),
(70, 'Football Boots', 52, 50.00, 606),
(71, 'Training Cones', 22, 10.00, 606),
(72, 'Goalkeeper Jerseys', 10, 40.00, 606);

-- Insert inventory data for Juventus Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(73, 'Jerseys', 100, 25.00, 607),
(74, 'Football Boots', 50, 50.00, 607),
(75, 'Training Cones', 25, 10.00, 607),
(76, 'Corner Flags', 5, 30.00, 607);

-- Insert inventory data for Chelsea FC Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(77, 'Jerseys', 115, 25.00, 608),
(78, 'Football Boots', 57, 50.00, 608),
(79, 'Training Cones', 23, 10.00, 608),
(80, 'Goal Nets', 6, 200.00, 608);

-- Insert inventory data for Arsenal FC Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(81, 'Jerseys', 80, 25.00, 609),
(82, 'Football Boots', 40, 50.00, 609),
(83, 'Training Cones', 20, 10.00, 609),
(84, 'Captain Armbands', 10, 5.00, 609);

-- Insert inventory data for Borussia Dortmund Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(85, 'Jerseys', 90, 25.00, 610),
(86, 'Football Boots', 45, 50.00, 610),
(87, 'Training Cones', 25, 10.00, 610),
(88, 'Tactical Boards', 5, 80.00, 610);

-- Insert inventory data for Atletico Madrid Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(89, 'Jerseys', 100, 25.00, 611),
(90, 'Football Boots', 50, 50.00, 611),
(91, 'Training Cones', 30, 10.00, 611),
(92, 'Whistles', 10, 3.00, 611);

-- Insert inventory data for AC Milan Women's Team
INSERT INTO Inventory (ItemID, ItemType, AvailableStock, Cost, Team_ID)
VALUES
(93, 'Jerseys', 95, 25.00, 612),
(94, 'Football Boots', 47, 50.00, 612),
(95, 'Training Cones', 20, 10.00, 612),
(96, 'Goalkeeper Gloves', 8, 30.00, 612);

SELECT * FROM Inventory;

------------------------------------------------------------ FIXTURES --------------------------------------------------
-- Inserting sample data into the Fixtures table
INSERT INTO Fixtures (Fixture_ID, MatchDate, HomeTeam, AwayTeam, StadiumID, Result) VALUES
(1, '2024-04-01', 501, 502, 1, NULL),
(2, '2024-04-02', 503, 504, 2, NULL),
(3, '2024-04-03', 505, 506, 3, NULL),
(4, '2024-04-04', 507, 508, 4, NULL),
(5, '2024-04-05', 509, 510, 5, NULL),
(6, '2024-04-06', 511, 512, 6, NULL),
(7, '2024-04-07', 601, 602, 7, NULL),
(8, '2024-04-08', 603, 604, 8, NULL),
(9, '2024-04-09', 605, 606, 9, NULL),
(10, '2024-04-10', 607, 608, 10, NULL),
(11, '2024-04-11', 609, 610, 11, NULL),
(12, '2024-04-12', 611, 612, 12, NULL)

SELECT * FROM Fixtures;

------------------------------------------------------- TICKET ----------------------------------------------------------

-- Inserting values into the Ticket table
INSERT INTO Ticket (TicketNumber, Fixture_ID, StadiumID, Price, Seat_No, TicketAvailability, Discount)
VALUES
    -- Fixture and stadium IDs are within the allowed range (1-12) and can repeat
    (10000001, 1, 1, 50.00, 'A1', 1, 0.00),
    (10000002, 2, 2, 60.00, 'B2', 1, 0.00),
    (10000003, 3, 3, 55.00, 'C3', 1, 0.00),
    (10000004, 4, 4, 70.00, 'D4', 1, 0.00),
    (10000005, 5, 5, 65.00, 'E5', 1, 0.00),
    (10000006, 6, 6, 75.00, 'F6', 1, 0.00),
    (10000007, 7, 7, 80.00, 'G7', 1, 0.00),
    (10000008, 8, 8, 90.00, 'H8', 1, 0.00),
    (10000009, 9, 9, 85.00, 'I9', 1, 0.00),
    (10000010, 10, 10, 95.00, 'J10', 1, 0.00),
    (10000011, 11, 11, 100.00, 'K11', 1, 0.00),
    (10000012, 12, 12, 105.00, 'L12', 1, 0.00);
SELECT * FROM Ticket;

------------------------------------------------------------ LOGISTICS ----------------------------------------------------------------

-- Example data for Logistics table with real names
INSERT INTO Logistics (LogisticsID, LogisticsName, FixtureID, TransportationMode, DepartureDateAndTime, ArrivalDateAndTime, AccomodationDetails, StadiumID)
VALUES
(1, 'PeterPan', 5, 'Bus', '2024-04-01 08:00:00', '2024-04-01 12:00:00', 'Hotel accommodation provided', 5),
(2, 'Emirates', 3, 'Flight', '2024-04-02 10:00:00', '2024-04-02 14:00:00', 'Resort stay arranged', 3),
(3, 'Amtrack', 11, 'Train', '2024-04-03 07:30:00', '2024-04-03 11:30:00', 'Apartment booked for the team', 11),
(4, 'Yankee', 2, 'Bus', '2024-04-04 09:00:00', '2024-04-04 13:00:00', 'Hostel accommodation arranged', 2),
(5, 'Ethiad', 4, 'Flight', '2024-04-05 12:00:00', '2024-04-05 16:00:00', 'Luxury hotel reserved', 4),
(6, 'NycBus', 12, 'Bus', '2024-04-06 08:30:00', '2024-04-06 12:30:00', 'Team to stay in a beachside villa', 12),
(7, 'The T', 4, 'Train', '2024-04-07 11:30:00', '2024-04-07 15:30:00', 'Team to stay in rented apartments', 4),
(8, 'PeterYan', 6, 'Bus', '2024-04-08 09:30:00', '2024-04-08 13:30:00', 'Accommodation provided in a guesthouse', 6),
(9, 'ExpressTrack', 10, 'Train', '2024-04-09 06:00:00', '2024-04-09 10:00:00', 'Team to stay in a countryside retreat', 10),
(10, 'Qatar', 1, 'Flight', '2024-04-10 13:00:00', '2024-04-10 17:00:00', 'Hotel booked near the stadium', 1);

SELECT * FROM Logistics;
