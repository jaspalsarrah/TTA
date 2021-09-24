data(package = .packages(all.available = TRUE))
library(ggplot2)
data(package = "ggplot2")

qplot(x=carat, y=price, main = "Scatter graph of Price against Carat", data = diamonds, colour = cut)

qplot(x=carat, y=price, data = diamonds, facets = ~ cut, colour = cut)

qplot(x=carat, y=price, data = diamonds, facets = color ~ cut, colour = cut)

qplot(x=table, data = diamonds, xlim = c(50,70), ylab = "Frequency", main = "Distribution by Table", facets = color ~ cut, colour = cut)

qplot(x=depth, data = diamonds, xlim = c(54,70), ylab = "Frequency", main = "Distribution by Depth", facets = color ~ cut, colour = cut)
