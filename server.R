# Functions for Text Mining App
server <- function(input, output, session) {
  
  myData <- reactive({
    inFile <- input$dataset
    if (is.null(inFile)) return(NULL)
    data <- read.csv(inFile$datapath, header = TRUE)
    data
  })
  
  
  output$columns <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.

    req(myData())
    return(colnames(myData()))
  })
  
  output$table1 <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(myData())
    
    if(input$var1 != "") {
      return(as.data.frame(table(myData()[,paste(input$var1)])))
    }
    else {
      return("")
    }
  })  
  
  output$table2 <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(myData())
    
    if(input$var2 != "") {
      return(as.data.frame(table(myData()[,paste(input$var2)])))
    }
    else {
      return("")
    }
  })
  
  output$table3 <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(myData())
    
    if(input$var3 != "") {
      return(as.data.frame(table(myData()[,paste(input$var3)])))
    }
    else {
      return("")
    }
  })
  
  output$table4 <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(myData())
    
    if(input$var4 != "") {
      return(as.data.frame(table(myData()[,paste(input$var4)])))
    }
    else {
      return("")
    }
  })
  
  
}