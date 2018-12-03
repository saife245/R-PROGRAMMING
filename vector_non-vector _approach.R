#initalizing the n with value 10
n = 10

#creating the random variable by random initalization
a = rnorm(n)
b = rnorm(n)

#vector approach
c = a*b
#when n is large vectorized operation is fast


#non_vector approach
d = rep(NA, n)
for(i in 1:n){
  d[i] = a[i] * b[i]
}
#when n is large non-vectorized operation is slow