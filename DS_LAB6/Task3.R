# Original student data
student_data <- data.frame(
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2),
  qualify = c("yes", "no", "yes", "no", "no", "no", "yes")
)

# New student to add
student_newdata <- data.frame(
  name = "Emily",
  score = 14.5,
  attempts = 1,
  qualify = "yes"
)

# Combine the old and new student data
student_finaldata <- rbind(student_data, student_newdata)

# Display the final data frame
print(student_finaldata)