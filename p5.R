#Prog 5: Write an R program to draw i) Pie chart ii) 3D Pie Chart, 
#iii) Bar Chart along with chart legend by considering suitable CSV file
getwd()
setwd("E:/ACEEC/R Programming")
getwd()
#Install required libraries if not already installed:
  
install.packages("ggplot2")
install.packages("plotrix")

# Load necessary libraries
library(ggplot2)    # For bar chart
library(plotrix)    # For 3D pie chart

# Load the data from CSV file
data <- read.csv("data.csv")

data

head(data)
tail(data)
data$Value
data$Category
# Extract category and values
categories <- data$Category
values <- data$Value

categories
values
# 1. Pie Chart
# Basic Pie Chart
pie(values, labels = categories, main = "Subject Wise Pie Chart")

# Pie Chart with Colors and Legends
pie(values, labels = categories, main = "Subject Wise Marks Pie Chart", col = rainbow(length(values)))

legend("topleft", categories, cex = 0.8,fill = rainbow(length(values)))

# 2. 3D Pie Chart
# 3D Pie Chart using plotrix
pie3D(values, labels = categories, main = " Subject WIse 3D Pie Chart", explode = 0.1, labelcex = 0.8)

legend("topright", categories, cex = 0.8,fill = rainbow(length(values)))  

# 3. Bar Chart with Legend
# Plot the bar chart
barplot(values, names.arg = categories, xlab ="Subjects",
        ylab ="Marks", col =rainbow(length(values)),
        main ="Subject Wise Bar chart")

# Add the legend to the chart
legend("topright", categories, cex = 0.7, fill = rainbow(length(values)))

# Bar Chart using ggplot2
ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Subject Wise Bar Chart", x = "Subjects", y = "Marks") +
  theme_minimal() +
  theme(legend.position = "right") +
  guides(fill = guide_legend(title = "Subjects"))


