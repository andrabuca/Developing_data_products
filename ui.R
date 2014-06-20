library(shiny)
library(datasets)

# Prepare dataset: rename columns and traspose dataset for further calculations
names(mtcars) <- c("Miles/gallon", "Nr.cylinders", "Displ", "Horsepow", "Rear.axle.rat","Weight","1/4.mile.time","V/S","Transmis","Nr.fwd.gears","Nr.carb")

# Define the overall UI
shinyUI(
  
  # Use a fluid layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Cars characteristics"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        radioButtons("type", "Select your prefered car type from the list below:", 
                    choices=rownames(mtcars))
             ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("carPlot")  ,
        h4('How many minutes it takes for this car to drive 100 miles:'),
        verbatimTextOutput("mile"),
        h4('How many gallons it takes for this car to drive 100 miles:'),
        verbatimTextOutput("gallon")
      )
      
    )
  )
)