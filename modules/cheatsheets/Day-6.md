---
output:
  pdf_document: default
  html_document: default
---
# Day 4 Cheatsheet

## Data Manipulation

### Major concepts:

- `Wide` data - multiple columns per individual, values spread across multiple columns
- `Long` data - multiple rows per observation, a single column contains the values

### Functions
|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| `tidyr`| [`pivot_longer()`](https://tidyr.tidyverse.org/reference/pivot_longer.html)| `df %>% pivot_longer(!column_to_not_touch, names_to = "new_col_with_labels", values_to = "new_col_with_values")`| Lengthens a data frame by increasing the number of rows and decreasing the number of columns.|
| `tidyr`| [`pivot_wider()`](https://tidyr.tidyverse.org/reference/pivot_wider.html)| `df %>% pivot_wider(names_from = "col_with_names", values_from = "col_with_values")`| Widens a data frame by decreasing the number of rows and increasing the number of columns.|

<div style="page-break-after: always;"></div>

## Data Visualization with `esquisse`

### Major concepts

- The `esquisse` package can help you to test out plots and get familiar with the syntax required to make plots

### Functions
|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| `esquisse`| [`esquisser()`](https://cran.r-project.org/web/packages/esquisse/vignettes/get-started.html)| `esquisser(Orange)`| Start an `esquisse` interactive session to create a plot of the given `data.frame` or `tibble`|

\* This format was adapted from the [cheatsheet format from AlexsLemonade](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
