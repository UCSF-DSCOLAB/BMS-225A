# bad code
# here's some code I wrote today
my_variable <- runif(10, min = 0, max = 1000)
my_other_variable <- runif(10, min = 50, max = 800)
my_changed_variable <- asinh(my_variable/5)
my_changed_other_variable <- asinh(my_changed_variable/5)

# good code
# This script transforms raw CyTOF values

raw_CD3 <- runif(10, min = 0, max = 1000)
raw_CD4 <- runif(10, min = 50, max = 800)

CyTOF_transform <- function(raw_value, cofactor){
  
  transformed_value <- asinh(raw_value/cofactor)
  
  return(transformed_value)
  
}

transformed_CD3 <- CyTOF_transform(raw_CD3, 5)
transformed_CD4 <- CyTOF_transform(raw_CD4, 5)


