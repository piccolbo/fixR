



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

sample =
  function()
    x[base::sample(x = length(x), size = size, replace = replace, prob = prob)]

formals(sample) = formals(base::sample)

`[.data.frame` =
  function (x, i, j)
    base::`[.data.frame`(x, i, j, drop = FALSE)


#
#
# as.integer.factor
#
# ifelse(factor)
#
# c(factor)
