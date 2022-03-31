# Loading and management of the timer database.

# Loading ------

#' Load a Timer database.
#'
#' @description Loads a local or remote Timer immune infiltration database
#' (http://timer.cistrome.org/) and stores it as a timer class object.
#' @param path a path to the database file.
#' @return a \code{\link{timer}} class object.
#' @export

  load_timer <- function(path) {

    timer_db <- readr::read_csv(path)

    av_cell_types <- names(timer_db)[-1]

    names(timer_db) <- c('sample_id', av_cell_types)

    timerTools::timer(timer_db)

  }
