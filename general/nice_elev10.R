# Nice scientific notation:
nice_elev10 <- function(x){
  if((abs(x)<10^4 & abs(x)>10^-4) | x==0){ # when NOT to use 10^x notation (values that we consider easily readable)
    
    nicelab <- x
    
  } else if(log10(abs(x))==round(log10(abs(x)))){ # if number is exactly 10^x, do not do 1*10^x
    
    nicelab <- parse(text = paste0("10^{", floor(log10(abs(x))), "}"))
    
  } else {
    
    nicelab <- parse(text = paste0("'", round(x/10^floor(log10(abs(x))), 2), "·'*10^{", floor(log10(abs(x))), "}"))
    
  }
  return(nicelab)
}
