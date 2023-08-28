# Load necessary libraries
library(dplyr)
library(tidyr)
library(datasets)  # To load the built-in iris dataset

# Load the iris dataset
data(iris)

# Create a pivot table based on Species and Sepal.Length
pivot_table <- iris %>%
  group_by(Species, Sepal.Length.Cate = cut(Sepal.Length, breaks = c(4, 5, 6, 7))) %>%
  summarise(Count = n())

# Print the pivot table
print(pivot_table)
