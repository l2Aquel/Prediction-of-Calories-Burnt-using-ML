# Prediction-of-Calories-Burnt-using-ML

## Project Overview
This project develops a machine learning model to predict calories burned during physical activities. It uses physiological and activity-related data to provide personalized insights for fitness and workout optimization.

## Technologies Used
Programming Languages: R, Python
Tools: RStudio, Jupyter Notebook

## Dataset
The project utilizes a dataset of 14,999 records, including gender, age, height, weight, activity duration, heart rate, body temperature, and calories burned.

## Data Preprocessing
Key preprocessing steps involved handling null values, standardizing gender entries, and correcting outliers in weight (grams to kilograms) and body temperature (Kelvin to Celsius).

## Machine Learning Models and Results
Multiple regression models were evaluated for their ability to predict calories burned:

XGBoost Regressor:
Mean Absolute Error (MAE): 1.45, Mean Squared Error (MSE): 4.55, Accuracy: 99.88%

Random Forest Regressor:
Mean Absolute Error (MAE): 1.74, Mean Squared Error (MSE): 7.99, Accuracy: 99.79%

Decision Tree Regressor:
Mean Absolute Error (MAE): 3.42, Mean Squared Error (MSE): 29.57, Accuracy: 99.25%

AdaBoost Regressor:
Mean Absolute Error (MAE): 9.33, Mean Squared Error (MSE): 132.84, Accuracy: 96.62%

The XGBoost Regressor achieved the highest prediction accuracy among these models.

## Scope and Applications
This framework can be applied in fitness applications, health monitoring, sports science, and medical research for personalized calorie estimation.
