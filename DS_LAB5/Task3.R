cat("Check whether an n digits number is Armstrong or not:\n")
cat("-----------------------------------------------------------\n")

#Prompt user for input
num <- as.integer(readline(prompt = "Input an integer: "))

#Split number into digits
digits <- as.numeric(strsplit(as.character(num), "")[[1]])

#Calculate sum of digits raised to the power of number of digits
power <- length(digits)
sum_digits <- sum(digits^power)

#Print result
if (sum_digits == num) {
  cat(num, "is an Armstrong number.\n")
} else {
  cat(num, "is not an Armstrong number.\n")
}