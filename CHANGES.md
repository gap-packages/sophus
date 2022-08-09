This file describes changes in the GAP package 'sophus'.

* 1.27 (2022-08-09)

  - Speed up AreIsomorphicNilpotentLieAlgebras substantially (e.g. the
  `AreIsomorphicNilpotentLieAlgebras( L7[100], L7[100] );` example from
  the manual is 15 times faster now)

* 1.26 (2022-08-05)

  - Make global functions in this package read-only to prevent
    accidents caused by overwriting them with different code
  - Various janitorial changes

* 1.25 (2022-03-01)

  - Add `License` field to `PackageInfo.g`
  - Various janitorial changes

* 1.24 (2018-04-09)

  - Fix immediate method for IsLieNilpotentOverFp to require HasLeftActingDomain
  - Clarify that package is licensed under GPL 2 or later
  - Move package to GitHub
  - Set the GAP team as new package maintainer
  - Use AutoDoc to build the manual
  - Stop using obsolete GAP functionality
  - Other internal (technical) or administrative changes

* 1.23 (2006-02-03)

* 1.22 (2005-08-30)

* 1.21 (2005-08-30)

* 1.12 (2004-10-18)

* 1.1 (2004-06-22)

* 1.0 (2004-06-22)
