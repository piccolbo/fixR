



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

as.integer.factor =
  function(x)
    as.integer(as.character(x))

ifelse =
  function(test, yes, no){
    if(is.factor(yes) && is.factor(no))
      as.factor(base::ifelse(test, as.character(yes), as.character(no)))
    else
      base::ifelse(test, yes, no)}

c =
  function(..., recursive = FALSE) {
    if(identical(unique(sapply(list(...), class)), "factor"))
      as.factor(do.call(base::c, lapply(list(...), as.character)))
    else
      base::c(..., recursive = recursive)}
