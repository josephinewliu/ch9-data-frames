# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- grants$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
grant_mean <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
grant_largest <- max(grants$total_amount)

# What was the dollar amount of the smallest grant?
grant_smallest <- min(grants$total_amount)

# Which organization received the largest grant?
organization_largest_grant <- grants[grants$total_amount == grant_largest,
                                      "organization"]

# Which organization received the smallest grant?
organization_smallest_grant <- grants[grants$total_amount == grant_smallest,
                                      "organization"]

# How many grants were awarded in 2010?
grants_awarded <- length(grants$start_year[grants$start_year == 2010])
