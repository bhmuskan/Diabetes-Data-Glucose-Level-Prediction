# 🩺Diabetes Data Glucose Level Prediction🩺

A user-friendly, predictive web application built in R that estimates blood glucose levels based on key health metrics. This project demonstrates how machine learning can be applied to health data, providing users with insights that support diabetes management.

---

## 📋 Overview
This application takes in health-related inputs such as BMI, insulin levels, and age, and outputs a predicted glucose level. It’s designed to be simple and accessible, making complex health data insights available to users with no technical background.

---

## 🌟 Features
- **Interactive Input**: Fields to input health metrics like Blood Pressure, BMI, and Age.
- **Real-Time Predictions**: Uses a trained linear regression model to provide instant glucose level estimates.
- **User-Friendly Interface**: Built with Shiny for easy interaction.
- **Styled Results Display**: Predicted values appear in a highlighted, easy-to-read format.

---

## 🛠️ Technologies Used
- **R Programming Language**: Core language for data analysis and model creation.
- **Shiny**: Framework for creating interactive web applications in R.
- **dplyr**: R package for data manipulation.
- **HTML/CSS**: Integrated into Shiny for a styled display.

---

## 📂 Requirements
- **Software**:
  - R and RStudio
  - R packages: `shiny`, `dplyr`
- **Dataset**:
  - `diabetes.csv` with fields for `Pregnancies`, `BloodPressure`, `SkinThickness`, `Insulin`, `BMI`, `DiabetesPedigreeFunction`, `Age`, and `Glucose`.

---

## 🚀 Installation & Setup
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/diabetes-glucose-prediction.git
   ```
2. **Install Required Packages**:
   ```r
   install.packages("shiny")
   install.packages("dplyr")
   ```
3. **Prepare the Dataset**:
   - Place `diabetes.csv` in the project directory or adjust the file path in the code.

---

## 🖥️ Usage
1. **Run the Application**:
   ```r
   shinyApp(ui = ui, server = server)
   ```
2. **Input Data**: Enter health details in the sidebar and hit "Predict Glucose Level".
3. **View Prediction**: The predicted glucose level will appear on the main panel, styled for clarity.

---

## 🤝 Contribution
Contributions are welcome to help improve this project! You can:

1. **Fork the Repository** on GitHub.
2. **Create a New Branch** for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. **Make Your Changes** and commit:
   ```bash
   git commit -m "Add new feature or fix"
   ```
4. **Push Changes** to your branch:
   ```bash
   git push origin feature-name
   ```
5. **Submit a Pull Request** explaining the changes made.

We encourage you to suggest improvements, file issues, and help enhance this application!

---

## 📜 License
Licensed under the MIT License. See `LICENSE` for more details.

---
