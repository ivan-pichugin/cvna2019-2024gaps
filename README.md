# Gap-Up Analysis: CVNA (2019–2025)

## Project Objective
The objective of this project is to identify and analyze **positive gap-up events** in CVNA stock over the period from 2019 to 2024 and to determine whether gap formation exhibits **predictable patterns or structural regularities**.

The analysis is based exclusively on **daily OHLC price data** and is intentionally indicator-free to focus purely on price behavior.

---

## Data Overview
The dataset contains daily price data for CVNA, including:
- Open
- High
- Low
- Close

Each record represents one trading day.  
The data spans from 2019 through 2024.

---

## Methodology

### Gap Detection
A **gap-up** is defined as a trading day where the opening price exceeds the previous day’s closing price by a positive percentage threshold.

Only positive gaps were considered for this analysis.

---

## Exploratory Analysis

**Observations:**
- Gap-up events are not evenly distributed over time
- Gaps tend to cluster during specific periods
- Years with elevated market volatility show a significantly higher number of gaps
- During stable price regimes, gap formation becomes rare

This indicates that gap formation is **regime-dependent**, rather than a constant market feature.

---

## Gap Size Distribution

### Gap Buckets
All gap-up events were grouped into the following buckets:
- 3–5%
- 5–7%
- 7–10%
- >10%

These buckets were then visualized on the price chart to assess whether gap size follows any structural pattern.

---

## Interim Conclusions
Based on the exploratory analysis:

- Gap-up events tend to occur during periods of elevated volatility
- Gap formation is not random and depends strongly on market regime
- Gap size alone does not exhibit a strong standalone pattern
- Moderate gaps (3–5%) dominate the overall population

These findings justify further analysis of **post-gap price behavior**.

---

## Next Steps
The next phase of the project focuses on evaluating whether gap-up events offer a tradable edge.

Planned analysis:
- Calculation of forward returns at +2, +5, and +10 trading days
- Performance comparison across gap size buckets
- Assessment of statistical significance and robustness

---

## Tools Used
- SQL
- Tableau


