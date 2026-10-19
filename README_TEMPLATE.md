# [Sales Performance & Regional Analysis Dashboard]
> A Power BI learning project analysing sales, profitability, product categories, customer demographics, and regional performance through interactive visualisations and DAX calculations.

---

## ⚙️ Project Type Flags

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
|**Report format**| Interactive Power BI report with multiple pages and visual types | Sales in Rupees

### Tools & Technologies

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

````````

## 5. Data Workflow
``````
Source CSV Files
            ↓
Data Import into Power BI
            ↓
Data Model & Relationships
            ↓
DAX Measures &Calculated Columns
            ↓
Charts, Tables & Other Visual
            ↓
Interactive Power BI Report
```

```

1. **Source:**  The project uses the postgres SQL addin, productdata.xml, customerdata file, 2023sales and salestill2022 dataset as the source of the sales and related business data.
2. **Ingestion:** Import the relevant files into Power BI.
3. **Preperation:** Inspect and prepare the imported data using the steps actually applied in Power Query.
4. **Data Modeling:** Establish relationships between sales records and the related customer and product information.
5. **Analysis:** Create DAX calculations and use them in report visuals.
6. **Visualization:**  Present the results across the report's regional, sales, profitability, and DAX analysis pages.
7. **Output:** An interactive Power BI report saved as a .pbix file, accompanied by documentation and selected screenshots.

