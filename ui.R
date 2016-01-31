deplylibrary(ggplot2)

shinyUI(pageWithSidebar(

   headerPanel("UK Mean Temperature Explorer"),
   sidebarPanel( 
      selectInput("season", "Season:",list("All Seasons","Winter","Spring","Summer", "Autumn")),
      checkboxInput(inputId = "linear_model",label = strong("Show Linear Model"),value = FALSE),
      checkboxInput(inputId = "loess_model",label = strong("Show Loess Model"),value = FALSE)
   ), 
   mainPanel(   
      plotOutput(outputId = "main_plot", height = "300px"),
      
      h4("UK Climate Data 1911-2015"),
      p("The chart above shows the mean temprerature recorded for the selected season (Spring, Summer, Autumn, Winter, or All Seasons). Use the controls on the left to choose the season and to add Linear Model and/or Loess Model trend lines and confidence intervals."),
      p("The data for this application was obtained from the", a(href="http://www.metoffice.gov.uk/climate/uk/summaries/datasets", "UK Government Climate Datasets")),
      p("This application was created by R A Jagger (jagzuk) for the Coursera Developing Data Products course, part of the Data Science Specialization by Johns Hopkins University."),
      p("The source code for this application is availale in the author's", a(href="https://github.com/jagzuk/ddp-uk-climate-mean-temp", "GitHub respository")),
      p("You may also be interested in this", a(href="http://rpubs.com/jagzuk/ukclimatexplorer", "Promotional Slide Deck"))
      
      )

))

# (c) 2016 jagzuk
