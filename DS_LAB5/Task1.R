#Prompt user for input
year <- as.integer(readline(prompt = "Input year: "))

#Check leap year and print output and output exactly
cat("Output:", if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  cat("Input year:", year, "\n")
  paste(year, "is a leap year.")
} else {
  cat("Input year:", year, "\n")
  paste(year, "is not a leap year.")
}, "\n")