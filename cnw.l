%{
#include <stdio.h>
int tokenCount=0, num=0, iden=0;
%}
/* rules */
%%
[0123456789]+     { num++; printf("%d CONSTANT \"%s\"\n", ++tokenCount, yytext); }
[a-zA-Z]+         { iden++; printf("%d IDENTIFIER \"%s\"\n", ++tokenCount, yytext); }
[a-zA-Z][a-zA-Z0-9]*  { printf("%d OTHER \"%s\"\n", ++tokenCount,yytext); }
%%
/* code (main) */
int main()
{
        yylex();
		printf("\n Number of Constants= %d", num);
		printf("\n Number of Identifiers= %d", iden);
}
int yywrap(){return(1);}
