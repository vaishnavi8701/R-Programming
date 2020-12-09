#GRIPDEC20 

#Simple Linear Regression

data <- read.csv( "https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv", header=TRUE)
data
X<-data$Hours
Y<-data$Scores
relation<-lm(Y~X)
relation
summary(relation)
plot(Y,X,col = "blue",main = "Hours & Scores Regression",
     abline(lm(X~Y)),cex = 1.3,pch = 16,xlab = "Scores of student",ylab = "Hours spend")
p<-data.frame(X=9.25)
predict(relation,p)

