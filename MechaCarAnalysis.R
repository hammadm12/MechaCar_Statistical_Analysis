## Module 15 Challenge

# Load packages

library(tidyverse)

library(dplyr)

# Load files

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# create linear regression with MechaCar data set.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) 

# create summary statistics of Linear Regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) 

# Deliverable 2: Suspension Coil analysis

Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Deliverable 3: T-Tests

t.test(Suspension_Coil$PSI,mu=mean(1500))

t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot1',select = PSI))

t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot2',select = PSI))

t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot3',select = PSI))

Lot1_t_test <- t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot1',select = PSI))

Lot2_t_test <- t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot2',select = PSI))

Lot3_t_test <- t.test(Suspension_Coil$PSI,mu=mean(1500),subset(Suspension_Coil,Manufacturing_Lot == 'Lot3',select = PSI))