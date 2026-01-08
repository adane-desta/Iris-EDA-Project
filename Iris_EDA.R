library(dplyr)
data(iris)

head(iris)

colnames(iris)
dim(iris)
colSums(is.na(iris))
summary(iris[, 1:4])
sapply(iris[, 1:4], sd)