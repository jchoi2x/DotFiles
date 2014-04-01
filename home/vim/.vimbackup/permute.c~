// Arup Guha
// 6/14/07
// Running version of the permutation example from Dr. Biswas' COP 3502
// notes.

#include <stdio.h>
int modPow(int base, int exp, int n) {

        base = base%n;

            if (exp == 0)
                        return 1;

                else if (exp == 1)
                            return base;

                    else if (exp%2 == 0)
                                return modPow(base*base%n, exp/2, n);

                        else
                                    return base*modPow(base, exp-1, n)%n;
}

int main(){
    int x = 9*4%5;
    printf("%d\n",x);
    printf("%d\n",modPow(9,6,67));
}
