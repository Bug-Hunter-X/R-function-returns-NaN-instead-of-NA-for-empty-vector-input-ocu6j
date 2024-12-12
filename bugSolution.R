```R
#Corrected function
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  } else if (all(is.na(x))) {
    return(NA) # Handle a vector with all NA values
  } else {
    sum(x, na.rm = TRUE) / length(x) #handles NA values in the vectors
  }
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(mean_result)

my_empty_vector <- numeric(0)
mean_empty <- calculate_mean(my_empty_vector)
print(mean_empty) #This will produce NA

my_na_vector <- c(1, NA, 3)
mean_na <- calculate_mean(my_na_vector)
print(mean_na) #This will produce 2

my_all_na_vector <- c(NA, NA, NA)
mean_all_na <- calculate_mean(my_all_na_vector)
print(mean_all_na) #This will produce NA
```