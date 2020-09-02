# WPM for loop
weights <- c(0.5, 0.25, 0.25)  # A vector of weights equal in length to variable
x <- c(7, 4, 2)                # A vector of variables to calculate WAM
weighted_x <- 0                # An empty variable to fill with weighted values
power <- -1

# If p =  1   : Arithmetic mean
# If p =  2   : Quadratic mean
# If p = -1   : Harmonic mean (special case in function if/else)
# If p =  0   : Geometric mean (special case in function if/else)
# If p ->  Inf: Maximum
# If p -> -Inf: Minimum

for (i in x)
{
  weighted_xp <- ((weights*x)^power)^(1/power)
  WPM <- sum(weighted_xp)
}

print(weighted_xp)
print(WPM)

mean(x)
# WAM function

WPM <- function(vector_of_variables, vector_of_weights, power) {
  for (each_value in vector_of_variables) {
    if (power == 0) {
      weightedpower_variables <- (vector_of_variables^vector_of_weights)
      WPM <- prod(weightedpower_variables)
      } else { 
      if (power == -1) {
        weightedpower_variables <- (vector_of_weights/vector_of_variables)
        WPM <- 1/sum(weightedpower_variables)
        } else {
        weightedpower_variables <- ((vector_of_weights*vector_of_variables)^power)^(1/power)
        WPM <- sum(weightedpower_variables)
        }
      }
  }
  return(WPM)
  }

WPM(x, weights, power)

# Test
w <- c(0.5, 0.2, 0.3)  # Vector of test weights (sum must be 1)
z <- c(0.6, 0.7, 0.1)  # Vector of test values
p <- 1                 # power (1 = arithmetic mean)
WPM(z, w, p)  # WPM should be 0.47

w2 <- c(0.5, 0.2, 0.3)
z2 <- c(0.7, 0.6, 0.3)
p2 <- 0
WPM(z2, w2, p2)  #WPM should be 0.5264
z3 <- c(0.8, 0.6, 0.3)
WPM(z3, w2, p2)  # WPM should be 0.5627 (increasing largest input
# by 0.1 produces a small increase in the output)
z4 <- c(0.7, 0.6, 0.4)
WPM(z4, w2, p2)  # WPM should be 0.5738 (increasing smallest input
# by 0.1 produces a larger increase in the output because the GM
# is more affected by low inputs)
