box::use(
    rl = rlang,
    purrr[pmap]
)

#' @export
align_names = function(.l, .f) {
    .f = rl$as_function(.f)
    fmls = names(formals(.f))
    has_dots = "..." %in% fmls

    l_names = names(.l)

    if (!is.null(l_names) && !has_dots) {
        unmatched = !(l_names %in% fmls)
        l_names[unmatched] = ""
        names(.l) = l_names
    }

    .l
}

#' @export
pmap_loose = function(.l, .f, ..., .progress = FALSE) {
    pmap(align_names(.l, .f), .f, ..., .progress = .progress)
}
