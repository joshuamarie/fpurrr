box::use(
    purrr[imap_dbl, imap_int, imap_chr, imap_lgl],
)

#' @export
dbl = function(.l, .f, ..., .progress = FALSE)
    imap_dbl(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
int = function(.l, .f, ..., .progress = FALSE)
    imap_int(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
chr = function(.l, .f, ..., .progress = FALSE)
    imap_chr(align_names(.l, .f), .f, ..., .progress = .progress)

#' @export
lgl = function(.l, .f, ..., .progress = FALSE)
    imap_lgl(align_names(.l, .f), .f, ..., .progress = .progress)
