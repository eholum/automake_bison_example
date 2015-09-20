%{
#include <stdio.h>
%}

%token INT FLOAT PLUS MINUS NEWLINE;

%union {
    int inval;
    float flval;
    char oper;
    char result[100];
}

%type <inval> INT;
%type <flval> calc FLOAT
%type <oper> PLUS MINUS;
%type <result> line;

%%

lines:
      line lines
    | line
    ;

line:
      NEWLINE
    | calc NEWLINE {
        printf("Result = %f\n", $1);   
      }
    ;

calc :
      calc PLUS calc { 
        ($$ = $1 + $3);
      }
    | calc MINUS calc { 
        ($$ = $1 - $3); 
      }
    | INT { 
        ($$ = $1);
      }
    | FLOAT { 
        ($$ = $1); 
      }
    ;

%%

extern int calcYYparse();
extern FILE *calcYYin;

int main() {
    
    FILE *myfile = fopen("infile.txt", "r");

    if (!myfile) {
        fprintf(stderr, "can't open infile.txt\n");
        return 1;
    }
    
    calcYYin = myfile;

    do {
        calcYYparse();
    } while (!feof(calcYYin));

    return 0;
}

void calcYYerror(const char* s) {
    fprintf(stderr, "Error! %s\n", s);
    exit(-1);
}
