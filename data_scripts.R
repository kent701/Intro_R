install.packages("tidyverse")
library(readr)
urlfile = "https://raw.githubusercontent.com/CWWhitney/
teaching_R/master/participants_data.csv"
participants_data <- read_csv(url(urlfile))
print(participants_data)

write.csv(participants_data, "C:/Users/Arnaud/Documents/
          decisoin smth/participants_data-saved")

#data barplot 
participants_dataplot <- table(participants_data$working_hours_per_day)
barplot(participants_dataplot, main = "student working hours", xlab = "hours",
ylab = "freq")

library(ggplot2)
ggplot(data = participants_data, aes(x= working_hours_per_day, 
                                     y= continent_of_origin )) + geom_point()

#letters in name
ggplot(data = participants_data,
       aes(x= working_hours_per_day, 
           y= continent_of_origin,
           color= acedemic_parents,
           size= working_hours_per_day )) + geom_point()

# Exercice
ggplot(data = participants_data.saved,
       aes(x= participants_data.saved$age,
           y= participants_data.saved$gender,
           color=participants_data.saved$continent_of_origin)) + geom_point()
