#---
#title: "Data Science Capstone"
#author: "Rafael Godinho"
#date: "september, 12 of 2017"
#---


suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("Data Science Capstone", 
                   
                   theme = shinytheme("sandstone"),
                   
 
                   ## Tab 1 - Prediction
                   
                   tabPanel("App",
                            
                            
                            
                            fluidRow(
                                    
                                    column(3),
                                    column(6,
                                           tags$div(textInput("text", 
                                                              label = h3("Enter your text here:"),
                                                              value = ),
                                                    tags$span(style="color:grey",("Only English words are supported.")),
                                                    br(),
                                                    tags$hr(),
                                                    h4("The predicted next word:"),
                                                    tags$span(style="color:darkred",
                                                              tags$strong(tags$h3(textOutput("predictedWord")))),
                                                    br(),
                                                    tags$hr(),
                                                    h4("What you have entered:"),
                                                    tags$em(tags$h4(textOutput("enteredWords"))),
                                                    align="center")
                                    ),
                                    column(3)
                            )
                   )
                  
)
)
