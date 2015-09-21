# automake_and_bison_example
I was having a lot of trouble getting bison and yacc to build with changes that we had made in a package that uses a parser. So I setup this simple example with a few of the features that were giving me trouble. The lesson learned is that it is worth really reading the documentation about having multiple parsers in a package twice - and being particularly careful about naming your extern ints.

A simple implementation of an arithmetic parser using yacc and lex, then built using automake.

To build and run the calculator:

autoreconf -i (or -fi)

./configure

make

Run using ./src/calculator to have it evaluate the expressions in infile.txt.

The flag arguments in src/Makefile.am can be replaced using the prefix option in Bison 2.6+.
