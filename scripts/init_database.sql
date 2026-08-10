/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates the Data Warehouse database and its three main schemas:
    bronze, silver, and gold.

    The Bronze layer stores raw data from source systems.
    The Silver layer stores cleaned and standardized data.
    The Gold layer contains business-ready data for reporting and analytics.

*/

USE master;
GO

CREATE DATABASE DataWarehouse;
GO

Use DataWarehouse;
Go


create Schema bronze;
Go


CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO








