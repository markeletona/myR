microbiome_colors <- c(
  `red`        = "#d11141",
  `green`      = "#22b21d",
  `green2`     = "#00b159",
  `light green` = "#b0f948",
  `light blue` = "#00aedb",
  `orange`     = "#f37735",
  `yellow`     = "#fff625",
  `yellow2`    = "#ffc425",
  `light grey` = "#cccccc",
  `dark grey`  = "#8c8c8c",
  `blue`       = "#0055A5",
  `dark blue`  = "#2a24c9",
  `purple`     = "#8537a7",
  `burgundy`   = "#901E40",
  `lilac`      = "#C8A2C8",
  `pink`       = "#e546df",
  `brown2`     = "#96531c",
  `brown`      = "#603f00",
  `light brown` = "#d08e4a",
  `olive`      = "#9db000",
  `burgundy2`  = "#98036c",
  `white`      = "#FFFFFF",
  `forest green` = "#005427")

microbiome_cols <- function(...) {
  cols <- c(...)
  
  if (is.null(cols))
    return (microbiome_colors)
  
  microbiome_colors[cols]
}

microbiome_palettes <- list(
  `main`  = microbiome_cols("blue", "green", "yellow"),
  
  `cool`  = microbiome_cols("blue", "green"),
  
  `hot`   = microbiome_cols("yellow", "orange", "red"),
  
  `mixed` = microbiome_cols("blue", "green", "yellow", "orange", "red"),
  
  `grey`  = microbiome_cols("light grey", "dark grey"),
  
  `smol`  = microbiome_cols("purple", "dark blue", "light blue",
                            "green", "yellow", "orange", "red"),
  
  `med` = microbiome_cols("lilac", "pink", "dark blue", "light blue",
                          "green", "yellow", "orange", "red", "brown"),
  
  `large` = microbiome_cols("pink", "purple", "dark blue", "light blue", 
                            "green", "yellow", "orange", "red", "burgundy", "lilac", "light brown"),
  
  `vlarge` = microbiome_cols("pink", "purple", "dark blue", "light blue", 
                             "green", "yellow", "orange", "red", "burgundy", "lilac", "white", 
                             "light brown", "brown", "olive", "yellow2"),
  
  `vlarge.mix` = microbiome_cols("pink", "olive", "light blue", "burgundy",  "yellow", "green", "purple",
                                 "yellow2", "orange","lilac", "brown2", "dark blue", "red", "green2")
)


microbiome_pal <- function(palette = "main", n = NULL, reverse = FALSE, ...) {
  
  pal <- microbiome_palettes[[palette]]
  
  if(reverse){pal <- rev(pal)}
  if(is.null(n)){n <- length(pal)}
  
  if(n==length(pal)){
    
    pal <- unname(pal)
    
  } else {
    
    f <- colorRampPalette(pal, ...)
    pal <- f(n)
    
  }
  
  return(pal)
}
