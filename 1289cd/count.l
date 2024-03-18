%{
    int lc=1,space=0,ch=0,tc=0,wc=0,c=0;
%}

%%
">" {return 0;} //cnrl d
\n {lc++;}
([ ])+ {space++;}
\t {tc++;}
[a-zA-Z0-9]+ {wc++;c=c+yyleng;}
. {ch++;c++;}
%%

int main(){
   printf("enter the your string: ");
   yylex();
   printf("\nNo of line-count = %d",lc);
   printf("\nNo of space-count = %d",space);
   printf("\nNo of tab-count = %d",tc);
   printf("\nNo of character-count = %d",c);
   printf("\nNo of word-count = %d",wc);
}

int yywrap(){
}
