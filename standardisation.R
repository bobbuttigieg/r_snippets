# A function to standardise a vector (AM = 0, SD = 1)

Standardise <- function(t) {
  (t - mean(t))/sd(t)
}