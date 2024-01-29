# Sales Prediction Project

## Overview

This R script performs multiple linear regression analysis on a marketing dataset to predict sales. The dataset includes information on various marketing channels such as YouTube, Facebook, and newspapers.

## Code

```R
# Load Marketing Data Set from datarium package
library(datarium)

# View first six lines
head(marketing)

# Dependent variable: sales
# Independent variables: youtube, facebook, and newspaper

# Check for multicollinearity
cor(marketing, method = "pearson")   # none found

# Create model 
salesModel <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(salesModel)

# Model can be written as: 
# sales = 3.526667 + 0.045765 * youtube + 0.188530 * facebook - 0.001037 * newspaper

# Manual Prediction
youtube <- 100
facebook <- 50
newspaper <- 75

sales <- 3.526667 + 0.045765 * youtube + 0.188530 * facebook - 0.001037 * newspaper
print(sales)

# What are predicted values for each of the 200 Sales figures?
predict(salesModel)

predict(salesModel, data.frame(youtube = 100, facebook = 50, newspaper = 75))
