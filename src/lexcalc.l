%{
#include <stdio.h>
#include "parcalc.h"
%}

%option noyywrap
%option prefix="calcYY"

%%

[ \t] ; 

[0-9]+\.[0-9]+ { 
    calcYYlval.flval = atof(yytext);
    return FLOAT;
}

[0-9]+ {
    calcYYlval.inval = atoi(yytext);
    return INT;
}

- { return MINUS; }

\+ { return PLUS; }

\n {
    yylineno++; 
    return NEWLINE; 
}

. ;

%%
