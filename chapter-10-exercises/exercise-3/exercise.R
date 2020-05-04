# Exercise 3: working with built-in data sets

# Load R's "USPersonalExpenditure" dataset using the `data()` function
# This will produce a data frame called `USPersonalExpenditure`
?data
data("USPersonalExpenditure")
?USPersonalExpenditure


# The variable `USPersonalExpenditure` is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame("USPersonalExpenditure")

# Luckily, you can pass the USPersonalExpenditure variable as an argument to the
# `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
uspe_df <- data.frame(USPersonalExpenditure, stringsAsFactors = FALSE)

# What are the column names of your dataframe?
column_names <- colnames(uspe_df)
column_names

## Consider: why are they so strange? Think about whether you could use a number 
## like 1940 with dollar notation!

# What are the row names of your dataframe?
row_names <- rownames(uspe_df)
row_names

# Add a column "category" to your data frame that contains the rownames
uspe_df$category <- row_names

# How much money was spent on personal care in 1940?
uspe_pc <- uspe_df[uspe_df$category == "Personal Care", ]
uspe_pc$X1940

# How much money was spent on Food and Tobacco in 1960?
uspe_ft <- uspe_df[uspe_df$category == "Food and Tobacco", ]
colnames(uspe_ft)
uspe_ft$X1960

# What was the highest expenditure category in 1960?


# Define a function `lowest_category` that takes in a year as a parameter, and
# returns the lowest spending category of that year


# Using your function, determine the lowest spending category of each year
# Hint: use the `sapply()` function to apply your function to a vector of years

