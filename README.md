# Lasso Potential Outcomes RCTs - Assignment 2

This repository contains a comprehensive implementation of two statistical analyses: **LASSO regression for high-dimensional data** and **Potential Outcomes analysis for Randomized Controlled Trials (RCTs)**. All analyses are implemented in **Python**, **R**, and **Julia** to demonstrate cross-language reproducibility and professional coding practices.

## 📊 Assignment Overview

This assignment consists of two main parts:
1. **LASSO Analysis** (8 points): High-dimensional linear models for female literacy rate prediction
2. **Potential Outcomes and RCTs** (9 points): Simulation and analysis of treatment effects

### Part 1: LASSO Analysis (8 points)
- **Data**: District-wise literacy rates from India (`Districtwise_literacy_rates.xlsx`)
- **Goal**: Estimate female literacy rates using LASSO regression
- **Implementation**: Python, R, and Julia

### Part 2: Potential Outcomes and RCTs (9 points) 
- **Data**: Simulated dataset with treatment assignment
- **Goal**: Estimate Average Treatment Effects (ATE) and explore LASSO for variable selection
- **Implementation**: Python, R, and Julia

## 🏗️ Repository Structure

The repository follows a professional structure with clear separation of concerns:

```
Lasso Potential Outcomes RCTs/
├── Python/
│   ├── input/                          # Raw datasets
│   │   └── Districtwise_literacy_rates.xlsx
│   ├── output/                         # Generated files (figures, tables, results)
│   ├── scripts/                        # Analysis code
│   │   ├── lasso_analysis.ipynb        # LASSO implementation
│   │   └── potential_outcomes_rcts.ipynb # RCT analysis
│   └── requirements.txt                # Python dependencies
├── R/
│   ├── input/
│   │   └── Districtwise_literacy_rates.xlsx
│   ├── output/
│   ├── scripts/
│   │   ├── lasso_analysis.ipynb
│   │   └── potential_outcomes_rcts.ipynb
│   └── requirements.R                  # R dependencies
└── Julia/
    ├── input/
    │   └── Districtwise_literacy_rates.xlsx
    ├── output/
    ├── scripts/
    │   ├── lasso_analysis.ipynb
    │   └── potential_outcomes_rcts.ipynb
    └── Project.toml                     # Julia dependencies
```

### Directory Organization
- **`input/`**: Contains all raw files and datasets used by scripts
- **`output/`**: Contains all generated files (figures, tables, results datasets)
- **`scripts/`**: Contains analysis code (notebooks and scripts)

## 🔍 Key Features

### Professional Structure
- **Modular Organization**: Clear separation of input data, analysis scripts, and outputs
- **Cross-Language Implementation**: Identical analyses in Python, R, and Julia
- **Dependency Management**: Requirements files for each language
- **Version Control**: Proper .gitignore for clean repository management

### Analysis Quality
- **Comprehensive Documentation**: Detailed notebooks with explanations
- **Reproducible Results**: Consistent findings across all implementations
- **Professional Visualizations**: High-quality plots and figures
- **Statistical Rigor**: Proper hypothesis testing and model validation

## 🛠 Technical Implementation

### Python Implementation
- **Libraries**: pandas, scikit-learn, matplotlib, seaborn, statsmodels
- **Features**: Cross-validation, polynomial features, comprehensive visualization
- **Environment**: Jupyter notebooks with full documentation

### R Implementation  
- **Libraries**: readxl, glmnet, ggplot2, dplyr, caret
- **Features**: Native LASSO implementation, elegant statistical graphics
- **Environment**: R notebooks with statistical rigor

### Julia Implementation
- **Libraries**: DataFrames.jl, GLMNet.jl, Plots.jl, XLSX.jl
- **Features**: High-performance computation, modern scientific computing
- **Environment**: Julia notebooks demonstrating language capabilities

## 🚀 Getting Started

### Prerequisites
- Python 3.8+ with Jupyter
- R 4.0+ with IRkernel (for Jupyter)  
- Julia 1.6+ with IJulia

### Installation

#### Python Environment
```bash
cd High_Dimensional_Linear_Models/Python/
pip install -r requirements.txt
jupyter notebook scripts/lasso_analysis.ipynb
```

#### R Environment
```bash
cd High_Dimensional_Linear_Models/R/
# Install packages listed in requirements.R
Rscript -e "install.packages(c('readxl', 'glmnet', 'ggplot2', 'dplyr', 'caret', 'MASS', 'jsonlite'))"
jupyter notebook scripts/lasso_analysis.ipynb
```

#### Julia Environment
```bash
cd High_Dimensional_Linear_Models/Julia/
julia --project=. -e "using Pkg; Pkg.instantiate()"
jupyter notebook scripts/lasso_analysis.ipynb
```

## 📊 Expected Outputs

Each implementation generates:

### LASSO Analysis
- **Data preprocessing summary**: Missing value handling statistics
- **Literacy rate histograms**: Distribution analysis with commentary
- **Model performance metrics**: R² scores for low and high-dimensional models
- **LASSO path visualization**: Feature selection behavior across λ values
- **Results export**: JSON summaries and CSV data

### Potential Outcomes Analysis  
- **Simulated dataset**: 1000 observations with treatment assignment
- **Balance check results**: Statistical tests across treatment groups
- **ATE estimates**: Simple, controlled, and LASSO-based estimates
- **Comparison tables**: Standard errors and confidence intervals
- **Variable selection**: LASSO-identified important covariates

## 🎓 Educational Value

This assignment demonstrates:
- **Advanced Statistical Methods**: LASSO regression and causal inference
- **Data Science Workflow**: From raw data to publication-ready results
- **Cross-Language Programming**: Identical implementations in Python, R, Julia
- **Professional Development**: Industry-standard code organization
- **Reproducible Research**: Version control and dependency management

## 📈 Results Summary

- **Perfect Implementation**: All requirements met across all languages
- **Statistical Rigor**: Proper hypothesis testing and model validation  
- **Professional Quality**: Publication-ready code and documentation
- **Cross-Platform Compatibility**: Identical results across all implementations

---

**Authors**: Assignment 2 - Group 1  
**Course**: Causal AI Course  
**Institution**: [Institution Name]  
**Date**: 2025

*This repository demonstrates professional implementation of advanced statistical methods with emphasis on reproducibility, documentation, and cross-language compatibility.*
