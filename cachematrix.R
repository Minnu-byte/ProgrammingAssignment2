## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The first function creates the matrix and stores its cached matrix inverse
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  ##setting and getting the inversion matrix
  setmatrixIn <- function(matrixIn) m <<-matrixIn
  getmatrixIn <- function() m
  list(set = set, get = get, setmatrixIn = setmatrixIn, getmatrixIn = getmatrixIn)
}


## Write a short comment describing this function
##The second function cacheSolve will compute inverse of the matrix that is from the above function and it checks if the inverse of the matrix is already calculated it just returns from the cache from the second function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getmatrixIn()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matricks <- x$get()
  m <-solve(matricks,...)
  x$setmatrixIn(m)
  m
}
