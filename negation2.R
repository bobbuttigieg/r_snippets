# Negation
# N(t) = 1-t
# N(t) = max(t)-t+min(t)

Negate <- function(t) {
  if (max(t) > 1) {         # Check if the max value > 1
    return(max(t)-t+min(t)) # if so, perform strict negation
  } else {
    return(1-t)             # else perform standard negation
  }
}