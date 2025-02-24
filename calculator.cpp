#include <iostream>
#include <cmath>
using namespace std;

//testing changes
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

// Function to display menu
void displayMenu() {
    cout << "\nScientific Calculator" << endl;
    cout << "1. Square Root (√x)" << endl;
    cout << "2. Factorial (x!)" << endl;
    cout << "3. Natural Logarithm (ln(x))" << endl;
    cout << "4. Power Function (x^b)" << endl;
    cout << "5. Exit" << endl;
    cout << "Enter your choice (1-5): ";
}

int main() {
    int choice;
    double x, b;
    double result;  // Variable to store calculation results

    do {
        displayMenu();
        cin >> choice;

        switch (choice) {
            case 1:
                cout << "Enter number (x): ";
                cin >> x;
                result = calculateSquareRoot(x);
                if (result != -1) {
                    cout << "Square root of " << x << " = " << result << endl;
                }
                break;

            case 2:
                cout << "Enter number (x): ";
                cin >> x;
                if (x != floor(x)) {
                    cout << "Error: Factorial is only defined for integers." << endl;
                } else {
                    result = factorial(static_cast<int>(x));
                    if (result != -1) {
                        cout << x << "! = " << result << endl;
                    }
                }
                break;

            case 3:
                cout << "Enter number (x): ";
                cin >> x;
                result = calculateNaturalLog(x);
                if (result != -1) {
                    cout << "ln(" << x << ") = " << result << endl;
                }
                break;

            case 4:
                cout << "Enter base (x): ";
                cin >> x;
                cout << "Enter exponent (b): ";
                cin >> b;
                result = calculatePower(x, b);
                cout << x << "^" << b << " = " << result << endl;
                break;

            case 5:
                cout << "Thank you for using the Scientific Calculator!" << endl;
                break;

            default:
                cout << "Invalid choice! Please enter a number between 1 and 5." << endl;
        }
    } while (choice != 5);

    return 0;
}
