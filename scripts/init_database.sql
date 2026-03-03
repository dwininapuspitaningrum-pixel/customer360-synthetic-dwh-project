/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Customer360DB' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'Customer360DB' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Customer360DB' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Customer360DB')
BEGIN
    ALTER DATABASE Customer360DB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Customer360DB;
END;
GO

-- Create the 'Customer360DB' database
CREATE DATABASE Customer360DB;
GO

USE Customer360DB;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
