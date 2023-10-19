data("iris")
str(iris)
-
x <- c(1.0, -3.4, 2, 140.1) # numeric and double
typeof(x) 
-
x <- 4
typeof(x)
-
x <- c("bubul", "magpie", "spoonbill", "barbet")
typeof(x)
-
  x <- 3
y <- 5.3
x + y
-
  x <- "3"
y <- "5.3"
-
  x <- "3"
y <- "5.3"
plot(x,y)
-
  x <- c(TRUE, FALSE, FALSE, TRUE)
#or
x1<-c(1,0,0,1)
x2 <- as.logical(c(1,0,0,1))
# OR: x3 <- as.logical(c(1,0,0,1))
#convert (1,0,0,1) into (TRUE, FALSE, FALSE, TRUE)
-
  a <- c("M", "F", "F", "U", "F", "M", "M", "M", "F", "U")
typeof(a) # mode character
class(a)# class character
a

a.fact <- as.factor(a)
class(a.fact)# class factor

mode(a.fact)
a.fact

attributes(a.fact)

levels(a.fact)
str(a.fact)
#numerical presentstion behind the letters(M=2, F=1, U=3)
-
  factor(a, levels=c("U","F","M"))

library(iris)
data("iris")

iris.sel$Species <- droplevels(iris.sel$Species )
> boxplot(Petal.Width ~ Species, iris.sel, horizontal = T)

----
  
x <- c(23, NA, 1.2, 5)
y <- c(23, NULL, 1.2, 5)

mean(x, na.rm = T)

---
  
  x <- c(674 , 4186 , 5308 , 5083 , 6140 , 6381)
x

---
  
  m <- matrix(runif(9,0,10), nrow = 3, ncol = 3)
m
#two_dimension
m <- array(runif(27,0,10), c(3,3,3))
m
#three_dimension
---
  name   <- c("a1", "a2", "b3")
value1 <- c(23, 4, 12)
value2 <- c(1, 45, 5)
dat    <- data.frame(name, value1, value2)
dat
  
====
  #list
  
  A <- data.frame(
    x = c(7.3, 29.4, 29.4, 2.9, 12.3, 7.5, 36.0, 4.8, 18.8, 4.2),
    y = c(5.2, 26.6, 31.2, 2.2, 13.8, 7.8, 35.2, 8.6, 20.3, 1.1) )
B <- c(TRUE, FALSE)
C <- c("apples", "oranges", "round")
my.lst <- list(A = A, B = B, C = C)

my.lst$A
x    y
1   7.3  5.2
2  29.4 26.6
3  29.4 31.2
4   2.9  2.2
5  12.3 13.8
6   7.5  7.8
7  36.0 35.2
8   4.8  8.6
9  18.8 20.3
10  4.2  1.1
> my.lst$A$x[1]
[1] 7.3

my.lst[[1]]

class(my.lst[[1]])

lst.notags <- list(A, B, D)
lst.notags