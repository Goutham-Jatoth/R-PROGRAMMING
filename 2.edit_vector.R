x=c(1:10)
x

#adding elements to vector
x=c(x,11:15)
x

#Editing vector
x[4]<-8
x
x[c(2,3)]<-c(9,7)
x

# Length of vector
length(x)

#sorting the elements of vector
v=c(2,5,4,3,8,6,7,9,1)
v
sort(v) # default decreasing is False
sort(v,decreasing=TRUE)

#sorting character vector
m=c("red","blue","yellow","violet")
m
sort(m)
sort(m,decreasing=TRUE)

# Repeat & sequence function
rep("ram", times=5)
seq(from=2,to=8, by=2)
rep(seq(from=2,to=8, by=2), times=5)

#To show the list of variables stored in working memory
ls()
ls.str() #To see the complete detail of variables

#To remove variables stored in working memory
rm(m2)




