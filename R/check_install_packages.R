#' check_install_packages
#' check if each package in vector is installed, if not, installs it
#' @param x vector of package names to be checked an installed
#' @param y cran mirror
#'
#' @return install packages if not detected
#' @export
#'
#' @examples
#'
#' check_install_packages(c("lubridate","devtools"))
check_install_packages <-
  function(x,y="https://vps.fmvz.usp.br/CRAN/"){
    for (k in x){
      if (k %in% rownames(installed.packages())){
        library(k,character.only = T)
      } else
      {install.packages(k,repos = y)}
    }
  }
