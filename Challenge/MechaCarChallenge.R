install.packages("tidyverse")
library(tidyverse)

MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors =F)
head(MechaCar_mpg)

#Name columns of dataset
MechaCar_mpg <- MechaCar_mpg %>% rename(
  vehlength = "vehicle length",
  vehweight = "vehicle weight",
  spangle = "spoiler angle",
  grclear = "ground clearance"
)
head(MechaCar_mpg)

# linear regression model
lm(formula = mpg ~ vehlength + vehweight + spangle + grclear + AWD, data = MechaCar_mpg)

# summarize

summary(lm(formula = mpg ~ vehlength + vehweight + spangle + grclear + AWD, data = MechaCar_mpg))

suspension_coil <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#Visualize distribution
ggplot(suspension_coil,aes(x=PSI)) + geom_density()

shapiro.test(suspension_coil$PSI)

summary(suspension_coil$PSI)
var(suspension_coil$PSI)
sd(suspension_coil$PSI)

t.test(x=suspension_coil$PSI,mu=1500)
