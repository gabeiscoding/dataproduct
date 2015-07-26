library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Predict MPG of car"),
    sidebarPanel(
      numericInput('wt', 'Car Weight (ton)', 2, min = 0.5, max = 5, step = 0.5),
      numericInput('hp', 'horsepower', 100, min = 50, max = 800, step = 20),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)