#!/usr/bin/env julia

# Install packages for LASSO analysis notebook
import Pkg

println("🚀 Setting up Julia environment for LASSO analysis...")

# Initialize a new project
println("📁 Initializing new Julia project...")
Pkg.generate(".")

# Add required packages one by one
packages_to_add = [
    "XLSX",
    "DataFrames", 
    "Plots",
    "StatsBase",
    "MLJ",
    "MLJLinearModels", 
    "GLM",
    "StatsModels",
    "JSON"
]

println("📦 Installing packages...")
for pkg in packages_to_add
    try
        println("  Adding $pkg...")
        Pkg.add(pkg)
        println("  ✅ $pkg added successfully")
    catch e
        println("  ❌ Error adding $pkg: ", e)
    end
end

# Test imports
println("\n🔍 Testing package imports...")
packages_to_test = [
    "XLSX" => :(using XLSX),
    "DataFrames" => :(using DataFrames),
    "Plots" => :(using Plots),
    "StatsBase" => :(using StatsBase),
    "Statistics" => :(using Statistics),
    "Random" => :(using Random),
    "LinearAlgebra" => :(using LinearAlgebra),
    "MLJ" => :(using MLJ),
    "MLJLinearModels" => :(using MLJLinearModels),
    "GLM" => :(using GLM),
    "JSON" => :(using JSON)
]

for (name, import_expr) in packages_to_test
    try
        eval(import_expr)
        println("  ✅ $name imports successfully")
    catch e
        println("  ❌ Error importing $name: ", e)
    end
end

println("\n🎉 Julia environment setup complete!")
println("🔬 Your environment is ready for LASSO analysis")
println("📊 You can now run your notebook with the following changes:")
println("   - Replace 'using GLMNet' with 'using MLJ, MLJLinearModels'")
println("   - Use MLJ's LASSO implementation instead of GLMNet")
