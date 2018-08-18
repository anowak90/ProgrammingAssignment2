## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # initialize empty matrix
  inve <- NULL
  
  # set the matrix
  set <- function(y){
   x <<- y
   inve <<- NULL
  }
  
  # return the matrix
  get <- function() x
  
  # set the inverse matrix
  setInv <- function(solveInv) inve <<- solveInv
  
  # get the inverse matrix
  getInv <- function() inve
  
  # method descriptions
  list(set = set , get = get , setInv = setInv , getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inve <- x$getInv()
  
  # test for empty matrix and return
  if(!is.null(inve)){
    message("getting cahced data")
    return(inve)
  }
  
  # get the matrix data
  data <- x$get()
  
  # calculate the inverse matrix
  inve <- solve(data)
  
  # set the inverse
  x$setInv(inve)
  
  # return the inverse matrix
  inve
}
