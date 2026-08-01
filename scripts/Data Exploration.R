# Load libraries
library(tidyverse)
library(readr)

# Importing the Boston Housing dataset from desktop
boston <- read_csv("~/Desktop/CV projects/boston.csv")

# Helpful for a quick manual inspection of structure and values
View(boston)


# Checking for variable types, number of observations, and whether any columns need conversion
str(boston)

# Identify ranges, unusual values, and potential cleaning needs
summary(boston)

# Looking for outliers which distort model behaviour
# Boxplot of rime rate
boxplot(boston$CRIM,
        main = "Distribution of CRIM")

# Boxplot of % lower-status population
# LSTAT is a key socioeconomic variable, outliers may indicate highly disadvantaged areas
boxplot(boston$LSTAT, 
        main = "Distribution of LSTAT")

# Boxplot of median home value
# MEDV is capped at 50 in the original dataset
boxplot(boston$MEDV,
        main = "Distribution of MEDV")
