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
dbinom(4, size = 12, prob = 0.2) 
pbinom(4, size = 12, prob = 0.2, lower.tail = TRUE) 
pbinom(4, size = 12, prob = 0.2, lower.tail = FALSE) 
qbinom(.9, size = 12, prob = 0.2) # find quartiles (90th percentile in this example)

# x = number of successes
# size = number of trials
# prob = probability of success
# lower.tail = TRUE if P[X ≤ x] successes
# lower.tail = FALSE if P[X > x] successes

# the mean of a random binomial variable :: mu = np 
# variance of a random binomial variable :: sigma^2 = np(1-p)
# standard deviation of a random binomial variable :: sqrt(sigma squared)

# hypergeometric distribution
# explanation @ https://www.youtube.com/watch?v=BCeFgnh6A1U
phyper(x, m, n, k, p, lower.tail = TRUE) 
phyper(x, m, n, k, p, lower.tail = FALSE) 

# x = number of white balls drawn without replacement from an urn containing both black and white balls
# m = the number of white balls in the urn
# n = the number of black balls in the urn
# k = the number of balls drawn from the urn (sample)
# p = the given probability, between 0 and 1
# lower.tail = TRUE if P[X ≤ x] successes
# lower.tail = FALSE if P[X > x] successes

# geometric distribution
# explanation @ https://www.youtube.com/watch?v=zq9Oz82iHf0&index=6&list=PLvxOuBpazmsNIHP5cz37oOPZx0JKyNszN
dgeom(x, prob, log = FALSE)
pgeom(q, prob, lower.tail = TRUE)
pgeom(q, prob, lower.tail = FALSE)
qgeom(p, prob, lower.tail = TRUE)

# x = number of failures / trials before success occurs
# p = probabilities
# lower.tail = TRUE if P[X ≤ x] failures / trials
# lower.tail = FALSE if P[X > x] failures / trials

# the mean of a geometric random variable :: mu = 1/p
# variance of a geometric random variable :: sigma^2 = (1 - p) / p^2
# standard deviation of a geometric random variable :: sqrt(sigma^2)

# poisson distribution
# explanation @ https://www.youtube.com/watch?v=jmqZG6roVqU
dpois(x, lambda)
ppois(x, lamba, lower.tail = TRUE)
ppois(x, lamba, lower.tail = FALSE)
qpois(p, lamba, lower.tail = F / T)
# dpois if we want to know probability of getting exactly x
# ppois if we want to know probability of P[X ≤ x] (lower.tail = TRUE)
# ppois if we want to know probability of P[X ≥ x] (lower.tail = TRUE)

# the mean of a poisson random variable :: mu = lamba
# variance of a poisson random variable :: sigma^2 = lamba
# standard deviation of a poisson random variable :: sqrt(sigma^2)
