#analyzing the nba data bymatplot
?matplot #? help to know more detail about any  function

matplot(t(FieldGoals), type = 'b', pch = 15:18, col =c(1:4, 6))

?legend
legend('bottomleft', inset = 0.01, legend = Players, col =c(1:4, 6),pch = 15:18, horiz = F)

matplot(t(FieldGoals / Games), type = 'b', pch = 15:18, col =c(1:4, 6))
legend('bottomleft', inset = 0.01, legend = Players, col =c(1:4, 6),pch = 15:18, horiz = F)

matplot(t(FieldGoals / FieldGoalAttempts), type = 'b', pch = 15:18, col =c(1:4, 6))
legend('bottomleft', inset = 0.01, legend = Players, col =c(1:4, 6),pch = 15:18, horiz = F)
