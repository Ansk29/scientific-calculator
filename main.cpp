#include <iostream>
#include "calculator.h"

using namespace std;

int main() {
    cout << "Scientific Calculator Running..." << endl;

    while (true) {
        cout << "\nChoose an operation:\n";
        cout << "1. Square Root\n";
        cout << "2. Factorial\n";
        cout << "3. Natural Logarithm (ln)\n";
        cout << "4. Power (x^b)\n";
        cout << "5. Exit\n";
        cout << "Enter your choice: ";

        int choice;
        cin >> choice;

        if (choice == 5) {
            cout << "Exiting calculator. Goodbye!" << endl;
            break;
        }

        double num, base, exponent;
        int n;
        switch (choice) {
            case 1:
                cout << "Enter a number: ";
                cin >> num;
                cout << "Square Root: " << calculateSquareRoot(num) << endl;
                break;
            case 2:
                cout << "Enter an integer: ";
                cin >> n;
                cout << "Factorial: " << factorial(n) << endl;
                break;
            case 3:
                cout << "Enter a number: ";
                cin >> num;
                cout << "Natural Log: " << calculateNaturalLog(num) << endl;
                break;
            case 4:
                cout << "Enter base and exponent (x b): ";
                cin >> base >> exponent;
                cout << "Result: " << calculatePower(base, exponent) << endl;
                break;
            default:
                cout << "Invalid choice. Try again!" << endl;
        }
    }

    return 0;
}

