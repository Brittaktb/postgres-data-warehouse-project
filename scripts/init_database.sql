/*
=================================================================
Create Database and Schemas
=================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checkin if it already exisits.
  If the database exist, is ist dropped and recreated. Additionally, the script sets up three schemas 
  within the database: 'bronze', 'silver', 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' databas if it exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you 
  have proper backups before running this script.
*/

-- Drop and recreate the 'DataWarehouse' database

DROP DATABASE IF EXISTS DataWarehouse;


CREATE DATABASE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;

-- SQL commands:

USE master;
GO  --GO separiert die Befehle in SQL

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;


