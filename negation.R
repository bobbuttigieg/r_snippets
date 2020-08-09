# A function that calculates standard negation over the unit interval, and 
# negation over a given interval otherwise

Negate <- function(t) {
  if (max(t) <= 1) {  # Check the upper bound of unit interval
    if (min(t) >= 0) {  # Check the lower bound of unit interval
      1-t  # If both bounds align, perform standard negation
    }
  } else max(t) - t + min(t) # Else, perform negation
}
