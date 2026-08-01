box::use(
    S7[new_class, class_function],
    purrr[pmap_default = pmap],
    ./types[lgl, int, dbl, chr],
    ./vector[raw, vec],
    ./df[df, dfc, dfr],
    ./helper[pmap_loose],
)

pmap_ns = new_class(
    "map_ns",
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

#' Map over multiple inputs in parallel
#'
#' Applies `.f` to corresponding elements of each list in `.l`, matching
#' arguments by name against `.f`'s formals when `.l` is named and `.f`
#' does not accept `...`. Falls back to positional matching when names
#' don't line up.
#'
#' Typed variants are available as properties: `pmap@dbl`, `pmap@int`,
#' `pmap@chr`, `pmap@lgl`, each applying the same name-alignment before
#' delegating to the corresponding typed backend.
#'
#' @param .l A list of vectors, or a data frame. Each element/column is
#'   passed as a separate argument to `.f`.
#' @param .f A function, formula, or other value coerced to a function
#'   via `rlang::as_function()`.
#' @param ... Additional arguments passed to `.f`.
#' @param .progress Whether to show a progress bar.
#'
#' @return A list, with one element per row/position in `.l`.
#'
#' @examples
#' box::use(
#'     fp = fpurrr
#' )
#'
#' df = data.frame(
#'     names = c("Alice", "Bob", "Charlie"),
#'     scores = c(85, 92, 78)
#' )
#'
#' fp$pmap$call(df, function(name, score) paste(name, "scored", score))
#'
#' @export
call = pmap_ns(
    pmap_loose,
    lgl = lgl,
    int = int,
    dbl = dbl,
    chr = chr,
    raw = raw,
    vec = vec,
    df = df,
    dfr = dfr,
    dfc = dfc
)
