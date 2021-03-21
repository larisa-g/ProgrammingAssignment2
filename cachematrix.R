

## Second assignment> write an R function to cache the inverse of a matrix

## makeCacheMatrix is a function that creates a matrix object
## that can cache its inverse

makeCacheMatrix <- function(x = matrix()) { ##x is the matrix
  m<-NULL ## m is the inverse
  set <function(y){  
    x<<-y ##takes y as argument
    ##and assign it to the matrix x
    m<<-NULL
  }
  get<-function()x ##retrieves x
  setInverse <- function (inverse) m<<-inverse 
  getInverse <- function () m
  list(set = set, get = get, setInverse=setInverse, getInverse=getInverse)
}


## fcacheSolve computes the inverse of the matrix returned
## by makeCaheMatrix
##cacheSolve retrieves inverse from cache if
##the matrix has not changed and the invers has been calculated

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("cached") 
    return(m) 
  }
  mat <- x$get()
  m <- solve(mat, ...)
  x$setInverse(m)
  m
  
}