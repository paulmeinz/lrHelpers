# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

sqlUnion <- function(data, tablename = '#temp') {
  #outer
  outer <- paste('select * into ', tablename ,' from', sep = '')
  query <- ''

  #inner
  inner <- c()
  cols <- names(data)
  for (i in 1:nrow(data)) {
    row <- data[i,]
    queryStep <- ''
    print(row)
    for (j in 1:length(row)) {
      value <- row[1,j]
      name <- cols[j]
      print(value)
      print(name)
      queryStep <- paste(queryStep, value, ' as ', name, ' ', sep = '')
      print(queryStep)
    }
    if (i != nrow(data)) {
      queryStep <- paste('select ', queryStep, ' union all ', sep = '')
      query <- paste(query, queryStep)
    } else {
      queryStep <- paste('select ', queryStep, sep = '')
      query <- paste(query, queryStep)
    }
    print(query)
    }
}
