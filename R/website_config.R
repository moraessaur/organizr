website_config <- function(){
  blogdown::install_hugo()
  options(blogdown.hugo.version = "0.82.1")
  blogdown::install_hugo("0.82.1")
  blogdown::install_hugo("0.80.0")
  print("Website config done!")
}
