

shinyUI(fluidPage(
  # title    
  headerPanel("ShinyAoEyeR"),  

  # side bar  
  sidebarPanel(
      
      selectInput("image.list", "Choose an image:", 
                  choices = list.files("images/")),    
      actionButton("save.aoi.file", "Save AoI file"),
      actionButton("reset.aoi.file", "Reset"),
      tableOutput("aoi.table"),
      width = 4

  ),
  
  # main panel    
  mainPanel(

    textInput("aoi.label", "Add AoI label:", value = "..."),
    helpText("Note: Do not use spaces when naming AoI labels!"),
    verbatimTextOutput("live.update"),
    actionButton("add.line", "Add AoI"),
    plotOutput("plot.image", height = plot.dim.height, width = plot.dim.width, 
               brush = brushOpts(id = "plot.brush", fill = "#9cf", 
                                 stroke = "#036", 
                                 opacity = 0.25, delay = 300, 
                                 delayType = c("debounce", "throttle"), 
                                 clip = TRUE, 
                                 direction = c("xy", "x", "y"), 
                                 resetOnNew = TRUE)),
    actionButton("ending","Done"),
    
    width = 8
  )
))


