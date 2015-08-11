library(shiny)

# Define UI for slider demo application
shinyUI(pageWithSidebar(
  #  Application title
  headerPanel("Gaussian Simulator"),
  
  sidebarPanel(
    p("Choose number of samples, mean values, and standard deviations"),
    
    sliderInput(
      "n", "Number of samples", min = 1, max = 100, value = 25, step = 5
    ),
    
    sliderInput(
      "xmean", "x mean", min = -3, max = 3, value = 0, step = 0.1
    ),
    
    sliderInput(
      "ymean", "y mean", min = -3, max = 3, value = 0, step = 0.1
    ),
    
    sliderInput(
      "xsd", "x standard deviation", min = 0, max = 4, value = 1, step = 0.1
    ),
    
    sliderInput(
      "ysd", "y standard deviation", min = 0, max = 4, value = 1, step = 0.1
    )
    
  ),
  
  mainPanel(
    p(
      'This application plots points. The coordinates of the points are determined by sampling
      two independent Gaussian distributions.'
    ),
    p('The circles are centered on the  mean X and Y values. The border of the red circle one standard deviation
      from the mean. The border of the green circle is two standard deviations from the mean.'
    ),
    p(
      'The circles stretch to become ellipses if the X and Y standard deviations are not the same.'
    ),
    
    plotOutput("plot1", height = 400, width = 400)
    )
))