# Azerbaijan Oil Market Analysis 2019–2024

## Overview
Analysis of Brent crude oil price trends and volatility from 2019 to 2024, 
contextualized for Azerbaijan as a petro-state economy. AZN/USD exchange rate 
data was sourced directly from the Central Bank of Azerbaijan (CBAR) public API.

## Tools Used
- **Python (pandas, matplotlib, statsmodels, yfinance)** — data collection, 
  analysis and regression modeling
- **Tableau Public** — interactive dashboard

## Key Findings
- Brent crude averaged $71.83 over the period, ranging from $26.63 to $117.66
- Oil price volatility peaked in July 2020 (COVID-19 shock) at 25% monthly std dev
- 40% of months (24 out of 60) saw oil below $70 — a critical threshold for 
  Azerbaijan's state budget
- Linear regression shows a statistically significant upward trend of $0.74/month 
  (R² = 0.40, p < 0.001)
- AZN/USD has remained pegged at 1.70 since the 2015 devaluation, 
  insulating local prices from oil volatility

## Techniques Demonstrated
- Live data fetching from CBAR public XML API using Python requests
- Rolling volatility calculation using 6-month standard deviation
- OLS regression with autocorrelation diagnostics (Durbin-Watson)
- Oil price regime classification using pandas cut()
- Dual-axis time series chart in Tableau

## Dashboard
[View Live Dashboard](https://public.tableau.com/app/profile/ayaz.alakbarov/viz/AzerbaijanOilMarketAnalysis20192024/Dashboard1)

## Project Structure
- /notebooks — Jupyter notebook with full Python analysis
- azn_oil_analysis.csv — cleaned dataset exported for Tableau
