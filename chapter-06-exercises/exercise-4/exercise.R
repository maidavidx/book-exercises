# Exercise 4: functions and conditionals

library(lintr)

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(str1, str2) {
  str1_length <- nchar(str1)
  str2_length <- nchar(str2)
  str_length_diff <- abs(str1_length - str2_length)
  if (str1_length > str2_length) {
    return (str_length_diff >= str2_length)  
  } else {
    return (str_length_diff >= str1_length)
  }
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hope", "cool")
is_twice_as_long("hope", "hopefully")
is_twice_as_long("informatic", "david")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(str1, str2) {
  if (nchar(str1) > nchar(str2)) {
    str_length_diff <- nchar(str1) - nchar(str2)
    return(paste("Your first string is longer by", str_length_diff, "characters"))
    
  } else if (nchar(str2) > nchar(str1)) {
    str_length_diff <- nchar(str2) - nchar(str1)
    return(paste("Your second string is longer by", str_length_diff, "characters"))
    
  } else {
    return(paste("Your strings are the same length!"))
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("shoe", "hot")
describe_difference("cool", "frozen")
describe_difference("cot", "koi")
