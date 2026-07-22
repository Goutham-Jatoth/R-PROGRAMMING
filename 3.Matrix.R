# Creating Matrix
a=matrix(c(2:7), nrow = 2, ncol = 3, byrow = T)
a

m<-matrix(seq(12),nrow = 4, byrow = T)
m

m<-matrix(seq(12), 4)
m
m[2,3]
dim(m)
dimnames(m) = list( c("row1", "row2", "row3", "row4"), 
                    c("col1", "col2", "col3")) 
m

m[2,]
m[ ,3] 

m["row2", "col3"] 

b = matrix( c(2, 4, 3, 1, 5, 7), nrow=3, ncol=2) 
b

m<-matrix(seq(12))
m

# Combining Matrices
# Combining columns or adding column to matrix
c = matrix( c(7, 4, 2),  nrow=3, ncol=1) 
c

cbind(b,c)

# Combining rows
d = matrix( c(6, 2), nrow=1, ncol=2) 
d

rbind(b,d)

# Matrix Computations
m1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(m1)

m2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(m2)

# Matrix manipulations
addition=m1+m2
addition

sub=m1-m2
sub

mul=m1*m2
mul

div=m1/m2
div

# transpose matrix of m
t(b)    

# Diagonal matrix
diag(m)

# Eigenvalues & eigenvectors
eigen(m)

m<-matrix(seq(16),nrow = 4, byrow = T)
eigen(m)
w<-eigen(m)
w$values
w$vectors

# deconstruct a matrix by applying the c function
c(b) 
