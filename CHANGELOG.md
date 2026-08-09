# CHANGELOG

## v0.9.0-dev

* Remove the deprecated positional format API, pass `format: :raw` in the options instead
* Remove the Mandelbrot query
* Remove heuristic missing foreign key index and constraint checks
* Require Elixir 1.15 or later

## v0.8.8 (2025-05-23)

* Fix foreign key detection regexes on Erlang/OTP 28

## v0.8.7 (2025-02-16)

* Support all TableRex 4.x releases

## v0.8.6 (2025-02-05)

* Remove the upper version bound for Postgrex

## v0.8.5 (2025-02-05)

* Treat `staff` as an uncountable word when detecting foreign key columns

## v0.8.4 (2025-02-03)

* Add queries for detecting missing foreign key indexes and constraints
* Include missing foreign key indexes and constraints in the diagnose report
* Fix bloat diagnosis when Postgrex returns values as `Decimal` structs

## v0.8.3 (2024-12-03)

* Support formatting Elixir `Duration` values returned by Postgrex
* Fix deprecated zero-arity function calls on recent Elixir versions

## v0.8.2 (2024-10-09)

* Support PostgreSQL 17 and pg_stat_statements v1.11

## v0.8.1 (2024-08-09)

* Support Postgrex v0.19
* Support Elixir 1.17 and Erlang/OTP 27

## v0.8.0 (2024-05-22)

* Support Postgrex v0.18
