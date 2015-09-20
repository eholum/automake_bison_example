# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.63])

AC_INIT([calculator], [1.0])

AC_CONFIG_SRCDIR([src/lexcalc.l])
AM_INIT_AUTOMAKE

AM_MAINTAINER_MODE([enable])

# Checks for programs.

AC_PROG_YACC
if test x"$YACC" = "xyacc"; then
  AC_CHECK_PROG([YACC_EXISTS], [yacc], [yes], [no])
  if test x"$YACC_EXISTS" != xyes; then
    AC_MSG_ERROR([[bison/byacc/yacc not found.
          Please install bison]])
  fi
fi

AC_PROG_LEX
if test x"$LEX" = "x:"; then
  AC_MSG_ERROR([Lexer not found. Please install flex.])
fi

AC_PROG_CXX

AC_OUTPUT(Makefile src/Makefile)
