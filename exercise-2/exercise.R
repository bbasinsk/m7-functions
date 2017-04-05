# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector.one, vector.two) {
  n <- length(vector.two) - length(vector.one)
  return (paste("The difference in lengths is", n))
}

# Pass two vectors of different length to your `CompareLength` function
difference <- CompareLength(c(1,2,3,4), c(1,2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.one, vector.two) {
  myDifference <- length(vector.two) - length(vector.one)
  if (myDifference < 0) {
    name <- deparse(substitute(vector.one))
  } else {
    name <- deparse(substitute(vector.two))
  }
  return (paste(name, "is longer by", abs(myDifference),"elements"))
}

# Pass two vectors to your `DescribeDifference` function
vector.uno <- c(1,2)
vector.dos <- c(1,2,3,4)
describe.result <- DescribeDifference(vector.uno, vector.dos)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer