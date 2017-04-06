# Exercise 2: writing and executing functions (II)


# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(v1, v2) {
  dif <- abs(length(v1) - length(v2))
  return(paste0("The difference in lengths is ", dif ))
}

# Pass two vectors of different length to your `CompareLength` function

a <- c(1:10)
b <- c(2:20)
print(CompareLength(a,b))


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v1, v2) {
  dif <- abs(length(v1) - length(v2))
  v1.name <- toString(deparse(substitute(v1)))
  v2.name <- toString(deparse(substitute(v2)))
  if (length(v1) > length(v2)) {
    return(paste0(v1.name + " is longer by ", dif))
  } else {
    return(paste0(v2.name + " is longer by ", dif))
  }
}


# Pass two vectors to your `DescribeDifference` function

print(DescribeDifference(a, b))


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer