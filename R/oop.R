# OOP for the timer class. Still in development. The class is build on the top
# of tidyverse's tibble and inherits most of its methods enabling handy
# filtering, joining and manipulation of the entries

# Constructor ------

#' Create a timer class object.
#'
#' @description Creates a timer object storing a database with the Timer 2.0
#' immune infiltration estimates.
#' @details Technically, inherits most of the methods from
#' \code{\link[tibble]{tibble}}. Has an attribute 'cell_types' storing the
#' available cell types.
#' @param x an object of the tibble class.
#' @param ... extra arguments, currently none specified.
#' @return an object of the class timer.
#' @export

  timer <- function(x, ...) {

    structure(x,
              cell_types = names(x)[-1],
              class = c('timer_db',
                        'tbl_df',
                        'tbl',
                        'data.frame'))

  }

# END -----
