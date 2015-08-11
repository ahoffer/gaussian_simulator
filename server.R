library(shiny)
library(plotrix)

# Define server logic for slider examples
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    xmean <- input$xmean
    ymean <- input$ymean
    n <- input$n
    xsd= input$xsd
      ysd=input$ysd
    xvals = rnorm(n, xmean, xsd)
    yvals = rnorm(n, ymean, ysd)
    plot(yvals ~ xvals, xlab="X Axis", ylab = "Y Axis", xlim=c(-3,3), ylim=c(-3,3), col="blue", pch=19)
    #abline(h=ymean, col="red")
    #abline(v=xmean, col="red")
    plotrix::draw.ellipse(xmean, ymean, a = xsd, b = ysd, border='red')
    plotrix::draw.ellipse(xmean, ymean, a = 2*xsd, b = 2*ysd, border='green')
    #draw.ellipse(xmean, ymean, a = 3*xsd, b = 3*ysd, border='purple')
  })
  
})