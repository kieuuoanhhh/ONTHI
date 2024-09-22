#include<iostream>
#include<math.h>
using namespace std;
const long MAX = 1000000000;

// Thuat toan tim so chan lon nhat nho hon moi gia tri le co trong mang
void Nhap( int x[], int n)
{
	for(int i = 0; i < n; i++)
	{
		cout << "Nhap x[" << i << "]: ";
		cin >> x[i];
	}
}
int Function(int x[], int n)
{
	long min = MAX;
	for (int i = 0; i < n; i++)
	{
		if(x[i] < min && x[i] % 2 == 1)
		min = x[i];
	}
	if(min == MAX)
	
		return -1;
	else
			return min = -1;
	
}
int main()
{
	int x[100];
	int n;
	cout << " Nhap so phan tu n: ";
	cin >> n;
	Nhap(x, n);
	if(Function(x,n) == -1)
		cout << " Khong co phan tu le";
	else
		cout << " So chan lon nhat nho hon tat ca cac so le la: " <<Function(x, n);
		system("pause");
		return 0;
}

