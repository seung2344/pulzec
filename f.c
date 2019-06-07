#include<stdio.h>
int move[5][6];
char name[5][6][10];

void Save(void)//랭킹 파일 저장하는 함수
{
   FILE* fp=fopen("ranking.txt.","w");

   int temp=0;
   char temp_name[10]={0};

//움직인 횟수 순서대로 재배열하기
   for (int i=0;i<5;i++)
      for(int j=0;j<5-i;j++)
         if(move[i][j]<move[i][j+1])
		 {
            temp=move[i][j];
            move[i][j]=move[i][j+1];
            move[i][j+1]=temp;
            for(int l=0; l<10; l++)
			{
             temp_name[l]=name[i][j][l];
             name[i][j][l]=name[i][j+1][l];
             name[i][j+1][l]=temp_name[l];   
            }
         }

//움직인 횟수 입력 받기
   for (int i = 0;i < 5;i++)
      for (int j = 0;j < 6;j++) {
         fprintf("%d", move[i][j]);
      }
//이름 횟수 입력 받기
   for(int i=0;i<5;i++)
      for(int j=0;j<5;j++)
         for (char k = 0;j < 10;k++) {
            fprintf("%c", name[i][j][k]);
         }


   fclose(fp);
}
