#' Read a query or text document in as on character value
#'
#'@param fileName the directory or name of a text file.
#'
#'@return A character value
#'
#'@examples
#'\dontrun{queryRead('exampleQuery.txt')}
#'@export

queryRead <- function(fileName) {
  query <- readChar(fileName, file.info(fileName)$size)
  query
}
