library(quickcheck)
library(fixR)

test(
  function(
    n = rinteger(c(min = 1), size = ~1),
    x = ratomic(size = ~n),
    nn = rcharacter(list(nchar = c(min = 1)), size = ~n)) {
    names(x) = nn
    identical(names(as.list(x)),  names(x))})

test(
  function(
    n = rinteger(c(min = 2), size = ~1))
    expect("error", sample(n,n)))

test(
  function(
    x = rdata.frame(nrow = c(min = 1), ncol = c(min = 1)),
    i = rsample(1:nrow(x), size = c(min = 1)),
    j = rsample(1:ncol(x), size = ~1))
  is.data.frame(x[i, j]))


test(
  function(x = rinteger())
    identical(x, as.integer(as.factor(x))))

test(
  function(x = rfactor(), b = rlogical(size = ~length(x)))
    is.factor(ifelse(b, x, x)))

test(
  function(x = rfactor(), y = rfactor())
    is.factor(c(x, y)))
