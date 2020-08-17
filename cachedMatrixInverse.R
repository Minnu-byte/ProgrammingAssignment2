makeCacheMatrix <- function(x = matrix()){
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
cachematrixIn <- function(x, ...){
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
  
  
  
  
  
  
  