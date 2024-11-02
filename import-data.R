library(dplyr)
library(purrr)

train_path <- "data/train/"
test_path <- "data/test/"

# Get list of CSV files in each folder
train_files <- list.files(path = train_path, pattern = "*.csv", full.names = TRUE)
test_files <- list.files(path = test_path, pattern = "*.csv", full.names = TRUE)

# Read and combine the CSV files into one data frame for train and test
train_data <- map_df(train_files, read.csv)
test_data <- map_df(test_files, read.csv)

# Preview the combined datasets
head(train_data)
head(test_data)


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
