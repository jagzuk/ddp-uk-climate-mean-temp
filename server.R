library(ggplot2)

shinyServer(function(input, output) {
   
   data.raw <- read.csv("UK_Mean_Temp.csv", stringsAsFactors=FALSE)
   
   output$main_plot <- renderPlot({

      if (input$season == 'Winter')
         g <- ggplot(data.raw, aes(x=Year, y=WIN)) + geom_point(shape=1)
      
      if (input$season == 'Spring')
         g <- ggplot(data.raw, aes(x=Year, y=SPR)) + geom_point(shape=1)

      if (input$season == 'Summer')
         g <- ggplot(data.raw, aes(x=Year, y=SUM)) + geom_point(shape=1)

      if (input$season == 'Autumn')
         g <- ggplot(data.raw, aes(x=Year, y=AUT)) + geom_point(shape=1)

      if (input$season == 'All Seasons')
         g <- ggplot(data.raw, aes(x=Year, y=ANN)) + geom_point(shape=1)
      
      
      
      if (input$linear_model)
         g <- g + geom_smooth(method=lm)
      
      if (input$loess_model)
         g <- g + geom_smooth(color='red')

      g <- g + ylab("Degrees Celcius")
      g <- g + ggtitle(input$season)
      
      print(g)
   
   })
})
# (c) 2016 jagzuk
