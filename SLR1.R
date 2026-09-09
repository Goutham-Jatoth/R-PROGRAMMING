# Predict the Marks w.r.t Hours study in R (SRL)

# 1. Create data
hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
marks <- c(35, 40, 50, 55, 65, 70, 75, 85)

# 2. Create data frame
data <- data.frame(hours, marks)

# 3. Fit regression model
model <- lm(marks ~ hours, data = data)

# 4. Display model summary
summary(model)

# 5. Display coefficients
coef(model)

# 6. Predict marks for 6.5 hours
new_data <- data.frame(hours = 6.5)
predict(model, newdata = new_data)

# 7. Plot data
plot(hours, marks,
     main = "Hours Studied vs Marks",
     xlab = "Hours Studied",
     ylab = "Marks",
     pch = 19)

# 8. Add regression line
abline(model)