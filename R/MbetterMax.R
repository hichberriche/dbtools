#' @title Matrix Better Max
#' @description Find the element by element max of a set of matrices stored as levels of an array
#' @param x A 3 dimensional array
#' @return A numeric matrix whose dimensions are the same as the first two dimensions of the input array.  The value in each position [a,b] is the largest value of [a,b,] in the input array.  If all values stored in [a,b,] are NA, that position in the output will also contain NA.
#' @details This functions collapses the planes of a 3-dimensional array, leaving a two dimensional matrix. Each element of the 2-d matrix is the betterMax of all the values in that cell location across all planes in the array. In otherwords, it collapses xyz space into the xy plane by taking the maximum value across the z dimension for each xy coordinate, ignoring NA's.
MbetterMax = function(x){
  apply(X = x, MARGIN = c(1,2), FUN = betterMax)
}
