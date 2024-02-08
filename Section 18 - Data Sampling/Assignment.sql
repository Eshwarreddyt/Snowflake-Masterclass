--- Assignment ---

1. Sample 5% from the table "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."CUSTOMER_ADDRESS"
Use the ROW method and seed(2) to get a reproducible result.
Store the result in the DEMO_DB in a table called CUSTOMER_ADDRESS_SAMPLE_5.



2. Sample 1% from the table "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."CUSTOMER"

Use the SYSTEM method and seed(2) to get a reproducible result.
Store the result in the DEMO_DB in a table called CUSTOMER_SAMPLE_1.

Questions for this assignment
1.How many rows are in the second created table CUSTOMER_SAMPLE_1?
Answer:  The result can vary and be different in your case but the value should be within ~200,000 and 2,000,000 depeding on your instance. For me it was 1,376,518 rows.

Solution:

-- First share -- 
USE DEMO_DB;
CREATE TABLE CUSTOMER_ADDRESS_SAMPLE_5 AS
SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."CUSTOMER_ADDRESS" SAMPLE ROW(5) SEED(2);

-- Second share -- 
USE DEMO_DB;
CREATE TABLE CUSTOMER_SAMPLE_1 AS
SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."CUSTOMER" SAMPLE SYSTEM(1) SEED(2);