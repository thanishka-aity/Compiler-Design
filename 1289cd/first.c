#include<stdio.h>
#include<ctype.h>

void FIRST(char[],char);
void addtoresultset(char[],char);
int noofproductions;
char productionset[10][10];

int main(){
   int i;
   char c,choice;
   char result[20];
   
   printf("Enter no of productions : ");
   scanf("%d",&noofproductions);
  // printf("the no of productions %d",noofproductions);
   
   for(i=0; i<noofproductions ;i++)
   {
    printf("enter production number %d:",i+1);
    scanf("%s",productionset[i]);
   }
   
   do{
       printf("\n find the first of :");
       scanf(" %c",&c);
       //scanf(" %c",&c);
       FIRST(result,c);
       printf("The first(%c) = { ",c);
       for(i=0; result[i]!='\0'; i++)
         printf("%c",result[i]);
         printf("}\n");
         printf("press y to continue :");
         scanf("%c",&choice);
    }while(choice == 'y' || choice == 'Y');
}    


void FIRST(char* result ,char c){
   //printf("hey iam entered");
   int i,j,k;
   char subresult[20];
   result[0] = '\0';
   subresult[0] = '\0';
   int foundepsilon;
   
   if(!(isupper(c))){
     addtoresultset(result,c);
     return;
   }
   
   for(i=0; i<noofproductions; i++){
     if( productionset[i][0] == c){
        if( productionset[i][2] == '$') 
        addtoresultset(result,'$');
        
        else{
            j=2;
            while(productionset[i][j] != '\0'){
               foundepsilon = 0;
               FIRST(subresult,productionset[i][j]);
               
               for(k=0; subresult[k]!='\0'; k++){
                  addtoresultset(result,subresult[k]);
               }
               
               for(k=0; subresult[k]!='\0'; k++){
                   if(subresult[k]=='$'){
                     foundepsilon = 1;
                     break;
                   }
                   if(!foundepsilon)
                   break;
                  j++;
               }
            }
        }
      }
    }
  return;
}

void addtoresultset(char result[],char val){
   int k;
   for(k=0; result[k]!='\0'; k++)
      if(result[k] == val)
      return ;
   result[k] = val;
   result[k+1] = '\0';
}
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
