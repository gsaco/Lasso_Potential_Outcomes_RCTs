# LASSO Regression and Potential Outcomes Analysis for Causal Inference

A implementation of LASSO regression techniques for high-dimensional data analysis and potential outcomes modeling for randomized controlled trials. 

## Project Overview

### Research Focus
This project analyzes female literacy rates across Indian districts using advanced statistical learning methods. The analysis employs both traditional econometric approaches and modern machine learning techniques to understand the determinants of educational outcomes and demonstrate causal inference methods.

### Core Methodologies

#### 1. LASSO Regression for Female Literacy Prediction
- **Low-dimensional specification**: Uses economic intuition to select key variables while avoiding highly correlated predictors (e.g., excluding male literacy when overall literacy is included)
- **High-dimensional specification**: Comprehensive feature engineering including interactions and polynomial terms, resulting in 400+ variables
- **Regularization analysis**: Complete LASSO path evaluation with cross-validation
- **Performance metrics**: Out-of-sample R² evaluation and feature selection assessment

#### 2. Potential Outcomes and Causal Inference
- **Randomized controlled trial simulation**: Synthetic data generation for treatment effect analysis
- **Average Treatment Effect (ATE) estimation**: Multiple approaches including simple regression, LASSO-assisted, and randomization inference
- **Variable selection**: LASSO-guided covariate adjustment for improved causal estimates
- **Balance assessment**: Statistical tests for randomization validity

## Repository Structure

```
Lasso_Potential_Outcomes_RCTs/
├── Python/                          # Python implementation
│   ├── scripts/
│   │   ├── lasso_analysis.ipynb           # Female literacy LASSO analysis
│   │   └── potential_outcomes_rcts.ipynb  # Causal inference methods
│   ├── requirements.txt             # Python dependencies
│   ├── input/                       # Data directory
│   └── output/                      # Results and visualizations
├── R/                               # R implementation  
│   ├── scripts/
│   │   ├── lasso_analysis.ipynb           # Female literacy LASSO analysis
│   │   └── potential_outcomes_rcts.ipynb  # Causal inference methods
│   ├── requirements.txt             # R package dependencies
│   ├── input/                       # Data directory
│   └── output/                      # Results and visualizations
├── Julia/                           # Julia implementation
│   ├── scripts/
│   │   ├── lasso_analysis.ipynb           # Female literacy LASSO analysis
│   │   └── potential_outcomes_rcts.ipynb  # Causal inference methods
│   ├── requirements.txt             # Julia package dependencies
│   ├── input/                       # Data directory
│   └── output/                      # Results and visualizations
├── .gitignore                       # Version control exclusions
├── LICENSE                          # MIT License
└── README.md                        # This documentation
```

## Technical Implementation Details

### Task 1: Data Analysis and Visualization
- **Dataset**: District-wise literacy rates from Indian Census data (680 districts, 100 variables)
- **Target variable**: Female literacy rate (FEMALE_LIT)
- **Exploratory analysis**: Distribution analysis, missing value treatment, correlation assessment
- **Visualization**: Professional statistical graphics showing literacy distributions and relationships

### Task 2: LASSO Regression Specifications

#### Low-Dimensional Model (Economic Intuition)
The low-dimensional specification follows economic theory and avoids multicollinearity by carefully selecting variables:

**Selected Variables (5 features):**
- `GROWTHRATE`: Population growth rate (demographic transition indicator)
- `SEXRATIO`: Sex ratio (gender equality proxy)
- `ENR501`: Schools with enrollment ≤ 50 (primary education access)
- `TCH1`: Primary school teachers (educational infrastructure)
- `SCHTOT`: Total number of schools (educational capacity)

**Rationale**: This specification avoids highly correlated variables such as male literacy and overall literacy rates, which would create multicollinearity issues. Instead, it focuses on underlying structural factors that influence educational outcomes through economic development, gender equality, and educational infrastructure channels.

