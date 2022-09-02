pastellise <- function(x, p = .5){
  # Nice little function to convert colours into more "pastel" versions of them:
  # (based on: https://datascienceconfidential.github.io/r/graphics/2017/11/23/soothing-pastel-colours-in-r.html)
  #
  # x is a colour
  # p is the pastellisation coefficient, a number in [0,1]
  # p = 1 will give no pastellisation
  
  # Custom function to convert hvs to rgb (see: https://en.wikipedia.org/wiki/HSL_and_HSV#HSV_to_RGB)
  hsv2rgb <- function(x){  
    h <- x[1,1]  
    s <- x[2,1]  
    v <- x[3,1]    
    C <- s*v   
    hdash <- h*6  
    X <- C * (1 - abs(hdash %% 2 -1))
    if (0 <= hdash & hdash <=1) RGB1 <- c(C, X, 0)  
    if (1 <= hdash & hdash <=2) RGB1 <- c(X, C, 0)  
    if (2 <= hdash & hdash <=3) RGB1 <- c(0, C, X)  
    if (3 <= hdash & hdash <=4) RGB1 <- c(0, X, C)  
    if (4 <= hdash & hdash <=5) RGB1 <- c(X, 0, C)  
    if (5 <= hdash & hdash <=6) RGB1 <- c(C, 0, X)    
    RGB1 + (v-C)
  }
  
  # convert hex or letter names to rgb
  if (is.character(x)) x <- col2rgb(x)/255
  
  # convert vector to rgb
  if (is.numeric(x)) x <- matrix(x, nr=3)
  
  col <- rgb2hsv(x, maxColorValue=1)
  col[2,1] <- col[2,1]*p
  col <- hsv2rgb(col)
  
  rgb(col[1], col[2], col[3])

}
