library(dplyr)
data(iris)

head(iris)

colnames(iris)
dim(iris)
colSums(is.na(iris))
summary(iris[, 1:4])
sapply(iris[, 1:4], sd)

plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col = iris$Species,
  pch = 19,
  xlab = "Sepal Length",
  ylab = "Sepal Width",
  main = "Sepal Length vs Sepal Width"
)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19)

selected_data <- iris %>%
  select(Sepal.Length, Sepal.Width, Species)


head(selected_data, 10)