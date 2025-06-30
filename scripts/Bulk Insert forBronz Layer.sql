
/*
=================================================
Fill the Pronz Layer with Data From Files
=================================================
*/

-------------
--CRM TABLES
-------------
TRUNCATE TABLE bronze.crm_cust_info;

bulk insert bronze.crm_cust_info
FROM "C:\Users\hanna\OneDrive\Desktop\DWH\datasets\source_crm\cust_info.csv"
with (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
);

select * from bronze.crm_cust_info;

--

TRUNCATE TABLE bronze.crm_prd_info;

bulk insert bronze.crm_prd_info
FROM "C:\Users\hanna\OneDrive\Desktop\DWH\datasets\source_crm\prd_info.csv"
with (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
);

select * from bronze.crm_prd_info;

--

TRUNCATE TABLE bronze.crm_sales_details;

bulk insert bronze.crm_sales_details
FROM "C:\Users\hanna\OneDrive\Desktop\DWH\datasets\source_crm\sales_details.csv"
with (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
);

select * from bronze.crm_sales_details;

--
-------------
--ERP TABLES
-------------
TRUNCATE TABLE bronze.erp_cust_az12;

bulk insert bronze.erp_cust_az12
FROM "C:\Users\hanna\OneDrive\Desktop\DWH\datasets\source_erp\cust_az12.csv"
with (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
);

select count(*) from bronze.erp_cust_az12;



TRUNCATE TABLE bronze.erp_loc_a101;

bulk insert bronze.erp_loc_a101
FROM "C:\Users\hanna\OneDrive\Desktop\DWH\datasets\source_erp\loc_a101.csv"
with (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
);

select * from bronze.erp_loc_a101;


TRUNCATE TABLE bronze.erp_px_cat_g1v2;

bulk insert bronze.erp_px_cat_g1v2
FROM "C:\Users\hanna\OneDrive\Desktop\DWH\datasets\source_erp\px_cat_g1v2.csv"
with (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
);

select count(*) from bronze.erp_px_cat_g1v2;