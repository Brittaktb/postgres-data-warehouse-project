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

-- Create the !DataWarehouse' database

DROP DATABASE IF EXISTS DataWarehouse;


CREATE DATABASE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
