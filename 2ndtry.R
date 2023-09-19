#2nd try

iris$color<-ifelse(iris$Species=="setosa","purple",ifelse(iris$Species=="vercicolor", "blue","pink") )
head(iris)
tail(iris)
iris<-iris[order(iris$Sepal.Width, decreasing = T),]
vercicolor<-subset(iris, Species == "vercicolor")

#?

#edit
