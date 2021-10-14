## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
# install.packages(c("dissCqN", "vegan"))
library(dissCqN)
data(BCI, package = "vegan")
rownames(BCI) <- paste0("plot_", 1:nrow(BCI))
knitr::kable(
  BCI[sample(1:nrow(BCI), 5), 
      sample(1:ncol(BCI), 5)]
)

## -----------------------------------------------------------------------------
q <- 0:6
(BCI.diss.mult <- dissCqN(BCI, q))

## -----------------------------------------------------------------------------
par(bg = "#303030", fg = "#cccccc")  # dark plot scheme
plot(q, BCI.diss.mult, xlab = expression(italic("q")), ylab = "Dissimilarity", 
     col.axis = "#cccccc", col.lab = "#cccccc")
lines(q, BCI.diss.mult)

## -----------------------------------------------------------------------------
system.time(
  BCI.diss.pair <- dissCqN(BCI, pairwise = TRUE)
)

## -----------------------------------------------------------------------------
lapply(BCI.diss.pair, function(i) i[1:5, 1:5])

## -----------------------------------------------------------------------------
sapply(BCI.diss.pair, function(i) {
  sum(i) / (prod(dim(i)) - dim(i)[1])
})

## -----------------------------------------------------------------------------
dissCqN(BCI, pairwise = TRUE, compare.sub = list(1:2, 3:5))

