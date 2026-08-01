# Correlation Analysis (EDA) 

# corrplot is used to visualize correlation matrices in a clear, interpretable way.
library(corrplot)

# Compute and visualize the correlation matrix.
corrplot(cor(boston),
         main = "Correlation Matrix",
         method = "color",
         type = "upper")   # upper triangle for cleaner visuals


#Train/Test Split

# caret provides tools for splitting data, preprocessing, and modelling.
library(caret)

# Set seed for reproducibility, ensures the same split every time.
set.seed(42)

# Create an 80/20 train-test split.
# This simulates real-world prediction on unseen data
train_index <- createDataPartition(boston$MEDV, p = 0.8, list = FALSE)

train <- boston[train_index, ]
test  <- boston[-train_index, ]


#Scaling / Preprocessing 


# Scaling ensures a more reliable interpretation
preproc <- preProcess(train, method = c("center", "scale"))

# Apply scaling to both train and test sets
# IMPORTANT: scaling is fit on train only to avoid data leakage
train_scaled <- predict(preproc, train)
test_scaled  <- predict(preproc, test)


# Linear Regression Model 

# Fit a linear regression model between MEDV and each variable
model_lr <- lm(MEDV ~ ., data = train_scaled)

summary(model_lr)
