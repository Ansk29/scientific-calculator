#include <gtest/gtest.h>
#include "calculator.h"

// Test for Square Root
TEST(CalculatorTest, SquareRoot) {
    EXPECT_DOUBLE_EQ(calculateSquareRoot(4), 2.0);
    EXPECT_DOUBLE_EQ(calculateSquareRoot(9), 3.0);
}

// Test for Factorial
TEST(CalculatorTest, Factorial) {
    EXPECT_EQ(factorial(5), 120);
    EXPECT_EQ(factorial(0), 1);
}

// Test for Natural Logarithm
TEST(CalculatorTest, NaturalLog) {
    EXPECT_DOUBLE_EQ(calculateNaturalLog(1), 0.0);
}

// Test for Power Function
TEST(CalculatorTest, Power) {
    EXPECT_DOUBLE_EQ(calculatePower(2, 3), 8.0);
    EXPECT_DOUBLE_EQ(calculatePower(5, 0), 1.0);
}

// Main function to run tests
int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

