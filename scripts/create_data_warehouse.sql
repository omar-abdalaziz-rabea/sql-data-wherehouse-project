/* Create a datawarehouse from three layers:
1) broze (contains the source data)
2) silver (includes the transformations and cleaning processes)
3) gold (contains the clean, ready data for analysis) */


-- Create Database (DataWarehouse).
USE master;


CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create the first layer (bronze).
CREATE SCHEMA bronze;

GO
-- Create the second layer (selver).
CREATE SCHEMA silver;

GO
-- Create the third layer (gold).
CREATE SCHEMA gold;
