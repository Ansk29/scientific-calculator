#include <iostream>
#include <cmath>
#include "calculator.h"
using namespace std;

// Function to calculate square root
double calculateSquareRoot(double x) {
    if (x < 0) {
        cout << "Error: Cannot calculate square root of a negative number." << endl;
        return -1;
    }
    return sqrt(x);
}

// Function to calculate factorial
double factorial(int n) {
    if (n < 0) {
        cout << "Error: Factorial is not defined for negative numbers." << endl;
        return -1;
    }
    if (n == 0 || n == 1) {
        return 1;
    }
    double result = 1;
    for (int i = 2; i <= n; i++) {
        result *= i;
    }
    return result;
}

// Function to calculate natural logarithm
double calculateNaturalLog(double x) {
    if (x <= 0) {
        cout << "Error: Natural logarithm is only defined for positive numbers." << endl;
        return -1;
    }
    return log(x);
}

// Function to calculate power
double calculatePower(double x, double b) {
    return pow(x, b);
}

