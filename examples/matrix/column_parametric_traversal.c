#include <stdio.h>
#define ROW 1
#define COLUMN 0

void function(int size; int array[][size], int slice, int direction, int size)
{
    int i;
    int index1, index2;
    for(i = 0; i < size; ++i)
    {
        index1 = direction * slice + !direction * i;
        index2 = !direction * slice + direction * i;
        printf("%d ", array[index1][index2]);
    }
}

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
        function(a, i, COLUMN, N);
        printf("\n");
    }
}
