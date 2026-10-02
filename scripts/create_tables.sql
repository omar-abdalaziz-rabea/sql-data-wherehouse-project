-- Create the tables as they are in the source system CRM.

-- Create the tables as they are in the source system CRM.

IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;

-- First: Create customers table.
CREATE TABLE bronze.crm_cust_info
(
	cst_id INT ,
	cst_key VARCHAR(20),
	cst_first_name VARCHAR(20),
	cst_last_name VARCHAR(20),
	cst_material_status VARCHAR(20),
	cst_gndr VARCHAR(20),
	cst_create_date DATE
);

IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;

-- Second: Create product table.
CREATE TABLE bronze.crm_prd_info
(
	prd_id INT,
	prd_key VARCHAR(20),
	prd_nm VARCHAR(50),
	prd_cost INT,
	prd_line VARCHAR(5),
	prd_start_dt DATETIME,
	prd_end_date DATETIME
);

IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;

-- Third Create details table.
CREATE TABLE bronze.crm_sales_details
(
	sls_ord_num VARCHAR(50),
	sls_prd_key VARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

-- Create tables as they are in source system ERP.

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;

-- First: create cust_az12 table.
CREATE TABLE bronze.erp_cust_az12
(
	cid VARCHAR(20),
	bdate DATE,
	gen NVARCHAR(50)
);


IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;

-- Second: create loc_a101 table.
CREATE TABLE bronze.erp_loc_a101
(
	cid VARCHAR(50),
	cntry NVARCHAR(20)
);


IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;


-- Thirs: create px_cat_g1v2.
CREATE TABLE bronze.erp_px_cat_g1v2
(
	id VARCHAR(20),
	cat VARCHAR(20),
	subcat VARCHAR(20),
	maintenance VARCHAR(10)
);
