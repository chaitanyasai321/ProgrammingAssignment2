## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        j <- NULL
        set <-function(y){
                x <<-NULL
               }
        get <- function()x
        setI <- function(inverse) j<<-inverse
        getI<- function() j
        list(set=set,get=get,setI=setI,getI,getI)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        j <- x$getI()
        if(!null(j)){
                message("getting cached data")
                return(j)
           }
        mat <-x$get()
        j<-solve(mat,...)
        x$setI(j)
        j
}
