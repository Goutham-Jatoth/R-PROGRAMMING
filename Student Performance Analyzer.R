# ============================================
# STUDENT PERFORMANCE ANALYZER
# ============================================

# 1. Create student data using vectors

student_id <- c(101, 102, 103, 104, 105,
                106, 107, 108, 109, 110)

student_name <- c("Anil", "Bhavya", "Charan", "Divya", "Esha",
                  "Farhan", "Gowtham", "Harika", "Imran", "Jyothi")

program <- c("CSE", "CSE", "DS", "DS", "CSE",
             "DS", "CSE", "DS", "CSE", "DS")

maths <- c(85, 72, 90, 65, 78, 88, 92, 70, 81, 76)

programming <- c(90, 75, 95, 68, 80, 91, 89, 73, 85, 79)

statistics <- c(82, 70, 88, 72, 76, 85, 94, 69, 80, 77)


# 2. Create a Data Frame

students <- data.frame(
  ID = student_id,
  Name = student_name,
  Program = program,
  Maths = maths,
  Programming = programming,
  Statistics = statistics
)

print("STUDENT DATA")
print(students)


# 3. Calculate Total Marks

students$Total <- students$Maths +
  students$Programming +
  students$Statistics


# 4. Calculate Average Marks

students$Average <- students$Total / 3


# 5. Assign Grades using a Factor

students$Grade <- cut(
  students$Average,
  breaks = c(0, 49, 59, 69, 79, 89, 100),
  labels = c("F", "E", "D", "C", "B", "A"),
  right = TRUE
)

# Convert Grade into a factor
students$Grade <- factor(students$Grade,
                         levels = c("F", "E", "D", "C", "B", "A"),
                         ordered = TRUE)


# 6. Determine Pass / Fail

students$Result <- ifelse(
  students$Average >= 50,
  "Pass",
  "Fail"
)


# 7. Display Complete Student Report

print("COMPLETE STUDENT REPORT")
print(students)


# ============================================
# PERFORMANCE ANALYSIS
# ============================================

# 8. Calculate Class Average

class_average <- mean(students$Average)

cat("Class Average:", round(class_average, 2), "\n")


# 9. Find Highest Average

highest_average <- max(students$Average)

top_student <- students[students$Average == highest_average, ]

print("TOP PERFORMING STUDENT")
print(top_student)


# 10. Find Lowest Average

lowest_average <- min(students$Average)

weak_student <- students[students$Average == lowest_average, ]

print("LOWEST PERFORMING STUDENT")
print(weak_student)


# 11. Count Pass and Fail Students

result_count <- table(students$Result)

print("PASS / FAIL SUMMARY")
print(result_count)


# 12. Count Students in Each Grade

grade_count <- table(students$Grade)

print("GRADE SUMMARY")
print(grade_count)


# 13. Subject-wise Average

maths_average <- mean(students$Maths)
programming_average <- mean(students$Programming)
statistics_average <- mean(students$Statistics)

cat("Maths Average:", round(maths_average, 2), "\n")
cat("Programming Average:", round(programming_average, 2), "\n")
cat("Statistics Average:", round(statistics_average, 2), "\n")


# ============================================
# RANKING
# ============================================

# 14. Assign Rank

students$Rank <- rank(
  -students$Average,
  ties.method = "min"
)

# Sort students according to rank

students_ranked <- students[
  order(students$Rank),
]

print("STUDENT RANKING")
print(students_ranked)


# ============================================
# VISUALIZATION
# ============================================

# 15. Bar Chart of Student Average Marks

barplot(
  students$Average,
  names.arg = students$Name,
  main = "Student Average Marks",
  xlab = "Students",
  ylab = "Average Marks",
  las = 2
)


# 16. Subject-wise Average Marks

subject_averages <- c(
  Maths = maths_average,
  Programming = programming_average,
  Statistics = statistics_average
)

barplot(
  subject_averages,
  main = "Subject-wise Average Marks",
  xlab = "Subjects",
  ylab = "Average Marks"
)


# ============================================
# FINAL REPORT
# ============================================

cat("\n==============================\n")
cat(" STUDENT PERFORMANCE SUMMARY\n")
cat("==============================\n")

cat("Number of Students:", nrow(students), "\n")
cat("Class Average:", round(class_average, 2), "\n")
cat("Highest Average:", highest_average, "\n")
cat("Lowest Average:", lowest_average, "\n")

cat("Pass Students:",
    sum(students$Result == "Pass"), "\n")

cat("Fail Students:",
    sum(students$Result == "Fail"), "\n")

cat("==============================\n")