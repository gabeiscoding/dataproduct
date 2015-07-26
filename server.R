library(shiny)
gen_msg<-function(hp,wt){
  paste("horsepower = ", hp, ", weight = ", wt, sep='')
}

gen_pred<-function(hp,wt){
  data(mtcars)
  df = as.data.frame(mtcars)
  fit = lm(mpg~wt+hp, data=mtcars)
  pred = predict(fit, newdata=data.frame(wt=wt,hp=hp))
  paste("mpg =", pred)
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({gen_msg(input$hp,input$wt)})
    output$prediction <- renderPrint({gen_pred(input$hp,input$wt)})
  }
)