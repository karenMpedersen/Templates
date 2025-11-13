# Preamble
# It is suggested to create a project directory (e.g., an RStudio Project)
# and keep all related files there. This script assumes the working directory
# is the project root (project-name/).

# -------- BASIC INFORMATION ---------

# Code Objective: Briefly describe what this script does.
# Author: Your Name
# Date: YYYY-MM-DD

# ---------- LIBRARIES ----------
# Add the libraries you need here, for example:
# library(tidyverse)

# ---------- INPUT DATA ----------
# Path to the input file (relative to the project root)
# Example: read in a CSV file
df <- read.csv("data_input/input.csv")

# ---------- FUNCTIONS ----------
# Example function definition good practice if you define functions.
example_function <- function(file_path) {
  # This function reads a file and prints its contents.
  content <- readLines(file_path)
  print(content)
}

# ------- MAIN ANALYSIS / SCRIPT ----------
# Call your functions here in the order you want things to run.
example_function(input_file)

# Example: if you read a CSV and then plot something:
plot(df$some_column, df$other_column)

# ---------- END OF SCRIPT ----------




# ---------- REPRODUCIBILITY ----------
# Basic info about your R session and packages.

# Table with R version info 
ver <- R.Version()
version_table <- data.frame(
  Component = names(ver),
  Value     = unlist(ver),
  row.names = NULL,
  stringsAsFactors = FALSE
)
print(version_table, row.names = FALSE)

# List installed packages and versions
get_used_packages <- function() {
  si <- sessionInfo()
  
  # Attached non-base packages (the ones you loaded with library())
  attached <- si$otherPkgs
  
  if (is.null(attached)) {
    message("No non-base packages attached.")
    return(invisible(NULL))
  }
  
  pkgs <- data.frame(
    Package = names(attached),
    Version = vapply(attached, function(x) x$Version, character(1)),
    row.names = NULL,
    stringsAsFactors = FALSE
  )
  
  pkgs
}

used_pkgs <- get_used_packages()
print(used_pkgs)
