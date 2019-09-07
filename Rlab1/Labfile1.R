q<-"Hello World"
a<-1:4
b<-123:126
c<-12:14
d<-98:101
x <- c(0, 1.2, 8/5)
mat <- matrix(1:12, nrow = 3, ncol = 4)
View(q)
mat <- rbind(mat, c(1,2,3,4))
mat <- cbind(mat, c(1,2,3,4))
a <- matrix(1:4, nrow = 2, ncol = 2)
b <- matrix(1:4, nrow = 2, ncol = 2)
View(a%*%b)
mat[0, ]
mat[,0 ]
mat[1:1,]
mat[1:1, , drop = FALSE]
for(i in mat) {
  print (i)
}