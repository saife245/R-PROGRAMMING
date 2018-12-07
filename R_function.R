#creating the function
plot = function(){
  data= MinutesPlayed[1:3, ,drop = F]
  matplot(t(data), type = 'b', pch = 15:18, col = c(1:4, 6))
  legend('bottomleft', inset = 0.01, legend = Players[1:3], col = c(1:4, 6),pch = 15:18,  horiz = F)
  
}

plot()

#creating the function parameter to the function
plot1 = function(rows){
  data= MinutesPlayed[rows, ,drop = F]
  matplot(t(data), type = 'b', pch = 15:18, col = c(1:4, 6))
  legend('bottomleft', inset = 0.01, legend = Players[rows], col = c(1:4, 6),pch = 15:18,  horiz = F)
  
}

plot1(1:5)

#passing data and parameteer to the function
plot2 = function(Data, rows){
  data= Data[rows, ,drop = F]
  matplot(t(data), type = 'b', pch = 15:18, col = c(1:4, 6))
  legend('bottomleft', inset = 0.01, legend = Players[rows], col = c(1:4, 6),pch = 15:18,  horiz = F)
  
}

plot2(Salary, 1:10)
