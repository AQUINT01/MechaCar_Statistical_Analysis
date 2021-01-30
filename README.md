# MechaCar Statistical Analysis
## Overview:
AutosRUs’ newest prototype, the **MechaCar**, is suffering from production troubles that are blocking the manufacturing team’s progress. Upper management has called for the data analytics team to review the production data for insights that may help the manufacturing team.




## Linear Regression to Predict MPG
In the summary output, each `Pr(>ltl)` value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, intercept, vehicle length and ground clearance are statistically likely to provide non-random amounts of variance to the linear model.


![LRegression](https://github.com/AQUINT01/MechaCar_Statistical_Analysis/blob/main/images/LinearReg.png)

The p-value of the linear regression  is **5.35e-11**, which is significantly smaller than the assumed significance level of 0.05. Therefore, the slope of our linear model is not zero.

The vehicle length and ground clearance have a signifiance impact on mpg. However, this linear model is not an effective prediction of mpg performace because other variables/factors may have contributed to the intercept’s significant small value that may be unaccounted for.





## Sumary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (‘PSI’). 


The total manufacturing analysis yielded a **62.3** variance, well within the acceptable range. 

![All Manu](https://github.com/AQUINT01/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)


When reviewing each manufacturing lot seperately, **Lot3** with a variance of **170** is rejected for exceeding the 100 PSI maximum requirement.
![Lot](https://github.com/AQUINT01/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)




## T-Tests on Suspension Coils
The one-sample t-test is a statistical hypothesis test used to determine whether an unknown population mean is different from a specific value. For this analysis,  a t-test was performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 PSI.


A p-value = .06 for all manufacturing lots is statistically the same from a population mean of 1,500 PSI.

![allManu](https://github.com/AQUINT01/MechaCar_Statistical_Analysis/blob/main/images/allManu.png)


At a closer look at each manufaturing lot seperately, **Lot3** with a p-value = 0.0416, below the significance level of .05, is statistcially different from the population mean of 1,500 PSI.  
![lot](https://github.com/AQUINT01/MechaCar_Statistical_Analysis/blob/main/images/Lot_tTest.png)


## Study Design: MechaCar vs Competition

A vehicle's horsepower ('hp')and miles per gallon ('mpg') ratings are worthy features consumers look for when making a purchase.  If my study design can demonstrate  MechaCar out performs its competitors in these two categories, than its marketability increases.

Although the MechaCar dataset did not include horsepower data, the mtcars dataset did. I recommend using a single linear regression model to determine if there’s a strong correlation between hp and mpg.

Hypotheses to test:
  * H0: There is a correlation between hp and mpg.
  * Ha: There is no correlation between hp and mpg.

With a strong correlation, the MechaCar can receive higher ratings than its competition, thus getting a good introduction in a competitive automotive industry.




