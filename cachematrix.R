## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creating a list of functions to get and set inverse
## ,then returning the list of functions

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- funtion() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, 
  setinverse = setinverse,
  getinverse = getinverse)
}


## Write a short comment describing this function
## Checks whether or not cache is null or not, returns
## cache if it's there, otherwise sets the cache if not
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
