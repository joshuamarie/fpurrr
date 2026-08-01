box::use(
    ./helper[align_names],
    purrr[pmap_dbl, pmap_int, pmap_chr, pmap_lgl],
)

#' @export
dbl = function(.l, .f, ..., .progress = FALSE)
    pmap_dbl(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
int = function(.l, .f, ..., .progress = FALSE)
    pmap_int(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
chr = function(.l, .f, ..., .progress = FALSE)
    pmap_chr(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
lgl = function(.l, .f, ..., .progress = FALSE)
    pmap_lgl(align_names(.l, .f), .f, ..., .progress = .progress)
