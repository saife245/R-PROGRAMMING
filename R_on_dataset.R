#reading the csv file
data = read.csv(file.choose())
#file.choose help to choose the csv file

#to know the working directory 
getwd()

#set working directory
setwd('F:\\DS\\R')

#another way of importing the data
data2 = read.csv('DemographicData.csv')

#to know the data is all about and to know the how many vriable is?
str(data2)

#summary about the csv file 
summary(data2)

#to acess any particular row or, any particular contain of row
#for this we use '$'sign
data2$Internet.users

data2$Internet.users[2]

#to know the factor of particular row we use levels function
levels(data2$Income.Group)

#to check the part of data is a dataframe
is.data.frame(data[1,])
is.data.frame(data[,1])

################filtering the data set######################
#taking only the data smaller than 2
filter = data2$Internet.users < 2
#taking only data whose internet user value is less than 2
data2[filter,]

#selecting data as per choice
data2[data2$Birth.rate > 40 & data2$Internet.users < 2 , ]

#checking the data is present in dataset
data2[data2$Country.Name == 'Malta' , ]
