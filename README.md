# Sales Performance & Regional Analysis Dashboard

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Postgre SQL](https://img.shields.io/badge/Postgre%20SQL-Script-purple)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-Sales-blue)
![DAX](https://img.shields.io/badge/DAX-Data%20Modelling-orange)

## Project Overview
<img width="1411" height="801" alt="Sales Performance  Regional Analysis" src="https://github.com/user-attachments/assets/470c6eb1-22e0-49d8-afa2-3c9cb8f85637" />


The **Sales Performance & Regional Analysis Dashboard** is a Power BI project focused on exploring sales, profit, product categories, customer characteristics, and regional performance.

The report uses sales data alongside product and customer information to demonstrate how different Power BI visualisations and data modelling techniques can support the exploration of business performance.

The report includes regional analysis and pages demonstrating different visualisation techniques, including charts, tables, matrices, maps, KPI visuals, and other analytical views.

This project was completed as a learning exercise to practise Power BI report development, data modelling, DAX, and data visualisation.

## Business Questions

The report supports exploration of questions such as:

- How do sales and profit vary across product categories?
- How does sales performance differ across regions?
- How do sales and profit change across the years covered by the dataset?
- How are customers distributed across age categories?
- How can different Power BI visualisations help present and explore sales data?
- How can DAX measures be used to calculate and display business performance indicators?

## Project Objectives

### Primary Objective

Develop a Power BI report for exploring sales performance across products, customers, regions, and time.

### Secondary Objectives

1. Explore sales and profit across product categories and reporting periods.
2. Compare performance across regions.
3. Examine customer characteristics using the available customer data.
4. Practise data modelling and relationships between sales, product, and customer tables.
5. Apply DAX measures to calculate business metrics.
6. Explore different visualisation techniques and interactive report elements.

## Project Scope

The report includes three main data areas:

- **Sales Data:** Transaction-level sales information and related performance fields.
- **Product Data:** Product identifiers, names, and categories.
- **Customer Data:** Customer details and demographic or geographic attributes.

The report explores sales performance, profitability, product categories, regional differences, and customer age categories.

The precise date coverage, transaction grain, and definitions of individual measures should be confirmed against the final dataset and report before publication.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Power BI | Report development and visualisation |
| DAX | Measures and calculated metrics |
| Power BI data modelling | Relationships between sales, product, and customer tables |
| CSV | Source data |
| SQL | Supporting data preparation work, where applicable |
| GitHub | Versioned project files and documentation |
| Markdown | Project documentation |

## Data Model

The report's model contains three visible tables:

- `Sales Data`
- `Product Data`
- `Customer Data`

The model view shows the sales table connected to the product and customer tables. These relationships allow sales records to be analysed using product attributes and customer information.

The final documentation should confirm the relationship keys, cardinality, filter direction, and any additional calculated columns or measures.

## Report Pages & Visualisations

The report contains 19 pages, covering a range of Power BI visualisation and analysis techniques.

Visible report pages include:

- Scatterplot
- Table & Matrix
- Cards
- Hierarchies
- Tree Maps
- Maps
- Gauge Chart
- KPI Charts
- Funnel Chart
- DAX
- DAX 2
- Regional Analysis

The report also includes visualisation-focused pages such as ribbon charts, bar charts, small multiples, category-specific charts, line and area charts, combo charts, pie and donut charts, and other chart types.

The Regional Analysis page includes a region selector, sales by category, a distribution of customer age categories, and a comparison of sales and profit across categories and years.

## Key Findings

The report provides a basis for exploring differences in sales and profit across product categories, regions, and reporting periods.

The Regional Analysis page also presents the distribution of customers across age categories for the selected region.

Specific numerical findings and business conclusions will be added after validating the final report's measures and filter settings. The README will distinguish observed patterns from possible explanations, since the dashboard alone may not establish why a performance difference occurred.

## Recommendations

Once the findings have been validated, the analysis can support recommendations such as:

1. Investigating regions with comparatively weak sales performance.
2. Reviewing product-category performance using both sales and profit.
3. Monitoring changes in performance across reporting periods.
4. Using customer and geographic information to identify areas for further analysis.
5. Reviewing the definitions of business measures to ensure consistent reporting.

These are potential analytical actions, not confirmed operational recommendations. Final recommendations should be tied to specific findings from the report.

## Assumptions & Limitations

- The analysis is limited to the fields and records available in the supplied datasets.
- The report's findings depend on the accuracy and completeness of the source data.
- Visual comparisons do not, by themselves, establish the causes of differences in sales or profit.
- Customer characteristics should be interpreted within the limits of the available demographic information.
- This is a learning and portfolio project, not an independently commissioned business engagement.
- Numerical findings and measure definitions must be verified against the final report before being presented as conclusions.

## Attribution

This project was developed as a learning exercise to practise Power BI concepts and report development. The report demonstrates the techniques applied during that learning process; it should not be interpreted as a claim of independently commissioned client work.

## Repository Structure

```text
Sales-Performance-Regional-Analysis/
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
```

The repository structure should match the final files actually published. Include `SalesDB.sql` only if its contents are relevant to the documented data workflow and you intend to maintain it as part of the project.

## Deliverables

- Power BI report (`.pbix`)
- Source CSV datasets, where redistribution is permitted
- Screenshots of selected report pages
- Project documentation

## Author

**Mapenzi Moono**

Data Analytics Portfolio

**Skills demonstrated:** Power BI, DAX, data modelling, data visualisation, sales analysis, and business reporting.

## Project Status

**Portfolio documentation in progress.**

The report is the primary deliverable. The repository and README will be finalised after verifying the data sources, report measures, and principal findings.
