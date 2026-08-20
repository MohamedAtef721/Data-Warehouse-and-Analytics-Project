# Data Warehouse and Analytics Project
A comprehensive end-to-end **Data Warehouse and Analytics solution** built with SQL Server, demonstrating modern data engineering and business intelligence practices using the **Medallion Architecture** pattern. The project covers the complete data pipeline from raw CRM and ERP CSV files through data cleansing, transformation, dimensional modeling, and business-ready analytics.

---
## 🏗️ Architecture Overview

The data architecture follows the Medallion Architecture pattern, consisting of Bronze, Silver, and Gold layers:

![Data Architecture](docs/Data%20Architecture.png)
| Layer | Purpose | Characteristics |
| --- | --- | --- |
| **Bronze** | Raw Data | CSV ingestion from CRM and ERP source systems, stored with minimal transformation |
| **Silver** | Cleansed & Standardized Data | Data cleansing, validation, standardization, normalization, and source integration |
| **Gold**   | Business-Ready Data | Star Schema / Sales Data Mart designed for BI reporting and analytical queries |

**Overall Flow:**

`CRM & ERP Sources → Bronze → Silver → Gold → BI & Reporting / Ad-Hoc SQL Queries`

---
## 📖 Project Overview

This project involves:

1. **Data Architecture**: Designing an end-to-end Data Warehouse using the Medallion Architecture with **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipelines**: Extracting and loading CRM and ERP source data, followed by cleansing, transformation, and standardization.
3. **Data Modeling**: Developing a **Gold-layer Star Schema** with customer and product dimensions and a sales fact table.
4. **Data Quality**: Implementing validation checks to ensure data accuracy, consistency, and integrity across warehouse layers.
5. **Analytics & Reporting**: Preparing business-ready data for **Power BI**, reporting, and ad-hoc SQL analysis.

🎯 This repository demonstrates practical skills in:

- SQL Development
- Data Warehousing
- Data Engineering
- ETL Pipeline Development
- Data Modeling
- Data Quality & Validation
- Business Intelligence & Analytics

---

## 🛠️ Technologies Used

- **SQL Server**
- **T-SQL**
- **BULK INSERT**
- **Stored Procedures**
- **SQL Views**
- **Data Warehouse**
- **Medallion Architecture**
- **Star Schema**
- **Git & GitHub**
- **Excalidraw**

---

## 🚀 ETL Execution

### 1. Create Database & Schemas

Run:

```text
scripts/init_database.sql
```

### 2. Create Bronze Tables

Run:

```text
scripts/bronze/ddl_bronze.sql
```

### 3. Load Bronze Layer

Run:

```sql
EXEC bronze.load_bronze;
```

### 4. Create Silver Tables

Run:

```text
scripts/silver/ddl_silver.sql
```

### 5. Load Silver Layer

Run:

```sql
EXEC silver.load_silver;
```

### 6. Run Silver Data Quality Checks

Run:

```text
scripts/silver/dq_silver.sql
```

### 7. Create Gold Views

Run:

```text
scripts/gold/ddl_gold.sql
```

### 8. Run Gold Data Quality Checks

Run:

```text
scripts/gold/dq_gold.sql
```
---

## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                                       # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                                           # Project documentation and architecture details
│   ├── Data Architecture.png                       # High-level Data Warehouse architecture           
│   ├── Data Flow.png                               # Data flow across warehouse layers
│   ├── Data Model.png                              # Gold-layer Star Schema
│   ├── Data_catalog.md                             # Tables and column descriptions
│   ├── Project_Architecture_Diagrams.excalidraw    # Editable architecture diagrams 
│
├── scripts/                                        # SQL scripts for ETL and transformations
│   ├── bronze/                                     # Raw data loading scripts
│   ├── silver/                                     # Data cleaning and transformation scripts
│   ├── gold/                                       # Business-ready analytical views
│   ├──init_database.sql                            # Creates the Data Warehouse database and schemas  
│
│
├── test/                                           # Data quality and validation scripts
│
└── README.md                                       # Project overview and documentation
```
---
## ☕ Let's Connect


Let's stay in touch! Feel free to connect with me on the following platforms:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mohamed-atef22/)
[![Portfolio](https://img.shields.io/badge/PORTFOLIO-000000?style=for-the-badge&labelColor=000000&color=000000)](https://mohamedatef-ten.vercel.app/)


---
