box::use(
    S7[new_class, class_function],
    purrr[map2_default = map2, df = map2_dfr, dfr = map2_dfr, dfc = map2_dfc],
    ./types[lgl, int, dbl, chr],
)

map2_ns = new_class(
    "map2_ns",
    parent = class_function,
    properties = list(
        lgl = class_function,
        int = class_function,
        dbl = class_function,
        chr = class_function,
        raw = class_function,
        vec = class_function,
        df = class_function,
        dfr = class_function,
        dfc = class_function
    )
)

#' @export
call = map2_ns(
    map2_default,
    lgl = lgl,
    int = int,
    dbl = dbl,
    chr = chr,
    raw = raw,
    df = df,
    dfr = dfr,
    dfc = dfc
)
