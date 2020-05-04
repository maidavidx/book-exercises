# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
points_scored <- c(21, 28, 27, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
points_allowed <- c(20, 26, 33, 10)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(points_scored, points_allowed)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- games$points_scored - games$points_allowed

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- games$diff > 0

# Create a vector of the opponent names corresponding to the games played
opponent <- c("Bengals", "Steelers", "Saints", "Cardinals")

# Assign your dataframe rownames of their opponents
row.names(games) <- opponent

# View your data frame to see how it has changed!

