%{ 
int n = 0 ;  
%} 
  

%% 
  
"while"|"if"|"else" {n++;printf("\n token : %s", yytext);}  
  
"int"|"float" {n++;printf("\n token : %s", yytext);}   
  
[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\n token : %s", yytext);} 
  
"<="|"=="|"="|"++"|"-"|"*"|"+" {n++;printf("\n token : %s", yytext);}
  
[(){}|,;]    {n++;printf("\n token : %s", yytext);} 
  
[0-9]*"."[0-9]+ {n++;printf("\n token : %s", yytext);}  
  
[0-9]+ {n++;printf("\n token : %s", yytext);}                        
  
.    ;
%% 
   
int yywrap(void){}   
int main() 
  
{ 
      
    yylex();
      
    printf("\n total no. of token = %d\n", n);   
       
}