```````

## 6. Data Model & Schema


### Dataset / Table: `Sales Data, Customer Data, Product Data`

| Table | Role in report |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|Sales Data     |Contains sales-related records and fields used for sales, profit, order, and year-based analysis.|
|Customer Data  |Contains customer-related attributes, including region, city, state, country, postal code, and customer information used by report visuals.|
|Product Data   |Contains product attributes, including product names used in the report.|


### Relationships
<img width="1126" height="577" alt="Screenshot 2026-10-19 113808" src="https://github.com/user-attachments/assets/c5ce8edf-6eb2-4a01-b54c-521854c05ac7" />
(visuals/screenshots/Data_model.png)

The model connects sales records to customer and product information through the following fields:
Customer Data[Customer ID] → Sales Data[Customer ID]
Product Data[Product_ID] → Sales Data[Product ID]

These relationships allow fields from the related tables to be used alongside sales measures in report visuals. Confirm the exact cardinality and filter direction in Power BI's Model view before documenting those settings.


## 7. Analysis & Metrics

### Analytical Approach

The analysis uses comparative sales-performance analysis to evaluate current-period performance against the previous period. The dashboard combines time-based analysis with breakdowns by country, product type and account to identify changes in sales volume and profitability.

### Key Metrics Defined

| Metric | Plain-Language Definition | Why It Matters |
|--------|--------------------------|----------------|
| **Total Sales** | Calculates the sum of the sales values in the current filter context. |  |
| **Total Profit** | Calculates the sum of profit values in the current filter context. |  |
| **West Sales** | Calculates sales for the West region, subject to the measure's filter behaviour and the model relationships. |  |
| **Distinct Orders** | Counts distinct order numbers in the current filter context. |  |
| **Marketing Category** | Classifies records from the specified states as Top and all other records as Other. This is a rule-based classification used in the report; it is not evidence that marketing performance has been measured or validated. The state labels and capitalisation should also be checked against the source data. |  |
| **Conditional Formatting Colour** | Assigns a colour code based on the Sales2021 value. Values above 600,000 are assigned green, values above 500,000 up to 600,000 are assigned yellow, and the remaining values are assigned red. |  |

### Methods Used
- Time-based trend analysis — compares sales and profit across the years displayed in the report (2019–2022).
- Geographic performance analysis — examines sales and profitability across regions.
- Product-category analysis — compares sales across Furniture, Technology, and Office Supplies.
- Profitability analysis — examines profit by subcategory and profit margin by region.
- Customer demographic analysis — compares the distribution of customers across age groups.
- Comparative analysis — uses report visuals to compare sales, profit, and distinct orders under different filters.

---

## 8. Key Insights
**Insight 1: [Customer Age Distribution]**  
The documented customer distribution is:
| Age category  |  Count  |     Percentage |
|----------|---------------|------------|
Middle aged   |   105    |  41.18% |
Senior   |        94       |  36.86%      |
Young     |       56        |  21.96%    |
Total         |   255        |  100%       |

Middle-aged customers represent the largest group in the documented view, while young customers represent the smallest.
These figures describe the selected dashboard view and should not be generalised to all regions unless the filter context is removed or the broader results are verified.


**Insight 2: [Sales and profit over time]**  
The Regional Analysis page compares sales and profit by year and product category for 2019–2022. The reviewed chart suggests that profit increases substantially over the displayed period.
Exact values and percentage changes have not been recorded here, so no numerical growth claim is made. The trend should be checked against the underlying data and visual filters before reporting specific amounts or growth rates.

**Insight 3: [Product-category performance in the West region]**  
Furniture has the highest sales among the three categories. Technology ranks second. Office Supplies has the lowest sales of the three categories.

---

## 9. Recommendations
---

| Priority | Recommendation | Based On | Suggested Owner |
|----------|---------------|----------|-----------------|
| High |  Compare sales and profit across regions to identify where additional analysis may be useful. |Use the yearly comparisons to identify changes that warrant further investigation. | Regional Sales Directors & Business Intelligence Team |
| High |Examine sales alongside profit to understand whether high sales correspond to stronger profitability.| [Insight it comes from] | Chief Financial Officer & Commercial Strategy Lead|
| Medium |Examine whether customer distributions vary across regions or segments. | [Insight it comes from] | Marketing Analytics Manager & CRM Administrator |
| Medium | Examine sales alongside profit to understand whether high sales correspond to stronger profitability. | [Insight it comes from] | Financial Planning & Analysis |
| Medium |Review the marketing-category classification, fixed target values, and colour thresholds before using them for actual business decisions. | [Insight it comes from] | Marketing Operations Director & Data governance Lead |


---

## 10. Assumptions & Limitations
### Assumptions
- The marketing-category classification is based on specified state names and should not be interpreted as an independently validated marketing segmentation.
- The precise overall dataset date coverage should be confirmed from the source files.
- The documented Regional Analysis page compares 2019–2022.


### Limitations
- The fixed sales multiplier and target-profit value require additional context before they can be interpreted as business measures.
- The report identifies patterns and comparisons but does not establish causal explanations.
- The analysis is limited to the fields available in the supplied datasets.
- Exact numerical findings beyond the supplied Regional Analysis notes have not been independently verified.
- This project demonstrates learning and practical application of Power BI concepts; it is not an independently commissioned client engagement.

---

## 11. Future Enhancements
---
- [ ] Validating the data types, key uniqueness, and consistency of the source tables.
- [ ] Documenting the final dataset date range and data grain.
- [ ] Adding a dedicated sales and profitability overview page, if needed.
- [ ] Documenting key measures with their business definitions and intended use.
- [ ] Validating target values, conditional-formatting thresholds, and currency assumptions.
- [ ] Adding verified numerical findings and percentage changes.
- [ ] Including screenshots of the most informative report pages.


---

## 12. Deliverables

| Deliverable | Description | Location |
|-------------|-------------|----------|
| Power BI report | [ Interactive sales and regional analysis report.] | [`/PowerBI/sales and regional analysis report.`] |
| Source data | [CSV files used by the report, subject to redistribution permissions.] | [`/raw/external/2023sale.csv,....`] [`/processed/sales and regional analysis report.pbix`]  [`/external/..../customer data/`] |
| Dashboard screenshots |Static previews of selected report pages | [`/visuals/Sales Performance  Regional Analysis`] |
| README |Documentation of the project scope, data model, DAX calculations, report features, observations, and limitations. | main |


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
