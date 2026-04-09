# stat443-timeseries-project

**STAT 443 Team Project:** Time Series Forecasting using Rossmann Store Sales data

## Dataset Description

You are provided with historical sales data for 1,115 Rossmann stores. The task is to forecast the "Sales" column for the test set. Note that some stores in the dataset were temporarily closed for refurbishment.

## Files

- `train.csv` - historical data including Sales
- `test.csv` - historical data excluding Sales
- `sample_submission.csv` - a sample submission file in the correct format
- `store.csv` - supplemental information about the stores

## Data fields

Most of the fields are self-explanatory. The following are descriptions for those that aren't.

- **Id** - an Id that represents a (Store, Date) duple within the test set
- **Store** - a unique Id for each store
- **Sales** - the turnover for any given day (this is what you are predicting)
- **Customers** - the number of customers on a given day
- **Open** - an indicator for whether the store was open: 0 = closed, 1 = open
- **StateHoliday** - indicates a state holiday. Normally all stores, with few exceptions, are closed on state holidays. Note that all schools are closed on public holidays and weekends. a = public holiday, b = Easter holiday, c = Christmas, 0 = None
- **SchoolHoliday** - indicates if the (Store, Date) was affected by the closure of public schools
- **StoreType** - differentiates between 4 different store models: a, b, c, d
- **Assortment** - describes an assortment level: a = basic, b = extra, c = extended
- **CompetitionDistance** - distance in meters to the nearest competitor store
- **CompetitionOpenSince[Month/Year]** - gives the approximate year and month of the time the nearest competitor was opened
- **Promo** - indicates whether a store is running a promo on that day
- **Promo2** - Promo2 is a continuing and consecutive promotion for some stores: 0 = store is not participating, 1 = store is participating
- **Promo2Since[Year/Week]** - describes the year and calendar week when the store started participating in Promo2
- **PromoInterval** - describes the consecutive intervals Promo2 is started, naming the months the promotion is started anew. E.g. "Feb,May,Aug,Nov" means each round starts in February, May, August, November of any given year for that store

## Quick Start

1. Ensure R 4.5+ is installed.
2. Open `stat443-timeseries-project.Rproj` in RStudio.
3. Run:
   ```r
   source("scripts/setup-project.R")
   ```

## Environment

- **R Version:** 4.5.3 (locked in `renv.lock`)
- **Package Manager:** renv (reproducible environments)
- **All dependencies:** recorded in `renv.lock` (commit to git, do not modify manually)

## Workflow

**First clone:**
```r
renv::restore()
```

**Add a package:**
```r
renv::install("package_name")
renv::snapshot()
git add renv.lock
git commit -m "Add package_name"
```

**Check environment status:**
```r
renv::status()
```

## Project Structure

```
├── data/                      # Raw and processed data
│   ├── raw/                  # train.csv, test.csv, store.csv, sample_submission.csv
│   └── processed/
├── 02_eda/                    # Exploratory data analysis
├── 03_wrangling/              # Data wrangling (data-wrangling.Rmd)
├── 04_analysis/               # Statistical analysis
│   ├── simple/
│   ├── exponential/
│   ├── arima/
│   └── armax/
├── 05_rmse/                   # RMSE evaluation
├── 06_conclusion/             # Final conclusions
├── 07_reference/              # References
├── 08_contributions/          # Contribution notes
├── appendix/                  # Appendix materials
├── report/                    # Final report output
├── scripts/setup-project.R    # Initialize project dependencies
├── .Rprofile                  # Project startup config
├── .gitignore
└── stat443-timeseries-project.Rproj  # RStudio project file
```

## Key Files

- `stat443-timeseries-project.Rproj` — Opens project in RStudio with correct settings
- `.Rprofile` — Auto-activates renv, sets CRAN mirror
- `scripts/setup-project.R` — One-time setup script (installs packages, initializes renv)
- `renv.lock` — Exact package versions (do not edit directly)