#### High-Dimensional Model (Comprehensive Feature Engineering)
The high-dimensional specification maximizes predictive power through extensive feature engineering:

**Feature Construction (400+ variables):**
- **Base variables**: All available numeric variables (excluding highly correlated literacy measures)
- **Interaction terms**: All pairwise interactions between base variables
- **Polynomial features**: Squared terms for all continuous variables
- **Result**: ~400+ engineered features for LASSO selection

**Purpose**: This specification tests LASSO's ability to perform automatic feature selection in high-dimensional settings while maintaining predictive accuracy.

### Task 3: Potential Outcomes Analysis

#### Experimental Design
- **Synthetic RCT**: 1000 observations with random treatment assignment
- **Treatment effect**: Simulated effect size with realistic noise structure
- **Covariates**: Four baseline variables (X1, X2, X3, X4) with known relationships

#### Estimation Methods
1. **Simple regression**: Y ~ D (naive treatment effect)
2. **LASSO-assisted**: Uses LASSO variable selection for covariate adjustment
3. **Randomization inference**: Permutation-based hypothesis testing

## Statistical Computing Environments

### Python Implementation
- **Core libraries**: scikit-learn, pandas, numpy, matplotlib, seaborn, statsmodels
- **Features**: Advanced data preprocessing, comprehensive visualization suite
- **Strengths**: Extensive machine learning ecosystem, excellent documentation

### R Implementation  
- **Core libraries**: glmnet, tidyverse, ggplot2, caret, broom
- **Features**: Native statistical computing, publication-quality graphics
- **Strengths**: Mature statistical packages, built-in hypothesis testing

### Julia Implementation
- **Core libraries**: GLMNet.jl, DataFrames.jl, MLJ.jl, Plots.jl
- **Features**: High-performance computing, modern syntax
- **Strengths**: Speed optimization, growing ecosystem for scientific computing

## Installation and Usage

### Python Environment
```bash
cd Python/
pip install -r requirements.txt
jupyter notebook scripts/lasso_analysis.ipynb
```

### R Environment  
```bash
cd R/
# Install required packages using the requirements list
pip install -r requirements.txt  # For pip-style format
# OR use the R script: Rscript requirements.R
jupyter notebook scripts/lasso_analysis.ipynb
```

### Julia Environment
```bash
cd Julia/
# Install packages from requirements.txt
julia -e 'using Pkg; [Pkg.add(split(line, ">=")[1]) for line in readlines("requirements.txt") if !startswith(line, "#") && !isempty(strip(line))]'
jupyter notebook scripts/lasso_analysis.ipynb
```

## Key Results and Findings

### LASSO Analysis Performance
- **Low-dimensional model**: Test R² ≈ 0.49 (demonstrates baseline performance with economic variables)
- **High-dimensional model**: Test R² ≈ 0.69 (shows improvement through feature engineering and regularization)
- **Feature selection**: LASSO automatically selects ~160 out of 400+ features in high-dimensional case

### Causal Inference Results  
- **Simple ATE**: Baseline treatment effect estimation
- **LASSO-adjusted ATE**: Improved precision through variable selection
- **Randomization inference**: Robust hypothesis testing for treatment effects

## Professional Standards

### Code Quality
- **Documentation**: Comprehensive inline comments and markdown explanations
- **Reproducibility**: Fixed random seeds and explicit version requirements
- **Error handling**: Robust data validation and missing value treatment
- **Visualization**: Publication-ready graphics with consistent styling

### Version Control
- **Clean structure**: Organized directory hierarchy
- **Proper .gitignore**: Excludes system files (.DS_Store) and configuration files (.toml)
- **Cross-platform**: Compatible implementations across operating systems

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*This repository demonstrates advanced statistical learning methods with emphasis on reproducible research, professional documentation, and cross-platform statistical computing for modern econometric and causal inference applications.*
