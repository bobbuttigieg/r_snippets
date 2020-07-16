AM <- function(x) {
  sum(x)/(length(x))
}

GM <- function(x) {
  prod(x)^(1/length(x))
}

HM <- function(x) {
  length(x)/sum(1/x)
}