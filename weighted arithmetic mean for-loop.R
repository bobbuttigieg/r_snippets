# WAM for loop
weights <- c(0.5, 0.25, 0.25)  # A vector of weights equal in length to variable
x <- c(7, 4, 2)                # A vector of variables to calculate WAM
weighted_x <- 0                # An empty variable to fill with weighted values

for (i in x)
  {
  weighted_x <- weights*x
  WAM <- sum(weighted_x)
}

print(weighted_x)
print(WAM)

# WAM function

WAM <- function(vector_of_variables, vector_of_weights) {
  for (each_value in vector_of_variables) 
    {
    weighted_variables <- vector_of_weights*vector_of_variables
    WAM <- sum(weighted_variables)
    }
  return(WAM)
  }


WAM(x, weights)

# Test
w <- c(0.5, 0.2, 0.3)  # Vector of test weights (sum must be 1)
z <- c(0.6, 0.7, 0.1)  # Vector of test values
WAM(z, w)  # WAM should be 0.47
