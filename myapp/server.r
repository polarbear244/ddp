library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- faithful$eruptions
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    ggplot(faithful, aes(x = eruptions)) +
      geom_histogram(breaks = bins, col = "black", fill = "blue", alpha = 0.7) +
      labs(title = "Histogram of Eruptions", x = "Duration (minutes)", y = "Frequency")
  })
})
