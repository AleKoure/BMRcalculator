Basal Metabolic Rate App
========================================================
author: Alexandros Kouretsis
date: 7/9/2017
autosize: true

Introduction
========================================================

Basal Metabolic Rate measures  the  calories  consumed by a human at rest per day.

The Basal Metabolic Rate depends on many variables. An empiric model that it is widely used for 
a first estimation depends on.

- Gender
- Height
- Weight
- Age

The Formula
========================================================

__The BMR for males is__ 


$$
BMR (cal/day) = 10 * weight (kgr) + 6.25 * height (cm) \\- 5 * age (years) + 5
$$

__and for females__ 

$$
BMR (cal/day) = 10 * weight (kgr) + 6.25 * height (cm) \\- 5 * age (years) - 151
$$

-Greater for males
-Increases with weight and height
-Decreases with age


The App
========================================================

We used shinny to build a BMR Calculator. The types of widgets that we use are

__Numeric Input__: Three numeric inputs are needed for the values of height, weight and age.

__Select Input__ : One additional input is needed to specify the gender.

We added also the tabs in the UI:

__BMR__: It displays the predicted BMR index

__Info__: We add information about the App and the BMR index.


Useful Information
========================================================

You can find the App in the shinny server by following the address:

https://alekoure.shinyapps.io/bmrapp

The code for the App is in my Github repo: 

https://github.com/AleKoure/BMRcalculator

Where you can downlod the ui.R and the server.R files to run the app in you IDE.









