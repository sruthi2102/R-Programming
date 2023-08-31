# Load the ChickWeight dataset
data("ChickWeight")

# Load the ggplot2 library
library(ggplot2)

# a. Box plot for "weight" grouped by "Diet"
boxplot_plot <- ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight", title = "Box Plot of Weight Grouped by Diet")

# b. Histogram for "weight" features belonging to Diet-1 category
histogram_plot <- ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 20) +
  labs(x = "Weight", y = "Frequency", title = "Histogram of Weight (Diet 1)")


# Display the plots
print(boxplot_plot)
print(histogram_plot)

