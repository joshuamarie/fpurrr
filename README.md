
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

<!-- badges: end -->

# fpurrr

A package / module, only be accessed by `box::use()`, is a restructured
version of `{purrr}` in a complete modular version (e.g. having
hierarchical structure, not a flat structure unlike `R/` from a
traditional R packages). Take note that this is not an R package,
although it is still a package but on complete different world (similar
to Python packages).

## Installation

`{fpurrr}` is only accessible via `carrier` installation.

Install `carrier` first (see the
[guide](https://github.com/joshuamarie/carrier#installation)). Then
install the package via terminal:

``` bash
carrier install gh:joshuamarie/fpurrr
```

You must install `{box}` from the [forked
version](https://github.com/joshuamarie/box) of the [original
repo](https://github.com/klmr/box) through:

``` r
# install.packages(pak)
pak::pak("joshuamarie/box@carrier-module-support")
```

Since the patches are applied only on this forked version under
`carrier-module-support` branch.

## Usage

`{fpurrr}` is still `{purrr}` but with actual true and hierarchical
structure of a package. Let’s take an example:

``` r
box::use(
    fp = fpurrr, 
    fpurrr/map,   # or fpurrr[map]
)
```

`fp` is an aliased `{fpurrr}` module, which carries the whole imports
without attaching the names, so everything are found inside. Since
`fpurrr/map` was also imported directly, the `map` submodule is
available on its own, without going through the `fp` alias.

### Examples

*Note: Both paths reach the same underlying code, so `fp$map` and `map`
are interchangeable.*

Here’s a demo:

1.  Without types

    ``` r
    fp$map$call(1:5, sqrt)
    #> [[1]]
    #> [1] 1
    #> 
    #> [[2]]
    #> [1] 1.414214
    #> 
    #> [[3]]
    #> [1] 1.732051
    #> 
    #> [[4]]
    #> [1] 2
    #> 
    #> [[5]]
    #> [1] 2.236068
    map$call(1:5, sqrt)
    #> [[1]]
    #> [1] 1
    #> 
    #> [[2]]
    #> [1] 1.414214
    #> 
    #> [[3]]
    #> [1] 1.732051
    #> 
    #> [[4]]
    #> [1] 2
    #> 
    #> [[5]]
    #> [1] 2.236068
    ```

2.  With types

    ``` r
    fp$map$call@dbl(1:5, sqrt)
    #> [1] 1.000000 1.414214 1.732051 2.000000 2.236068
    map$call@dbl(1:5, sqrt)
    #> [1] 1.000000 1.414214 1.732051 2.000000 2.236068
    ```

## Dependencies

`{fpurrr}` currently depends on:

- [`{rlang}`](https://rlang.r-lib.org/)
- [`{purrr}`](https://purrr.tidyverse.org/)
- [`{S7}`](https://rconsortium.github.io/S7/)

These install automatically the first time you run
`carrier install --install-deps gh:joshuamarie/fpurrr`.
