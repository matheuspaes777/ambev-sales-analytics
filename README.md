# 🍺 Sales & Distribution Analytics — AmBev Style

---

## 🎯 About the Project

This repository presents a complete **Data Analytics and Business Intelligence** solution inspired by the sales, logistics, and distribution processes of the beverage industry (AmBev style).

The project was structured to demonstrate an **End-to-End Data Pipeline**, covering everything from programmatic data engineering and synthesis to delivering value for executive decision-making.

---

## 🏗️ Data Pipeline Architecture

```text
┌─────────────────────────┐         ┌──────────────────────────┐         ┌─────────────────────────┐
│      Python Script      │  ───►   │     Database (CSV)       │  ───►   │   Power BI Dashboard    │
│ (Generation & Simulation)│        │   & SQL Queries          │         │    (KPIs & Insights)    │
└─────────────────────────┘         └──────────────────────────┘         └─────────────────────────┘

```

### 🛠️ Tech Stack

* **Python 3.13 (Pandas, NumPy):** Automation of realistic synthetic data generation, applying business rules, seasonality, unit prices, and volume metrics.
* **SQL:** Development of advanced analytical queries (`GROUP BY`, aggregations, subqueries, and window functions) to extract key performance indicators.
* **Power BI Desktop:** Data modeling, visual formatting, and construction of an executive dashboard focused on usability and clean design.
* **Git & GitHub:** Code versioning and standardized technical documentation.

---

## 📊 Key Performance Indicators (KPIs)

The management dashboard consolidates the main operational and financial metrics of the operation:

* 💰 **Total Revenue:** R$ 15.56M
* 📦 **Total Volume Sold:** 255k units
* 🎟️ **Average Order Value (AOV):** R$ 15.56k
* 🗺️ **Segmentation by Region:** Performance and market penetration analysis across the South, Southeast, Midwest, and Northeast regions.
* 🏪 **Sales Channel Analysis:** Comparative efficiency analysis between Supermarkets, Distributors, Bars/Restaurants, and Convenience Stores.

---

## 🖥️ Executive Dashboard Preview

---

## 📁 Repository Structure

```text
ambev-sales-analytics/
│
├── gerar_dados.py               # Python script responsible for generating the dataset
├── vendas_ambev_style.csv       # Structured database (1,000 sales records)
├── queries_analise.sql          # Analytical SQL queries for decision support
├── dashboard_vendas_ambev..pbip # Power BI project and report configuration files
├── printdashboard.png           # Image/preview of the dashboard in Dark Mode
└── README.md                    # Detailed project documentation

```

---

## 🚀 How to Run the Project

If you want to reproduce or test the environment locally:

1. **Clone the repository:**

```bash
git clone https://github.com/matheuspaes777/ambev-sales-analytics.git

```

2. **Generate the dataset via Python:**
Make sure you have Python installed with the `pandas` and `numpy` packages, then run:

```bash
python gerar_dados.py

```

3. **Explore Analytical Queries:**
Open the `queries_analise.sql` file in your preferred database management tool compatible with SQLite/SQL.
4. **View the Dashboard:**
Open the Power BI project using Power BI Desktop to interact with the filters and visual metrics.

---

## 👤 Author

Developed by **Matheus Thiago Paes de Barros**

*Computer Science Student — UNG*
