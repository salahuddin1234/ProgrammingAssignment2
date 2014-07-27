## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function will take a matrix as an input , it must be a square matrix so that we can calculate its inverse. The makecachematrix function will take x as input and set and get ##will just set the value outside from the fucntin and get will get the current value of the matrix. The set inverse and get inverse functions only gets and set the calculated ##function. ##All these functions will be stored in a list so that we can access these functions later on. 

makeCacheMatrix<- function(x = matrix) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        set_inverse <- function(solve){i <<-solve} 
        get_inverse <- function() i
        list(set = set, get = get,
             set_inverse = set_inverse,
             get_inverse = get_inverse)
}



## Write a short comment describing this function
##This function just check for the matrix whether the matrix's inverse is already calculated or not by compare the old and new matrix using is.matrix(x) && is.matrix(y) && dim(x) == ##dim(y) && all(x == y) line and if not will calculte and returns new inverse. 

cacheSolve  <- function(x, ...) {
        i <- x$get_inverse()
        y<- set()
        if(is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y))  {
                message("getting cached data")
                return(i)
        }
                data <- x$get()
                i <- solve(data, ...)
                x$set_inverse(i)
                i   
        
        
}


