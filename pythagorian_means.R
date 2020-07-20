AM <- function(x) {
  sum(x)/(length(x))
}

GM <- function(x) {
  prod(x)^(1/length(x))
}

HM <- function(x) {
  length(x)/sum(1/x)
}

AM_vector <- function(x,y) { # This will output a vector of the averages of each
  (x+y)/2                    # index pair in x and y - (x1+y1)/2, and so on
}

GM_vector <- function(x,y) {
  (x*y)^(1/2)
}

HM_vector <- function(x,y) {
  2/(1/x+1/y)
}

