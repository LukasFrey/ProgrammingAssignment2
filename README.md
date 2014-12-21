
How to use this function?
=========================

To be able to use the functionality, source the R file


source("cachematrix.R")

Then, instantiate a makeCacheMatrix object

# cacheObject <- makeCacheMatrix()


Now, you can set the matrix to be inverted

# myMatrix <- rbind(c(1, -1/4), c(-1/4, 1)) 
# cacheObject$set(myMatrix)


The cacheSolve call returns the inverted object

# cacheSolve(cacheObject)
          [,1]     [,2]
[1,] 1.3333333 1.333333
[2,] 0.3333333 1.333333

Any subsequent calls to this function will print 
a message saying that the result was cached

# cacheSolve(cacheObject)
cached result
          [,1]     [,2]
[1,] 1.3333333 1.333333
[2,] 0.3333333 1.333333



