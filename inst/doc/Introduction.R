## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("feddelegrand7/scrollrevealR")
#  

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(scrollrevealR)
#  
#  ui <- fluidPage(
#  
#    h1("Mtcars Plot"),
#  
#    br(), br(),
#  
#    plotOutput(outputId = "plt1"),
#  
#    br(), br(),
#  
#    h1("Iris Plot"),
#  
#    plotOutput(outputId = "plt2"),
#  
#    br(), br(),
#  
#    h1("ChickWeight Plot"),
#  
#    plotOutput(outputId = "plt3"),
#  
#    # Using the scroll_reveal() function -------------------------------------------
#    scroll_reveal(target = c("#plt1", "#plt2", "#plt3"), duration = 2000, distance = "100px"),
#  
#    scroll_reveal(target = "h1", duration = 2000, distance = "100px"),
#    # -----------------------------------------------------------------------------
#  
#    use_reveal(), # IMPORTANT! don't forget to activate the package with use_reveal()
#  
#    # Making some space at the end
#  
#    br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), br()
#  
#  )
#  
#  server <- function(input, output) {
#  
#  
#  output$plt1 <-  renderPlot({
#  
#      plot(mtcars)
#  
#    })
#  
#  
#  output$plt2 <- renderPlot({
#  
#  
#    plot(iris)
#  
#  })
#  
#  
#  output$plt3 <- renderPlot({
#  
#  
#    plot(ChickWeight)
#  
#  
#  })
#  
#  
#  }
#  
#  shinyApp(ui = ui, server = server)
#  

