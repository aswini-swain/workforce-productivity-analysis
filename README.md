# Workforce Productivity & Performance Analysis

## Project Overview
This project analyzes monthly employee records to explore attendance, work hours, overtime, productivity scores, performance ratings, department differences, and location patterns. The data is synthetic and created for portfolio practice.

## Business Problem
HR and department leaders need a consolidated view of attendance, productivity, overtime, and performance to identify patterns and support workforce planning.

## Objectives
- Compare productivity across departments and roles
- Monitor attendance and absenteeism patterns
- Explore overtime and total work hours
- Review performance rating distributions
- Track monthly workforce KPIs

## Dataset
- File: `Dataset/workforce_data.csv`
- Rows: **3,600**
- Fields: **13**
- Data is synthetic and generated for portfolio practice. It does not represent real people or a real organization.

## Tools
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- SQL Server / SSMS
- Excel
- Power BI

## Suggested Workflow
1. Inspect the dataset and data types.
2. Check missing values, duplicates, and outliers.
3. Create analysis-ready fields where appropriate.
4. Perform exploratory analysis in Python.
5. Answer business questions using SQL.
6. Build an interactive Power BI dashboard.
7. Write findings and recommendations based on observed results.

## KPI Ideas
- Employee Count
- Average Productivity Score
- Average Attendance Rate
- Total Work Hours
- Average Overtime Hours
- Average Performance Rating
- Department Productivity
- Monthly Productivity Trend

## Folder Structure
```text
workforce-productivity-analysis/
├── Dataset/
│   └── workforce_data.csv
├── Python/
│   └── analysis.ipynb
├── SQL/
│   └── analysis_queries.sql
├── Dashboard/
│   └── dashboard.pbix  (add your Power BI file)
├── Images/
│   └── dashboard_preview.png  (add a screenshot)
└── README.md

## Deliverables Checklist
- [ ] Validate and clean data
- [ ] Complete Python analysis notebook
- [ ] Run SQL analysis queries and document findings
- [ ] Build Power BI dashboard
- [ ] Add dashboard screenshot to `Images/`
- [ ] Replace the sample insight placeholders below with actual findings

## Insights
> Add 3–5 insights after completing your analysis. Avoid inventing findings before analysis.

## Business Recommendations
> Add 2–4 recommendations tied directly to your measured results.

## How to Use
Download the CSV from the `Dataset` folder. Open the notebook in Jupyter/VS Code and run cells in order. Load the CSV into SQL Server for query practice. Import the cleaned data into Power BI to create the dashboard.
