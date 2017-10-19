#' Create an in statement
#'
#' This funciton helps create a parenthetical character list for sql
#' in statements. E.g., 1:5 -> (1,2,3,4,5). This can be useful when provided
#' a list of something by a faculty member that needs to be used in a sql
#' query.
#'
#'@param directory the file directory for scanned assessment documents
#'
#'@return A set of values surrounded by parens
#'
#'@examples
#'c <- 1:5
#'inStatement(c, quoted = TRUE)
#'@export
#'
#'

pullScans <- function() {return('Hello World!')}
