# Bitcoin News Sentiment Trading Strategy

This project presents a rule-based algorithmic trading strategy for Bitcoin (BTC-USD), leveraging sentiment analysis of financial and geopolitical news headlines. It evaluates how market sentiment impacts short-term BTC price movements and tests the effectiveness of sentiment-driven trading decisions.

---

## 🧭 Overview

- **Objective**: Use daily crypto-relevant headlines to generate trading signals based on sentiment analysis.
- **Approach**: Combine Natural Language Processing (NLP) with Bitcoin price data to backtest a Buy/Sell/Hold strategy.
- **Timeframe**: February 24 – March 15, 2022 (includes key geopolitical events like the Russia–Ukraine conflict).
- **Technologies**: Python, NLTK (VADER), yFinance, Pandas, Matplotlib

---

## 🔍 Methodology

### 1. Sentiment Analysis
- Headlines are analyzed using the **VADER SentimentIntensityAnalyzer** from NLTK.
- Each headline is assigned a `compound` sentiment score between -1 and 1.

### 2. Signal Generation
- **Buy**: Sentiment score ≥ 0.2  
- **Sell**: Sentiment score ≤ -0.2  
- **Hold**: Score between -0.2 and 0.2

### 3. Backtesting
- Align signals with BTC closing prices from Yahoo Finance.
- Simulate 1-day forward returns for each signal.
- Evaluate using ROI, win rate, volatility, and drawdown metrics.

---

## 📊 Results

| Metric                  | Value     |
|-------------------------|-----------|
| ROI (Strategy)          | 12.25%    |
| Win Rate                | 60%       |
| Avg Gain per Trade      | 2.14%     |
| Avg Loss per Trade      | -1.52%    |
| Volatility (Std Dev)    | 2.91%     |
| Max Drawdown            | Visualized |
| Benchmark               | BTC Buy & Hold |

---

## 📈 Visualizations

- **Cumulative Return** — Strategy vs Buy-and-Hold  
- **Drawdown Curve** — Max downside over time  
- **BTC Price Action** — Buy/Sell signal overlays  
- **Trade Log Table** — All entries and outcomes

---

## 📁 Trade Log (Exported)

- **File**: `btc_sentiment_strategy_report.csv`  
- **Columns**: Timestamp, Signal (Buy/Sell), Entry Price, Profit/Loss (%)

---

## 📦 Dependencies

Install required libraries:

```bash
pip install yfinance pandas matplotlib nltk
````

---

## 🚀 Future Improvements

* Integrate **real-time news headlines** using CryptoPanic or NewsAPI
* Extend strategy to **multi-asset portfolios** (ETH, Gold, S\&P 500)
* Enhance sentiment analysis using **FinBERT** or transformer-based models
* Deploy as a **Streamlit dashboard** or **Flask web app**
* Include advanced metrics like **Sharpe Ratio**, **Max Drawdown**, **Value-at-Risk (VaR)**
* Add **real-time alerts** via email, Telegram, or Slack integration

---

## 👤 Author

**Sutheerth N**
Cybersecurity & Crypto Analyst | CFO at ReviveEcoTech
Passionate about blockchain, data-driven strategies, and financial modeling.

---

## 📄 License

This project is intended for **educational and demonstrative purposes only**.
**Not financial advice. Use at your own risk.**

```
