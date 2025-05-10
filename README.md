# 💰 AMFI NAV Scraper

This project extracts mutual fund scheme names and asset values from the [AMFI India NAVAll.txt](https://www.amfiindia.com/spages/NAVAll.txt) feed.

## 📦 Features

- ✅ Extracts `Scheme Name` and `Asset Value`
- ✅ Outputs as:
  - TSV (`nav_data.tsv`) via `extract_nav.sh`
  - JSON (`nav_data.json`) via `extract_nav_json.py`
- ✅ Works on Mac/Linux (Bash or Python)

---

## 🛠️ Requirements

For Python version:
```bash
pip install requests
