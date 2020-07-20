PM <- function(x,p) {  # x gives the set for which the power mean is to be calculated; p gives the power.
  if (p == 0) { # This provides for situations where the power = 0, to avoid the issue of calculating a geometric mean where a number is raised to a fractional power of (1/0)
    prod(x)^(1/length(x))
  } else { # This provides for all other situations, from >-Inf to <Inf
  (1/length(x)*sum(x^p))^(1/p)
  }
}

testdata <- c(10,2,19,24,6,23,47,24,54,77) # This is a test dataset, with expected AM of 28.6, HM of 10.01109 and GM of 18.92809

# AM = p1
# GM = p0 or p(1/Inf) - The issue here is that the power cannot be *exactly* 0 because the outcome will always be 1 (because anything raised to the power of 0 = 1).
# HM = p-1

mean(testdata) # This outputs the arithmetic mean of the vector
PM(testdata,1) # This also outputs the arithmetic mean of the vector
PM(testdata,(1/Inf-0.000000001)) # This outputs a number that is almost equal to the geometric mean of the vector
PM(testdata,0) # This outputs the geometric mean of the vector
PM(testdata,-1) # This outputs the harmonic mean of the vector
rm(testdata) # This removes the testdata