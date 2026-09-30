# Sales Analytics

A complete end-to-end sales analytics project that transforms raw sales data into business insights using Python, MySQL, SQL, and Power BI.

## Project Structure

```
Project Sales_Analysis/
│
├── Dataset/
│   └── Sales Dataset.csv
│
├── Notebook/
│   ├── .ipynb_checkpoints/
│   │   └── Sales_Analysis-checkpoint.ipynb
│   └── Sales_Analysis.ipynb
│
├── Power BI/
│   └── Sales Analytics Dashboard.pbix
│
├── Screenshots/
│   |__ dashboard.png

├── SQL/
│   └── Sales_Analysis.sql
│
└── Readme.md
```

## Setup

1. Clone the repository

```bash
git clone YOUR_REPOSITORY_URL
cd sales-analytics
```

2. Install Python dependencies

```bash
pip install pandas jupyter
```

3. Open the Python notebook

```bash
jupyter notebook
```

4. Import the dataset into MySQL and create the `sales_analytics` database.

5. Run the SQL analysis queries from:

```text
sql/sales_analysis.sql
```

6. Open the Power BI file:

```text
powerbi/Sales_Analytics_Dashboard.pbix
```

## Dataset

The dataset contains:

* **1,194 records**
* **12 columns**
* Sales, profit and quantity information
* Product category and sub-category
* Customer information
* State and city
* Payment method
* Order date

## Tech Stack

* **Python** — Data inspection and validation
* **Pandas** — Data analysis
* **MySQL** — Data storage
* **SQL** — Data cleaning and exploratory analysis
* **Power BI** — Dashboard and visualization
* **DAX** — KPI calculations
* **Git & GitHub** — Version control

## Analysis Performed

* Data inspection and validation
* Missing-value checks
* Duplicate checks
* Data quality validation
* Unit price calculation
* Overall sales and profit analysis
* Category analysis
* Sub-category analysis
* Monthly sales trends
* State-wise sales analysis
* Payment-mode analysis
* Customer sales analysis
* Category-wise profitability

## Dashboard

The Power BI dashboard includes:

* Total Sales
* Total Profit
* Total Quantity
* Monthly Sales Trend
* Sales by Category
* Sales by Sub-Category
* Sales by State
* Sales by Payment Mode
* State Filter
* Category Filter

## Key Results

| Metric                  |          Result |
| ----------------------- | --------------: |
| Total Sales             |       6,182,639 |
| Total Profit            |       1,610,697 |
| Total Quantity          |          12,745 |
| Highest Sales State     |        New York |
| Lowest Sales State      |            Ohio |
| Highest Profit Category | Office Supplies |
| Highest Payment Mode    |      Debit Card |

## Business Insights

* Sales across the three categories are relatively close, but profitability differs.
* Office Supplies generated the highest total profit.
* New York recorded the highest state-level sales, while Ohio recorded the lowest.
* Debit Card had the highest sales and transaction count among payment methods.

## Project Outcome

This project demonstrates an end-to-end data analytics workflow:

```text
CSV → Python → MySQL → SQL EDA → Power BI → Business Insights
```

The project converts raw sales data into an interactive dashboard and actionable business insights.

## Author

**Jyoti Prakash Prusty**

B.Tech — Computer Science & Engineering
