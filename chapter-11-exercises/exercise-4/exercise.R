# Exercise 4: practicing with dplyr

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
library(nycflights13)
library(dplyr)

# The data frame `flights` should now be accessible to you.
# Use functions to inspect it: how many rows and columns does it have?
# What are the names of the columns?
# Use `??flights` to search for documentation on the data set (for what the 
# columns represent)
nrow(flights)
ncol(flights)
colnames(flights)
?flights
??flights
View(flights)

# Use `dplyr` to give the data frame a new column that is the amount of time
# gained or lost while flying (that is: how much of the delay arriving occured
# during flight, as opposed to before departing).
?mutate
flights <- mutate(flights, delta_time = arr_delay - dep_delay)

# Use `dplyr` to sort your data frame in descending order by the column you just
# created. Remember to save this as a variable (or in the same one!)
flights <- arrange(flights, desc(delta_time))

# For practice, repeat the last 2 steps in a single statement using the pipe
# operator. You can clear your environmental variables to "reset" the data frame
flights <- flights %>% mutate(delta_time = arr_delay - dep_delay) %>% 
  arrange(desc(delta_time))

# Make a histogram of the amount of time gained using the `hist()` function
?hist
hist(flights$delta_time)

# On average, did flights gain or lose time?
# Note: use the `na.rm = TRUE` argument to remove NA values from your aggregation
?mean
mean(flights$delta_time, na.rm = TRUE)

# Create a data.frame of flights headed to SeaTac ('SEA'), only including the
# origin, destination, and the "gain_in_air" column you just created
to_sea <- flights %>% select(origin, dest, delta_time) %>% filter(dest == "SEA")

# On average, did flights to SeaTac gain or loose time?
mean(to_sea$delta_time, na.rm = TRUE)

# Consider flights from JFK to SEA. What was the average, min, and max air time
# of those flights? Bonus: use pipes to answer this question in one statement
# (without showing any other data)!
?summarize
test <- filter(flights, origin == "JFK", dest == "SEA") %>% summarise(
  avg_air_time = mean(air_time, na.rm = TRUE),
  min_air_time = min(air_time, na.rm = TRUE),
  max_air_time = max(air_time, na.rm = TRUE)
)
View(test)
