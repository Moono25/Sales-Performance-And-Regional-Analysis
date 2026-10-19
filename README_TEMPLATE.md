# [Project Title]
> *One sentence. What did you analyze, build, or solve - and why does it matter?*

---

## ⚙️ Project Type Flags
> *Check what applies. This helps reviewers and collaborators understand the nature of the work at a glance. Delete this block before publishing.*

- [ ] Exploratory Data Analysis (EDA)
- [ ] SQL Analysis / Querying
- [ ] Dashboard / Data Visualization
- [ ] Data Pipeline / ETL
- [ ] Predictive Modelling / Machine Learning
- [ ] Data Cleaning / Wrangling
- [ ] End-to-End (multiple of the above)
- [ ] Other: ___________

---

## Table of Contents
1. [Project Overview](#1-project-overview)
2. [Objectives](#2-objectives)
3. [Project Scope & Tools](#3-project-scope--tools)
4. [Repository Structure](#4-repository-structure)
5. [Data Workflow](#5-data-workflow)
6. [Data Model & Schema](#6-data-model--schema)
7. [Analysis--DAX-measures](#7-Analysis--DAX-Measures) 
8. [Analysis & Metrics](#8-analysis--metrics)
9. [Key Observations](#9-key-insights)
10. [Recommendations](#10-recommendations)
11. [Attribution](#11-assumptions--limitations)
12. [Future Enhancements](#12-future-enhancements)
13. [Deliverables](#13-deliverables)
14. [Author](#14-author)

---

## 1. Project Overview

<!--
The Sales Performance & Regional Analysis Dashboard is a Power BI project exploring sales, profitability, product categories, customer demographics, and regional performance.

The report uses sales data alongside customer and product information to demonstrate how Power BI can be used to analyse business performance through interactive visualisations, data relationships, and DAX calculations.

The project includes a Regional Analysis page and additional pages exploring DAX measures, calculated columns, and different Power BI visualisation techniques.

The report covers sales performance across the years 2019–2022 in the Regional Analysis page, with the precise overall dataset coverage to be confirmed from the source files.

This project was completed as a learning exercise to practise Power BI report development, data modelling, DAX, and data visualisation.
-->

**Context:** [The business, research, or personal situation that motivated this project.]

**Problem Statement:** [The specific question or challenge you were addressing.]

**Approach:** [In 1–2 sentences - how did you tackle it?]

**Outcome:** [What did you produce or discover?]

---

## 2. Objectives

- **Primary Objective:** [ Build an interactive Power BI report for exploring sales and profitability across regions, product categories, and years.]
- **Secondary Objective 1:** [ Combine sales, customer, and product information through relationships between tables.]
- **Secondary Objective 2:** [Create DAX measures and calculated columns to support business-performance analysis.]
- **Secondary Objective 3:** [Practise presenting information through different Power BI visualisations and report pages.]
- **Secondary Objective 4:** [Identify observations from regional, product-category, profitability, and customer-demographic views.]

---

## 3. Project Scope & Tools

### Scope

| Dimension | Details |
|-----------|---------|
| **In Scope** | Sales performance, profit, product categories, regional comparisons, customer age groups, and selected DAX calculations |
| **Out of Scope** | Forecasting, causal analysis, validated marketing effectiveness, and recommendations based on independently verified company operations |
| **Time Period** | The Regional Analysis page displays 2019–2022. The full source-data date range has not been independently confirmed. |
| **Granularity** | The report uses sales records and associated customer and product information. Exact row-level grain and row counts should be confirmed from the source files. |
|**Report format**| Interactive Power BI report with multiple pages and visual types |
Sales in Rupees
### Tools & Technologies

<!--
  List only what you actually used on this project.
  This is not your skills section - it's the project's technical context.
-->

| Category | Tool(s) Used |
|----------|-------------|
| Data Storage | CSV files, files and xml |
| Data Processing | SQL, Excel and PowerBI |
| Analysis | DAX measures and calculated columns and SQL queries |
| Visualization | Microsoft Power BI |
| Version Control | GitHub|
| Documentation | Markdown |


## 4. Repository Structure

```
[Sales-Performance-Regional-Analysis]
├── data/
│   └── external/
│     └── Customer Data/
|      ├── Customer_central.csv
|      ├── Customer_east.csv
|      ├── Customer_south.csv
|      ├── Customer_east.csv
|  └── 2023sales.csv
|  └── README.md
|              
│  └── processed/
|       └── README.md
|       └── Sales_Performance_Regional_Analysis.pbix
│  └── raw/
│    ├── Salestill2022.csv
|    ├── ProductData.xml
│    └── 2023sales.csv
|    └── README.md
├── script/
│   └── Postgre_SQL_addin.sql
├── powerbi/
│   └── Sales_Performance_Regional_Analysis.pbix
├── visuals/
│   └── screenshots/
└── README.md
---

## 5. Data Workflow
```
[Source CSV Files]
            ↓
[Data Import into Power BI]
            ↓
[Data Model & Relationships]
            ↓
[DAX Measures &Calculated Columns]
            ↓
[Charts, Tables & Other Visual
            ↓
[Interactive Power BI Report
```

```

1. **Source:** The project uses the Plant_DTS.xls dataset as the source of the sales and related business data.
2. **Ingestion:** The source workbook was imported into Power BI for preparation and analysis.
3. **Cleaning:** The source data was reviewed and prepared using Power Query to ensure that the tables and fields were suitable for analysis.
4. **Data Modeling:** Relationships were established between the relevant tables within the Power BI data model.
5. **Transformation:** Data was transformed into a structure suitable for the dashboard and analytical calculations by removing empty columns and making sure formats were consistent.
6. **Analysis:** DAX measures were created to calculate sales-performance metrics including YTD, PYTD, YTD vs PYTD, quantity, gross profit and gross profit percentage.
7. **Output:** The prepared data and measures were presented through an interactive Power BI sales performance dashboard.

---

## 6. Data Model & Schema


### Dataset / Table: `Plant_FACT`

| Field / Attribute | Purpose |
|-------------------|---------|
| Sales information | Used to calculate sales performance |
| Quantity | Used to evaluate sales volume |
| Gross Profit | Used to evaluate profitability |
| Date | Used for time-based analysis |
| Account | Used to analyse performance across accounts |
| Product information | Used to analyse performance by product type |
| Country | Used for geographic analysis |

> ### Accounts

The `Accounts` table contains account-level information used to analyse sales performance across different accounts.

### Plant_Hierarchy

The `Plant_Hierarchy` table contains product hierarchy information used to categorise and analyse products.

### Relationships

The tables are connected within the Power BI data model so that sales measures from the `Plant_FACT` table can be analysed using account and product attributes.


## 7. Analysis & Metrics

### Analytical Approach

The analysis uses comparative sales-performance analysis to evaluate current-period performance against the previous period. The dashboard combines time-based analysis with breakdowns by country, product type and account to identify changes in sales volume and profitability.

### Key Metrics Defined

| Metric | Plain-Language Definition | Why It Matters |
|--------|--------------------------|----------------|
| **Sales** | Total sales value generated during the selected period. | Measures overall revenue performance. |
| **Quantity** | Total quantity of products sold during the selected period. | Measures sales volume independently of sales value. |
| **Gross Profit** | Profit generated after accounting for the relevant cost of sales. | Measures the profitability generated from sales. |
| **Gross Profit %** | Gross profit expressed as a percentage of sales. | Shows profitability relative to sales value. |
| **YTD** | Sales or performance accumulated from the beginning of the selected year to the selected date. | Shows current-year performance to date. |
| **PYTD** | The equivalent year-to-date period from the previous year. | Provides a comparable baseline for current performance. |
| **YTD vs PYTD** | Comparison between current YTD performance and the corresponding previous-year period. | Identifies whether performance has improved or declined. |

### Methods Used

- Year-to-date and previous-year-to-date comparison
- Time-based trend analysis
- Geographic performance analysis
- Product-type performance analysis
- Account-level performance analysis
- Comparative analysis of sales, quantity and profitability

---

## 8. Key Insights
**Insight 1: [Sales performance changed across the comparison period]**  
The dashboard allows current-period sales performance to be compared with the corresponding previous period, highlighting changes in overall sales performance.

**Insight 2: [Sales volume and profitability do not necessarily move together]**  
Comparing quantity, sales and gross profit provides a broader view of performance than relying on sales value alone.

**Insight 3: [Performance varies across business dimensions]**  
The dashboard shows differences in performance across countries, product types and accounts, allowing areas of stronger and weaker performance to be identified.

**Insight 4: [Profitability requires separate monitoring]** 

Gross profit and gross profit percentage provide additional context when evaluating sales performance and help distinguish revenue growth from changes in profitability.

---

## 9. Recommendations
---

| Priority | Recommendation | Based On | Suggested Owner |
|----------|---------------|----------|-----------------|
| High | Investigate countries and accounts showing sustained weaker sales or profitability performance to identify the factors contributing to the decline. | Geographic and account-level performance analysis | Sales / Management |
| High | Monitor gross profit percentage alongside sales when evaluating performance so that increases in sales volume are considered alongside profitability. | Sales and profitability comparison | Management / Finance |
| Medium | Review product-type performance to identify categories contributing most strongly to sales and profitability and those requiring attention. | Product-type analysis | Sales / Product Management |

---

## 10. Assumptions & Limitations
### Assumptions

- The source data was assumed to be representative of the sales activity covered by the dataset.
- The YTD and PYTD calculations are treated as appropriate comparable periods for evaluating performance.
- The definitions of sales, quantity, gross profit and gross profit percentage are based on the definitions provided within the source project/data model.

### Limitations

- The analysis is based on the available Plant.Co dataset and therefore reflects only the information contained in that dataset.
- The dashboard identifies patterns and differences in performance but does not establish the underlying causes of those changes.
- Customer-level purchasing behaviour was outside the scope of the analysis.
- Product size information was excluded from the analysis.
- The project is a follow-along implementation based on an existing Plant.Co dashboard/case study rather than an independent analysis conducted for Plant.Co.
---

## 11. Future Enhancements
---

- [ ] Add more detailed customer-level analysis if suitable customer data becomes available.
- [ ] Expand the dashboard with additional profitability and product-performance analysis.
- [ ] Introduce automated data refresh if the project were connected to a recurring operational data source.
- [ ] Add more detailed drill-through analysis for underperforming countries, products and accounts.

---

## 12. Deliverables

| Deliverable | Description | Location |
|-------------|-------------|----------|
| [Power BI dashboard] | [Interactive Plant.Co performance report dashboard containing the analysis and visualizations.]| [powerbi/PlantCo_Sales_Performance.pbix] |
| [Source dataset]  | [Original Plant.Co dataset used as the source for the analysis.] |  [`/data/Plant_DTS.xls`] |
| [Data dictionary] | [Documentation describing the relevant dataset fields and structure.] | [`/docs/data_dictionary.md`] |
| [Project Documentation] | [README documenting the project, workflow, analysis and findings.] | [`/README.md`] |

---

## 13. Author

**[Mapenzi Moono]**
[Data support/Intern - Data Analyst/ Research Associate/ M&E Assistant]

- 🔗 [https://www.linkedin.com/in/mapenzi-moono-445aaa26a/]
- 💼 [Portfolio or GitHub profile URL]
- 📧 [mapenzimoono345@gmail.com]

---

*Last updated: 10/2026*
*If this template helped you, consider starring the repository.*
