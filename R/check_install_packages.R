check_install_packages <-
  function(x,y="https://vps.fmvz.usp.br/CRAN/"){
    for (k in x){
      if (k %in% rownames(installed.packages())){
        library(k)
      } else
      {install.packages(k,repos = y)}
    }
  }
