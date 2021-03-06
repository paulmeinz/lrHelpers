#' Read in assessment validation data
#'
#' This function reads in data from assessment validation surveys,
#' concatenates the files, and produces student IDS
#'
#'@param directory the file directory for scanned assessment documents. Don't
#'put a forward slash in the directory!
#'
#'@return A set of values surrounded by parens
#'
#'@export
#'
#'

pullScans <- function(directory) {
  direct <- directory
  all <- list.files(direct)
  data <- data.frame()
  for (i in all) {
    file <- paste(direct, '/', i, sep = '')
    read <- xlsx::read.xlsx(file, 1, colClasses = c('character'))
    classNbr <- idClassNbr(i)
    read$classNbr <- classNbr
    data <- rbind(data, read)
  }
  emplid <- apply(data[,1:7], 1, paste, collapse = '')
  new <- data.frame(emplid, data[,c(8,9,13)])
  final <- data.frame(sapply(new, as.character), stringsAsFactors = FALSE)
  final
  }
