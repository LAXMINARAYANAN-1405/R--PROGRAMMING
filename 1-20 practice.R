#1-Mathematical Operations
a <- 8; b <- 2  
c_add <- a + b; c_sub <- a - b; c_mul <- a * b; c_div <- a / b; c_exp <- a ^ b  
print(c_add); print(c_sub); print(c_mul); print(c_div); print(c_exp)  

#2-Employee Data Frame
d <- data.frame(ID = c(1, 2, 3), Name = c("A", "B", "C"), Age = c(25, 30, 22), Salary = c(5000, 6000, 4000))  
d$Dept <- c("HR", "IT", "Finance")  
d_sorted <- d[order(d$Salary), ]  
print(d); print(d_sorted)  

#3-Slicing and Reshaping
m <- matrix(1:12, nrow = 3)  
s <- m[1:2, ]; r <- t(m); sm <- sum(m)  
print(s); print(r); print(sm)  

#4-Sequence, Mean, and Sum
s1 <- 20:50; m <- mean(20:60); s2 <- sum(51:91)  
print(s1); print(m); print(s2)  

#5-Extract Letters
l <- letters[1:10]; u <- LETTERS[17:26]; e <- LETTERS[22:24]  
print(l); print(u); print(e)  

#6-Logical Vector
v <- c(1, 2, 3, 4, 5)  
lv <- v > 2 & v < 5  
print(v); print(lv)  


#7-Factors
c <- c("red", "blue", "green")  
f <- factor(c)  
levels(f) <- c("R", "B", "G")  
print(f); print(levels(f))  

#8-Data Types and Conversion
n <- 10; i <- as.integer(n); ch <- as.character(i); lg <- as.logical(i); cm <- 3 + 2i  
print(n); print(i); print(ch); print(lg); print(cm)  

#9-Matrices
m1 <- matrix(1:20, nrow = 5, ncol = 4)  
m2 <- matrix(1:9, nrow = 3, byrow = TRUE)  
m3 <- matrix(1:4, nrow = 2, byrow = FALSE)  
print(m1); print(m2); print(m3)  

#10-Two-Dimensional Arrary
a <- array(seq(52, 76, by = 2), dim = c(5, 3, 2))  
print(a)  

#11-Access Values in a Vector
v <- c(1, 3, 5, 7, 9) 
print(v); print(v[1:3]) 

#12 Nth Smallest Value in Vector
v <- c(9, 2, 5, 7, 1); n <- 3  
print(sort(v)[n])  

#13 Concatenate Vector of Strings
v <- c("Hello", "World", "R")  
print(paste(v, collapse = " "))  

#14 Matrix Max/Min Index
m <- matrix(1:9, nrow = 3)  
print(which(m == max(m), arr.ind = TRUE))  
print(which(m == min(m), arr.ind = TRUE))  

#15 Fizz Buzz
for (i in 1:100) {  
  if (i %% 3 == 0 & i %% 5 == 0) print("FizzBuzz")  
  else if (i %% 3 == 0) print("Fizz")  
  else if (i %% 5 == 0) print("Buzz")  
  else print(i)  
}  

#16 List to Data Frame
l <- list(ID = c(1, 2), Name = c("A", "B"), Age = c(25, 30))  
print(data.frame(l))  

#17 Employee Summary
d <- data.frame(ID = c(1, 2, 3, 4, 5), Name = c("A", "B", "C", "D", "E"), Age = c(25, 30, 22, 27, 29), Salary = c(5000, 6000, 4000, 5500, 7000))  
print(d); print(summary(d))  

#18 Max and Min of Vector
v <- c(5, 2, 9, 1, 7)  
print(max(v)); print(min(v))  

#19 3D Array
print(array(1:18, dim = c(3, 3, 2)))  

#20 Assign Grades
s <- 85  
if (s >= 90) g <- "A" else if (s >= 80) g <- "B" else if (s >= 70) g <- "C" else g <- "D"  
print(g)  

