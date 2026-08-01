box::use(
    S7[new_class, class_function],
    purrr[map_default = map, depth = map_depth, raw = map_raw, vec = map_vec],
    ./types[lgl, int, dbl, chr],
    ./df[df, dfr, dfc],
)

map_ns = new_class(
    "map_ns",
    parent = class_function,
    properties = list(
        lgl = class_function,
        int = class_function,
        dbl = class_function,
        chr = class_function,
        depth = class_function,
        raw = class_function,
        vec = class_function,
        df = class_function,
        dfr = class_function,
        dfc = class_function
    )
)

#' @export
call = map_ns(
    map_default,
    lgl = lgl,
    int = int,
    dbl = dbl,
    chr = chr,
    depth = depth,
    raw = raw,
    vec = vec,
    df = df,
    dfr = dfr,
    dfc = dfc
)
