USE Football_Club_Management;
GO


--Non Clustered Index 1: Index on Player Table for Searching by Team
CREATE NONCLUSTERED INDEX idx_Player_TeamID
ON Player (TeamID);
--test no clustered index 1
SELECT 
    i.name AS IndexName,
    COL_NAME(ic.object_id, ic.column_id) AS ColumnName
FROM 
    sys.indexes AS i
INNER JOIN 
    sys.index_columns AS ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
WHERE 
    i.object_id = OBJECT_ID('Player') AND i.type_desc = 'NONCLUSTERED'
ORDER BY 
    i.name, ic.key_ordinal;

--Non Clustered Index 2: Index on HealthCare Table for Quick Access to Player Health Records
CREATE NONCLUSTERED INDEX idx_HealthCare_PlayerID
ON HealthCare (Player_ID);

--Non Clustered Index 3: Index on Fixtures Table for Match Dates
CREATE NONCLUSTERED INDEX idx_Fixtures_MatchDate
ON Fixtures (MatchDate);
