/*
================================================================================
-- DQ Script: Gold Layer Data Quality Checks
================================================================================
Script Purpose:
    Performs data quality and validation checks on the Gold Layer views.

    The script validates:
        - Uniqueness of surrogate keys in customer and product dimensions.
        - Referential integrity between the sales fact and customer/product
          dimensions.
        - Connectivity of the Gold Layer Star Schema.

    Expectation:
        - No duplicate customer or product surrogate keys.
        - No sales records with missing customer or product dimension keys.
        - All fact records successfully connect to their corresponding dimensions.

    The script is used to verify the integrity and consistency of the Gold Layer
    before consuming the data for BI reporting and analytics.
================================================================================
*/

-- ====================================================================
-- Checking 'gold.dim_customers'
-- ====================================================================
-- Check for Uniqueness of Customer Key in gold.dim_customers
-- Expectation: No results 
SELECT customer_key,COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.product_key'
-- ====================================================================
-- Check for Uniqueness of Product Key in gold.dim_products
-- Expectation: No results 
SELECT product_key,COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.fact_sales'
-- ====================================================================
-- Check the data model connectivity between fact and dimensions
SELECT * 
FROM gold.fact_sales f LEFT JOIN gold.dim_customers c
		ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
		ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL  
