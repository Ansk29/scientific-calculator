# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build

# Include any dependencies generated for this target.
include CMakeFiles/scientific_calculator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/scientific_calculator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/scientific_calculator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scientific_calculator.dir/flags.make

CMakeFiles/scientific_calculator.dir/calculator.cpp.o: CMakeFiles/scientific_calculator.dir/flags.make
CMakeFiles/scientific_calculator.dir/calculator.cpp.o: ../calculator.cpp
CMakeFiles/scientific_calculator.dir/calculator.cpp.o: CMakeFiles/scientific_calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/scientific_calculator.dir/calculator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/scientific_calculator.dir/calculator.cpp.o -MF CMakeFiles/scientific_calculator.dir/calculator.cpp.o.d -o CMakeFiles/scientific_calculator.dir/calculator.cpp.o -c /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/calculator.cpp

CMakeFiles/scientific_calculator.dir/calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scientific_calculator.dir/calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/calculator.cpp > CMakeFiles/scientific_calculator.dir/calculator.cpp.i

CMakeFiles/scientific_calculator.dir/calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scientific_calculator.dir/calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/calculator.cpp -o CMakeFiles/scientific_calculator.dir/calculator.cpp.s

CMakeFiles/scientific_calculator.dir/main.cpp.o: CMakeFiles/scientific_calculator.dir/flags.make
CMakeFiles/scientific_calculator.dir/main.cpp.o: ../main.cpp
CMakeFiles/scientific_calculator.dir/main.cpp.o: CMakeFiles/scientific_calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/scientific_calculator.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/scientific_calculator.dir/main.cpp.o -MF CMakeFiles/scientific_calculator.dir/main.cpp.o.d -o CMakeFiles/scientific_calculator.dir/main.cpp.o -c /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/main.cpp

CMakeFiles/scientific_calculator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scientific_calculator.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/main.cpp > CMakeFiles/scientific_calculator.dir/main.cpp.i

CMakeFiles/scientific_calculator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scientific_calculator.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/main.cpp -o CMakeFiles/scientific_calculator.dir/main.cpp.s

# Object files for target scientific_calculator
scientific_calculator_OBJECTS = \
"CMakeFiles/scientific_calculator.dir/calculator.cpp.o" \
"CMakeFiles/scientific_calculator.dir/main.cpp.o"

# External object files for target scientific_calculator
scientific_calculator_EXTERNAL_OBJECTS =

scientific_calculator: CMakeFiles/scientific_calculator.dir/calculator.cpp.o
scientific_calculator: CMakeFiles/scientific_calculator.dir/main.cpp.o
scientific_calculator: CMakeFiles/scientific_calculator.dir/build.make
scientific_calculator: CMakeFiles/scientific_calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable scientific_calculator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scientific_calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scientific_calculator.dir/build: scientific_calculator
.PHONY : CMakeFiles/scientific_calculator.dir/build

CMakeFiles/scientific_calculator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scientific_calculator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scientific_calculator.dir/clean

CMakeFiles/scientific_calculator.dir/depend:
	cd /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build /home/anshul_kakirde/Downloads/SPE/Project/scientific-calculator/build/CMakeFiles/scientific_calculator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scientific_calculator.dir/depend

