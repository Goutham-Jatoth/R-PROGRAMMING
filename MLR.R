#Multiple Linear Regression
#builtin dataset in R use data()
data()

mtcars

input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))

# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data = input)

# Show the model.
print(model)

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")

a <- coef(model)
print(a)

Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]

print(Xdisp)
print(Xhp)
print(Xwt)

#For prediction 
#Y = a+Xdisp.x1+Xhp.x2+Xwt.x3
#or
#Y = 37.15+(-0.000937)*x1+(-0.0311)*x2+(-3.8008)*x3

#For a car with disp = 221, hp = 102 and wt = 2.91 the predicted mileage is
Y = 37.15+(-0.000937)*221+(-0.0311)*102+(-3.8008)*2.91
Y
