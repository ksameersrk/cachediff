#include <stdio.h>
int main()
{
    int N;
    scanf("%d", &N);
    int i, j;
    int a[N][N];
    for (i = 0; i < N; ++i)
    {
        for (j=0; j < N; ++j)
        {
            scanf("%d", &a[i][j]);
        }
    }
    for (i = 0; i < N; ++i)
    {
        for (j = 0; j < N; ++j)
        {
            printf("%d ", a[i][j]);
        }
    }
}
