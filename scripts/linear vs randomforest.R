#Trained linear regression model

# Trained linear regression model predicts MEDV on the scaled test set
pred_lr <- predict(model_lr, newdata = test_scaled)

# Calculate RMSE (Root Mean Squared Error).
# RMSE measures average prediction error. Lower values indicate better performance
rmse_lr <- sqrt(mean((pred_lr - test_scaled$MEDV)^2))

# Calculate R² on the test set.
# R² shows how much variation in MEDV the model explains. Higher is better
r2_lr <- cor(pred_lr, test_scaled$MEDV)^2

# Linear regression performance metrics
print(rmse_lr)
print(r2_lr)


#Random Forest Model

# Load Random Forest library, this model does not assume linearity
library(randomForest)

# Fit a Random Forest model using 300 trees
model_rf <- randomForest(MEDV ~ ., data = train_scaled, ntree = 300)

# Predict MEDV on the scaled test set using the Random Forest model
pred_rf <- predict(model_rf, newdata = test_scaled)

# Calculate RMSE and R² for Random Forest
rmse_rf <- sqrt(mean((pred_rf - test_scaled$MEDV)^2))
r2_rf <- cor(pred_rf, test_scaled$MEDV)^2

# Print Random Forest performance metrics
print(rmse_rf)
print(r2_rf)


# Linear Regression Coefficients

# Display coefficient table for the linear regression model.
coef(summary(model_lr))


#Random Forest Feature Importance

# The plot shows which predictors most reduce prediction error
varImpPlot(model_rf)
