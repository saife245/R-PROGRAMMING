#creating the vector
vect<- c( 3, 4, 5, 75)
#above we combine the four vectr into one vector
#print the vector 
print(vect)

#checking the number is numeric
is.numeric(vect)

#checking the number is integer
is.integer(vect)
#false because R firstly store the result in the form of double

#to store the number in r as integer we simply put the L in next to the number
int <- c(2L, 5L, 7L, 9L)

is.integer(int)

#rm is used to remove the varible or content of variable
rm(int)

#sequence function in R
#printing the sequence of number from strting to end
seq(1, 12)

#without seq function it print the same result
1:12

#but by using the seq function we can print the desire interval number 
#staring from 1 goes upto 12 at interval of 2
seq(1, 12, 2)


#replicate function in R
#rep function iterate the given number upto other given number of time
rep(12,3)

x<- rep(20,3)
Y<- rep(x, 4)
Y

