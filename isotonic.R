#########################################################################
# An example script for isotonic regression
#     https://www.r-bloggers.com/2020/05/what-is-isotonic-regression/
#     https://cran.r-project.org/web/packages/isotone/isotone.pdf
#########################################################################

##################################
# Installation
# install.packages('isotone')
##################################

# load library
library(isotone)

# generate data
y <- rnorm(9)
w1 <- rep(1:9) # weights
Atot <- cbind(1:8, 2:9)

# fit model
fit_iso <- isotone::activeSet(isomat = Atot, mySolver = "LS", y = y, weights = w1)

summary(fit_iso)

# plot fit
plot(fit_iso$y, fit_iso$x)
