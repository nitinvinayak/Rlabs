mtcars.pca<-prcomp(mtcars[,c(1:7,10,11)],center=TRUE,scale=TRUE)
summary (mtcars.pca)
str(mtcars.pca)
ggbiplot(mtcars.pca,choices = 1:2,obs.scale=1,var.scale = 1)