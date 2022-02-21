%{
#include"y.tab.h"
#include<math.h>
%}
%%
[0-9]+|([0-9]*\.[0-9]+) {yylval.dval=atof(yytext);return
NUMBER;}
log {return LOG;}
In {return nLOG;}
sin {return SINE;}
cos {return COS;}
tan {return TAN;}
\n|. return yytext[0];
%%