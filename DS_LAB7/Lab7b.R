library(tidyverse)

#1. Importing data
df <- read_csv("C:/Users/User/Downloads/DS_LAB7/titanic.csv")

#2. Dropping Columns
df <- df %>% 
  select(-Cabin, -Fare, -Ticket)

#Cleaning Age
#A.Fill missing Age with the median first
df$Age[is.na(df$Age)] <- median(df$Age, na.rm = TRUE)

#B.Drop the floating point (decimal) from Age
# floor() rounds down to the nearest whole number (e.g., 25.9 becomes 25)
df$Age <- floor(df$Age)

#4.Cleaning Embarked
# Fill the 2 missing Embarked values with the mode "S"
df$Embarked[is.na(df$Embarked)] <- "S"

#5. Exporting data
write_csv(df, "titanic_cleaned.csv")
print("Cleaned file 'titanic_cleaned.csv' has been created.")

#6. Insights Report
# Survival by Class
insight_class <- df %>%
  group_by(Pclass) %>%
  summarize(Survival_Percentage = mean(Survived) * 100)

#Survival by Gender
insight_gender <- df %>%
  group_by(Sex) %>%
  summarize(Survival_Percentage = mean(Survived) * 100)

print(insight_class)
print(insight_gender)