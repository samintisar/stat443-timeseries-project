# stat443-timeseries-project

**STAT 443 Team Project:** Time Series Forecasting using Rossmann Store Sales data

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
