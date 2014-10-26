library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Seatbelt Safety Before and After Mandatory Seatbelt Laws in the UK"),
  
  #SideBar Panel
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Number of Drivers" = "drivers", 
                     "Distance Driven" = "kms", 
                     "Front seat passengers" = "front",
                     "Back seat passengers"= "rear"))
  ),
  # Main Panel
  mainPanel(
    h2("Formula:"),
    h3(textOutput("caption")),
    
    plotOutput("seatPlot")
    
    )
  
  
  )      
)