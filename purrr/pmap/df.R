box::use(
    ./helper[align_names],
    purrr[pmap_df, pmap_dfr, pmap_dfc],
)

#' @export
df = function(.l, .f, ..., .id = NULL)
    pmap_df(align_names(.l, .f), .f, ..., .id = .id)

#' @export
dfr = function(.l, .f, ..., .id = NULL)
    pmap_dfr(align_names(.l, .f), .f, ..., .id = .id)

#' @export
dfc = function(.l, .f, ...)
    pmap_dfc(align_names(.l, .f), .f, ...)
