# Load required library
library(reshape2)

# Load the ChickWeight dataset
data(ChickWeight)

# (i) Order the data frame by "weight" in ascending order grouped by "diet"
ordered_data <- ChickWeight[order(ChickWeight$diet, ChickWeight$weight), ]

# Extract the last 6 records from the ordered data frame
last_6_records <- tail(ordered_data, 6)

# (ii) (a) Melting the data based on "Chick", "Time", and "Diet"
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# (ii) (b) Casting to display the mean value of weight grouped by Diet
mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = mean)

# (ii) (c) Casting to display the mode of weight grouped by Diet
mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
})

# Print the results
print(last_6_records)
print(mean_weight_by_diet)
print(mode_weight_by_diet)
