// Cho mang so thuc nhieu hon 2 vi tri va cac gia tri trong mang khac nhau tung doi mot
// Hay viet ham 2 gia tri gan nhau nhat trong mang

#include<bits/stdc++.h>
#include<conio.h>
#include<math.h>
#define MAX 10000
 
using namespace std;
void Nhap(float a[], int &n)
{
	do
	{
		printf("\nNhap so phan tu: ");
		scanf("%d",&n);
		if(n <= 0 || n> MAX)
		{
			printf("\nSo phan tu khong hop le ");
		}
	}
	while (n <= 0 || n > MAX);
	for(int i = 0; i < n; i++)
	{
		printf("\nNhap a[%d]: ",i);
		scanf("%f", &a[i]);
	}
}
void Xuat(float a[], int n)
{
	for(int i = 0; i < n; i++)
	{
		printf(" %4.3f ", a[i]);
	}
}
void Func(float a[], int n)
{
	int i,j;
	float KhoangCachGanNhat = (abs)(a[0] - a[1]);
	for(i = 0;i < n; i++){
		for( j = i+1; j< n;j++)
		{
			if((abs)(a[i] - a[j]) < KhoangCachGanNhat)
			{
			
			KhoangCachGanNhat = (abs)(a[i] - a[j]);
		}
		}
	}
	printf("\n Cap gia tri gan nhau nhat: \n");
	for( i = 0; i< n; i++)
	{
		for(j = i+1;j < n; j++)
		{
			if((abs)(a[i]-a[j]) == KhoangCachGanNhat)
			{
				printf("\t<%.4f,%.4f> vi tri <a[%d],a[%d]>\n", a[i],a[j],i,j);
			}
		}
	}
}

int main()
{
	int n;
	float a[MAX];
	Nhap(a,n);
	Xuat(a,n);
	Func(a,n);
	getch();
	return 0;

}

