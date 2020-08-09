# Functions to transform a vector into rank-scaled values
# both in ascending order (lower values = higher rank) and 
# descending order (higher values = higher rank)

Rank_ascend <- function(t) {  # Ranks from lowest value up
  (length(t)-rank(t))/(length(t)-1)
}

Rank_descend <- function(t) {  # Ranks from highest value down
  (length(t)-rank(-t))/(length(t)-1)
}

# The following `Rank_descend()` is dependent on the `Negate()` function to run
# Negate <- function(t) {
#   if (max(t) <= 1) {  # Check the upper bound of unit interval
#     if (min(t) >= 0) {  # Check the lower bound of unit interval
#       1-t  # If both bounds align, perform standard negation
#     }
#   } else max(t) - t + min(t) # Else, perform negation
# }
# Rank_descend <- function(t) {  # Ranks from highest value down
#   Negate((length(t)-rank(t))/(length(t)-1))
# }
