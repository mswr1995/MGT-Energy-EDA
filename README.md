# Micro Gas Turbine Electrical Energy Prediction

This project aims to predict the **electrical power output** of a micro gas turbine using various machine learning techniques, including regression models and deep learning architectures (RNNs). The goal is to explore different approaches and optimize model performance to minimize the RMSE (Root Mean Squared Error). The dataset consists of time series data with input voltage and electrical power measurements.

## Table of Contents
- [Project Overview](#project-overview)
- [Data Overview](#data-overview)
- [Exploratory Data Analysis & Regression](#exploratory-data-analysis--regression)
- [Deep Learning Models](#deep-learning-models)
- [Installation & Setup](#installation--setup)
- [Related Research Paper](#related-research-paper)

## Project Overview
The project uses time-series data to predict electrical energy output based on input voltage. Two approaches are used:
1. Traditional machine learning regression techniques.
2. Deep learning models (including Recurrent Neural Networks with auto-tuning using KerasTuner).

### Objective:
- Build predictive models for the electrical energy output of micro gas turbines.
- Minimize the prediction error (RMSE) using different modeling techniques and optimization approaches.

## Data Overview
The dataset includes time series data from a micro gas turbine. The main features are:
- **Time**: Timestamp of the observation.
- **Input Voltage**: Voltage input to the micro gas turbine.
- **Electrical Power**: The power output we are trying to predict.

The data has been split into `train` and `test` folders, with processed versions available in the `processed-data` folder.

## Exploratory Data Analysis & Regression
The initial data exploration and regression models are done in R.

- **File**: `exploratory-data-analysis.R`
- **Models**: Linear regression was applied and evaluated.
- **EDA**: Basic exploration includes correlation analysis and plotting of features to understand the data distribution.

### Steps:
1. Load and clean the data (`import-data.R`).
2. Perform exploratory data analysis (EDA) to check feature relationships.
3. Build and evaluate regression models (starting with linear regression).

## Deep Learning Models
Deep learning models were implemented in Python using TensorFlow/Keras. Two main architectures were developed:

### 1. Fully Connected Deep Learning Model:
- **File**: `notebooks/Deep-learning.ipynb`
- This model is a simple feedforward neural network designed to handle the time-series data and predict electrical power.

### 2. RNN Model with KerasTuner (Hyperparameter Tuning):
- **File**: `notebooks/RNN-model.ipynb`
- A Recurrent Neural Network (RNN) is implemented to capture the temporal dependencies of the time-series data.
- **Auto-tuning**: The model uses `KerasTuner` for hyperparameter optimization to find the best model architecture (LSTM/GRU layers, units, dropout, learning rate, etc.).

## Installation & Setup
To run this project locally, follow these steps:

### 1. Clone the Repository:
```bash
git clone https://github.com/mswr1995/MGT-Energy-EDA.git
cd MGT-Energy-EDA

## Related Research Paper
Bielski, P. & Kottonau, D. (2024). Micro Gas Turbine Electrical Energy Prediction [Dataset].
UCI Machine Learning Repository. https://doi.org/10.24432/C58S4T.