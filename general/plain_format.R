# Removes trailing zeros:
plain <- function(x,...){sub("\\.$", "", # if all decimals were zeros, remove also the decimal sign "."
                             sub("0+$", "", # remove all trailing zeros in the decimals
                                 format(x, ..., scientific = FALSE)))} # to have labels NOT in scientific format
