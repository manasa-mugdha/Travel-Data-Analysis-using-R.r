install.packages("ggplot2")
library(ggplot2)
# Sample travel data
set.seed(123)
travel_data <- data.frame(
  City = c("Paris", "London", "New York", "Tokyo", "Sydney"),
  Expenses = rnorm(5, mean = 2000, sd = 500),
  Duration = c(7, 5, 10, 8, 6)
)
# Bar plot for Expenses by City
ggplot(travel_data, aes(x = City, y = Expenses, fill = City)) +
  geom_bar(stat = "identity") +
  labs(title = "Travel Expenses by City", x = "City", y = "Expenses")
# Scatter plot for Expenses vs. Duration
ggplot(travel_data, aes(x = Expenses, y = Duration, color = City)) +
  geom_point(size = 3) +
  labs(title = "Scatter Plot of Expenses vs. Duration", x = "Expenses", y = "Duration")

# Calculate total cost as Expenses * Duration
travel_data$total_cost <- travel_data$Expenses * travel_data$Duration

# Find the index of the minimum total cost
min_cost_index <- which.min(travel_data$total_cost)

# Display the recommended city
recommended_city <- travel_data$City[min_cost_index]
cat("The recommended city for the best combination of low expenses and short duration is:", recommended_city, "\n")

# Display the details of the recommended option
recommended_option <- travel_data[min_cost_index, ]
print(recommended_option)

# Box plot for Expenses by City
ggplot(travel_data, aes(x = City, y = Expenses, fill = City)) +
  geom_boxplot() +
  labs(title = "Box Plot of Travel Expenses by City", x = "City", y = "Expenses")

# Line plot for Duration trend across Cities
ggplot(travel_data, aes(x = City, y = Duration, group = 1)) +
  geom_line(color = "blue") +
  geom_point(color = "red", size = 3) +
  labs(title = "Line Plot of Duration Trend Across Cities", x = "City", y = "Duration")

# Box plot for Expenses by City
ggplot(travel_data, aes(x = City, y = Expenses, fill = City)) +
  geom_boxplot() +
  labs(title = "Box Plot of Travel Expenses by City", x = "City", y = "Expenses")


# Bar plot for Total Cost by City
ggplot(travel_data, aes(x = City, y = total_cost, fill = City)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Cost (Expenses * Duration) by City", x = "City", y = "Total Cost")

# Scatter plot with Trendline for Expenses vs. Duration
ggplot(travel_data, aes(x = Expenses, y = Duration, color = City)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Scatter Plot with Trendline for Expenses vs. Duration", x = "Expenses", y = "Duration")

# Pie chart for Distribution of Expenses across Cities
ggplot(travel_data, aes(x = "", y = Expenses, fill = City)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart of Expenses Distribution Across Cities", x = NULL, y = NULL) +
  theme_void()  # Remove axis labels and ticks for a cleaner look


