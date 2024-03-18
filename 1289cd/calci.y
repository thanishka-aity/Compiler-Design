%{
  #include<stdio.h>
  int flag=0;
%}
%token NUMBER;
%left '+''-'
%left '*''/''%'
%left '('')'

%%
ArthmeticExpression: E{
printf("\nResult = %d\n",$$);
return 0;
}
E:E '+' E {$$=$1+$3;}
|E '-' E {$$=$1-$3;}
|E '*' E {$$=$1*$3;}
|E '/' E {$$=$1/$3;}
|E '%' E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

void main(){
  printf("\n Enter any arithmatic exp including +,-,/,*,%,():\n");
  yyparse();
  if(flag==0){
     printf("\n Entered arithmatic exp is valid\n");
  }
}

void yyerror()
{
 printf("\n Entered arithmatic exp is Invalid \n\n");
 flag = 1;
}








