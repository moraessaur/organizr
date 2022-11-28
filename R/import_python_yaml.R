import_python_yaml <- function(path=getwd()){
yaml_config <-
"name: python_ds

dependencies:
  - python=3.8
  - matplotlib
  - numpy
  - pandas
  - scikit-learn
  - seaborn
  - os
  - ipykernel"

write(yaml_config,paste0(getwd(),"/python_ds.yml"))
print("Python yaml generated!")
}
