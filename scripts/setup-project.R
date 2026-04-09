required_packages <- c(
  "here",
  "tidyverse",
  "lubridate",
  "forecast",
  "tseries",
  "tsibble",
  "feasts",
  "fable",
  "fabletools",
  "rmarkdown",
  "knitr"
)

missing_packages <- required_packages[!vapply(required_packages, requireNamespace, FUN.VALUE = logical(1), quietly = TRUE)]

if (length(missing_packages) > 0) {
  install.packages(missing_packages)
}

if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

if (!file.exists("renv.lock")) {
  renv::init(bare = TRUE)
}

renv::snapshot(prompt = FALSE)

message("Project setup complete. Packages are installed and renv.lock is up to date.")
