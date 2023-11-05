library(animation)
library(ggplot2)
library (gganimate)


for(i in 1:100) {
  print("Hello world!")
  print(i*i)
}


foo <- seq(1,100, by=2) 
n <- length(foo) #define n = 50

foo.squared = NULL

for(i in 1:n) {#our counter
  foo.squared[i] = foo[i]^2 # tthe task
}
foo.df <- data.frame(foo, foo.squared)
plot(foo.df$foo~foo.df$foo.squared)

num_gen <- 10 #   no. generation
N <- rep (0,num_gen) #  "vector" of 10 zeros (could be `NULL`)
N[1] <- 2 # We need a beginning for our population
for (i in 2:num_gen){ # counter
  N[i]=2*N[i-1] # task: double individuals
}
plot (N)

num_gen<-10 
generation<-1:num_gen 
N <- rep (0,num_gen)
N[1] <- 2
for (i in 2:num_gen) { 
  N[i]=2*N[i-1]
}
plot(N~generation, type='b') # type ='b' connect the date/dot with a line

grow <- function (growth.rate) { # argument "growth.rate" of function "grow" 
  num_gen<-10
  generation<-1:num_gen
  N <- rep (0,num_gen)
  N[1] <- 1
  for (i in 2:num_gen) {
    N[i]=growth.rate*N[i-1] # not the use growth.rate argument
  }
  plot(N~generation,type='b', main=paste("Rate =", growth.rate)) 
}
par(mfrow=c(2,3))
for (i in 2:7){
  grow(i)
}

grow2 <- function (growth.rate, number.generation) { 
  num_gen<-number.generation
  generation<-1:num_gen
  N <- rep (0,num_gen)
  N[1] <- 1
  for (i in 2:num_gen) {
    N[i]=growth.rate*N[i-1] 
  }
  plot(N~generation,type='b', main=paste("Rate =", growth.rate, ", ", number.generation, "generations"))
}

grow3 <- function (growth.rate) { 
  num_gen<-10
  generation<-1:num_gen
  N <- rep (0,num_gen)
  N[1] <- 1
  for (i in 2:num_gen) {
    N[i]=growth.rate*N[i-1]
  }
  plot(N~generation, xlim=c(0,10), ylim=c(0,100000), type='b', main=paste("Rate =", growth.rate))
}
saveGIF({
  for (i in 2:10) {
    grow3(i)
    
  }})

N[i] = N[i-1]+(growth.rate * N[i-1] * (100-N[i-1]/100))


grow4 <- function (growth.rate) { 
  +     num_gen<-number.generation
  +     generation<-1:num_gen
  +     N <- rep (0,num_gen)
  +     N[1] <- 10
  +     for (i in 2:num_gen) {
    +         N[i] = N[i-1]+(growth.rate * N[i-1] * (100-N[i-1]/100))
      plot(N~generation,type='b', main=paste("Rate =", growth.rate, ", ", number.generation, "generations"))
      +     }