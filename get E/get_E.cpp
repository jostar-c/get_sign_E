#include <fstream>
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cstring>
#define random(x) rand()%(x)
using namespace std;
int sign[22][92],find1[22][92],find2[92],findsum[92];
double score[92];
int sum=0,correct=0,sumfind=0;
int p1=100,p2=100,p3=100,num1=1,num2=16;
FILE *fp;
void getsign()
{
	memset(sign,1,sizeof(sign));
	memset(score,0,sizeof(score));
	for(int i=1;i<=20;i++)
	{
		for(int j=1;j<=90;j++)
		fscanf(fp,"%d,",&sign[i][j]);
		fscanf(fp,"\n");
	}
	for(int j=1;j<=90;j++)
	fscanf(fp,"%lf,",&score[j]);
	fclose(fp);
	return ;
}
void putfind()
{
	for(int i=1;i<=20;i++)
	{
		fprintf(fp,"%s%d%s\t","µÚ",i,"½Ú:");
		for(int j=1;j<=90;j++)
		fprintf(fp,"%d\t",find1[i][j]);
		fprintf(fp,"\n");
	}
	fclose(fp);
	return ;
}
void check(int i,int j)
{
	sum=sum+1;
    find1[i][j]=1;
    find2[j]++;
    if(sign[i][j]==0)
    {
    	correct++;
        sumfind++;
        findsum[j]++;
	}
    return ;
}
void getE()
{
	memset(find1,0,sizeof(find1));
	memset(find2,0,sizeof(find2));
	memset(findsum,0,sizeof(findsum));
	sumfind=0;
	for(int i=1;i<=90;i++)
	if(sumfind<num1&&score[i]<2.5) check(1,i);
	for(int i=2;i<=20;i++)
	{
		sumfind=0;
		for(int j=1;j<=90;j++)
		if(find2[j]-findsum[j]<=4&&sumfind<num1&&findsum[j]!=0)
		{
			if(findsum[j]==1)
			{if(random(100)<p1) check(i,j);}
			else if(findsum[j]==2)
			{if(random(100)<p2) check(i,j);}
			else if(findsum[j]==3)
			{if(random(100)<p3) check(i,j);}
			else if(findsum[j]<num2) check(i,j);
		}
	}
	return ;
}
int main()
{
	srand((int)time(0));
	double E=0;
	
	fp=fopen("lesson1.txt","r");
	getsign();
	getE();
	fp=fopen("find1.xls","w");
	putfind();
	
	fp=fopen("lesson2.txt","r");
	getsign();
	getE();
	fp=fopen("find2.xls","w");
	putfind();
	
	fp=fopen("lesson3.txt","r");
	getsign();
	getE();
	fp=fopen("find3.xls","w");
	putfind();
	
	fp=fopen("lesson4.txt","r");
	getsign();
	getE();
	fp=fopen("find4.xls","w");
	putfind();
	
	fp=fopen("lesson5.txt","r");
	getsign();
	getE();
	fp=fopen("find5.xls","w");
	putfind();
	
	E=1.0*correct/sum;
	cout<<E<<' '<<correct<<' '<<sum;
	return 0;
}
