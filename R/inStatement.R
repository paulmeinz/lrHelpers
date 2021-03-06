#' Create an in statement
#'
#' This funciton helps create a parenthetical character list for sql
#' in statements. E.g., 1:5 -> (1,2,3,4,5). This can be useful when provided
#' a list of something by a faculty member that needs to be used in a sql
#' query.
#'
#'@param vect a vector of values to be included in an in statment
#'@param quoted logical; quote the values between parentheses?
#'
#'@return A set of values surrounded by parens
#'
#'@examples
#'c <- 1:5
#'inStatement(c, quoted = TRUE)
#'@export
#'
#'

inStatement <- function(vect, quoted = FALSE) {
  stopifnot(is.vector(vect))
  q <- ''
  if (quoted) {q <- "'"}
  a <- vect
  inState <- '('
  for (i in 1:length(a)) {
    if (i < length(a)) {inState <- paste(inState, q, a[i], q, ', ', sep = '')}
    else {inState <- paste(inState, q, a[i], q, ')', sep = '')}
  }
  inState
}
