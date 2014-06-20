library(shiny)
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  y <- reactive({round((mtcars[input$type,7]*4*100)/60)})
  output$mile <- renderText({y()})
  
  x <- reactive({round(100/mtcars[input$type,1],2)})
  output$gallon <- renderText({x()})
  
  # Fill in the spot created for a plot
  output$carPlot <- renderPlot({
    
    # Render a barplot
    boxplot(mtcars[input$type, ], 
            main=input$type,
            ylab="Value",
            xlab="Characteristics of a car",
            col = c("red"))
  })
})