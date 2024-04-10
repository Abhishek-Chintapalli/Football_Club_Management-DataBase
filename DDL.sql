IF EXISTS (SELECT name FROM sys.databases WHERE name = N'Football_Club_Management')
	DROP DATABASE Football_Club_Management;
GO
CREATE DATABASE [Football_Club_Management];
GO
USE [Football_Club_Management];
GO

--USE master


CREATE TABLE Manager (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(255),
    ManagerPhoneNumber VARCHAR(255),
    ManagerEmail VARCHAR(255),
    ExperienceYears INT
);
GO


-- Creating Club Table
CREATE TABLE Club (
    Club_ID INT PRIMARY KEY,
    ClubName VARCHAR(255),
    "Location" VARCHAR(255),
	ManagerID INT,
	FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID)
);
GO

-- Creating Contract Table
CREATE TABLE "Contract" (
    ContractID INT PRIMARY KEY,
    StartDate DATE,
    EndDate DATE,
    ContractTerms VARCHAR(500)
);
GO

--Table Level Check Constraint 1: Contract end date should be > start date
ALTER TABLE Contract
ADD CONSTRAINT chk_ContractDateRange CHECK (EndDate > StartDate);


-- Creating Coach Table
CREATE TABLE Coach (
    CoachID INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone_Number VARCHAR(20),
    Email VARCHAR(255),
    DateOfBirth DATE,
    TacticalStyle VARCHAR(255),
    CoachType VARCHAR(255),
    Contract_Id INT,
    FOREIGN KEY (Contract_Id) REFERENCES Contract(ContractID)
);
GO



-- Creating Team Table
CREATE TABLE Team (
    Team_ID INT PRIMARY KEY,
    TeamName VARCHAR(255),
	TeamGender VARCHAR(255),
    TeamLocation VARCHAR(255),
    CoachID INT,
    Club_ID INT,
	AgeLevel VARCHAR(244),
    FOREIGN KEY (CoachID) REFERENCES Coach(CoachID),
    FOREIGN KEY (Club_ID) REFERENCES Club(Club_ID)
);
GO


-- Creating Player Table
CREATE TABLE Player (
    Player_ID INT PRIMARY KEY,
    PlayerName VARCHAR(255),
    PlayerEmail VARCHAR(255),
    PhoneNumber VARCHAR(20),
    DateOfBirth DATE,
    TeamID INT,
    Contract_ID INT,
    FOREIGN KEY (TeamID) REFERENCES Team(Team_ID),
    FOREIGN KEY (Contract_ID) REFERENCES "Contract"(ContractID)
);
GO


--Table Level Check Constraint 2: min age of the entered player is >= 15
ALTER TABLE Player
ADD CONSTRAINT chk_PlayerMinimumAge CHECK (DATEDIFF(year, DateOfBirth, GETDATE()) >= 15);

-- Creating Health Care Table
CREATE TABLE HealthCare (
    HealthCareID INT PRIMARY KEY,
    Player_ID INT,
    InjuryType VARCHAR(255),
    RecoveryDays INT,
    PhysicalStatus VARCHAR(255),
	DateInjured DATE,
    DoctorName VARCHAR(255),
    FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID)
);
GO



-- Creating Stadium Table
CREATE TABLE Stadium (
    StadiumID INT PRIMARY KEY,
    StadiumName VARCHAR(255),
    StadiumLocation VARCHAR(255),
    Capacity INT,
    "Address" VARCHAR(500)
);
GO


-- Creating Inventory Table
CREATE TABLE Inventory (
    ItemID INT PRIMARY KEY,
    ItemType VARCHAR(255),
    AvailableStock INT,
    Cost DECIMAL(10, 2),
    Team_ID INT,
    FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID)
);
GO

-- Creating Fixtures Table
CREATE TABLE Fixtures (
    Fixture_ID INT PRIMARY KEY,
    MatchDate DATE,
    HomeTeam INT,
    AwayTeam INT,
    StadiumID INT,
    Result VARCHAR(255),
    FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID)
);
GO

-- Adding Foreign Key Constraints to HomeTeam and AwayTeam columns in the Fixtures table
ALTER TABLE Fixtures
ADD CONSTRAINT FK_HomeTeam FOREIGN KEY (HomeTeam) REFERENCES Team(Team_ID);
GO

ALTER TABLE Fixtures
ADD CONSTRAINT FK_AwayTeam FOREIGN KEY (AwayTeam) REFERENCES Team(Team_ID);
GO

-- Table Level Check Constraint 3: Adding Check Constraint to ensure HomeTeam and AwayTeam are not the same
ALTER TABLE Fixtures
ADD CONSTRAINT CHK_HomeAwayTeamsDifferent CHECK (HomeTeam <> AwayTeam);
GO

