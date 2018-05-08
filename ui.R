# User Interface portion of Frequency Table ShinyApp

ui = fluidPage(
  title = 'Create Frequency Tables',
  sidebarLayout(
    sidebarPanel(
      
      # Load Stop Words Dataset
      fileInput("dataset", "Upload File",
                multiple = FALSE,
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv")),
      
      #Space
      hr(),
      
      # Type in variable names to create tables on, Up to 4                   
      textInput("var1", label = h6("Variable 1"), value = ""),
      textInput("var2", label = h6("Variable 2"), value = ""),
      textInput("var3", label = h6("Variable 3"), value = ""),
      textInput("var4", label = h6("Variable 4"), value = "")
      
    ),

      
    mainPanel(
      # Column names
      tableOutput("columns"),
      
      # Frequency Tables
      h4("Frequency Tables"),
      verbatimTextOutput("var1"),
      tableOutput("table1"),
      
      tags$hr(),
      
      verbatimTextOutput("var2"),
      tableOutput("table2"),      

      tags$hr(),
      
      verbatimTextOutput("var3"),
      tableOutput("table3"),
      
      tags$hr(),
      
      verbatimTextOutput("var4"),
      tableOutput("table4")
      
    )
  )
)