library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)


shinyUI(
    navbarPage("NextWords",
               theme = shinytheme("cerulean"),
               tabPanel("App",
                        fluidPage(
                            titlePanel("Instructions"),
                            h5("1. Enter word(s) in the text box"),
                            h5("2. The next word is predicted below"),
                            h5("3. No need hit Enter"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("userInput",
                                              "Enter your word(s):",
                                              value =  "",
                                              placeholder = "Type here"),
                                    br(),
                                ),
                                mainPanel(
                                    h3("Your input:"),
                                    verbatimTextOutput("userSentence"),
                                    h3("Next word:"),
                                    h4(em(span(textOutput("prediction1"), style="color:blue"))),
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("About NextWords"),
                        br(),
                        div("NextWords is a Shiny app on Natural Language Processing
                            to predict the next words by a text prediction algorithm.
                            This is one of my projects on applying machine learning models.
                            The source code for NextWords App and other machine learning projects
                            (predictive models, classification) can be found
                            on my GitHub Repo.",
                            br(),
                            br(),
                            img(src = "github.png"),
                            a(target = "_blank", href = "https://github.com/dinhtuanphan",
                              "Dinh-Tuan Phan")),
                        br(),
                        h3("About Me"),
                        br(),
                        div("Hello there, I'm Tuan, a wearable sensor & data scientist currently working at 
                            Johns Hopkins University and Hospital on many real-time health monitoring projects.
                            Before joining JHU, I spent almost three years at the 
                            National University of Singapore as a postdoctoral fellow. 
                            I completed my Ph.D. at Nanyang Technological University Singapore in 2015.",
                            br(),
                            br(),
                            img(src = "linkedin.png"),
                            a(target = "_blank", href="https://www.linkedin.com/in/phandinhtuan/", "Dinh-Tuan Phan"),
                            br(),
                            img(src = "personal.png"),
                            a(target = "_blank", href="https://www.sites.google.com/view/dinhtuanphan", "Dinh-Tuan Phan"))
               )
    )
)