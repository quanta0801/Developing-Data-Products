library(shiny)

shinyUI(pageWithSidebar(
    
    headerPanel("Demonstration of the Central Limit Theorem"),
    
    sidebarPanel(
        
        selectInput('distribution', 'Choose a distribution:', 
                    c("Standard Uniform", "Standard Normal", "Student's t(df=5)", 
                      "Exponential(5)", "Poisson(10)","Geometric(0.1)")),
        sliderInput("sampleSize", "Sample Size", 1, 50, 10),
        sliderInput('nSample', 'Number of Samples', min=100, max=5000, 
                    value=1000, step=100)
        
        ),
    
    mainPanel(
        plotOutput('plot1'),
        plotOutput('plot2')
    )
))