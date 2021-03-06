% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/order.R
\name{order-placement}
\alias{order-placement}
\alias{fly_order}
\alias{fly_order_value}
\alias{fly_order_percent}
\alias{fly_order_target}
\alias{fly_order_target_value}
\alias{fly_order_target_percent}
\title{Order placement}
\usage{
fly_order(asset, amount, limit_price = NULL, stop_price = NULL,
  style = NULL)

fly_order_value(asset, value, limit_price = NULL, stop_price = NULL,
  style = NULL)

fly_order_percent(asset, percent, limit_price = NULL, stop_price = NULL,
  style = NULL)

fly_order_target(asset, target, limit_price = NULL, stop_price = NULL,
  style = NULL)

fly_order_target_value(asset, target, limit_price = NULL, stop_price = NULL,
  style = NULL)

fly_order_target_percent(asset, target, limit_price = NULL,
  stop_price = NULL, style = NULL)
}
\arguments{
\item{asset}{The asset that this order is for.}

\item{amount}{An integer. The amount of shares to order. If amount is
positive, this is the number of shares to buy or cover. If amount is negative,
this is the number of shares to sell or short.}

\item{limit_price}{Optional. The limit price for the order.}

\item{stop_price}{Optional. The stop price for the order.}

\item{style}{The execution style for the order. The default is \code{MarketOrder}.
See \code{?MarketOrder} for other execution styles.}

\item{value}{If the requested asset exists, the requested value is divided by
its price to imply the number of shares to transact. If the Asset being
ordered is a Future, the ‘value’ calculated is actually the exposure,
as Futures have no ‘value’. If positive, buy/cover. If negative, sell/short.}

\item{percent}{The percentage of the portfolio value to allocate to \code{asset}.
This is specified as a decimal, for example: \code{0.50} means 50 percent.}

\item{target}{The new \code{amount}, \code{value}, or \code{percent} to adjust to depending
on the order target function called.}
}
\description{
Place various types of orders according to amounts, percentages, and targets.
Orders can be specified as market, limit, stop, or stop-limit.
}
\details{
The limit_price and stop_price arguments provide shorthands for passing
common execution styles. Passing \code{limit_price=N} is equivalent to
\code{style=LimitOrder(N)}. Similarly, passing \code{stop_price=M} is equivalent to
\code{style=StopOrder(M)}, and passing \code{limit_price=N} and \code{stop_price=M}
is equivalent to \code{style=StopLimitOrder(N, M)}.
It is an error to pass both a style and limit_price or stop_price.
\itemize{
\item \code{fly_order()} - Place an order.
\item \code{fly_order_value()} - Place an order by desired value rather than desired
number of shares.
\item \code{fly_order_percent()} - Place an order in the specified asset corresponding
to the given percent of the current portfolio value.
\item \code{fly_order_target()}, \code{fly_order_target_value()}, \code{fly_order_target_percent()} - Place an order to adjust a position to a target
number of shares, value, or percent. If the position doesn’t already exist, this is equivalent
to placing a new order. If the position does exist, this is equivalent to
placing an order for the difference between the target number of shares, value, or percent
and the current number of shares, value, or percent.
}
}
\section{Zipline Documentation}{

\itemize{
\item \href{https://www.zipline.io/appendix.html#zipline.api.order}{fly_order()}
\item \href{https://www.zipline.io/appendix.html#zipline.api.order_value}{fly_order_value()}
\item \href{https://www.zipline.io/appendix.html#zipline.api.order_percent}{fly_order_percent()}
\item \href{https://www.zipline.io/appendix.html#zipline.api.order_target}{fly_order_target()}
\item \href{https://www.zipline.io/appendix.html#zipline.api.order_target_value}{fly_order_target_value()}
\item \href{https://www.zipline.io/appendix.html#zipline.api.order_target_percent}{fly_order_target_percent()}
}
}

