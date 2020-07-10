## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #initializing the varables to null 
  j <- NULL
  # creating a function set with one argument
  set <-function(y){
    x <<-NULL
  }
  #get function returns the inverse of matrix
  get <- function()x
  setI <- function(inverse) j<<-inverse
  getI<- function() j
  list(set=set,get=get,setI=setI,getI,getI)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
   #calling getI function from makecachematrix
  j <- x$getI()
  # if the matrix is not null then if prints the message and return the inverse element
  if(!null(j)){
    message("getting cached data")
    return(j)
  }
  mat <-x$get()
  j<-solve(mat,...)
  x$setI(j)
  j
}
