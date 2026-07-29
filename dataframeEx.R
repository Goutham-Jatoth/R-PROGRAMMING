# Create a data frame
students <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(20, 21, 22),
  Passed = c(TRUE, TRUE, FALSE)
)

students


#Viewing Data forme

print(students)
View(students)    # Opens in RStudio
head(students)    # First 6 rows
tail(students)    # Last 6 rows
str(students)     # Structure
summary(students) # Summary statistics

# Accessing Data
students$Name
students["Name"]
students[, "Name"]
students[2, ]
students[2, 3]

# Adding Data
# Adding new Column
students$Marks <- c(85, 90, 75)
#Add a new row
new_student <- data.frame(
  ID = 4,
  Name = "David",
  Age = 23,
  Passed = TRUE,
  Marks = 88
)

students <- rbind(students, new_student)

students

# Removing Data
# Remove a column
students$Passed <- NULL
students <- students[, -4]

students

#Remove a row
students <- students[-2, ]
# Filtering Data Students older than 20:
students[students$Age > 20, ]

# Functions used in Data Frames
dim(students)
nrow(students)
ncol(students)
rownames(students)
colnames(students)
names(students)
str(students)
summary(students)
