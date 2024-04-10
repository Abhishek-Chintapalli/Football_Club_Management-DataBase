USE Football_Club_Management;
GO

--Encryption

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'MessiRonaldoNeymar100711';
go

CREATE CERTIFICATE CoachPhoneCert
WITH SUBJECT = 'Encryption Certificate for Coach Phone Numbers';
go

CREATE SYMMETRIC KEY SymKey_CoachPhone
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE CoachPhoneCert;
go

ALTER TABLE Coach
ADD EncryptedPhoneNumber VARBINARY(MAX);
go

-- Open the symmetric key
OPEN SYMMETRIC KEY SymKey_CoachPhone
DECRYPTION BY CERTIFICATE CoachPhoneCert;

-- Encrypt and update the phone numbers
UPDATE Coach

SET EncryptedPhoneNumber = EncryptByKey(Key_GUID('SymKey_CoachPhone'), Phone_Number);
-- Close the symmetric key
CLOSE SYMMETRIC KEY SymKey_CoachPhone;
go

ALTER TABLE Coach DROP COLUMN Phone_Number;
GO

Select * from Coach
Go
--Decryption the phone numbers in a select statement

CREATE PROCEDURE DecryptCoachPhoneNumbers AS
BEGIN
    OPEN SYMMETRIC KEY SymKey_CoachPhone DECRYPTION BY CERTIFICATE CoachPhoneCert;
    SELECT CoachID, Name, CONVERT(VARCHAR(50), DecryptByKey(EncryptedPhoneNumber)) AS DecryptedPhoneNumber
    FROM Coach;
    CLOSE SYMMETRIC KEY SymKey_CoachPhone;
END;
GO

-- Remove the Phone_Number column after you've backed up or are certain you won't need the plaintext values

EXEC DecryptCoachPhoneNumbers;
GO