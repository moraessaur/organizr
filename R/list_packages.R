#' List packages
#' List used packages in the r files of the directory
#'
#' @return
#' Vector with package names
#' @export
#'
#' @examples
#' No examples
list_packages <- function(){
  r_files <-
    list.files(all.files = T,recursive = T) %>%
    grep(".*\\.R$",.,value = T,ignore.case = T)

  temp_list <- list()

  for (i in 1:length(r_files)){
    x <- readLines(r_files[i])
    temp_list[[i]] <-
      grep("library",x,value = T) %>%
      gsub("\\(","",.) %>%
      gsub("\\)","",.) %>%
      gsub("\\'","",.) %>%
      gsub("library","",.)
  }

  r_packages <-
    unique(unlist(temp_list))

}
