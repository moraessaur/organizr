#' Create backbone file system
#'
#' This function creates a template of folders which I am used to,
#' when starting new projects
#'
#' @return 5 folders, in the current directory
#' @export
#'
#' @examples
#' create_backbone_files()
create_backbone_files <- function(){
  a <- dir.create("scripts")
  b <- dir.create("img")
  c <- dir.create("notebooks")
  d <- dir.create("data_raw")
  e <- dir.create("data_processed")
  f <- dir.create("dumpster")
  return(list(a,b))
}
