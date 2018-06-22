library(shiny)
source("module.R")
ui <- fluidPage(
  sliderTextUI("one"),
  sliderTextUI("two")
)

server <- function(input, output) {
  callModule(sliderText, "one")
  callModule(sliderText, "two")
  #first argument is the function, second is the namespace
}

shinyApp(ui, server)