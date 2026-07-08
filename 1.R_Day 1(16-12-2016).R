####   Basics of R

# To view the list of packages that come with Base R 

search()

#  Basic Math with R

1 + 1.2

1 + 2 + 3


3 * 7 * 2


4/2


4/3


4 * 6 + 5
[1] 29

(4 * 6) + 5
[1] 29

4 * (6 + 5)
[1] 44

myString <- "Hello, World!"
print ( myString)

# R has an inbuilt help facility 

help(solve)
?solve


#launch a Web browser that allows the help pages to be browsed with hyperlinks
help.start()


# Variables

Variable Assignment

x <- 2
x

y = 5
y

3 -> z
Error in 3 <- z : invalid (do_set) left-hand side to assignment

a <- b <- 7
a

b

assign("j", 4)
j

# All objects created during an R session can be stored permanently 
# in a file for use in future R sessions.

Removing Variables 
j <- 4
j

rm(j)

# now it is gone
j


R is Case Sensitive

theVariable <- 17
theVariable

THEVARIABLE
Error: object 'THEVARIABLE' not found


Naming Conventions
 
Names can have character, numeric, underscore and dot (period),
but the name should not start with numeric or underscore.

_a<- 3

3a_ <- 3

a3._ <- 3

.a3_ <- 3


x <- "sam"
x
class(x)
[1] "character"

# Numeric Data

x <- 5.5
x
class(x)
is.numeric(x)
[1] TRUE

y <- -5.5
class(y)
is.numeric(y)

z <- 0
is.numeric(z)

# intializing a integer
i <- 5
i

class(i)
is.integer(i)
is.numeric(i)

class(-4L)

class(-2.8)

j <- -4L * -2.8
class(j)

is.integer(4L * 2)

class(5L)

class(2L)

5L/2L

class(5L/2L)
[1] "numeric"

# Character Data

x <- "data"
x

x1 <- c("data","data","data","x", "x")
x1
class(x1)

1:20

x<-c(1:20)
x
x[5]
s = c("aa", "bb", "cc", "dd", "ee") 
s
s[2]

# Negative Index
s[-3]

# Out-of-Range Index
s[10]

# numeric index vector
s[c(2, 3)] 
s[c(2, 3, 3)] 

#Range Index
s[2:4] 

logical index vector
# A new vector can be sliced from a given vector with a logical index vector,
# which has the same length as the original vector. 
# Its members are TRUE if the corresponding members in the original 
# vector are to be included in the slice, and FALSE if otherwise.
L = c(FALSE, TRUE, FALSE, TRUE, FALSE) 
s[L] 

s[c(FALSE, TRUE, FALSE, TRUE, FALSE)] 

n = c(2, 3, 5) 
s = c("aa", "bb", "cc", "dd", "ee") 

# Vectors can be combined via the function c
c(n, s) 


# Vector Arithmetics
a = c(1, 3, 5, 7) 
b = c(1, 2, 4, 8)

# we can make sum of vector using the sum() function
sum(a)  

# if we multiply a by 5, we would get a vector with 
# each of its members multiplied by 5.

5 * a 

a + b 

a - b 

a * b  

a / b 
# This is the integer divide (modulo) operation 
a%%2

#Recycling Rule

u = c(10, 20, 30) 
v = c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
u + v 

# Named Vector Members
v = c("Mary", "Sue") 
v 

# We now name the first member as First, and the second as Last.
names(v) = c("First", "Last") 
v 
First   Last 

# Then we can retrieve the first member by its name.
v["First"] 

# Furthermore, we can reverse the order with a character string index vector.
v[c("Last", "First")] 


# Generating regular sequences...generating commonly used sequences of numbers
y <- seq(10)       #Create a sequence 
y

s1<-seq(5, 20, by=.2)
s1

s2<-seq(1, 10, by=3)
s2

s4 <- seq(length=51, from=5, by=.2)
s4
 
# rep() is a function which can be used for replicating an object
s5 <- rep(x, times=5)
s5

z <- rep(1,10)     #Create a repetitive pattern
z


# To see a listing of the objects in your workspace, 
# you can use the ls() function.

ls()

# To get more detail, use  ls.str(). 

ls.str()

x <- 2
x
x ^ x
x ^ 2
mode(x)


# To print small alphabets in sequence we use letter
y<-c(letters)
y
letters[3:8]

# To print small alphabets in sequence we use letter
z<-c(LETTERS)
z
LETTERS[1:26]
LETTERS[1:12]

v=c(1:5)
u=c("aa","bb","cc","dd","ee")
x=c(T,F,F,T,T)

