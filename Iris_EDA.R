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


filtered_data <- iris %>%
  filter(Sepal.Length > 5.5)


nrow(filtered_data)


iris <- iris %>%
  mutate(Sepal.Area = Sepal.Length * Sepal.Width)


head(iris)



subset1 <- iris %>%
  filter(Sepal.Length > 5.0 & Sepal.Width < 3.0)


nrow(subset1)




subset2 <- iris %>%
  filter(
    (Species == "setosa" | Species == "versicolor") &
      Petal.Length > 2.0
  )


nrow(subset2)



subset3 <- iris %>%
filter(!(Species == "virginica" & Sepal.Length > 6.0))
nrow(subset3)
