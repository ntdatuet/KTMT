#include<iostream>
using namespace std;
#define MAX 100
 
 
/*Ham nhap vao ma tran*/
void nhap(int a[MAX][MAX],int d,int c)
{
    int i,j;
 
    for(i=0;i<d;i++)
    {
        for(j=0;j<c;j++)
        {
            cout << "phan tu [" << i << "][" << j << "]:"; 
            cin >> a[i][j] ;
        }
    }
}
 
/*Ham in ra ma tran*/
void xuat(int a[MAX][MAX],int d,int c)
{
    int i,j;
    for(i=0;i<d;i++)
    {
        for(j=0;j<c;j++)
        {
            cout << a[i][j] << "   ";
        }
        cout << endl;
    }
}
 
/*Nhan hai ma tran ne*/
void tich(int a[MAX][MAX],int b[MAX][MAX],int t[MAX][MAX],int da,int ca,int cb)
{
    int i,j,k;
    for(i=0;i<da;i++)
    {
        for(j=0;j<cb;j++)
        {
            t[i][j]=0;
            for(k=0;k<ca;k++)
            {
                t[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}


int main()
{

    int a[MAX][MAX],b[MAX][MAX],t[MAX][MAX];
    int da,db,ca,cb,dc,cc;
    cout << "Nhap vao so dong ma tran a:";
    cin >> da;
    cout << "nhap vao so cot ma tran a:";
    cin >> ca;
    nhap(a,da,ca);
    cout << "A: "  << endl;
    xuat(a,da,ca);
    cout << "Nhap vao so dong ma tran b:";
    cin >> db;
    cout << "nhap vao so cot ma tran b:";
    cin >> cb;
    nhap(b,db,cb);
    cout << "B: " << endl;
    xuat(b,db,cb);
 
    tich(a,b,t,da,ca,cb);
    cout << "Tich cua 2 ma tran la:\n";
 
    dc = da;
    cc = cb;
    xuat(t,dc,cc);
 
  
}
