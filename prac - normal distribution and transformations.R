normaldata <- rnorm(1000, mean=5, sd=2)
m = 5
s = 2
hist(normaldata, breaks=sqrt(1000), col="red", main="Histogram of random normal data")

standardisedata <- function(x) {
  (x-mean(x))/sd(x)
}

standdata <- standardisedata(normaldata)
hist(standdata, breaks=sqrt(1000), col="yellow", main="Histogram of z-score standardised random normal data (custom function)")

scaledata <- scale(normaldata)
hist(scaledata, breaks=sqrt(1000), col="green", main="Histogram of z-score standardised random normal data ('scale' function)")

minmax <- function(x) {
  return((x- min(x)) /(max(x)-min(x)))
}

minmaxdata <- minmax(normaldata)
hist(minmaxdata, breaks=sqrt(3000), col="blue",  main="Histogram of min-max normalised random normal data (custom function)")

scalenormdata <- minmax(scaledata)
hist(scalenormdata, breaks=sqrt(3000), col="purple", main="Histogram of scaled then normalised random normal data")

summary(normaldata)
summary(standdata)
summary(scaledata)
sd(standdata)
sd(scaledata)
