box::use(
    S7[new_class, class_function],
    purrr[imap_default = imap, raw = map_raw, vec = map_vec],
    ./types[lgl, int, dbl, chr],
    ./df[dfr, dfc],
)

imap_ns = new_class(
    "imap_ns",
    parent = class_function,
    properties = list(
        lgl = class_function,
        int = class_function,
        dbl = class_function,
        chr = class_function,
        raw = class_function,
        vec = class_function,
        dfr = class_function,
        dfc = class_function
    )
)

#' @export
call = imap_ns(
    imap_default,
    lgl = lgl,
    int = int,
    dbl = dbl,
    chr = chr,
    raw = raw,
    vec = vec,
    dfr = dfr,
    dfc = dfc
)
