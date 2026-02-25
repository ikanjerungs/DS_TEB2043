#Input a number
n <- as.integer(readline(prompt = "Input an integer: "))

#Loop from 1 to n
for (i in 1:n) {
  cube <- i^3
  cat("Number is:", i, "and cube of", i, "is:", cube, "\n")
}