
n<-c(2,3,5)
s<-c('aa','bb','cc','dd','ee')
b<-c(TRUE,FALSE,TRUE,FALSE,FALSE)

# list containing three vectors n,s,b of different type
x<-list(n,s,b)
x



# Creating List with string, numbers, vectors and logical 
list_data <- list("Red", "Green", c(21,32,11), 
                  TRUE, 51.23, 119.1)
list_data

list_data1 <- list(c("Jan","Feb","Mar"), 
              matrix(c(3,9,5,1,-2,8), nrow = 2),
              list("green",12.3))
list_data1

# Retriving list mumbers
list_data1[1]
list_data1[3]

# Retriving inner list member
list_data1[[3]][1]

# Retriving MULTIPLE list member
list_data1[c(2,3)]


# Named list members
v= list(bob=c(2,3,5), john=c("aa","bb"))
v
v["bob"]

# We can retrive list multiple members
v[c("john","bob")]

# we can reference a list member directly 
v[["bob"]]
v$bob

# We can modify list contents
v[["bob"]][1]<-8
v[["bob"]]

#Give me everything from "bob" except the second element
v$bob[-2]  

# Can we do math on list
v$bob+1
v$bob-1
v$bob*2
v$bob/2
v$bob%%2  # module operation

# Attach a list to R search path so 
# call member directly withot mentioning list
attach(v)
bob
john

bob+1
bob-1
bob*2
bob/2
bob%%2  # module operation

# Detach for cleanup
detach(v)
bob
