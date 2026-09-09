# Step 1: Load the dataset
# Example dataset of YearsExperience and Salary
#data <- data.frame(
 # YearsExperience = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  #Salary = c(30000, 35000, 40000, 45000, 50000, 55000, 60000, 65000, 70000, 75000)
#)
getwd()
setwd("E:/ACEEC/R Programming")

data<-read.csv("Salary_Data.csv")

head(data)
Salary<-data$Salary
YearsExperience<-data$YearsExperience

# Step 2: Fit the Linear Regression Model
model <- lm(Salary ~ YearsExperience, data = data)

# Step 3: View the summary of the model
summary(model)

# Step 4: Visualize the results
plot(data$YearsExperience, data$Salary, main = "Linear Regression", 
     xlab = "Years of Experience", ylab = "Salary", col = "blue", pch = 16)
abline(model, col = "red", lwd = 2)

# Step 5: Predict salary for new data
new_data <- data.frame(YearsExperience = c(3.5, 7.5, 12))
predictions <- predict(model, new_data)

# Display predictions
print(data.frame(YearsExperience = new_data$YearsExperience, PredictedSalary = predictions))
