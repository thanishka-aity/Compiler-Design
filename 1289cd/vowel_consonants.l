%{     int vowel_count=0;
     int const_count=0;
%}

%%
[aeiouAEIOU] {vowel_count++;}
[a-zA-Z] {const_count++;}
\n return 0;
%%

int yywrap(){
}

int main(){
      printf("enter the string of vowels and consonants: ");
      yylex();
      printf("no of vowels = %d \nno of consonants = %d",vowel_count,const_count);
      return 0;
}


