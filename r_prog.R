setwd("~/Research_2")

# Load required libraries
library(ggplot2)
library(dplyr)

# Read the dataset
data <- read.csv('calories.csv')

# Printing the dimension of the dataset
dim(data)

# Printing the first 5 rows of the dataset
head(data)

# Normalization of data
data$Gender <- as.factor(data$Gender)
data$Age <- as.integer(data$Age)
data$Height <- as.integer(data$Height)
data$Weight <- as.integer(data$Weight)
data$Duration <- as.integer(data$Duration)
data$Heart_Rate <- as.integer(data$Heart_Rate)
data$Body_Temp <- as.numeric(data$Body_Temp)
data$Calories <- as.integer(data$Calories)

is.na(data)
sum(is.na(data))

##Data Visualization

# Count occurrences by Gender
gender_count <- data %>% group_by(Gender) %>% summarise(Count = n())
print(gender_count)

# Gender distribution plot
ggplot(data, aes(x = Gender, fill = Gender)) + 
  geom_bar() + 
  labs(title = "Gender Distribution", x = "Gender", y = "Count") +
  theme_minimal()

# Distribution plot for Age
ggplot(data, aes(x = Age)) +
  geom_density(fill = "blue", alpha = 0.4) +
  labs(title = "Age Distribution", x = "Age", y = "Density") +
  theme_minimal()

# Distribution plot for Height
ggplot(data, aes(x = Height)) +
  geom_density(fill = "green", alpha = 0.4) +
  labs(title = "Height Distribution", x = "Height", y = "Density") +
  theme_minimal()

# Distribution plot for Weight
ggplot(data, aes(x = Weight)) +
  geom_density(fill = "red", alpha = 0.4) +
  labs(title = "Weight Distribution", x = "Weight", y = "Density") +
  theme_minimal()

# Distribution plot for Body Temperature
ggplot(data, aes(x = Body_Temp)) +
  geom_density(fill = "purple", alpha = 0.4) +
  labs(title = "Body Temperature Distribution", x = "Body Temperature", y = "Density") +
  theme_minimal()

## Possible interactions between covariates

# Height vs. Weight
ggplot(data, aes(x = Height, y = Weight, color = Gender)) +
  geom_point(alpha = 0.6) +
  labs(title = "Height vs. Weight", x = "Height (cm)", y = "Weight (kg)") +
  theme_minimal()

# Body Temperature vs. Calories Burned
ggplot(data, aes(x = Body_Temp, y = Calories, color = Gender)) +
  geom_point(alpha = 0.6) +
  labs(title = "Body Temperature vs. Calories Burned", x = "Body Temperature", y = "Calories Burned") +
  theme_minimal()

# Heart Rate vs. Calories Burned 
  ggplot(data, aes(x = Heart_Rate, y = Calories, color = Gender)) +
    geom_point(alpha = 0.6) +
    labs(title = "Heart Rate vs. Calories Burned", x = "Heart Rate", y = "Calories Burned") +
    theme_minimal()

# Duration vs. Calories Burned 
  ggplot(data, aes(x = Duration, y = Calories, color = Gender)) +
    geom_point(alpha = 0.6) +
    labs(title = "Duration vs. Calories Burned", x = "Duration (minutes)", y = "Calories Burned") +
    theme_minimal()
  