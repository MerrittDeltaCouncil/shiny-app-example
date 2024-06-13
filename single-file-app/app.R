library(shiny)
# user interface ----
ui <- fluidPage()

# server instructions ----
server <- function(input, output) {}

# combine UI & server into an app ----
shinyApp(ui = ui, server = server)