-- Creating Ticket Table with proper syntax
CREATE TABLE Ticket (
    TicketNumber INT PRIMARY KEY,
    Fixture_ID INT,
    StadiumID INT,
    Price DECIMAL(10, 2),
    Seat_No VARCHAR(10),
    TicketAvailability BIT,  -- Assuming 1 is available, 0 is not available
    Discount DECIMAL(5, 2),
    FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID),
	FOREIGN KEY (Fixture_ID) REFERENCES Fixtures(Fixture_ID)
);
GO

-- Creating Logistics Table
CREATE TABLE Logistics (
    LogisticsID INT PRIMARY KEY,
    LogisticsName VARCHAR(255),
    FixtureID INT,
    TransportationMode VARCHAR(255),
    DepartureDateAndTime DATETIME,
    ArrivalDateAndTime DATETIME,
    AccomodationDetails VARCHAR(500),
	StadiumID INT,
    FOREIGN KEY (FixtureID) REFERENCES Fixtures(Fixture_ID),
	FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID)
);

/*-- Dropping tables in reverse order to avoid foreign key constraint errors
DROP TABLE IF EXISTS Logistics;
DROP TABLE IF EXISTS Ticket;
DROP TABLE IF EXISTS Fixtures;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Stadium;
DROP TABLE IF EXISTS HealthCare;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Coach;
DROP TABLE IF EXISTS "Contract";
DROP TABLE IF EXISTS Club;
DROP TABLE IF EXISTS Manager;
*/
/*
CREATE VIEW PlayersWithSamePhoneNumber AS
SELECT 
    p1.Player_ID AS PlayerID1,
    p1.PlayerName AS PlayerName1,
    p1.PhoneNumber AS PhoneNumber,
    p2.Player_ID AS PlayerID2,
    p2.PlayerName AS PlayerName2
FROM 
    Player p1
JOIN 
    Player p2 ON p1.PhoneNumber = p2.PhoneNumber AND p1.Player_ID < p2.Player_ID;

SELECT * FROM PlayersWithSamePhoneNumber

CREATE PROCEDURE MakePhoneNumbersDistinct AS
BEGIN
    -- Temporary table to hold the mapping of old phone numbers to new phone numbers
    CREATE TABLE #UniquePhoneNumbers (
        OldPhoneNumber VARCHAR(255),
        NewPhoneNumber VARCHAR(255)
    );

    -- Cursor to iterate through duplicate phone numbers
    DECLARE @PhoneNumber VARCHAR(255);
    DECLARE duplicate_phone_cursor CURSOR FOR
    SELECT PhoneNumber
    FROM Player
    GROUP BY PhoneNumber
    HAVING COUNT(*) > 1;

    OPEN duplicate_phone_cursor;

    -- Iterate through all duplicate phone numbers
    FETCH NEXT FROM duplicate_phone_cursor INTO @PhoneNumber;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @NewPhoneNumber VARCHAR(255);
        DECLARE @Counter INT = 1;
        DECLARE @Player_ID INT; -- Correctly declare the @Player_ID variable

        -- Cursor to iterate through all players with the same phone number
        DECLARE player_cursor CURSOR FOR
        SELECT Player_ID
        FROM Player
        WHERE PhoneNumber = @PhoneNumber;

        OPEN player_cursor;
        FETCH NEXT FROM player_cursor INTO @Player_ID;
        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Generate a new phone number by appending a counter
            SET @NewPhoneNumber = CONCAT(@PhoneNumber, '-', @Counter);

            -- Update the phone number for the player
            UPDATE Player
            SET PhoneNumber = @NewPhoneNumber
            WHERE Player_ID = @Player_ID;

            -- Save the mapping of old to new phone numbers
            INSERT INTO #UniquePhoneNumbers (OldPhoneNumber, NewPhoneNumber)
            VALUES (@PhoneNumber, @NewPhoneNumber);

            -- Increment the counter for the next duplicate
            SET @Counter = @Counter + 1;
            FETCH NEXT FROM player_cursor INTO @Player_ID;
        END;

        CLOSE player_cursor;
        DEALLOCATE player_cursor;

        FETCH NEXT FROM duplicate_phone_cursor INTO @PhoneNumber;
    END;

    CLOSE duplicate_phone_cursor;
    DEALLOCATE duplicate_phone_cursor;

    -- Optional: Select the mapping of old to new phone numbers for verification
    SELECT * FROM #UniquePhoneNumbers;

    -- Clean up
    DROP TABLE #UniquePhoneNumbers;
END;


EXEC MakePhoneNumbersDistinct;

Select * from Player*/