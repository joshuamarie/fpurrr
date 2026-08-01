box::use(
    ./helper[align_names],
    purrr[pmap_raw, pmap_vec],
)

#' @export
raw = function(.l, .f, ...)
    pmap_raw(align_names(.l, .f), .f, ...)

#' @export
vec = function(.l, .f, ..., type = NULL, .progress = FALSE)
    pmap_vec(align_names(.l, .f), .f, ..., .ptype = type, .progress = .progress)
