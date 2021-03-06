## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  invMatrix <- NULL
  
  set <- function(y) {
    x <<- y
    invMatrix <<- NULL
  }
  
  get <- function() x
  setinverse <- function(solve) invMatrix <<- solve
  getinverse <- function() invMatrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
  invMatrix <- x$getinverse()
  
  if(!is.null(invMatrix)) {
    message("getting cached data")
    return(invMatrix)
  }
  
  data <- x$get()
  invMatrix <- solve(data, ...)
  x$setinverse(invMatrix)
  invMatrix
}
