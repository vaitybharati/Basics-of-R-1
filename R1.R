# R is a an open source programming language & software environment
# for statistical analysis, graphical representation,data analysis & visualization 
# R is a simple and easy to learn,read & write
# Developed by Ross Ihaka & Robert Gentleman at the University of 
# Auckland, Newzealand

# R is case sensitive 
# r wont consider this line 
5 + 6 # using R as a calculator
5 - 6
(5*6)/7

1:50 # print numbers from 1:50
50:1 # print numbers 50:1 in reverse order
print(50:1)

print("Welcome to R Programming Session") # print anything  
"Welcome to R Programming Session"
print(25.5 + 12.7) # printing the calculation
25.5 + 12.7

# help
help r ?
help("data.frame")
?read.csv

ctrl+l # to clear console window

# Data Types in R - Vector, List, Matrix, Array, Factor, Data Frame

# Vector - contains elements of same class
# there are 6 types of these atomic vectors, also known as 6 classes of vectors
# 1. Logical - True, False
a1 = TRUE
a1

a <- c(TRUE, FALSE, TRUE, FALSE) # logical vector
a
class(a)
# 2. Numeric 
b <- c(0, 1, 2, 5.3, 4.22, 6, -2, 4, c(7, 8, 9)) # numeric vector
b
class(b)

# 3. Integer # Whole numbers & not a fraction
c <- c(2L, 34, 0L,"Baiscs")
c
class(c)

# 4. Complex
d <- 5 + 9i
d
class(d)

# 5. Character
e <- c("Right now", 'it is', '10:15 am')
e
class(e)


# accessing vector elements by their indices or subscripts
a[1:3]
x = a[c(1,3)]
# a[1:3] != a[c(1,3)]

# Viewing vectors in tabular format
View(a) # only helpful in small length vectors
a

# List -  can contain many different types of elements inside it like vectors, functions and even another list inside it
h <- list(23, 21.3, c(2,5,3), "hello", sin)
g <- c(23, 21.3, c(2,5,3), "hello",sin)
h <- c(23, 21.3, c(2,5,3), "hello")
h <- c(23, 21.3, c(2,5,3), "hello", 3+5i, 2L)
h <- c(23, 21.3, c(2,5,3), "hello", 3+5i, 2L,mean)
class(h)
View(h)
h <- list(23, 21.3, c(2,5,3), "hello", 3+5i, 2L)
h
View(h)

# Accessing List elements by their index
h[[1]]
h[[3]][2]

# Matrix - two-dimensional(rows*columns) rectangular data set 
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# All columns in a matrix must have the same type of mode(numeric, character, etc.) 
# and the same length
i <- matrix(c(10, 20, 30), nrow = 3, ncol = 2, byrow = TRUE, 
            dimnames = list(c('r1', 'r2', 'r3'), c('c1', 'c2')))
# default value for byrow is FALSE
class(i)
i
# Accessing elements of a matrix
i[3,2]

# Array - While matrices are confined to 2 dimensions, arrays can be of any number 
# of dimensions.
?array
j <- array(c("R", "Programming", "Session"), dim = c(2, 5, 4))
j
class(j)
# Accessing an array
j[,,4] # 4th array 
# Accessing individual element from an array
j[2,5,4] # 2nd row, 5th column, 4th array 


# Factor - variable which can take certain values(levels) and not any
k <- c("red", "green", "blue", "blue", "red", "red")
class(k)
factor_k <- factor(k)
class(factor_k)
factor_k

l <- c(1, 2, 3, 4, 4, 5, 3, 2, 5.1)
l
class(l)
factor_l <- factor(l)
class(factor_l)
factor_l

# Data Frame
# Unlike a matrix in data frame each column can contain different modes of data
# It is a list of vectors of equal length
m <- data.frame(gender = c("Male", "Male","Female"), height = c(152, 171.5, 165), 
                weight = c(81,93, 78), Age = c(42,38,64))
class(m)
m
View(m) 

# Accessing columns/features of a data frame
m[1]
m[,1]
m[,2]
m[3]
class(m[1])

