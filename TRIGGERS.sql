USE Football_Club_Management;
GO


--Trigger 1: Ensures that fixtures are not scheduled on the same day at the same stadium to avoid scheduling conflicts.
CREATE TRIGGER trg_ValidateFixtureScheduling
ON Fixtures
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Fixtures f
        JOIN inserted i ON f.StadiumID = i.StadiumID AND f.MatchDate = i.MatchDate
    )
    BEGIN
        RAISERROR ('A match is already scheduled at this stadium on the selected date.', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO Fixtures (Fixture_ID, MatchDate, HomeTeam, AwayTeam, StadiumID, Result)
        SELECT Fixture_ID, MatchDate, HomeTeam, AwayTeam, StadiumID, Result
        FROM inserted;
    END
END;
Go

--Trigger 2: Gives error message if contract is more than 5 or less than 2

CREATE TRIGGER trg_ValidateContractDuration
ON Contract
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @minDuration INT = 365; -- Minimum duration of contract in days (1 year)
    DECLARE @maxDuration INT = 1825; -- Maximum duration of contract in days (5 years)

    -- Validate each row 
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE DATEDIFF(day, StartDate, EndDate) NOT BETWEEN @minDuration AND @maxDuration
    )
    BEGIN
        RAISERROR ('The contract duration must be between 1 to 5 years.', 16, 1);
        ROLLBACK TRANSACTION; -- Stop the insert operation
        RETURN;
    END

    -- If validation passes, perform the insert
    INSERT INTO Contract (ContractID, StartDate, EndDate, ContractTerms)
    SELECT ContractID, StartDate, EndDate, ContractTerms
    FROM inserted;
END;
go

--Trigger 3: Inventory can never go in negative stock
CREATE TRIGGER trg_EnsurePositiveInventory
ON Inventory
AFTER UPDATE
AS
BEGIN
    -- Check if the update leads to negative AvailableStock
    IF EXISTS (
        SELECT 1
        FROM inserted i
        WHERE i.AvailableStock < 0
    )
    BEGIN
        RAISERROR ('Inventory AvailableStock cannot be negative.', 16, 1);
        ROLLBACK TRANSACTION; -- Roll back the update if it violates the rule
	END
END;
go

--Trigger 4: No duplicate phone numbers are allowed
CREATE TRIGGER trg_EnsureUniquePhoneNumber_Player
ON Player
AFTER INSERT, UPDATE
AS
BEGIN
    -- Check for duplicate phone numbers in the Coach table
    IF EXISTS (
        SELECT * FROM inserted i
        WHERE EXISTS (SELECT 1 FROM Coach c WHERE c.Phone_Number = i.PhoneNumber)
    )
    BEGIN
        RAISERROR ('Duplicate phone number detected in Coach table.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Check for duplicate phone numbers in the Manager table
    IF EXISTS (
        SELECT * FROM inserted i
        WHERE EXISTS (SELECT 1 FROM Manager m WHERE m.ManagerPhoneNumber = i.PhoneNumber)
    )
    BEGIN
        RAISERROR ('Duplicate phone number detected in Manager table.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Check for duplicate phone numbers in the Player table itself, excluding the current record if it's an update
    IF EXISTS (
        SELECT * FROM inserted i
        WHERE EXISTS (
            SELECT 1 FROM Player p
            WHERE p.PhoneNumber = i.PhoneNumber
            AND p.Player_ID != i.Player_ID
        )
    )
    BEGIN
        RAISERROR ('Duplicate phone number detected in Player table.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;




/*INSERT INTO "Contract" (ContractID, StartDate, EndDate, ContractTerms) VALUES
(437, '2024-01-01', '2030-12-31', 'FC Barcelona Team: Min 2 Years.');
SELECT * FROM Contract

DELETE FROM "Contract" WHERE ContractID = 437;
DELETE FROM "Player" WHERE Player_ID = 1023;


INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(100, 'Lionel Ronaldo', 'lionelronaldo@barca.com', '123456789', '1988-06-24', 502, 425)

INSERT INTO Player (Player_ID, PlayerName, PlayerEmail, PhoneNumber, DateOfBirth, TeamID, Contract_ID) VALUES
(9001, 'Pierre-Emerick Aubameyang', 'pierreaubameyang@arsenal.com', '123456789', '1989-06-18', 508, 432),
(8011, 'Edouard Mendy', 'edouardmendy@chelsea.com', '654123789', '1992-03-01', 508, 432); */


