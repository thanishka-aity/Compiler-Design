%{
    #include<stdio.h>
    int length;
    int fun(int l);
%}

%%
[a-zA-Z0-9]+ { length=yyleng;fun(length);}
\n {return 0;}
%%

 int fun(int l){
   if(yytext[0] == 'A'){
     if(l == 3){
        printf("\n%s is the word with length 3",yytext);
     }
     else{
      printf("\n%s is not of length 3",yytext);
     }
   }
   else{
      printf("\n%s is not starting with a",yytext);
   }
   return 0;
}

int main(){
   printf("enter the words ");
   yylex();
}

int yywrap(){
}
