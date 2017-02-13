%{
#include <vslc.h>
%}
%option noyywrap
%option array
%option yylineno

LETTER          [A-Za-z_]
DIGIT           [0-9]
WHITESPACE      [\t\n\r\v ]
COMMENT         \/\/.*\n

NUMBER          {DIGIT}+
STRING          \"([^\n\"]|\\\")*\"
IDENTIFIER      {LETTER}({LETTER}|{DIGIT})*

%%
FUNC                    { return FUNC; }
BEGIN                   { return OPENBLOCK; }
END                     { return CLOSEBLOCK; }
RETURN                  { return RETURN; }
PRINT                   { return PRINT; }
CONTINUE                { return CONTINUE; }
IF                      { return IF; }
THEN                    { return THEN; }
ELSE                    { return ELSE; }
WHILE                   { return WHILE; }
DO                      { return DO; }
VAR                     { return VAR; }
{WHITESPACE}            {  }
{COMMENT}               {  }
{NUMBER}                { return NUMBER; }
{STRING}                { return STRING; }
{IDENTIFIER}            { return IDENTIFIER; }
.                       { return yytext[0]; }
%%
