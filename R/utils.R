idClassNbr <- function(fileName) {
  x <- fileName
  if (grepl('\\d{5}', x)) {
    result <- regexpr('\\d{5}', x)
    start <- result[[1]]
    stop <- attributes(result)[['match.length']]
    catalogNbr <- substr(x, start, start + stop - 1)
    return(catalogNbr)
  } else {
    warning('No catalog number found')
    return(NULL)
  }
}
