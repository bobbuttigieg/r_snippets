# Ordered weighted averaging
# The heighest and lowest scores are removed

w <- c(0.1, 0.2, 0.3, 0.4)
sum(w) == 1
x <- c(0.8, 0.2, 0.4, 0.1)

x_o <- sort(x, decreasing=FALSE)

x_o

for (value in vector_of_variables) {
  
  
}

OWA <- function(vector_of_variables, vector_of_weights) {
  ordered_vov <- sort(vector_of_variables, decreasing=FALSE)
  for (each_value in ordered_vov) 
  {
    weighted_variables <- vector_of_weights*ordered_vov
    OWA <- sum(weighted_variables)
  }
  return(OWA)
}

OWA(x, w)

# Test
x <- c(0.3, 0.6, 0.8, 0.2)
w <- c(0.1, 0.3, 0.4, 0.2)

print(0.1*0.2+0.3*0.3+0.4*0.6+0.2*0.8)  # 0.51

OWA(x, w)  # should be 0.51
