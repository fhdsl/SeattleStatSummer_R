# Day 3 Cheatsheet

## Subsetting Data in R

### Functions
|Library/Package|Piece of code|Example of usage|What it does|
|---------------|-------------|----------------|-------------|
| Base `R`| [`nrow(x)`; `ncol(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/nrow)|`nrow(x)`; `ncol(x)`| Get the number of rows and the number of columns in an object `x`, respectively.|
| Base `R`| [`dim(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/dim)|`dim(x)`| Get the number of rows _and_ number of columns in an object `x`|
| `dplyr`| [`glimpse(x)`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/dim)|`glimpse(mtcars)`| Get an overview of data frame `x`|
| Base `R`| [`data.frame()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/data.frame)| `df <- data.frame(1:3)`| Creates a data frame where the named arguments will be the same length.|
| Base `R`| [`tibble()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/data.frame)| `tibble(mtcars)`| Creates a tibble from a data.frame or matrix. |
| `dplyr`| [`rename()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/select)|`df <- rename(df, MPG = mpg)`| Renames designated columns while keeping all variables of the data.frame |
| `dplyr`| [`pull()`](https://dplyr.tidyverse.org/reference/pull.html)|`pull(df, 'existing_variable_name')`| Extract a column as a vector |
| `dplyr`| [`select()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/select)|`select(df, 'existing_variable_name')`| Selects columns that match the specified argument|
| `dplyr`| [`filter()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/filter)|`filter(df, mpg > 20)`| Returns a subset of rows matching the conditions of the specified logical argument|
| Base `R`| [`==, <=, >=, !=`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Comparison.html)|`filter(df, mpg > 20)`| These are binary operators which allow for the comparison of values in an object. They are handy for use with `filter()`|
| Base `R`| [`%in%`](http://www.datasciencemadesimple.com/in-operator-in-r/)|`filter(df, mpg %in% c(20,21,22))`| Checks if the given value(s) on the left side of the operator are in the vector or other R object defined on the right side of the operator. It returns a logical `TRUE` or `FALSE` statement.|
| `dplyr`| [`%>%`](https://www.rdocumentation.org/packages/magrittr/versions/1.5/topics/%25%26gt%3B%25)|`df <- df %>% select('new_variable_name')`| Funnels a data.frame through tidyverse operations |
| `dplyr`| [`mutate()`](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/mutate)| `df <- mutate(df, newcol = wt/2.2)`| Adds a new column that is a function of existing columns|
| `dplyr`| [`recode()`](https://dplyr.tidyverse.org/reference/case_when.html)| `df <- mutate(df, mpg = recode(mpg, oldval = newval)`|This function allows you to recode based on conditions.
| `dplyr`| [`case_when()`](https://dplyr.tidyverse.org/reference/case_when.html)| `df <- mutate(df, mpg = case_when(mpg, mpg > value ~ newvalue)`|This function allows you to recode based on conditions. Anything not specified will become an NA. 
- See [tidyselect helpers for handy things to use with `select()`](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html).

\* This format was adapted from the [cheatsheet format from AlexsLemonade](https://github.com/AlexsLemonade/training-modules/tree/master/module-cheatsheets).
