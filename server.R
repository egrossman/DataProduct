library(shiny)
data(Seatbelts)

seatbeltData <- as.data.frame(Seatbelts)
seatbeltData$law <- seatbeltData$law + 1

shinyServer(function(input, output) {
  formulaText <- reactive({
    paste("DriversKilled ~", input$variable)
  })
  
  output$caption <- renderText({
    formulaText()
  })
    
  output$seatPlot <- renderPlot({
    plot(as.formula(formulaText()), 
            data = seatbeltData, pch =15,col=(seatbeltData$law))
    legend(7,4.3,seatbeltData$law)
    abline(lm(as.formula(formulaText()),data = seatbeltData))
  })
  
})