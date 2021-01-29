library(tidyverse)
car_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import MechaCar file
head(car_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= car_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= car_table)) #generate summary statistics

#Deliverable 2: Create Visualizations or the Trip Analysis

susCoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- susCoil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns

lot_summary <- susCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns


#Deliverable 3: T-Tests on Suspension Coils

t.test(susCoil_table$PSI,mu=mean(1500)) #compare all manufacturing lots versus population means
