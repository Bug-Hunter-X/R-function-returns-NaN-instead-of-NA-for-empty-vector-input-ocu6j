```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  }
  sum(x) / length(x)
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(mean_result)

my_empty_vector <- numeric(0) #This will not produce the expected result
mean_empty <- calculate_mean(my_empty_vector) 
print(mean_empty) #it will produce NaN instead of NA
```