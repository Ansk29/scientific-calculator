cmake_minimum_required(VERSION 3.10)
project(scientific_calculator)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Main executable
add_executable(scientific_calculator calculator.cpp main.cpp)

# GoogleTest Setup
find_package(GTest REQUIRED)
enable_testing()  # Enables CTest framework

add_executable(test_calculator test_calculator.cpp calculator.cpp)
target_link_libraries(test_calculator GTest::GTest GTest::Main pthread)

# Register the test so that CTest can discover it
add_test(NAME CalculatorTests COMMAND test_calculator)

