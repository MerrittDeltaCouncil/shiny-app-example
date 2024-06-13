
# Navigation bar ----
ui <- navbarPage(
  
  title = "Palmer Penguins Data Explorer",
  
  # Page 1 - About this app
  tabPanel(title = "About this app",
           
           "Background about the app" # REPLACE WITH CONTENT
           
           ), # END of page 1 - About this app
  
  # Page 2 - Data exploration
  tabPanel(title = "Explore the Data", 
           
           fluidPage(
             
             # Penguin plot sidebarLayout ----
             sidebarLayout(
               
               sidebarPanel(
                 # island pickerInput ----
                 pickerInput(inputId = "penguin_island_input", label = "Select an island(s):",
                             choices = c("Torgersen", "Dream", "Biscoe"),
                             selected = c("Torgersen", "Dream", "Biscoe"),
                             options = pickerOptions(actionsBox = TRUE),
                             multiple = TRUE), # END island pickerInput
                 
                 # bin number sliderInput ----
                 sliderInput(inputId = "bin_num_input", label = "Select number of bins:",
                             value = 25, max = 100, min = 1), # END bin number sliderInput
                 
                 
               ),
               
               mainPanel(
                 
                 plotOutput(outputId = "flipperLength_histogram_output")
               )
               
             ), # END of penguin plot sidebar layout
             
             # penguin table sidebar layout
             sidebarLayout(
              
               # penguin table sidebarPanel ----
                sidebarPanel(
                 
                  # year checkbox input ----
                  checkboxGroupInput(inputId = "year_select", 
                                     label = "Select year(s)" ,
                                     choices = c(2007, 2008, 2009),
                                     selected = c(2007, 2008)), # END checkbox input
                  
               ), # END penguin table sidebarPanel
               
               # penguin table mainPanel ----
                mainPanel(
                  
                  DT::dataTableOutput(outputId = "interactive_table_output") 
               ) # END penguin table mainPanel
               
             ) # END penguin table sidebarLayout
             
           ) # END of Fluid page
           
           )
  
  
) # END of Navigation bar