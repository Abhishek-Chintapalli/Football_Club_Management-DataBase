USE Football_Club_Management;
GO


--UDF 
CREATE FUNCTION dbo.CalculateContractDuration 
(
    @StartDate DATE, 
    @EndDate DATE
) 
RETURNS INT 
AS 
BEGIN 
    RETURN DATEDIFF(DAY, @StartDate, @EndDate); 
END;
GO
--function
SELECT 
    ContractID, 
    dbo.CalculateContractDuration(StartDate, EndDate) AS ContractDurationDays
FROM 
    Contract;
GO

--Udf 2 combined with a View:
-- Step Creating the UDF which calculates and states whether a manager is experienced or under experienced
CREATE FUNCTION dbo.EvaluateManagerExperience
(
    @ExperienceYears INT
)
RETURNS VARCHAR(20)
AS
BEGIN
    RETURN CASE 
        WHEN @ExperienceYears >= 5 THEN 'Experienced'
        ELSE 'Under-experienced'
    END;
END;

GO 

--Creating View using UDF
--Creating the View using the UDF
CREATE VIEW vw_ManagerExperienceLevels
AS
SELECT 
    ManagerID, 
    ManagerName, 
    ManagerPhoneNumber, 
    ManagerEmail, 
    ExperienceYears,
    dbo.EvaluateManagerExperience(ExperienceYears) AS ExperienceLevel
FROM 
    Manager;

Go
--execution
SELECT * FROM vw_ManagerExperienceLevels;
GO

