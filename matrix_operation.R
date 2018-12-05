'''
matrix represneted as A[row, column]
matrix can be created by simply filling the number in matrix as each elemen filling .
secondly, process is rbind() in which we put the whole row at a time 
third, cbind() in which we fill the metrix by putting whole column at a time in matrix.
where as putting each column and each row act as vector of column and row size.
'''

#creating the matrix 4x5
data = 1:20
a = matrix(data, 4, 5)
print(a)

#creating the matrix by row creation
b = matrix(data,4,5, byrow = T)
print(b)

#creating the matrix by rbind
r1 = c(1, 2 , 3, 4)
r2 = c(9, 8, 7, 6)
r3 = c(11, 12, 13, 14)
c = rbind(r1, r2, r3)

#creating the matrix by cbind
d = cbind(r1, r2, r3)

#giving the name of vector
jan = c(1, 2, 3, 4, 5)
names(jan) = c('a', 'b', 'c', 'd')
jan

#acessing the matrix by its names
Games["ChrisBosh","2005"]

#it represent the matrix of linear dimension
Games["ChrisPaul", , drop = F]

#it represent the indeces of matrix and it's contain
Games["ChrisPaul", , drop = T]
