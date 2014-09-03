#' Find Columns with which to merge objects
#'
#' This function helps find common columns within (potentially large) dataframes
#' @param x an R data frame or object coercible into a data frame
#' @param y an R data frame or object coercible into a data frame which you wish
#'          to merge with x
#' @keywords merge join bind
#' @export
#' @examples MergeBy(mydf0, mydf1)

MergeBy <- function (x,y) {
  colnamesx <- tolower(colnames(x))
  colnamesy <- tolower(colnames(y))
  colnamesx <- gsub(".x", "", colnamesx)
  colnamesy <- gsub(".x", "", colnamesy)
  colnamesx <- gsub(".y", "", colnamesx)
  colnamesy <- gsub(".y", "", colnamesy)
  mergeby <- intersect(colnamesx, colnamesy)
  print("DB dude says consider merging by:")
  print(mergeby)
}

