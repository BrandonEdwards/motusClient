#' Create a new filter records that can be applied to runs
#'
#' @param src dplyr sqlite src, as returned by \code{dplyr::src_sqlite()}
#'
#' @param filterName unique name given to the filter 
#'
#' @param motusProjID optional project ID attached to the filter in order to share with other users of the same project.
#'
#' @param descr optional filter description detailing what the filter is meant to do
#'
#' @return an integer filterID
#'
#' @export
#'
#' @author Denis Lepage, Bird Studies Canada

createRunsFilter <- function(src, filterName, motusProjID=NA, descr=NA) {

  sqlq = function(...) DBI::dbGetQuery(src$con, sprintf(...))

  if (is.na(motusProjID)) motusProjID = -1
  
  df = sqlq("select * from filters where filterName = '%s' and motusProjID = %d", filterName, motusProjID)
  if (nrow(df) == 0) {
    df = data.frame(userLogin=Motus$userLogin, filterName=filterName, motusProjID=motusProjID, descr=descr, lastModified=format(Sys.time(), "%Y-%m-%d %H:%M:%S"))
    dbInsertOrReplace(src$con, "filters", df)
    df = sqlq("select * from filters where filterName = '%s' and motusProjID = %d", filterName, motusProjID)
    return (df[1,]$filterID)
  } else if (nrow(df) == 1) {
    warning("filter already exists. The description has been updated.")
    df$descr = descr
    df$lastModified=format(Sys.time(), "%Y-%m-%d %H:%M:%S")
    dbInsertOrReplace(src$con, "filters", df);
    return (df[1,]$filterID)
  } else {
    warning("There are more than 1 existing filters matching your request.")
    return()
  }
 
}