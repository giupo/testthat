\name{throws_error}
\alias{expect_error}
\alias{throws_error}
\title{Expectation: does expression throw an error?}
\usage{
throws_error(regexp = NULL, ...)

expect_error(object, regexp = NULL, ..., info = NULL, label = NULL)
}
\arguments{
  \item{regexp}{optional regular expression to match. If
  not specified, just asserts that expression throws some
  error.}

  \item{...}{other arguments passed to
  \code{\link{matches}}}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
Expectation: does expression throw an error?
}
\examples{
f <- function() stop("My error!")
expect_that(f(), throws_error())
expect_error(f())
expect_that(f(), throws_error("My error!"))
expect_error(f(), "My error!")

# You can use the arguments of grepl to control the matching
expect_error(f(), "my error!", ignore.case = TRUE)
}
\seealso{
Other expectations: \code{\link{equals}},
\code{\link{expect_equal}};
\code{\link{expect_equivalent}},
\code{\link{is_equivalent_to}}; \code{\link{expect_false}},
\code{\link{is_false}}; \code{\link{expect_identical}},
\code{\link{is_identical_to}}; \code{\link{expect_is}},
\code{\link{is_a}}; \code{\link{expect_match}},
\code{\link{matches}}; \code{\link{expect_message}},
\code{\link{shows_message}}; \code{\link{expect_output}},
\code{\link{prints_text}}; \code{\link{expect_true}},
\code{\link{is_true}}; \code{\link{expect_warning}},
\code{\link{gives_warning}}; \code{\link{takes_less_than}}
}