# Accessing elements of a data frame
m$height
m$gender
class(m$gender)
m$gender[3]
class(m$gender[3])

m[[2]]
class(m[[2]])
m[[2]][2]

m[c(1,2), 2] # accessing multiple items from a data frame

# End of Data Types

# Variables or Objects in R

# valid & invalid variable types
# Valid
var_name2. <- 1 # Has letters, numbers, dot and underscore
.var_name <- 2 # Can start with a dot(.) but the dot(.)should not be followed by a number
var.name <- 3

# Invalid 
var_name% <- 4 # Only dot(.) and underscore allowed 
2var_name <- 5 # cannot start with a number
.2var_name <- 6 # dot followed by a number makes it invalid
_var_name <- 7 # cannot start with _

# Variable Assignment
# The variables can be assigned values using leftward, rightward and equal to operator

# Assignment using leftward operator
var.1 <- c("R","Programming") 
# Assignment using rightward operator
c(TRUE,1) -> var.2   
# Assignment using equal operator
var.3 = c(0,1,2,3)

# Finding Variables in Environment
?ls
ls()
ls(pattern = "var") # displays variable with var text in it
ls(all.name = TRUE) # also displays hidden(starting with .) variables

# Deleting variables 
var1 <- 1
ls(pattern = "var")
rm(factor_k) # will remove all variables with var text in it

# End of Variables

# Operators in R
# 5 = Arithmetic, Relational, Logical, Assignment, Miscellaneous 

# Arithmetic Operators
n <- c(1, 2.4, 5)
o <- c(3, 4.7, 9.1)
p <- c(1.9, 2, 7)
# 1. + addition
n+o+p

# 2. - subtraction
n-o
n-o-p

# 3. * multiplication
n*o*p

# 4. / division
n/o

#%% Give the remainder of the first vector with the second
n%%o

# 6. %/% The result of division of first vector with second (quotient)
n%/%o

# 7. ^ The first vector raised to the exponent of second vector	
2^3

# Relational Operators - returns boolean values
q <- c(1, 3, 4, 3, 2)
r <- c(2, 4, 4, 5, 2)
# 1. > greater than 
q[1] > r[2]

# 2. < lesser than
q < r

# 3. == equal to
q == r

# 4. >= greater than or equal to
q >= r

# 5. <= lesser than or equal to 
q <= r

# 6. != not equal to 
q != r

# Relational Operators
# Condition: All numbers greater than 1 are considered as logical value TRUE
s <- c(3, 1, TRUE, 2+2i) 
t <- c(4, 1,FALSE, 2+3i)
# 1. & Element-wise Logical AND 
s&t
# 2. | Element-wise Logical OR 
s|t
# 3. ! Logical NOT - can be appied on a single vector
!(s&t)
!(s|t)

# Logical Operators (&& || considers only 1st element of the vectors and give a vector of 
# single element as output)
# 4. && Logical AND
u <- c(3, 0, TRUE, 2+2i)
v <- c(1, 3, TRUE, 2+3i)
u&&v
# 5. || Logical OR
x <- c(0,0,TRUE,2+2i)
y <- c(0,3,TRUE,2+3i)
x||y

# Assignment Operators
# 1. Left Assignment <- or == or <<-
v1 <- c(3,1,TRUE,2+3i)
v2 <<- c(3,1,TRUE,2+3i)
v3 = c(3,1,TRUE,2+3i)
v1
v2
v3
# 2. Right Assignment -> or ->>
c(3,1,TRUE,2+3i) -> v4
c(3,1,TRUE,2+3i) ->> v5
v4
v5

# Miscellaneous Operators
# 1. : Colon Operator - It creates the series of numbers in sequence for a vector
v6 <- 1.5:10.5
v6
# 2. %in% - an element belongs to a vector
v7 <- c(8, 9, 10)
v8 <- c(12, 13, 14)
t <- 1:10

v7 %in% t
v8 %in% t
# 3. %*% - multiply a matrix with its transpose
v9 <- matrix( c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 3, byrow = TRUE)
v9
t(v9)
v9t <- v9 % * % t(v9)
v9t

# End of Operators


