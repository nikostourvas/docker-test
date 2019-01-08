library(strataG)

data("nancycats")

data_new <- genind2gtypes(nancycats)


# Structure
nancy.struct <- structureRun(data_new, k = 2:4, num.k.rep = 100)

# Evanno
evanno(nancy.struct)

# clumpp
nancy.clumpp <- clumpp(nancy.struct, k=3)

# show membership
sp <- structurePlot(nancy.clumpp, horiz = FALSE)

