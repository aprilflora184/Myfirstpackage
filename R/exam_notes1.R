#' Exam Notes 1: Basic R Functions, Time Formatting, and Visualization
#'
#' Provides a cheat sheet with notes on basic R functions, time formatting,
#' and visualization techniques.
#'
#' @return A string containing formatted exam notes for quick reference.
#' @examples
#' exam_notes1()
#' @export
exam_notes1 <- function() {
  paste(
    "### Basic R Functions",
    "- **rep(x, times, each, length.out)**: Repeat values in various ways.",
    "  - `rep(5, times=3)` -> 5, 5, 5",
    "  - `rep(1:3, each=2)` -> 1, 1, 2, 2, 3, 3",
    "  - `rep(1:3, length.out=7)` -> 1, 2, 3, 1, 2, 3, 1",
    "- **seq(from, to, by)**: Generate sequences.",
    "  - `seq(1, 10, 2)` -> 1, 3, 5, 7, 9",
    "  - `seq(5, -5, -2)` -> 5, 3, 1, -1, -3, -5",
    "- **head(x, n=6)**: View the first n rows of data. Example: `head(mtcars, 3)` -> First 3 rows of `mtcars`.",
    "- **write.csv(df, file)**: Save a data frame to a .csv file. Example: `write.csv(mtcars, 'cars.csv', row.names=FALSE)`",
    "- **sample(x, size, replace=F, prob=NULL)**: Random sampling.",
    "  - `sample(1:10, 5)` -> Random 5 numbers from 1 to 10 without replacement.",
    "  - `sample(c('A','B','C'), size=4, replace=TRUE, prob=c(0.5,0.3,0.2))`: \"A\" has a 50% chance, \"B\" 30%, \"C\" 20%.",
    "- **paste(..., sep, collapse)**: Combine strings.",
    "  - `paste('Hello', 'World', sep=' ')` -> 'Hello World'",
    "  - `paste(c('a', 'b'), collapse=',')` -> 'a,b'",
    "",
    "---",
    "",
    "### Time Formatting",
    "- **Format Codes for Dates/Times**:",
    "  - `%Y`: Year (4 digits). `%y`: Year (last 2 digits).",
    "  - `%m`: Month. `%d`: Day of the month.",
    "  - `%H`: Hour (24-hour). `%I`: Hour (12-hour).",
    "  - `%M`: Minute. `%S`: Second. `%p`: AM/PM.",
    "  - Example: `format(Sys.Date(), '%Y-%m-%d')` -> '2025-01-24'.",
    "",
    "---",
    "",
    "### Visualization",
    "- **plot(x, y)**: Quick scatterplot.",
    "  - Example: `plot(mtcars$mpg, mtcars$hp)`",
    "- **ggplot2**: Flexible visualizations.",
    "  - **Basic**: `ggplot(df, aes(x, y)) + geom_point()`",
    "  - **Regression**: Add a line: `geom_smooth(method='lm', se=FALSE)`",
    "  - **Customizations**:",
    "    - Use `aes(color=var)` or `aes(shape=var)` for grouping.",
    "    - Clean layout: Add `theme_bw()` or `theme_minimal()`.",
    "    - Example with jitter:",
    "      ggplot(df, aes(x, y)) +",
    "        geom_jitter(width=0.2, height=0.2) +",
    "        geom_smooth(method='lm') +",
    "        theme_bw()",
    "- **par(mfrow=c(r, c))**: Multi-panel plots.",
    "  - Example: `par(mfrow=c(2, 2)); plot(x, y); hist(z); boxplot(w); plot(q)`",
    sep = "\n"
  )
}
