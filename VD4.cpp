#include<stdio.h>>
#include<conio.h>
#include<math.h>
#define MAX 10000
using namespace std;
void Nhap(int a[], int &n)
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
		scanf("%d", &a[i]);
	}
}
void Xuat(int a[], int n)
{
	for(int i = 0; i < n; i++)
	{
		printf("%4d",a[i]);
	}
}
void LietKe(int a[], int n)
{
	int flag = 0;
	for(int i = 0; i < n; i++)
	{
		//dk
		if(a[i] % 2 == 0 && (a[i - 1] %2 ==0 || a[i+1] % 2 == 0 ))
		{
			flag = 1;
			printf("%4d",a[i]);
		}
	}
	if( flag == 0)
	printf(" \nKhong co gia tri thoa man ");
}

int main()
{
	int n;
	int a[MAX];
	Nhap(a, n);
	Xuat(a, n);
	printf("\n Cac so co gia tri chan co it nhat mot lan can cung la gia tri chan la : ");
	LietKe(a, n);
	getch();
	return 0;

}

