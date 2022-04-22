#' Detect the presence of a file within folders
#'
#' @param x String with the full or partial file name
#' @param path Defaults to current directory, can be set to any directory
#'
#' @return TRUE if file is present, FALSE otherwise
#' @export
#'
#' @examples
#' x <-  "file.csv"
#' check_file_presence(x)
check_file_presence <-
  function(x,path=getwd()){
    output <-
      grep(x,
           list.files(path = path,all.files = T,recursive = T)
      )
    if (length(output) > 0){return(TRUE)}else{return(FALSE)}
  }
