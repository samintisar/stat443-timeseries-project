# 03_wrangling

This folder prepares Rossmann Store Type A data for downstream analysis.

- Workflow file: `data-wrangling.Rmd`
- Raw inputs: `../data/raw/train.csv`, `../data/raw/store.csv`, `../data/raw/test.csv`
- Canonical outputs:
  - `../data/processed/store_type_a_train_store_daily.csv`
  - `../data/processed/store_type_a_test_store_daily.csv`
  - `../data/processed/store_type_a_train_aggregate_daily.csv`
  - `../data/processed/store_type_a_test_aggregate_daily.csv`
- Additional outputs:
  - `../data/processed/daily_store_a_clean.csv`
  - `../data/processed/daily_store_a_full.csv`

## NOTE: The training aggregate is built from 602 Store Type A stores; the test aggregate reflects only 461 stores. The 141 missing stores are absent from the Kaggle test set.