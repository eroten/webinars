sliderTextUI <- function(id) {
  ns <- NS(id ) #builds namespace, NS keeps things from overwriting each other
  tagList(
    sliderInput(ns("slider"), "Slide me",  0, 100, 1),
    textOutput(ns("number"))
  )
}

sliderText <- function(input, output, session) {
  output$number <- renderText ({
    input$slider
    #no ns()
    #MUST include the session argument
  })
}
