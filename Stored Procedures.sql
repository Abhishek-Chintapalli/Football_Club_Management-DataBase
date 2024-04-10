USE Football_Club_Management;
GO


--PROCEDURE 1: A stored procedure to update the recovery days of a player in the HealthCare table by Player_ID.
CREATE PROCEDURE UpdateInjuryDays
    @Player_ID INT,
    @InjuryType VARCHAR(255),
    @AdditionalRecoveryDays INT
AS
BEGIN
    -- Update statement that adds the additional recovery days to the existing recovery days
    UPDATE HealthCare
    SET RecoveryDays = RecoveryDays + @AdditionalRecoveryDays
    WHERE Player_ID = @Player_ID AND InjuryType = @InjuryType;
END;
GO


--Procedure 2: Sells or reduces items based on the requirement like team name, item type and quantity
CREATE PROCEDURE BuyItemForTeam
    @ItemType VARCHAR(255),
    @Quantity INT,
    @TeamName VARCHAR(255)
AS
BEGIN
    DECLARE @Team_ID INT;
    DECLARE @AvailableStock INT;

    -- Retrieve Team_ID based on TeamName
    SELECT @Team_ID = Team_ID FROM Team WHERE TeamName = @TeamName;

    -- Check if the team exists
    IF @Team_ID IS NULL
    BEGIN
        RAISERROR ('Team does not exist.', 16, 1);
        RETURN;
    END

    -- Retrieve available stock for the item for this specific team
    SELECT @AvailableStock = AvailableStock FROM Inventory WHERE ItemType = @ItemType AND Team_ID = @Team_ID;

    -- Check if sufficient stock is available for this team
    IF @AvailableStock >= @Quantity
    BEGIN
        -- Update the Inventory to reduce the stock for this team
        UPDATE Inventory
        SET AvailableStock = AvailableStock - @Quantity
        WHERE ItemType = @ItemType AND Team_ID = @Team_ID;

        PRINT 'Purchase successful for ' + @TeamName + '.';
    END
    ELSE
    BEGIN
        RAISERROR ('Insufficient stock available for this team.', 16, 1);
    END
END;
GO

--Procedure 3: Procedure Which utilizes View and updates the recovery status
CREATE PROCEDURE spUpdatePhysicalStatusFromView
AS
BEGIN
    -- Update PhysicalStatus for those with RecoveryDaysRemaining equal to 0 in the view
    UPDATE hc
    SET hc.PhysicalStatus = 'Recovered'
    FROM HealthCare hc
    INNER JOIN HealthCareWithDynamicRecovery hcv ON hc.HealthCareID = hcv.HealthCareID
    WHERE hcv.RecoveryDaysRemaining = 0 AND hc.PhysicalStatus <> 'Recovered';
END;
GO


--Procedure 4: Adjusting ticket price according to the given input
CREATE PROCEDURE AdjustTicketPrices
    @Fixture_ID INT,
    @IncreasePercentage FLOAT = 10.0,  -- Default increase by 10%
    @DecreasePercentage FLOAT = 10.0   -- Default decrease by 10%
AS
BEGIN
    DECLARE @TotalTickets INT, @SoldTickets INT, @PercentageSold FLOAT;
    
    -- Calculate total tickets and sold tickets
    SELECT @TotalTickets = COUNT(*),
           @SoldTickets = COUNT(CASE WHEN TicketAvailability = 0 THEN 1 END)
    FROM Ticket
    WHERE Fixture_ID = @Fixture_ID;
    
    SET @PercentageSold = CAST(@SoldTickets AS FLOAT) / CAST(@TotalTickets AS FLOAT) * 100;
    
    -- Adjust ticket prices based on the percentage sold
    IF @PercentageSold > 50
    BEGIN
        -- Increase prices due to high demand
        UPDATE Ticket
        SET Price = Price * (1 + @IncreasePercentage / 100)
        WHERE Fixture_ID = @Fixture_ID AND TicketAvailability = 1;
    END
    ELSE IF @PercentageSold < 20 AND DATEDIFF(day, GETDATE(), (SELECT MatchDate FROM Fixtures WHERE Fixture_ID = @Fixture_ID)) < 7
    BEGIN
        -- Decrease prices to encourage sales if the match is within a week
        UPDATE Ticket
        SET Price = Price * (1 - @DecreasePercentage / 100)
        WHERE Fixture_ID = @Fixture_ID AND TicketAvailability = 1;
    END
END;


-- Execution Code:
EXEC UpdateInjuryDays 
    @Player_ID = 9017, -- Replace with actual Player_ID
    @InjuryType = 'Ankle Fracture',
    @AdditionalRecoveryDays = 12;

--Execution Code:
EXEC spUpdatePhysicalStatusFromView;


--Executing the Procedure:
EXEC BuyItemForTeam @ItemType = 'Jerseys', @Quantity = 10, @TeamName = 'FC Barcelona Team';