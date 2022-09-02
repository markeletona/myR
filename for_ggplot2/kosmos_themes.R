theme_kosmos <- function(bfs = 7){
  theme_bw()  %+replace%
    theme(axis.text = element_text(size = bfs, colour = "black"),
          axis.title = element_text(size = bfs+1, colour = "black"),
          axis.ticks = element_line(size = .4, colour = "black"),
          panel.border = element_rect(size = .7, colour = "black", fill = NA),
          strip.text = element_text(size = bfs+1, colour = "black"),
          strip.background = element_blank(),
          legend.text = element_text(size = bfs, colour = "black"),
          legend.title = element_text(size = bfs, colour = "black"),
          legend.key = element_blank(),
          legend.key.height = unit(3, "mm"), # adds spacing between legend elements
          legend.key.width = unit(3, "mm"), # increases key width so that the lines and symbols are all properly seen in the legend.
    )
}

theme_kosmos2 <- function(bfs = 7){
  theme_classic() %+replace%
    theme(axis.text = element_text(size = bfs, colour = "black"),
          axis.title = element_text(size = bfs+1, colour = "black"),
          axis.ticks = element_line(size = .4, colour = "black"),
          legend.text = element_text(size = bfs, colour = "black"),
          legend.title = element_text(size = bfs, colour = "black"),
          legend.key = element_blank(),
          legend.key.height = unit(3, "mm"), # adds spacing between legend elements
          legend.key.width = unit(3, "mm"), # increases key width so that the lines and symbols are all properly seen in the legend.
          panel.grid.major.y = element_blank(),
          panel.grid.major.x = element_blank(), 
          panel.grid.minor = element_blank(),
          strip.background = element_rect(fill = "white", colour = "white"),
          strip.text = element_text(size = bfs, colour = "black")
    )
}
