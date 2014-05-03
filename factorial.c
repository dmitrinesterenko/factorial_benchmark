#include <stdio.h>
#include <time.h>

long factorial(long x){
    if (x ==0) return 1;
    return x*factorial(x-1);
}

int main(int argc, char** argv){
    
   double answer;
    long idx;
   
     time_t start = time(NULL);
    for (answer = 1, idx = 1; idx <= 200000; idx++ ) {
        printf("%f\n", answer);
     answer = answer * idx;
    }
   
    //long it = factorial(100000);
    time_t end = time(NULL);
    printf("%f %f \n",answer, difftime(end, start)/ CLOCKS_PER_SEC);   
}