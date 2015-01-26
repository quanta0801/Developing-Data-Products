library(shiny)

shinyUI(pageWithSidebar(
    
    headerPanel("Demonstration of the Central Limit Theorem"),
    
    sidebarPanel(
        
        selectInput('distribution', 'Choose a distribution:', 
                    c("Exponential(5)", "Standard Uniform", "Standard Normal", 
                      "Student's t(df=5)", "Poisson(10)","Geometric(0.1)")),
        sliderInput("sampleSize", "Sample Size", 1, 50, 5),
        sliderInput('nSample', 'Number of Samples', min=100, max=5000, 
                    value=1000, step=100),
        h4('Mean of samples'),
        verbatimTextOutput('mean')
        ),
    
    mainPanel(
        p('This is a demonstration of the Central Limit Theorem. On the left, you can 
          select the type of distribution from which the random variables are selected, 
          the size of each sample, and the number of samples to generate. From the main
          plots, the first plot shows the values of the sample, while the second plot
          shows the mean of each sample.'),
        p('You can see that the first plot of the sample shows that the sample follows the
          original distribution very closely, but plot of the means of sample follows the normal
          distribution as the sample size increases. At small sample sizes (less than 10) it is 
          a hybrid between the 2 distributions.'),
        plotOutput('plot1'),
        plotOutput('plot2')
    )
))