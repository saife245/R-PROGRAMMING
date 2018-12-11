#insatlling the ggplot to analyse the data
#install.packages("ggplot2")
library(ggplot2)

#to know the quickplot
?qplot

#data2 is the dataset of Demogrphic Data
#we have to import into it
data2 = read.csv("DemographicData")
#taking parameter in the qplot
qplot(data = data2 , x = data2$Internet.users)

#taking the two parameter on both x and y axis
qplot(data = data2, x= data2$Income.Group, y= data2$Birth.rate)

#taking two parameter and size
qplot(data = data2, x = data2$Income.Group, y= data2$Birth.rate, size = I(3))

#tking the colour of the graph
qplot(data = data2, x = Income.Group, y = Birth.rate, size = I(3), color = I("blue"))

#################plotting the box plot############################
qplot(data = data2, x = Income.Group, y = Birth.rate, geom = "boxplot")

#visualising the other data of the demographic data
qplot(data= data2, x = Internet.users, y = Birth.rate)

#visualising the three things in data set
qplot(data= data2, x = Internet.users, y = Birth.rate, 
      color = Income.Group, size = I(3))
