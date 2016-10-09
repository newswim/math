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
var(cars$dist)
sd(cars$speed)

# quantiles, z-scores
quantile(cars$speed)
quantile(cars$speed, c(.12, .25, .78, .97))
scale(cars$speed, center = TRUE, scale = TRUE)

