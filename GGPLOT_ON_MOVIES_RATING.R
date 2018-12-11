#setting the working directory
setwd('F:\\DS\\R')

#######################data######################
#reading the csv file
movies = read.csv('Movie-Ratings.csv')

#rename the column of the dataset
colnames(movies) = c('Film', 'Genre', 'CriticRating','AudienceRating',
                     'BudgetMillions', 'Year')

head(movies)
str(movies)

factor(movies$Year)
movies$Year = factor(movies$Year)

summary(movies)
str(movies)

############### aesthetics######################
#load the library
library(ggplot2)

ggplot(data = movies, aes(x=CriticRating, y=AudienceRating))

#adding the geometry
ggplot(data = movies, aes(x=CriticRating, y=AudienceRating))+
     geom_point()

#adding the color
ggplot(data = movies, aes(x=CriticRating, y=AudienceRating,
                          color = Genre))+
  geom_point()

#############plotting with layer####################
p = ggplot(data = movies, aes(x=CriticRating, y=AudienceRating,
                              color = Genre, size = BudgetMillions))

#plotting point graph
p + geom_point()

#plotting the line
p + geom_line()

#plotting the multilayer
p + geom_line(size = 1)+ geom_point()

#overridding the data
p + geom_point(aes(size = CriticRating))

#another overridding
p + geom_point(aes(x = BudgetMillions)) + xlab('Budget Millions $$$')

##########histogram###############

s= ggplot(data = movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth = 10)

#add color
s+ geom_histogram(binwidth = 10, aes(fill = Genre))

#add border
s+ geom_histogram(binwidth = 10, aes(fill = Genre), color = 'Black')

#density chart graph
s+geom_density(aes(fill = Genre))
s+geom_density(aes(fill = Genre), position = 'stack')


############## statistical transformation###############
u = ggplot(data = movies, aes(x = CriticRating, y = AudienceRating,
                              color = Genre))
u + geom_point() + geom_smooth(fill = NA)

#box plot
u = ggplot(data = movies, aes(x = Genre, y = AudienceRating,
                              color = Genre))

u + geom_boxplot()
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()

u + geom_boxplot(size = 1.2) + geom_jitter()

############# Using the facets ###############
v = ggplot(data = movies, aes(x=BudgetMillions))
v+ geom_histogram(binwidth = 10, aes(fill = Genre), color = 'Black')

#applying the facets
v + geom_histogram(binwidth = 10, aes(fill = Genre), color = 'Black')+ 
  facet_grid(Genre~., scales = 'free')

#scatter plot
w = ggplot(data = movies, aes(x = CriticRating, y = AudienceRating,
                              color = Genre))
w + geom_point(size = 3)

#applying facet in scatterplot
w + geom_point(size = 3) +
  facet_grid(Genre~.)

w + geom_point(size = 3) +
  facet_grid(.~Year)

w + geom_point(size = 3) +
  facet_grid(Genre~Year)

w + geom_point(size = 1.5) +
  geom_smooth() + 
  facet_grid(Genre~Year)
