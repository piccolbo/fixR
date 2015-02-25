



as.list.Date =
  function(x) {
    y = base::as.list.Date(x)
    names(y) = names(x)
    y}

as.list.factor =
function(x) {
  y = base::as.list.factor(x)
  names(y) = names(x)
  y}

# sample
#
# [drop]
#
#
# as.integer.factor
#
# ifelse(factor)
#
# c(factor)
