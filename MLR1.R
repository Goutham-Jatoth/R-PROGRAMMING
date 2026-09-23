# Implementation of MLP

# 1. Load the dataset
data(mtcars)

# View the first few rows
head(mtcars[, c("mpg", "hp", "wt", "qsec")])

# Check basic correlations to watch out for multicollinearity
cor(mtcars[, c("mpg", "hp", "wt", "qsec")])


# 2.Fit the regression model
mlr_model <- lm(mpg ~ hp + wt + qsec, data = mtcars)


# 3. View the detailed results
summary(mlr_model)


# 4. Make the Predictions
# Create a new data frame with new observations
new_cars <- data.frame(
  hp = c(110, 245),
  wt = c(2.8, 4.0),
  qsec = c(17.5, 15.4)
)

# Predict the mpg for these new cars
predictions <- predict(mlr_model, newdata = new_cars)
print(predictions)


