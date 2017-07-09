shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Basal Metabolic Rate"),
    
    
    sidebarPanel(
      
      selectInput("gender", 
                  label = "Choose Your Gendre",
                  choices = c("Male", "Female"),
                  selected = "Male"),
      numericInput('weight', 'Weight (kgr)', 60),
      numericInput('height', 'Height (cm)', 168),
      numericInput('age', 'Age (years)', 25),
      submitButton('Submit')
    ),
    
    
    mainPanel(
      tabsetPanel(
        
        tabPanel("BMR", 
            h3('Results of prediction'),
            h4('Your Basal Metabolic Rate is '),
            verbatimTextOutput("prediction"),
            h4('calories per day')
        ),
        
        tabPanel("Info", 
                 h3('Basal Metabolic Rate'),
                helpText("Basal Metabolic Rate (BMR) is the amount of energy comsumed by a human 
                         per unit time. Proper measurement requieres strict criteria but 
                         we can estimate its value using a multilinear model. The BMR index decreases 
                         with time, increases with muscle mass and it is greater for males." 
                        ),
                
                HTML("<u><b>Empiric formula used for BMR: </b></u>
                        <br> </br>
                        <b>Males: </b> 
                        
                        <br> BMR (cal/day) = 10 * weight (kgr) + 6.25 * height (cm) - 5 * age (years) + 5 </br>
                        <br> </br>

                        <b>Females </b>
                        
                        <br> BMR (cal/day) = 10 * weight (kgr) + 6.25 * height (cm) - 5 * age (years) -161 </br>
                        <br> </br>
                        <br> Select your gender and enter your weight, height and age in the <u>given units.</u></br>
                    ")  
                
                
        )
        
      
      )
    )
  )
  
)
