# automake_and_bison_example
A simple implementation of an arithmetic parser using yacc and lex, then built using automake.

To build and run the calculator:

autoreconf -i (or -fi)
./configure
make

Run using ./src/calculator to have it evaluate the expressions in infile.txt.

The flag arguments in src/Makefile.am can be replaced using the prefix option in Bison 2.6+.
