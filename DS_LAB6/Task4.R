# Use the final student data
exam_data <- student.finaldata
# Convert 'qualify' to factor for proper summary counts
exam_data$qualify <- as.factor(exam_data$qualify)

# Display structure
cat("--- Structure ---\n")
str(exam_data)

# Display summary
cat("\n--- Summary ---\n")
summary(exam_data)

# Display number of rows and columns
cat("\n--- Dimensions ---\n")
cat("Number of rows:", nrow(exam_data), "\n")
cat("Number of columns:", ncol(exam_data), "\n")