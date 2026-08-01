box::use(
    purrr[map2_dbl, map2_int, map2_chr, map2_lgl],
)

#' @export
dbl = function(.l, .f, ..., .progress = FALSE)
    map2_dbl(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
int = function(.l, .f, ..., .progress = FALSE)
    map2_int(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
chr = function(.l, .f, ..., .progress = FALSE)
    map2_chr(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
lgl = function(.l, .f, ..., .progress = FALSE)
    map2_lgl(align_names(.l, .f), .f, ..., .progress = .progress)
