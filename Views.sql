USE Football_Club_Management;
GO

--View 1: Health Care with Dynamic recovery
CREATE VIEW HealthCareWithDynamicRecovery AS
SELECT 
    HealthCareID,
    Player_ID,
    InjuryType,
    DateInjured,
    RecoveryDays,
    -- Calculates the days since the injury as of now.
    DATEDIFF(day, DateInjured, GETDATE()) AS DaysSinceInjury,
    -- Dynamically calculates the remaining recovery days.
    CASE 
        WHEN RecoveryDays - DATEDIFF(day, DateInjured, GETDATE()) > 0 
        THEN RecoveryDays - DATEDIFF(day, DateInjured, GETDATE()) 
        ELSE 0 
    END AS RecoveryDaysRemaining,
    PhysicalStatus,
    DoctorName
FROM 
    HealthCare;
GO


--View 2: Checking the active contracts 
CREATE VIEW PlayerContractStatus AS
SELECT 
    p.Player_ID, 
    p.PlayerName, 
    c.ContractID, 
    c.StartDate, 
    c.EndDate,
    DATEDIFF(day, GETDATE(), c.EndDate) AS DaysRemaining,
    CASE 
        WHEN DATEDIFF(day, GETDATE(), c.EndDate) > 0 THEN 'Active'
        ELSE 'Inactive'
    END AS ActiveStatus
FROM 
    Player p
JOIN 
    Contract c ON p.Contract_ID = c.ContractID;
GO

--View 3:quick snapshot of ticket sales performance for upcoming events to make informed decisions on marketing, pricing adjustments,�and�logistics.
CREATE VIEW EventTicketSalesOverview AS
SELECT 
    f.Fixture_ID,
    f.MatchDate,
    COUNT(t.TicketNumber) AS TotalTickets,
    SUM(CASE WHEN t.TicketAvailability = 0 THEN 1 ELSE 0 END) AS TicketsSold,
    SUM(CASE WHEN t.TicketAvailability = 1 THEN 1 ELSE 0 END) AS TicketsAvailable,
    CAST(SUM(CASE WHEN t.TicketAvailability = 0 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(t.TicketNumber) * 100 AS PercentageSold,
    AVG(t.Price) AS AverageTicketPrice,
    MAX(t.Price) AS HighestTicketPrice,
    MIN(t.Price) AS LowestTicketPrice
FROM 
    Fixtures f
INNER JOIN 
    Ticket t ON f.Fixture_ID = t.Fixture_ID
GROUP BY 
    f.Fixture_ID, f.MatchDate;
GO

--Executing View 1
SELECT * FROM HealthCareWithDynamicRecovery;
--Executing View 2:
SELECT * FROM PlayerContractStatus;
-- Execution of View 3-- Future events
SELECT * FROM EventTicketSalesOverview WHERE MatchDate > GETDATE();
GO