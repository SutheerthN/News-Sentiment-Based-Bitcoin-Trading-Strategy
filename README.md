# Bitcoin News Sentiment Trading Strategy

This project presents a rule-based algorithmic trading strategy for Bitcoin (BTC-USD), leveraging sentiment analysis of financial and geopolitical news headlines. It evaluates how market sentiment impacts short-term BTC price movements and tests the effectiveness of sentiment-driven trading decisions.

---

## Overview

- **Objective**: Use daily crypto-relevant headlines to generate trading signals based on sentiment analysis.
- **Approach**: Combine Natural Language Processing (NLP) with Bitcoin price data to backtest a Buy/Sell/Hold strategy.
- **Timeframe**: February 24 – March 15, 2022 (includes key geopolitical events like the Russia–Ukraine conflict).
- **Technologies**: Python, NLTK (VADER), yFinance, Pandas, Matplotlib

---

## Methodology

### 1. Sentiment Analysis

- Headlines are processed using the **VADER SentimentIntensityAnalyzer** from NLTK.
- Each headline receives a `compound` sentiment score in the range [-1, 1].

### 2. Signal Generation

- Sentiment score ≥ **0.2** → **Buy**
- Sentiment score ≤ **-0.2** → **Sell**
- Otherwise → **Hold**

### 3. Backtesting

- Signals are aligned with BTC closing prices from Yahoo Finance.
- Strategy simulates 1-day forward returns per signal.
- Performance is measured using cumulative return, win rate, volatility, and drawdown.

---

## Results

| Metric                  | Value         |
|-------------------------|---------------|
| ROI (Strategy)          | 12.25%        |
| Win Rate                | 60%           |
| Average Gain per Trade  | 2.14%         |
| Average Loss per Trade  | -1.52%        |
| Volatility (Std Dev)    | 2.91%         |
| Max Drawdown            | *Visualized*  |
| Benchmark               | BTC Buy & Hold |

---

## Visualizations

- 📈 **Cumulative Return**: Strategy vs. Buy-and-Hold
- 📉 **Drawdown Curve**: Max downside during the period
- 💹 **Price Action**: Buy/Sell signal overlays on BTC price
- 🧾 **Trade Log**: Entry, exit, signal type, return (%)

---
