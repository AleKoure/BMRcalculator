library(shiny)

BMRpred <- function(weight, height, age){ 
  
                              10 * weight + 6.25 * height - 5 * age + 5
}

BMRpredF <- function(weight, height, age){ 
  
  10 * weight + 6.25 * height - 5 * age - 161 
}

                  

shinyServer(
  function(input, output) {
    
    output$prediction <- renderPrint({
      switch(input$gender,
      
      "Male" = BMRpred(input$weight,input$height, input$age),
      "Female"= BMRpredF(input$weight,input$height, input$age)
      )
      })
    
    
  }
)
