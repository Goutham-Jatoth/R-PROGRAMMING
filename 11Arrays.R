# Array is a multi-dimensional data structure that holds elements of 
# the same data type. While vectors are one-dimensional and matrices are 
# two-dimensional, arrays can have more than two dimensions. 
# They are particularly useful for representing data in higher dimensions, 
# such as 3D or more.

#To create an array using the array() function. 

#This function takes a vector of data and a dim parameter that specifies 
# the dimensions of the array

# Create a vector with elements 1 to 24
data_vector <- 1:24

# Create a 3-dimensional array with dimensions 4x3x2
my_array <- array(data_vector, dim = c(4, 3, 2))

# Print the array
print(my_array)


# Access the element at row 2, column 3, matrix 2
element <- my_array[2, 3, 2]

# Print the element
print(element)

# Define dimension names
row_names <- c("Row1", "Row2", "Row3")
column_names <- c("Col1", "Col2", "Col3")
matrix_names <- c("Matrix1", "Matrix2")

# Create an array with named dimensions
named_array <- array(1:18, dim = c(3, 3, 2), dimnames = list(row_names, column_names, matrix_names))

# Print the array
print(named_array)


dim(my_array)

length(my_array)
