library(readxl)
library(ggplot2)

Shepherd_Data <- read_excel("Shepherd_Data.xlsx")

bmi <- Shepherd_Data$`BMI (mean)`
pol <- Shepherd_Data$Policies
GGHED <- Shepherd_Data$GGHED



my_glm <- lm(bmi ~ pol + GGHED)

plot(bmi, GGHED,
     main = "Scatterplot of Mean BMI and GGHE-D",
     xlab = "GGHE-D as Percent GDP (%)",
     ylab = "Mean BMI (kg/m^2)",
     pch = 18)

plot(my_glm$fitted.values, my_glm$residuals, xlab = "Fitted Values", 
     ylab = "Residuals", main = "Residual Plot", pch = 18)
abline(h = 0, col = "red")

hist(my_glm$residuals, main = "Model Residuals", xlab = "Residual", 
     col = "light grey", right = F)


GGHED_c <- GGHED - mean(GGHED)

my_glm_int <- lm(bmi ~ pol * GGHED_c)
summary(my_glm_int)


ggplot(Shepherd_Data, aes(x = GGHED, y = bmi, color = Policies)) + stat_smooth(method = "lm") + 
  geom_point() + xlab("GGHE-D as Percent GDP (%)") + ylab("Mean BMI (kg/m^2)") + 
  ggtitle("Mean BMI by GGHE-D and Existence of an NCD Policy") + 
  theme_classic()
