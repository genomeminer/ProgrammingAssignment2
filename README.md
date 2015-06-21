### Introduction

The functions have been developed similar to the example provided for this assignment 
This file has two functions **makeCacheMatrix** and **cacheSolve**. 
**makeCacheMatrix**
allow for initializing a matrix, getting the matrix, initializing a 
inverse matrix and getting the inverse Matrix. 
**cacheSolve** 
checks the cache for the inverse. If the inverse exists the it returns 
the inverse from the cache. If the inverse does not exist or if the original matrix 
changed the inverse is computed all over again 


###makeCacheMatrix 
This function allows for initializing a matrix, getting the matrix, 
initializing a inverse matrix and getting the inverse Matrix. Although the 
setInverse is not necessary it has added to be similar to the example provided in the homework description

<!-- -->
    makeCacheMatrix <- function(x = matrix()) {
            inv <- NULL
            getMatrix <- function() x  
            setMatrix <- function(y) {  
                    x <<- y
                    inv <<- NULL
            }
            setInverse <- function(inverseMatrix) inv <<- inverseMatrix 
            getInverse <- function() inv  
            list(getMatrix=getMatrix,setMatrix=setMatrix,setInverse=setInverse,getInverse=getInverse)
}

**Usage:**

d$getMatrix()

d<-makeCacheMatrix(matrix(c(3,5,6,9,4,8,8,3,7),3,3))

d$setInverse(matrix(c(1:9),3,3))

d$getInverse()

### cacheSolve
checks the cache for the inverse. If the inverse exists the it returns 
the inverse from the cache. If the inverse does not exist or if the original matrix 
changed the inverse is computed all over again

<!-- -->
    cacheSolve <- function(x, ...) {
            ## Return a matrix that is the inverse of 'x'
            inv <- x$getInverse()
            if(!is.null(inv)) {   
                    message("getting the cached inverse")
                    return(inv)
            }
            mat<-x$getMatrix()  
            inv <- solve(mat)  
            x$setInverse(inv)  
            inv                
    }

**Usage:**

cacheSolve(d)



