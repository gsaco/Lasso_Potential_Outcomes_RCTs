# Julia Implementation

This directory contains the Julia implementation of the LASSO and Potential Outcomes analyses.

## Structure
- `input/`: Raw datasets and data files
- `output/`: Generated results, figures, and analysis outputs
- `scripts/`: Analysis notebooks and Julia scripts
- `Project.toml`: Julia package dependencies

## Setup
```bash
# Navigate to this directory
cd High_Dimensional_Linear_Models/Julia/

# Activate and install dependencies
julia --project=. -e "using Pkg; Pkg.instantiate()"

# For Jupyter notebook support (if not already installed)
julia -e "using Pkg; Pkg.add(\"IJulia\")"
```

## Run Analysis
```bash
jupyter notebook scripts/lasso_analysis.ipynb
jupyter notebook scripts/potential_outcomes_rcts.ipynb
```

## Dependencies
- DataFrames.jl: Data manipulation
- XLSX.jl: Excel file reading
- GLMNet.jl: LASSO regression
- Plots.jl: Data visualization
- StatsBase.jl: Statistical functions
- Statistics.jl: Basic statistics
- Random.jl: Random number generation
- LinearAlgebra.jl: Linear algebra operations
- JSON.jl: JSON export