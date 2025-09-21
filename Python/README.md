# Python Implementation

This directory contains the Python implementation of the LASSO and Potential Outcomes analyses.

## Structure
- `input/`: Raw datasets and data files
- `output/`: Generated results, figures, and analysis outputs  
- `scripts/`: Analysis notebooks and Python scripts
- `requirements.txt`: Python package dependencies

## Setup
```bash
# Install dependencies
pip install -r requirements.txt

# Run analyses
jupyter notebook scripts/lasso_analysis.ipynb
jupyter notebook scripts/potential_outcomes_rcts.ipynb
```

## Dependencies
- pandas>=1.3.0: Data manipulation and analysis
- numpy>=1.21.0: Numerical computing
- matplotlib>=3.4.0: Plotting library
- seaborn>=0.11.0: Statistical data visualization
- scikit-learn>=1.0.0: Machine learning library
- statsmodels>=0.13.0: Statistical modeling
- jupyter>=1.0.0: Notebook environment
- openpyxl>=3.0.0: Excel file reading