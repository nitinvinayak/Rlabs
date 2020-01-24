data(mtcars[,c(1:7,10,11)])
smp_size <- floor(0.75 * nrow(mtcars))
set.seed(123)
train_ind <- sample(seq_len(nrow(mtcars)), size = smp_size)
train <- mtcars[train_ind, ]
test <- mtcars[-train_ind, ]
head(train)
head(test)

train.pca<-prcomp(train[,c(2:11)],scale. = T)
head(train.pca)
summary(train.pca)
plot(train.pca)
head(train)

y=train[,1]
head(y)

x=train[,c(2,3)]
head(x)

model <- lm(y ~ poly(x[1],3))
