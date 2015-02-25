library(quickcheck)
library(fixR)

test(
  function(
    n = rinteger(c(min = 1), size = ~1),
    x = ratomic(size = ~n),
    nn = rcharacter(list(nchar = c(min = 1)), size = ~n)) {
    names(x) = nn
    identical(names(as.list(x)),  names(x))})
