#i
data(airquality)
summary(airquality)
#ii
install.packages("reshape")
library(reshape)
melted <- melt(airquality)
head(melted)
#iii
melted <- melt(airquality, id = c("Month", "Day"))
head(melted)
#iv
casted <- cast(melted, Month + Day ~ variable)
head(casted)
#v
casted <- cast(melted, Month ~ variable, mean)
casted                
