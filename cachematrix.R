## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  set1 <- function(inv) i <<- inv
  get1 <- function() i
  
  list(
    set = set,
    get = get,
    set1 = set1,
    get1 = get1
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$get1()
  if(!is.null(i)) {
    return(i)
  }
  m <- x$get()
  i <- solve(m, ...)
  x$set1(i)
  i
}