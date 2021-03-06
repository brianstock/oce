#' @param i Character string indicating the name of item to extract.
#' @param j Optional additional information on the \code{i} item.
#' @param ... Optional additional information (ignored).
#'
#' @description
#' The \code{[[} method works for all \code{oce} objects, i.e.
#' objects inheriting from \code{\link{oce-class}}.  The purpose
#' is to insulate users from the internal details of \code{oce}
#' objects, by looking for items within the various storage
#' slots of the object. Items not actually stored can also be
#' extracted, including derived data, units of measurement,
#' and data-quality flags.
#'
#' @details
#'
#' A two-step process is used to try to find the
#' requested information. First, a class-specific function
#' tries to find it (see
#' \dQuote{Details of the specialized ... method}), but
#' if that fails, then a general function is used
#' (see \sQuote{Details of the general method}). If both
#' fail, \code{NULL} is returned.
#'
#' @section Details of the general method:
#'
#' If the specialized method produces no matches, the following generalized
#' method is applied. As with the specialized method, the procedure hinges
#' first on the value of \code{i}.
#'
#' First, a check is made as to whether \code{i} names one of the standard
#' \code{oce} slots, and returns the slot contents if so. Thus,
#' \code{x[["metadata"]]} will retrieve the \code{metadata} slot,
#' while \code{x[["data"]]} and \code{x[["processingLog"]]} return
#' those slots.
#'
#' Next, if \code{i} is a string ending in the
#' \code{"Unit"}, then the characters preceding that string
#' are taken to be the name of an item in the data object, and a list
#' containing the unit is returned. This list consists of an item
#' named \code{unit}, which is an \code{\link{expression}}, and
#' an item named \code{scale}, which is a string describing the
#' measurement scale.  If the string ends in \code{" unit"}, e.g.
#' \code{x[["temperature unit"]]}, then just the expression is returned,
#' and if it ends in \code{" scale"}, then just the scale is returned.
#'
#' Next, if \code{i} is a string ending in \code{"Flag"}, then the corresponding
#' data-quality flag is returned (or \code{NULL} if there is no such flag).
#' For example, \code{x[["salinityFlag"]]} returns a vector of salinity
#' flags if \code{x} is a ctd object.
#'
#' If none of the preceding conditions are met, a check is done
#' to see if the \code{metadata} slot contains an item with
#' the provided name, and that is returned, if so. A direct match
#' is required for this condition.
#'
#' Finally, the \code{data} slot is checked to see if it contains
#' an item with the name indicated by \code{i}. In this case, a partial
#' match will work; this is accomplished by using \code{\link{pmatch}}.
#'
#' If none of the above-listed conditions holds, then \code{NULL} is returned.
#'
#' @family functions that extract parts of \code{oce} objects


