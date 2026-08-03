box::use(
    purrr[walk_default = walk, walk2, iwalk, pwalk], 
    S7[new_class, class_function], 
)

walk_ns = new_class(
    "walk_ns", 
    parent = class_function,
    properties = list(
        normal = class_function,
        two = class_function,
        indexed = class_function, 
        parallel = class_function 
    )
)

#' Apply a function to each element of a vector
#'
#' The map functions transform their input by applying a function to 
#' each element of a list or atomic vector and returning an object of the same length as the input.
#' 
#' @param .x A list or atomic vector.
#' @param .f A function.
#' @return The output length is determined by the length of the input. 
#' 
#' @examples
#' box::use(
#'     fp = fpurrr
#' )
#' 
#' fp$walk(10:1, function(x) {
#'     cat("Countdown at", x, "\n")
#' })
#' 
#' 
#' @export
walk = walk_ns(
    walk_default, 
    two = walk2, 
    indexed = iwalk,
    parallel = pwalk
)
