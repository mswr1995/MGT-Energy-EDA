## Verifying the combined data
# check the structure of the data
str(train_data)
str(test_data)

# get a summary of the data
summary(train_data)
summary(test_data)

# check the dimensions
dim(train_data)
dim(test_data)

# Checking the missing values
sum(is.na(train_data))
sum(is.na(test_data))

# Check histogram of the data to find out the distributions of the data
hist(train_data$time, main = "Distribution of the time", xlab = "Time", col = "lightblue", breaks = 20)
hist(train_data$input_voltage, main = "Distribution of the input voltage", xlab = "Input Voltage", col = "lightgreen", breaks = 20)
hist(train_data$el_power, main = "Distribution of the electrical power", xlab = "Electrical Power", col = "lightcoral", breaks = 20)

# Boxplots to identify outliers in each feature
boxplot(train_data$time, main = "Boxplot of Time", col = "lightblue")
boxplot(train_data$input_voltage, main = "Boxplot of Input Voltage", col = "lightgreen")
boxplot(train_data$el_power, main = "Boxplot of Electrical Power", col = "lightcoral")

# Correlation matrix between the variables
cor_matrix <- cor(train_data)
print(cor_matrix)

# Fitting the regression model
lm_model <- lm(el_power ~ input_voltage, data = train_data)
summary(lm_model)

# Make the predictions on the test data
test_data$predicted_power <- predict(lm_model, newdata = test_data)

# Calculate Mean Squared Error(MSE) and RMSE
mse_test <- mean((test_data$el_power - test_data$predicted_power)^2)
rmse_test <- sqrt(mse_test)

# Calculate R-squared on the test
sst_test <- sum((test_data$el_power - mean(test_data$el_power))^2)
ssr_test <- sum((test_data$predicted_power - mean(test_data$el_power))^2)
r_squared_test <- ssr_test / sst_test

mse_test
rmse_test
r_squared_test

## Random Forest
library(randomForest)

rf_model <- randomForest(el_power ~ input_voltage, data = train_data, ntree = 500)

# make predictions on the test data
test_data$rf_pred <- predict(rf_model, newdata = test_data)

# evaluation
mse_rf <- mean((test_data$el_power - test_data$rf_pred)^2)
sqrt(mse_rf)

