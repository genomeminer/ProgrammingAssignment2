## The functions have been developed similar to the example provided for this assignment 
## This file has two functions 'makeCacheMatrix' and 'cacheSolve'. 
## 'makeCacheMatrix' allow for initializing a matrix, getting the matrix, initializing a 
## inverse matrix and getting the inverse Matrix. 
## 'cacheSolve' checks the cache for the inverse. If the inverse exists the it returns 
## the inverse from the cache. If the inverse does not exist or if the original matrix 
## changed the inverse is computed all over again 


## 'makeCacheMatrix' function allows for initializing a matrix, getting the matrix, 
## initializing a inverse matrix and getting the inverse Matrix. Although the 
## setInverse is not necessary it has added to be similar to the example

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        getMatrix <- function() x  #gets the initialized matrix e.g: d$getMatrix()
        setMatrix <- function(y) {   #initializes a matrix e.g:d<-makeCacheMatrix(matrix(c(3,5,6,9,4,8,8,3,7),3,3))
                x <<- y
                inv <<- NULL
        }
        setInverse <- function(inverseMatrix) inv <<- inverseMatrix #initializes the inverse with user given values e.g:d$setInverse(matrix(c(1:9),3,3))
        getInverse <- function() inv   #gets the inverse matrix e.g: d$getInverse()
        list(getMatrix=getMatrix,setMatrix=setMatrix,setInverse=setInverse,getInverse=getInverse)
}


## 'cacheSolve' checks the cache for the inverse. If the inverse exists the it returns 
## the inverse from the cache. If the inverse does not exist or if the original matrix 
## changed the inverse is computed all over again

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse() #gets the inverse from cache. This also makes sure the matrix has not changed
        if(!is.null(inv)) {   #checks if the inverse exists if exists it returns the inverse from cache
                message("getting the cached inverse")
                return(inv)
        }
        mat<-x$getMatrix() # the control reaches this step if the inverse does not exist in cache 
        inv <- solve(mat)  # calculate the inverse
        x$setInverse(inv)  # set the inverse
        inv                # Return inverse
}
