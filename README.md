### Introduction

The functions have been developed similar to the example provided for this assignment 
This file has two functions 'makeCacheMatrix' and 'cacheSolve'. 
**makeCacheMatrix** allow for initializing a matrix, getting the matrix, initializing a 
inverse matrix and getting the inverse Matrix. 
**cacheSolve** checks the cache for the inverse. If the inverse exists the it returns 
the inverse from the cache. If the inverse does not exist or if the original matrix 
changed the inverse is computed all over again 


##makeCacheMatrix function allows for initializing a matrix, getting the matrix, 
initializing a inverse matrix and getting the inverse Matrix. Although the 
setInverse is not necessary it has added to be similar to the example

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


            data <- x$get()
            m <- mean(data, ...)
            x$setmean(m)
            m
    }




