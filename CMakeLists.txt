cmake_minimum_required(VERSION 3.10)
project(scientific_calculator)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(scientific_calculator calculator.cpp main.cpp)

# Link GoogleTest (if you're running tests)
find_package(GTest REQUIRED)
add_executable(test_calculator test_calculator.cpp calculator.cpp)
target_link_libraries(test_calculator GTest::GTest GTest::Main pthread)

