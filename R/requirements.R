# R Package Dependencies for LASSO and Potential Outcomes Analysis
# Install all required packages for the statistical analysis

# Core packages
required_packages <- c(
  # Data manipulation and I/O
  "readxl",      # Excel file reading
  "dplyr",       # Data manipulation
  "tidyr",       # Data tidying
  
  # Statistical modeling and machine learning
  "glmnet",      # LASSO regression
  "caret",       # Classification and regression training
  "MASS",        # Modern applied statistics
  
  # Visualization
  "ggplot2",     # Grammar of graphics
  "plotly",      # Interactive plots
  "gridExtra",   # Multiple plot arrangements
  
  # Utilities
  "jsonlite",    # JSON import/export
  "knitr",       # Dynamic report generation
  "rmarkdown"    # R Markdown documents
)

# Install packages if not already installed
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(new_packages)) {
    install.packages(new_packages, dependencies = TRUE)
  }
}

install_if_missing(required_packages)

# Optional: Install IRkernel for Jupyter notebook support
if (!("IRkernel" %in% installed.packages()[,"Package"])) {
  install.packages("IRkernel")
  IRkernel::installspec()
}