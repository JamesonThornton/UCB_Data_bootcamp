
library(dplyr)
mpg_raw <- read.csv('resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_raw)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_raw)) #generate summary statistics

susp_raw <- read.csv('resources/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- susp_raw %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )

lot_summary <- susp_raw %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )

t.test(susp_raw$PSI,mu=mean(susp_raw$PSI))

data_lot1 <- susp_raw %>% filter(Manufacturing_Lot=='Lot1') 
data_lot2 <- susp_raw %>% filter(Manufacturing_Lot=='Lot2')
data_lot3 <- susp_raw %>% filter(Manufacturing_Lot=='Lot3')

t.test(data_lot1$PSI,data_lot2$PSI,paired = T) #compare the mean difference between two samples
t.test(data_lot2$PSI,data_lot3$PSI,paired = T) #compare the mean difference between two samples
t.test(data_lot3$PSI,data_lot1$PSI,paired = T) #compare the mean difference between two samples
