# Frequency tables Shiny App
# 2018-04-27
# Copy and run all code in R and interface should come up in internet browser
# Dependencies: none

# Load Packages
# (to install, replace 'require' with 'install.packages')
# install.packages("data.table", quiet=T)
# install.packages("dplyr", quiet=T)
# install.packages("tidytext", quiet=T)
# install.packages("stringr", quiet=T)
# install.packages("tidyr", quiet=T)
# install.packages("widyr", quiet=T)
# install.packages("shiny")
# install.packages("RCurl")

require("shiny")
require("RCurl")

### Run ui.R and server.R files here ###

# Run Shiny app
shinyApp(ui, server)