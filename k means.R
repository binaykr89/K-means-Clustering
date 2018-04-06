library(readr)
Iris <- read_csv("C:/Users/BINAY/Desktop/Iris1.csv")
View(Iris)
Iris.features = Iris
Iris.features$class <- NULL
View(Iris.features)
results<-kmeans(Iris.features,5)
results
results$size
results$cluster
table(Iris$class, results$cluster)
plot(Iris[c("petal.length","petal.width")], col = results$cluster)
#plot(Iris[c("petal.length","petal.width")], col = Iris$class)
plot(Iris[c("sepal.length","sepal.width")], col = results$cluster)
#plot(Iris[c("sepal.length","sepal.width")], col = Iris$class)