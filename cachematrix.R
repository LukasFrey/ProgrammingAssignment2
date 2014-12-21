## Put comments here that give an overall description of what your
## functions do

# How to use this function?
#
# First, instantiate a makeCacheMatrix object
#
# cacheObject <- makeCacheMatrix()

# Second, use it
# - set the matrix to be inverted
# myMatrix <- rbind(c(1, -1/4), c(-1/4, 1)) 
# cacheObject$set(myMatrix)
#
# - query the inverted matrix
# cacheSolve(cacheObject)
#
# - the next query will print a message "cached result"
# cacheSolve(cacheObject)
#


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("cached result")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setsolve(m)
  m
}
