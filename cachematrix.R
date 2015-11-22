## Put comments here that give an overall description of what your
<<<<<<< HEAD
## functions do.

## The objective of this file is to find the inverse of a Cache Matrix,
## which should be the final output from the functions shown below. 
## A Cache Matrix is used to ease and speed up the calculation of the 
## inverse of a given matrix, since computing the inverse can be very tedious 
## and time consuming. To do this, we create a special object that gives
## a matrix and caches its inverse.

## Write a short comment describing this function.

## This function creates a new matrix called the Cache Matrix. The Cache Matrix
## is a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
          x <<- y
          inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse_of_matrix) inverse <<- inverse_of_matrix
  getInverse <- function() inverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function.

## The cacheSolve function allows you to compute the inverse of the cache matrix
## that was created by the previous function makeCacheMatrix. If the inverse of
## the cache matrix has already been calculated and this matrix does not change,
## then the cacheSolve function returns the inverse of the cache matrix.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  matrix <- x$get()
  inverse <- solve(matrix, ...)
  x$setInverse(inverse)
  inverse
=======
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
