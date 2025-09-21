# R Implementation

This directory contains the R implementation of the LASSO and Potential Outcomes analyses.

## Structure
- `input/`: Raw datasets and data files
- `output/`: Generated results, figures, and analysis outputs
- `scripts/`: Analysis notebooks and R scripts  
- `requirements.R`: R package dependencies

## Setup
```r
# Install dependencies
source("requirements.R")

# Or install manually:
install.packages(c("readxl", "glmnet", "ggplot2", "dplyr", "caret", "MASS", "jsonlite"))

# For Jupyter notebook support
install.packages("IRkernel")
IRkernel::installspec()
```

## Run Analysis
```bash
jupyter notebook scripts/lasso_analysis.ipynb
jupyter notebook scripts/potential_outcomes_rcts.ipynb
```

## Dependencies
- readxl: Excel file reading
- glmnet: LASSO regression
- ggplot2: Data visualization
- dplyr: Data manipulation
- caret: Machine learning utilities
- MASS: Statistical functions
- jsonlite: JSON export