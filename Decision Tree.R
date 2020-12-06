

#Decision Tree
library(party)
iris
input.dat=iris
model=ctree(Species~Sepal.Width+Sepal.Length+Petal.Length+Petal.Width,data=input.dat)
plot(model)


#Splitting
library(caTools)
iris
sample_data=sample.split(iris,SplitRatio=0.8)
train<-subset(iris,sample_data==TRUE)
test<-subset(iris,sample_data==FALSE)
model<-ctree(Species~Sepal.Width+Sepal.Length+Petal.Length+Petal.Width,train)
plot(model)
predicted<-predict(model,test)
m<-table(test$Species,predicted)
m
sum(diag(m))/sum(m)

library("rpart")
library("rpart.plot")
data("iris")
target = Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
tree = rpart(target, data = iris_train,method='class' )
rpart.plot(tree)



