library(shiny)

shinyServer(function(input, output) {
  
  output$haguruma <- renderPlot({
    
    theta <- seq(from = 0, to = 2 * pi * input$turn, by = input$by)
    
    df <- data.frame(
      x = (input$a - input$b) * cos(theta) + (input$b - input$p) * cos((input$a - input$b) / input$b * theta + input$alpha),
      y = (input$a - input$b) * sin(theta) - (input$b - input$p) * sin((input$a - input$b) / input$b * theta + input$alpha)
    )
    
    plot(df, type = "l")
    
  })
  
})
