# Load necessary libraries
library(dplyr)
library(shiny)

# Load and preprocess the dataset
diabetes_data <- read.csv("D:\\UNIVERSITY_PROJECT\\R\\diabetes.csv")

# Fit a linear regression model to predict Glucose levels
model <- lm(Glucose ~ Pregnancies + BloodPressure + SkinThickness + Insulin + BMI + DiabetesPedigreeFunction + Age, 
            data = diabetes_data)

# Define Shiny UI
ui <- fluidPage(
  titlePanel("Diabetes Data Glucose Level Prediction"),
  sidebarLayout(
    sidebarPanel(
      numericInput("Pregnancies", "Number of Pregnancies", value = 1),
      numericInput("BloodPressure", "Blood Pressure", value = 70),
      numericInput("SkinThickness", "Skin Thickness", value = 20),
      numericInput("Insulin", "Insulin Level", value = 80),
      numericInput("BMI", "Body Mass Index (BMI)", value = 25.0),
      numericInput("DiabetesPedigreeFunction", "Diabetes Pedigree Function", value = 0.5),
      numericInput("Age", "Age", value = 30),
      actionButton("predict", "Predict Glucose Level")
    ),
    mainPanel(
      h3("Predicted Glucose Level"),
      # Use renderUI to allow HTML output with inline styles
      uiOutput("predicted_glucose")
    )
  )
)

# Define Shiny server logic
server <- function(input, output) {
  observeEvent(input$predict, {
    # Create a new data frame with input values for prediction
    user_data <- data.frame(
      Pregnancies = input$Pregnancies,
      BloodPressure = input$BloodPressure,
      SkinThickness = input$SkinThickness,
      Insulin = input$Insulin,
      BMI = input$BMI,
      DiabetesPedigreeFunction = input$DiabetesPedigreeFunction,
      Age = input$Age
    )
    
    # Predict Glucose level based on input values
    predicted_glucose <- predict(model, newdata = user_data)
    
    # Display the result with HTML styling
    output$predicted_glucose <- renderUI({
      HTML(paste("<span style='font-size: 21px; font-weight: bold; color: #0073e6;'>Estimated Glucose Level: ", 
                 round(predicted_glucose, 2), "</span>"))
    })
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
