bin_PROGRAMS = calculator

#Override the prefix name - this has been replaced in Bison 2.6+
AM_YFLAGS = -d -p"calcYY"

# You need this to get automake/ylwrap to correctly generate the lex.c file.
AM_LFLAGS = -o lex.yy.c

calculator_SOURCES = parcalc.y lexcalc.l
