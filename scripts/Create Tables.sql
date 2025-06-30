
/*
==============================
Create Tables Of Bronze Layer
==============================
*/

--Create CRM Tables if not Exist

if OBJECT_ID('bronze.crm_cust_info','U') is not null
	Drop table bronze.crm_cust_info;
create table bronze.crm_cust_info(
	cst_id int,
	cst_key nvarchar(10),
	cst_firstname nvarchar(50),
	cst_lastname nvarchar(50),
	cst_marital_status nvarchar(5),
	cst_gndr nvarchar(2),
	cst_create_date date
);

if OBJECT_ID('bronze.crm_prd_info','U') is not null
	Drop table bronze.crm_prd_info;
create table bronze.crm_prd_info(
	prd_id int,
	prd_key nvarchar(50),
	prd_nm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd__start_dt date,
	prd_end_dt date
);

if OBJECT_ID('bronze.crm_sales_details','U') is not null
	Drop table bronze.crm_sales_details;
create table bronze.crm_sales_details(
	sls_ord_num nvarchar(50),
	sls_prd_key nvarchar(50),
	sls_cust_id int,
	sls_order_dt varchar(10),
	sls_ship_dt varchar(10),
	sls_due_dt varchar(10),
	sls_sales int,
	sls_quantity int,
	sls_price int
);

--Create ERP Tables if not Exist

if OBJECT_ID('bronze.erp_cust_az12','U') is not null
	Drop table bronze.erp_cust_az12;
create table bronze.erp_cust_az12(
	cid varchar(50),
	bdate date,
	gen varchar(50)
);

if OBJECT_ID('bronze.erp_loc_a101','U') is not null
	Drop table bronze.erp_loc_a101;
create table bronze.erp_loc_a101(
	cid varchar(50),
	cntry varchar(50)
);

if OBJECT_ID('bronze.erp_px_cat_g1v2','U') is not null
	Drop table bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2(
	id varchar(50),
	cat varchar(50),
	subcat varchar(50),
	maintenance varchar(50)
);