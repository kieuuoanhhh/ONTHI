// Tinh khoang cach trung binh giua cac gia tri trong mang

#include<bits/stdc++.h>
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
float TinhkgTBGiuaCacGiaTriTrongMang(int a[], int n)
{
	int S = 0;
	int dem = 0;
	for( int i = 0; i < n; i++)
	{
		for(int j = i+1;j < n; j++)
		{
			S += abs(a[i] - a[i+1]);
			dem++;
		}
	}
	return (float)S / dem;

}
int main()
{
	int n;
	int a[MAX];
	int x;
	Nhap(a,n);
	Xuat(a,n);
	float d = TinhkgTBGiuaCacGiaTriTrongMang(a,n);
	printf("\nKhoang cach trung binh giua cac gia tri trong mang la: %.4f",d);
	getch();
	return 0;
}

