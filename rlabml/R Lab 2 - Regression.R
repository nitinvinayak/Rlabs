x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function.
relation <- lm(y~x)
print(relation)
# Get the summary of the relationship
print(summary(relation))

# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
# The response vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function.
relation <- lm(y~x)
# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <- predict(relation,a)
print(result)

# Create the predictor and response variable.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation <- lm(y~x)
# Give the chart file a name.
png(file = "linearregression.png")
# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab =
       "Height in cm")
# Save the file.
dev.off()

set.seed(20)
#Predictor (q). Use seq for generating equally spaced sequences fast
q <- seq(from=0, to=20, by=0.1)
#Value to predict (y):
y <- 500 + 0.4 * (q-10)^3
#Some noise is generated and added to the real signal (y):
noise <- rnorm(length(q), mean=10, sd=80)
noisy.y <- y + noise
#Plot of the noisy signal:
plot(q,noisy.y,col='deepskyblue4',xlab='q',main='Observed data')
lines(q,y,col='firebrick1',lwd=3)

model <- lm(noisy.y ~ poly(q,3))
predicted.intervals <- predict(model,data.frame (x=q), interval =
                                 'confidence', level=0.99)

lines(q,predicted.intervals[,1],col='green',lwd=3)
lines(q,predicted.intervals[,2],col='black',lwd=1)
lines(q,predicted.intervals[,3],col='black',lwd=1)

legend("bottomright",c("Observ.","Signal","Predicted"),
       col=c("deepskyblue4","red","green"), lwd=3)


head(letter.recognition)
training_set=letter.recognition[,c(2:17)]
head(training_set)
prin_comp <- prcomp(training_set, scale. = T)
summary(prin_comp)
plot(prin_comp)
