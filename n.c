#include <stdio.h>

void Ranking(char name[5][6][10], int move[5][6])//랭킹함수
{
	FILE* fp=fopen("ranking.txt","w");
	
	int i,j;
	int temp=0;
	char k;
//문자열 입력받고 출력하기
	for(int i=0;i<5;i++){
		for(int j=0;j<6;j++){
			for(char k=0;k<10;k++)
			{
				fscanf("%c",&name[i][j][k]);
				fprintf("%c",name[i][j][k]);
			}
			fprintf("\n");}
	fprintf("\n");}

//움직인 횟수  입력받기
	for(int i=0;i<5;i++)
		for(int j=0;j<6;j++)
		{
			fscanf("%d",&move[i][j]);
		}
//움직인 횟수 순서대로 재배열하기
	for(int i=0;i<5;i++)
	{
		for(int j=0;j<5-i;j++)
		{
			if(move[j]<move[j+1])
			{
				temp=move[j];
				move[j]=move[j+1];
				move[j+1]=temp;
			}
		}
	}
//순서대로 배열한거 출력하기
	for(int i=0;i<5;i++){
		for(int j=0;j<6;j++)
		{
			fprintf("%d",move[j]);
		}
	fprintf("\n");}

