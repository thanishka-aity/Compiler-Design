%{  
    #include<stdio.h>
    int intcount=0,floatcount=0;
%}

%%
[0-9]*"."[0-9]+ {floatcount++;ECHO;printf("\nFloat Number\n");}
[0-9]+ {intcount++;ECHO;printf("\nInteger Number\n");}
\n return 0;//cntrl d
%%

int main(){
    printf("enter your numbers: ");
    yylex();
    printf("no of integers = %d \nno of floats = %d",intcount,floatcount);
}

int yywrap(){
}
