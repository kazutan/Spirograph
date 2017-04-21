library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Spirograph"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("a", "a:", 0, 1, 1, round = -3),
      sliderInput("b", "b:", 0, 1, 0.25, step = 0.005, round = -4),
      sliderInput("p", "p:", 0, 3, 0.1, step = 0.005, round = -4),
      sliderInput("alpha", "alpha:", 0, 2*pi, 0, round = -4),
      sliderInput("turn", "turn:", 1, 1000, 100),
      sliderInput("by", "by:", 0, 2*pi, 0.01, round = -4)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("haguruma", height = "600px")
    )
  )
))