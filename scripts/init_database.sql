
/*
=================================================================
Creating Database & Schemas
=================================================================
Script Purpose:
	This script create a new database called 'DataWareHouse' after cheking if the database already exist,
	if it exists, it is dropped and recreated. Additionay it Set up 3 Schemas within the database wich represent the 3 Layers :
		-Bronze
		-Silver
		-Goold

WARNING:
	Running this script will drop the eintire 'DataWareHouse' database if exists.
	All the the data in the database will be Permenantly deleted. Proceed with caution and make sure you have proper Backups before running this script

*/


USE master;
GO

--Delete the database if already exists
IF EXISTS (select 1 from sys.databases where name='DataWareHouse')
BEGIN
	alter database DataWareHouse SET SINGLE_USER with rollback immidiate;
	DROP database DataWareHouse;

END;

--Create the Database
Create database DataWareHouse;
Go

use "DataWareHouse";
Go

--Creating the Schemas
Create SCHEMA bronze;
GO
Create SCHEMA silver;
GO
Create SCHEMA Gold;
GO
