# R Stats
# stats cheat sheet @ https://github.com/xslates/math/blob/master/statistics/statistical%20concepts%20explained.pdf
# stats cheat sheet @ https://github.com/xslates/math/blob/master/statistics/basic%20statistics%20formulas.pdf

# mean, median and mode
# explanation @ http://stattrek.com/descriptive-statistics/central-tendency.aspx?Tutorial=AP
mean(cars$speed)
median(cars$dist)
count(mtcars, 'gear') # library(dplyr)

# range, interquantile range, variance, standard deviation
# explanation @ http://stattrek.com/descriptive-statistics/variability.aspx?Tutorial=AP
range(airquality$Temp)
IQR(airquality$Wind)
var(cars$dist) # population variance
sd(cars$speed)

# percentiles, quartiles, z-scores
# explanation @ http://stattrek.com/descriptive-statistics/measures-of-position.aspx?Tutorial=AP
quantile(cars$speed)
quantile(cars$speed, c(.12, .25, .78, .97))
scale(cars$speed, center = TRUE, scale = TRUE)

# R DISTRIBUTION FUNCTIONS

# @ https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Distributions.html

# DISCRETE PROBABILITY DISTRIBUTIONS

# introduction to discrete random variables and discrete probability distributions
# explanation @ https://www.youtube.com/playlist?list=PLvxOuBpazmsNIHP5cz37oOPZx0JKyNszN
  
# expected value and variance of discrete random variables
# E(X) where X is a discrete random variable is just a weighted average of the possible values that X can take
# V(X) where X is a discrete random variable is the expectation of the squared distance from the mean
# the standard deviation can be found by taking the square root of V(X)
# explanation @ https://www.youtube.com/watch?v=Vyk8HQOckIE&index=2&list=PLvxOuBpazmsNIHP5cz37oOPZx0JKyNszN
weighted.mean(X, p) # where vectors X = discrete random values and p = probabilities of occuring
wtd.var(x = X, weights = p, normwt = TRUE) # install.packages("Hmisc")

# bernoulli distribution
# explanation @ https://www.youtube.com/watch?v=bT1p5tJwn_0&index=3&list=PLvxOuBpazmsNIHP5cz37oOPZx0JKyNszN

# binomial distribution
# explanation @ https://www.youtube.com/watch?v=qIzC1-9PwQo&index=4&list=PLvxOuBpazmsNIHP5cz37oOPZx0JKyNszN&spfreload=5
dbinom(4, size = 12, prob = 0.2) # where x = n successes, size = n of trials, prob = probability of success
pbinom(4, size = 12, prob = 0.2, lower.tail = TRUE) # where lower.tail = TRUE <- probability of having n or less successes
pbinom(4, size = 12, prob = 0.2, lower.tail = FALSE) # where lower.tail = FALSE <- probability of having n or more successes
qbinom(.9, size = 12, prob = 0.2) # where x = quantile (90th percentile in this example)

