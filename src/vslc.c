#include <stdio.h>
#include <stdlib.h>
#include <vslc.h>

node_t *root;

//extern FILE* yyin;

int
main ( int argc, char **argv )
{
    yyparse();
    //yyin = stdin;
    //yylex();
    node_print ( root, 0 );
    destroy_subtree ( root );
}
