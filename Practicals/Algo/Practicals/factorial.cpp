#include <iostream>
using namespace std;

int main() {
    int f = 1;
    int n;
    cin >> n;
    for (int i = 1; i <= n; i++) {
       f=f*i; 
    }
    cout << "Factorial of " << n << " = " << f;
    return 0;
}